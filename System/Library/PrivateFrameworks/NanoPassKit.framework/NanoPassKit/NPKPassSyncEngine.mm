@interface NPKPassSyncEngine
- (NPKPassSyncEngine)initWithCoder:(id)a3;
- (NPKPassSyncEngine)initWithRole:(unint64_t)a3;
- (NPKPassSyncEngineDataSource)dataSource;
- (NPKPassSyncEngineDelegate)delegate;
- (NPKPassSyncState)candidateState;
- (NPKPassSyncState)libraryState;
- (NPKPassSyncState)reconciledState;
- (NSString)engineName;
- (void)_engineStateChanged;
- (void)_finishedProcessingChange:(id)a3;
- (void)_handleStateChange:(id)a3 attemptRecoverReconcileStateVersionMismatch:(BOOL)a4;
- (void)_requestAddPassData:(id)a3 forSyncStateItem:(id)a4 completion:(id)a5;
- (void)_requestRemovePassWithUniqueID:(id)a3 completion:(id)a4;
- (void)_requestUpdatePassData:(id)a3 forSyncStateItem:(id)a4 baseManifestHashForPartialUpdate:(id)a5 remoteAssetsForPartialUpdate:(id)a6 completion:(id)a7;
- (void)_sendNextStateChange;
- (void)_sendProposedReconciledState:(id)a3;
- (void)_sendReconciledStateAcceptedWithHash:(id)a3;
- (void)_sendReconciledStateUnrecognizedWithHash:(id)a3 version:(unint64_t)a4 currentPassSyncState:(id)a5;
- (void)_sendStateChange:(id)a3;
- (void)_shouldProcessAddOrUpdateChangeOfType:(unint64_t)a3 changeSyncStateItem:(id)a4 librarySyncStateItem:(id)a5 reconciledSyncStateItem:(id)a6 candidateChange:(id)a7 shouldApplyToPassLibrary:(BOOL *)a8 shouldApplyToReconciledState:(BOOL *)a9;
- (void)_unexpectedEventOccurred;
- (void)encodeWithCoder:(id)a3;
- (void)handleProposedReconciledState:(id)a3;
- (void)handleReconciledStateAcceptedWithHash:(id)a3;
- (void)handleReconciledStateUnrecognizedWithHash:(id)a3 version:(unint64_t)a4 passSyncState:(id)a5;
- (void)setBackupState:(id)a3;
- (void)setCandidateChange:(id)a3;
- (void)setCandidateState:(id)a3;
- (void)setLibraryState:(id)a3;
- (void)setMinSyncStateVersion:(unint64_t)a3;
- (void)setReconciledState:(id)a3;
- (void)syncIfNecessary;
@end

@implementation NPKPassSyncEngine

- (NPKPassSyncEngine)initWithRole:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = NPKPassSyncEngine;
  result = [(NPKPassSyncEngine *)&v5 init];
  if (result)
  {
    result->_engineRole = a3;
    result->_requireAppleAccountForPaymentPasses = 1;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  libraryState = self->_libraryState;
  v5 = a3;
  [v5 encodeObject:libraryState forKey:@"libraryState"];
  [v5 encodeObject:self->_reconciledState forKey:@"reconciledState"];
  [v5 encodeObject:self->_backupState forKey:@"backupState"];
  [v5 encodeObject:self->_candidateState forKey:@"candidateState"];
  v7 = [(NPKPassSyncChange *)self->_candidateChange copy];
  [v7 setPassData:0];
  [v5 encodeObject:v7 forKey:@"candidateChange"];
  if (self->_engineRole)
  {
    v6 = @"Companion";
  }

  else
  {
    v6 = @"Watch";
  }

  [v5 encodeObject:v6 forKey:@"engineRole"];
}

- (NPKPassSyncEngine)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NPKPassSyncEngine;
  v5 = [(NPKPassSyncEngine *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"libraryState"];
    libraryState = v5->_libraryState;
    v5->_libraryState = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reconciledState"];
    reconciledState = v5->_reconciledState;
    v5->_reconciledState = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backupState"];
    backupState = v5->_backupState;
    v5->_backupState = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candidateState"];
    candidateState = v5->_candidateState;
    v5->_candidateState = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candidateChange"];
    candidateChange = v5->_candidateChange;
    v5->_candidateChange = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"engineRole"];
    v5->_engineRole = [v16 isEqualToString:@"Companion"];
  }

  return v5;
}

- (NSString)engineName
{
  if (self->_engineRole)
  {
    return @"Companion";
  }

  else
  {
    return @"Watch";
  }
}

- (void)syncIfNecessary
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(NPKPassSyncEngine *)self libraryState];
  v4 = [(NPKPassSyncEngine *)self reconciledState];
  v5 = PKEqualObjects();
  v6 = pk_Sync_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    if (v7)
    {
      v8 = pk_Sync_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(NPKPassSyncEngine *)self engineName];
        v13 = 138412290;
        v14 = v9;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Sync engine (%@): No sync necessary.", &v13, 0xCu);
      }
    }
  }

  else
  {
    if (v7)
    {
      v10 = pk_Sync_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(NPKPassSyncEngine *)self engineName];
        v13 = 138412802;
        v14 = v11;
        v15 = 2112;
        v16 = v3;
        v17 = 2112;
        v18 = v4;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Sync is necessary.\n libraryState:%@\n reconciledState:%@", &v13, 0x20u);
      }
    }

    [(NPKPassSyncEngine *)self _sendNextStateChange];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleStateChange:(id)a3 attemptRecoverReconcileStateVersionMismatch:(BOOL)a4
{
  v4 = a4;
  v145 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = pk_Sync_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Sync_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      [(NPKPassSyncEngine *)self engineName];
      v106 = v99 = self;
      v10 = v6;
      v97 = v6;
      v103 = [v6 changeUUID];
      v98 = [v6 reconciledStateHash];
      v11 = [v98 hexEncoding];
      v95 = [v6 reconciledStateVersion];
      v12 = NPKPassSyncChangeTypeToString([v6 changeType]);
      v94 = [v10 uniqueID];
      v13 = [v10 syncStateItem];
      v96 = [v10 passData];
      v14 = [v96 npkDescription];
      v15 = [v10 baseManifestHashForPartialUpdate];
      v16 = [v15 hexEncoding];
      [v10 remoteAssetsForPartialUpdate];
      v17 = v100 = v4;
      *buf = 138414594;
      v126 = v106;
      v127 = 2112;
      v128 = v103;
      v129 = 2112;
      v130 = v11;
      v131 = 2048;
      v132 = v95;
      v133 = 2112;
      v134 = v12;
      v135 = 2112;
      v136 = v94;
      v137 = 2112;
      v138 = v13;
      v139 = 2112;
      v140 = v14;
      v141 = 2112;
      v142 = v16;
      v143 = 2112;
      v144 = v17;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Received state change\n\tChange UUID: %@\n\tReconciled state hash: %@\n\tVersion:%lu\n\tChange type: %@\n\tunique ID: %@\n\tsync state item: %@\n\tpass data: %@\n\tbase manifest hash for partial update: %@\n\t remote assets for partial update: %@", buf, 0x66u);

      v4 = v100;
      self = v99;
      v6 = v97;
    }
  }

  v18 = [(NPKPassSyncEngine *)self backupState];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 syncStateHash];
    v21 = [(NPKPassSyncEngine *)self reconciledState];
    v22 = [v21 syncStateHash];

    v23 = [v6 reconciledStateHash];
    if (PKEqualObjects())
    {
    }

    else
    {
      v24 = [v6 reconciledStateHash];
      v25 = PKEqualObjects();

      if (v25)
      {
        v26 = pk_Sync_log();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

        if (v27)
        {
          v28 = pk_Sync_log();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [(NPKPassSyncEngine *)self engineName];
            *buf = 138412802;
            v126 = v29;
            v127 = 2112;
            v128 = v20;
            v129 = 2112;
            v130 = v22;
            _os_log_impl(&dword_25B300000, v28, OS_LOG_TYPE_DEFAULT, "Warning: Sync state engine (%@): State change based on backup hash (%@), not reconciled hash (%@); moving backup to reconciled", buf, 0x20u);
          }
        }

        [(NPKPassSyncEngine *)self setReconciledState:v19];
        [(NPKPassSyncEngine *)self setBackupState:0];
        [(NPKPassSyncEngine *)self _unexpectedEventOccurred];
      }
    }
  }

  v30 = [v6 reconciledStateHash];
  v31 = [(NPKPassSyncEngine *)self reconciledState];
  v32 = [v31 syncStateHash];
  if (PKEqualObjects())
  {
    v33 = [v6 reconciledStateVersion];
    v34 = [(NPKPassSyncEngine *)self reconciledState];
    v35 = v4;
    v36 = [v34 version];

    v37 = v33 == v36;
    v4 = v35;
    if (!v37)
    {
      goto LABEL_22;
    }

    v38 = [v6 changeType];
    v39 = [v6 uniqueID];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke;
    aBlock[3] = &unk_279947A80;
    aBlock[4] = self;
    v40 = v6;
    v124 = v40;
    v107 = _Block_copy(aBlock);
    v119[0] = MEMORY[0x277D85DD0];
    v119[1] = 3221225472;
    v119[2] = __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_82;
    v119[3] = &unk_279945958;
    v122 = v38;
    v119[4] = self;
    v41 = v40;
    v120 = v41;
    v42 = v39;
    v121 = v42;
    v104 = _Block_copy(v119);
    v115[0] = MEMORY[0x277D85DD0];
    v115[1] = 3221225472;
    v115[2] = __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_84;
    v115[3] = &unk_279947AA8;
    v118 = v38;
    v115[4] = self;
    v43 = v41;
    v116 = v43;
    v44 = v42;
    v117 = v44;
    v45 = _Block_copy(v115);
    v114 = 0;
    if (v38 >= 2)
    {
      if (v38 != 2)
      {
        goto LABEL_45;
      }

      v114 = 257;
    }

    else
    {
      v46 = [(NPKPassSyncEngine *)self libraryState];
      v47 = [v46 syncStateItems];
      v48 = [v47 objectForKey:v44];

      v49 = [(NPKPassSyncEngine *)self reconciledState];
      v50 = [v49 syncStateItems];
      [v50 objectForKey:v44];
      v101 = v44;
      v52 = v51 = v45;

      v53 = [(NPKPassSyncEngine *)self candidateChange];
      v54 = [v43 syncStateItem];
      [(NPKPassSyncEngine *)self _shouldProcessAddOrUpdateChangeOfType:v38 changeSyncStateItem:v54 librarySyncStateItem:v48 reconciledSyncStateItem:v52 candidateChange:v53 shouldApplyToPassLibrary:&v114 + 1 shouldApplyToReconciledState:&v114];

      v45 = v51;
      v44 = v101;

      if ((v114 & 0x100) == 0)
      {
LABEL_45:
        v84 = v114;
        v85 = pk_Sync_log();
        v86 = os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT);

        if (v84 == 1)
        {
          v83 = v104;
          if (v86)
          {
            v87 = pk_Sync_log();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
            {
              v88 = [(NPKPassSyncEngine *)self engineName];
              v89 = [v43 changeUUID];
              *buf = 138412546;
              v126 = v88;
              v127 = 2112;
              v128 = v89;
              _os_log_impl(&dword_25B300000, v87, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Not applying change to pass library, but applying to reconciled state and accepting\n\tChange UUID: %@", buf, 0x16u);
            }
          }

          v104[2](v104);
          v82 = v107;
          (*(v107 + 2))(v107, 1, 0);
        }

        else
        {
          v83 = v104;
          if (v86)
          {
            v90 = pk_Sync_log();
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              v91 = [(NPKPassSyncEngine *)self engineName];
              v92 = [v43 changeUUID];
              *buf = 138412546;
              v126 = v91;
              v127 = 2112;
              v128 = v92;
              _os_log_impl(&dword_25B300000, v90, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Rejecting change\n\tChange UUID: %@", buf, 0x16u);
            }
          }

          v82 = v107;
          (*(v107 + 2))(v107, 0, 0);
        }

LABEL_56:

        goto LABEL_57;
      }
    }

    v77 = pk_Sync_log();
    v78 = os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT);

    if (v78)
    {
      v79 = pk_Sync_log();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        v80 = [(NPKPassSyncEngine *)self engineName];
        v81 = [v43 changeUUID];
        *buf = 138412546;
        v126 = v80;
        v127 = 2112;
        v128 = v81;
        _os_log_impl(&dword_25B300000, v79, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Applying change to pass library\n\tChange UUID: %@", buf, 0x16u);
      }
    }

    [(NPKPassSyncEngine *)self setProcessingChange:v43];
    v109[0] = MEMORY[0x277D85DD0];
    v109[1] = 3221225472;
    v109[2] = __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_87;
    v109[3] = &unk_279947AD0;
    v109[4] = self;
    v110 = v43;
    v82 = v107;
    v111 = v107;
    v113 = v114;
    v83 = v104;
    v112 = v104;
    (*(v45 + 2))(v45, v109);

    goto LABEL_56;
  }

LABEL_22:
  v55 = [v6 reconciledStateVersion];
  v56 = [(NPKPassSyncEngine *)self reconciledState];
  v57 = [v56 version];

  v58 = pk_Sync_log();
  v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);

  if (!v4 || v57 == v55)
  {
    if (v59)
    {
      v67 = pk_Sync_log();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = [(NPKPassSyncEngine *)self engineName];
        v108 = [v6 reconciledStateHash];
        v69 = [v108 hexEncoding];
        v102 = [v6 reconciledStateVersion];
        v105 = [(NPKPassSyncEngine *)self reconciledState];
        v70 = [v105 syncStateHash];
        v71 = [v70 hexEncoding];
        v72 = [(NPKPassSyncEngine *)self reconciledState];
        v73 = [v72 version];
        *buf = 138413314;
        v126 = v68;
        v127 = 2112;
        v128 = v69;
        v129 = 2048;
        v130 = v102;
        v131 = 2112;
        v132 = v71;
        v133 = 2048;
        v134 = v73;
        _os_log_impl(&dword_25B300000, v67, OS_LOG_TYPE_DEFAULT, "Warning: Sync state engine (%@): Unrecognized reconciled state hash %@ version:%lu, current state hash:%@ version:%lu", buf, 0x34u);
      }
    }

    v74 = [v6 reconciledStateHash];
    v75 = [v6 reconciledStateVersion];
    v76 = [(NPKPassSyncEngine *)self reconciledState];
    [(NPKPassSyncEngine *)self _sendReconciledStateUnrecognizedWithHash:v74 version:v75 currentPassSyncState:v76];

    [(NPKPassSyncEngine *)self _unexpectedEventOccurred];
  }

  else
  {
    if (v59)
    {
      v60 = pk_Sync_log();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = [(NPKPassSyncEngine *)self engineName];
        *buf = 138412290;
        v126 = v61;
        _os_log_impl(&dword_25B300000, v60, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Attempt to recover from mismatch reconcile state", buf, 0xCu);
      }
    }

    -[NPKPassSyncEngine setMinSyncStateVersion:](self, "setMinSyncStateVersion:", [v6 reconciledStateVersion]);
    v62 = pk_Sync_log();
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);

    if (v63)
    {
      v64 = pk_Sync_log();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = [(NPKPassSyncEngine *)self engineName];
        v66 = [v6 uniqueID];
        *buf = 138412546;
        v126 = v65;
        v127 = 2112;
        v128 = v66;
        _os_log_impl(&dword_25B300000, v64, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): handle second time change with UUID:%@", buf, 0x16u);
      }
    }

    [(NPKPassSyncEngine *)self _handleStateChange:v6 attemptRecoverReconcileStateVersionMismatch:0];
  }

LABEL_57:

  v93 = *MEMORY[0x277D85DE8];
}

void __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = pk_Sync_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Sync_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) engineName];
      v10 = [*(a1 + 40) changeUUID];
      v11 = [*(a1 + 32) reconciledState];
      v15 = 138413314;
      v16 = v9;
      v17 = 1024;
      v18 = a2;
      v19 = 1024;
      v20 = a3;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): State change processed\n\tChange accepted: %d\n\tFull pass required: %d\n\tChange UUID: %@\n\tNew reconciled state: %@", &v15, 0x2Cu);
    }
  }

  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) changeUUID];
  [v12 _sendStateChangeProcessedWithUUID:v13 changeAccepted:a2 fullPassRequired:a3];

  v14 = *MEMORY[0x277D85DE8];
}

void __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_82(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  if (v2 >= 2)
  {
    if (v2 != 2)
    {
      v5 = 0;
      goto LABEL_7;
    }

    v3 = [*(a1 + 32) reconciledState];
    v5 = [v3 passSyncStateByRemovingPassWithUniqueID:*(a1 + 48)];
  }

  else
  {
    v3 = [*(a1 + 32) reconciledState];
    v4 = [*(a1 + 40) syncStateItem];
    v5 = [v3 passSyncStateByAddingOrUpdatingSyncStateItem:v4];
  }

LABEL_7:
  v6 = [*(a1 + 32) reconciledState];
  v7 = pk_Sync_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Sync_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) engineName];
      v11 = [v6 syncStateHash];
      v12 = [v11 hexEncoding];
      v13 = [v5 syncStateHash];
      v14 = [v13 hexEncoding];
      v16 = 138412802;
      v17 = v10;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Setting new backup and reconciled state\n\tBackup state hash: %@\n\tReconciled state hash: %@", &v16, 0x20u);
    }
  }

  [*(a1 + 32) setBackupState:v6];
  [*(a1 + 32) setReconciledState:v5];

  v15 = *MEMORY[0x277D85DE8];
}

void __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 56);
  switch(v5)
  {
    case 2:
      v15 = *(a1 + 32);
      v16 = *(a1 + 48);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_3;
      v17[3] = &unk_2799467D0;
      v18 = v3;
      [v15 _requestRemovePassWithUniqueID:v16 completion:v17];
      v9 = v18;
      goto LABEL_7;
    case 1:
      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) passData];
      v12 = [*(a1 + 40) syncStateItem];
      v13 = [*(a1 + 40) baseManifestHashForPartialUpdate];
      v14 = [*(a1 + 40) remoteAssetsForPartialUpdate];
      [v10 _requestUpdatePassData:v11 forSyncStateItem:v12 baseManifestHashForPartialUpdate:v13 remoteAssetsForPartialUpdate:v14 completion:v4];

      break;
    case 0:
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) passData];
      v8 = [*(a1 + 40) syncStateItem];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_2;
      v19[3] = &unk_2799467D0;
      v20 = v4;
      [v6 _requestAddPassData:v7 forSyncStateItem:v8 completion:v19];

      v9 = v20;
LABEL_7:

      break;
  }
}

uint64_t __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

uint64_t __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

uint64_t __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_87(uint64_t a1, char a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) processingChange];
  v5 = [v4 isEqual:*(a1 + 40)];

  if (v5)
  {
    [*(a1 + 32) setProcessingChange:0];
  }

  if ((a2 & 1) == 0)
  {
    v12 = pk_Sync_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (!v13)
    {
      goto LABEL_18;
    }

    v14 = pk_Sync_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) engineName];
      v16 = [*(a1 + 40) syncStateItem];
      v20 = 138412546;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      v17 = "Warning: Sync state engine (%@): Not applying change to reconciled state because we failed to apply it to the pass library\n\tSync state item: %@";
LABEL_16:
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, v17, &v20, 0x16u);
    }

LABEL_17:

    goto LABEL_18;
  }

  v6 = *(a1 + 64);
  v7 = pk_Sync_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v6 != 1)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    v14 = pk_Sync_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) engineName];
      v16 = [*(a1 + 40) changeUUID];
      v20 = 138412546;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      v17 = "Notice: Sync state engine (%@): Not applying change to reconciled state and accepting\n\tChange UUID: %@";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v8)
  {
    v9 = pk_Sync_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) engineName];
      v11 = [*(a1 + 40) changeUUID];
      v20 = 138412546;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Applying change to reconciled state and accepting\n\tChange UUID: %@", &v20, 0x16u);
    }
  }

  (*(*(a1 + 56) + 16))();
LABEL_18:
  (*(*(a1 + 48) + 16))();
  result = [*(a1 + 32) _finishedProcessingChange:*(a1 + 40)];
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleReconciledStateUnrecognizedWithHash:(id)a3 version:(unint64_t)a4 passSyncState:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = pk_Sync_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Sync_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(NPKPassSyncEngine *)self engineName];
      v14 = [v8 hexEncoding];
      v23 = 138413058;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      v27 = 2048;
      v28 = a4;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Received reconciled state unrecognized\n\tReconciled state hash: %@\n\tversion:%lu\n\tPass sync state: %@", &v23, 0x2Au);
    }
  }

  v15 = [v9 version];
  v16 = [(NPKPassSyncEngine *)self reconciledState];
  v17 = [v16 version];

  if (v17 == v15)
  {
    v18 = [(NPKPassSyncEngine *)self reconciledState];
  }

  else
  {
    [(NPKPassSyncEngine *)self setMinSyncStateVersion:v15];
    v19 = [(NPKPassSyncEngine *)self reconciledState];
    v20 = [(NPKPassSyncEngine *)self libraryState];
    v18 = [v19 commonBaselinePassSyncStateWithState:v20 version:v15];
  }

  [(NPKPassSyncEngine *)self setCandidateState:0];
  [(NPKPassSyncEngine *)self setReconciledState:0];
  if (v9)
  {
    v21 = [v18 commonBaselinePassSyncStateWithState:v9 version:{objc_msgSend(v18, "version")}];
    [(NPKPassSyncEngine *)self setCandidateState:v21];
    [(NPKPassSyncEngine *)self _sendProposedReconciledState:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleProposedReconciledState:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Sync_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Sync_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NPKPassSyncEngine *)self engineName];
      *buf = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Received proposed reconciled state\n\tProposed pass sync state: %@", buf, 0x16u);
    }
  }

  v9 = [v4 version];
  v10 = [(NPKPassSyncEngine *)self libraryState];
  if (v9 != [v10 version])
  {

    goto LABEL_9;
  }

  v11 = [(NPKPassSyncEngine *)self candidateState];
  v12 = [(NPKPassSyncEngine *)self libraryState];
  v17[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v14 = [v4 stateIsSubsetOfUnionOfPassSyncStates:v13];

  if (!v14)
  {
LABEL_9:
    v15 = [v4 syncStateHash];
    -[NPKPassSyncEngine _sendReconciledStateUnrecognizedWithHash:version:currentPassSyncState:](self, "_sendReconciledStateUnrecognizedWithHash:version:currentPassSyncState:", v15, [v4 version], 0);
    goto LABEL_10;
  }

  [(NPKPassSyncEngine *)self setBackupState:0];
  [(NPKPassSyncEngine *)self setReconciledState:v4];
  v15 = [v4 syncStateHash];
  [(NPKPassSyncEngine *)self _sendReconciledStateAcceptedWithHash:v15];
LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleReconciledStateAcceptedWithHash:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Sync_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Sync_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NPKPassSyncEngine *)self engineName];
      v9 = [v4 hexEncoding];
      v20 = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Received proposed reconciled state accepted\n\tReconciled state hash: %@", &v20, 0x16u);
    }
  }

  v10 = [(NPKPassSyncEngine *)self candidateState];
  v11 = [v10 syncStateHash];
  v12 = PKEqualObjects();

  if (v12)
  {
    [(NPKPassSyncEngine *)self setReconciledState:v10];
    [(NPKPassSyncEngine *)self setCandidateState:0];
    [(NPKPassSyncEngine *)self _sendNextStateChange];
  }

  else
  {
    v13 = pk_Sync_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = pk_Sync_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(NPKPassSyncEngine *)self engineName];
        v17 = [v4 hexEncoding];
        v18 = [v10 syncStateHash];
        v20 = 138412802;
        v21 = v16;
        v22 = 2112;
        v23 = v17;
        v24 = 2112;
        v25 = v18;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Warning: Sync state engine (%@): Did not recognize hash (%@) in reconciled state accepted message; reconciled state hash is %@", &v20, 0x20u);
      }
    }

    [(NPKPassSyncEngine *)self _unexpectedEventOccurred];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setMinSyncStateVersion:(unint64_t)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = [(NPKPassSyncEngine *)self libraryState];
  v6 = [v5 version];

  v7 = [(NPKPassSyncEngine *)self reconciledState];
  v8 = [v7 version];

  backupState = self->_backupState;
  if (backupState)
  {
    v10 = [(NPKPassSyncState *)backupState version];
  }

  else
  {
    v10 = v8;
  }

  if (v8 != a3 || v6 != a3 || v6 != v8 || v8 != v10)
  {
    v11 = pk_Sync_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = pk_Sync_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 134217984;
        v35 = a3;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Requested to move to sync state version:%lu", &v34, 0xCu);
      }
    }

    [NPKPassSyncState setMinRemoteDevicePassSyncStateVersionSupport:a3];
    v14 = [(NPKPassSyncEngine *)self dataSource];
    v15 = [v14 passSyncEngineNeedsUpdatedPassLibraryState:self];

    v16 = [v15 passSyncStateWithVersion:a3];
    [(NPKPassSyncEngine *)self setLibraryState:v16];
    v17 = pk_Sync_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v19 = pk_Sync_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(NPKPassSyncEngine *)self engineName];
        v34 = 138412546;
        v35 = v20;
        v36 = 2112;
        v37 = v16;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): updated library state to match expected version:%@", &v34, 0x16u);
      }
    }

    v21 = [(NPKPassSyncEngine *)self reconciledState];
    v22 = [v15 updateReconcileState:v21 expectedVersion:a3];

    [(NPKPassSyncEngine *)self setReconciledState:v22];
    v23 = pk_Sync_log();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

    if (v24)
    {
      v25 = pk_Sync_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(NPKPassSyncEngine *)self engineName];
        v34 = 138412546;
        v35 = v26;
        v36 = 2112;
        v37 = v22;
        _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): updated reconciled state to match expected version:%@", &v34, 0x16u);
      }
    }

    v27 = self->_backupState;
    if (v27)
    {
      v28 = [v15 updateReconcileState:v27 expectedVersion:a3];
      [(NPKPassSyncEngine *)self setBackupState:v28];
      v29 = pk_Sync_log();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

      if (v30)
      {
        v31 = pk_Sync_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [(NPKPassSyncEngine *)self engineName];
          v34 = 138412546;
          v35 = v32;
          v36 = 2112;
          v37 = v28;
          _os_log_impl(&dword_25B300000, v31, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): updated backup state to match expected version:%@", &v34, 0x16u);
        }
      }
    }

    [(NPKPassSyncEngine *)self setCandidateChange:0];
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)setLibraryState:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  libraryState = self->_libraryState;
  if ((PKEqualObjects() & 1) == 0)
  {
    v7 = [v5 version];
    if (v7 != +[NPKPassSyncState minRemoteDevicePassSyncStateVersionSupport])
    {
      v8 = pk_Sync_log();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

      if (v9)
      {
        v10 = pk_Sync_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [(NPKPassSyncEngine *)self engineName];
          v13 = 138412802;
          v14 = v11;
          v15 = 2048;
          v16 = [v5 version];
          v17 = 2048;
          v18 = +[NPKPassSyncState minRemoteDevicePassSyncStateVersionSupport];
          _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Warning: Sync state engine (%@): setting new library state with version:%lu, expected:%lu", &v13, 0x20u);
        }
      }
    }

    objc_storeStrong(&self->_libraryState, a3);
    [(NPKPassSyncEngine *)self _engineStateChanged];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NPKPassSyncState)libraryState
{
  libraryState = self->_libraryState;
  if (libraryState)
  {
    v3 = libraryState;
  }

  else
  {
    v3 = [[NPKPassSyncState alloc] initWithVersion:+[NPKPassSyncState minRemoteDevicePassSyncStateVersionSupport]];
  }

  return v3;
}

- (void)setBackupState:(id)a3
{
  v5 = a3;
  backupState = self->_backupState;
  v7 = v5;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_backupState, a3);
    [(NPKPassSyncEngine *)self _engineStateChanged];
  }
}

- (void)setReconciledState:(id)a3
{
  v5 = a3;
  reconciledState = self->_reconciledState;
  v7 = v5;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_reconciledState, a3);
    [(NPKPassSyncEngine *)self _engineStateChanged];
  }
}

- (NPKPassSyncState)reconciledState
{
  reconciledState = self->_reconciledState;
  if (reconciledState)
  {
    v3 = reconciledState;
  }

  else
  {
    v3 = [[NPKPassSyncState alloc] initWithVersion:+[NPKPassSyncState minRemoteDevicePassSyncStateVersionSupport]];
  }

  return v3;
}

- (void)setCandidateState:(id)a3
{
  v5 = a3;
  candidateState = self->_candidateState;
  v7 = v5;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_candidateState, a3);
    [(NPKPassSyncEngine *)self _engineStateChanged];
  }
}

- (NPKPassSyncState)candidateState
{
  candidateState = self->_candidateState;
  if (candidateState)
  {
    v3 = candidateState;
  }

  else
  {
    v3 = [[NPKPassSyncState alloc] initWithVersion:+[NPKPassSyncState minRemoteDevicePassSyncStateVersionSupport]];
  }

  return v3;
}

- (void)setCandidateChange:(id)a3
{
  v5 = a3;
  candidateChange = self->_candidateChange;
  v7 = v5;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_candidateChange, a3);
    [(NPKPassSyncEngine *)self _engineStateChanged];
  }
}

- (void)_sendNextStateChange
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = [(NPKPassSyncEngine *)self libraryState];
  v4 = [(NPKPassSyncEngine *)self reconciledState];
  v63 = 0;
  v64 = 0;
  v62 = 0;
  [v3 compareWithBaselinePassSyncState:v4 outAddedSyncItems:&v64 outUpdatedSyncItems:&v63 outRemovedSyncItems:&v62];
  v5 = v64;
  v6 = v63;
  v60 = v62;

  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [(NPKPassSyncEngine *)self reconciledState];
  v58 = [v8 syncStateHash];

  v9 = [(NPKPassSyncEngine *)self reconciledState];
  v56 = [v9 version];

  v10 = pk_Sync_log();
  LODWORD(v4) = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  v59 = v7;
  if (v4)
  {
    v11 = pk_Sync_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(NPKPassSyncEngine *)self engineName];
      v54 = [(NPKPassSyncEngine *)self libraryState];
      [v54 syncStateHash];
      v14 = v13 = v6;
      v15 = [v14 hexEncoding];
      v16 = [(NPKPassSyncEngine *)self reconciledState];
      v17 = [v16 syncStateHash];
      v18 = [v17 hexEncoding];
      *buf = 138413570;
      v66 = v12;
      v67 = 2112;
      v68 = v15;
      v69 = 2112;
      v70 = v18;
      v71 = 2112;
      v72 = v5;
      v73 = 2112;
      v74 = v13;
      v75 = 2112;
      v76 = v60;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Compared library state with manifestHash:%@ with reconcileState:%@\n addedID:%@\n updatedIDs:%@\n removedIDs:%@\n", buf, 0x3Eu);

      v7 = v59;
      v6 = v13;
    }
  }

  v57 = v5;
  if ([v5 count] || objc_msgSend(v6, "count"))
  {
    v55 = v6;
    if ([v6 count])
    {
      v19 = [v6 firstObject];
      v20 = [(NPKPassSyncEngine *)self reconciledState];
      v21 = [v20 syncStateItems];
      v22 = [v19 uniqueID];
      v23 = [v21 objectForKey:v22];

      v24 = [v23 manifest];
      v25 = [v23 manifestHash];

      if (v24)
      {
        v26 = [(NPKPassSyncEngine *)self dataSource];
        v27 = [v19 uniqueID];
        v61 = 0;
        v28 = [v26 passSyncEngine:self partialDataForPassWithUniqueID:v27 baseManifest:v24 outRemoteAssets:&v61];
        v29 = v61;

        v30 = 1;
        if (v28)
        {
LABEL_14:
          v33 = [NPKPassSyncChange alloc];
          v34 = [v19 uniqueID];
          v35 = v33;
          v36 = v58;
          v37 = [(NPKPassSyncChange *)v35 initWithChangeUUID:v7 reconciledStateHash:v58 reconciledStateVersion:v56 changeType:v30 uniqueID:v34 syncStateItem:v19 passData:v28 baseManifestHashForPartialUpdate:v25 remoteAssetsForPartialUpdate:v29];

          v6 = v55;
          v38 = v60;
          goto LABEL_15;
        }
      }

      else
      {
        v29 = 0;
        v30 = 1;
      }
    }

    else
    {
      v19 = [v5 firstObject];
      v29 = 0;
      v30 = 0;
      v25 = 0;
      v24 = 0;
    }

    v31 = [(NPKPassSyncEngine *)self dataSource];
    v32 = [v19 uniqueID];
    v28 = [v31 passSyncEngine:self dataForPassWithUniqueID:v32];

    v29 = 0;
    v25 = 0;
    goto LABEL_14;
  }

  v38 = v60;
  if (![v60 count])
  {
    v48 = pk_Sync_log();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);

    v36 = v58;
    if (!v49)
    {
      goto LABEL_25;
    }

    v37 = pk_Sync_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v50 = [(NPKPassSyncEngine *)self engineName];
      v51 = [(NPKPassSyncEngine *)self reconciledState];
      v52 = [v51 syncStateHash];
      v53 = [v52 hexEncoding];
      *buf = 138412546;
      v66 = v50;
      v67 = 2112;
      v68 = v53;
      _os_log_impl(&dword_25B300000, v37, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): No state changes to send; settling on reconciled state hash %@.", buf, 0x16u);

      v36 = v58;
      v38 = v60;
    }

    goto LABEL_24;
  }

  v19 = [v60 firstObject];
  v46 = [NPKPassSyncChange alloc];
  v24 = [v19 uniqueID];
  v47 = v46;
  v36 = v58;
  v37 = [(NPKPassSyncChange *)v47 initWithChangeUUID:v7 reconciledStateHash:v58 reconciledStateVersion:v56 changeType:2 uniqueID:v24 syncStateItem:0 passData:0];
LABEL_15:

  if (v37)
  {
    v39 = [(NPKPassSyncEngine *)self candidateChange];
    if (v39 && [v37 isEqualToChangeIgnoringUUID:v39])
    {
      v40 = pk_Sync_log();
      v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);

      if (v41)
      {
        v42 = pk_Sync_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [(NPKPassSyncEngine *)self engineName];
          *buf = 138412802;
          v66 = v43;
          v67 = 2112;
          v68 = v39;
          v69 = 2112;
          v70 = v37;
          _os_log_impl(&dword_25B300000, v42, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Outgoing change is identical to candidate change except for UUID; changing UUID to match candidate change\n\tCandidate change: %@\n\tOutgoing change: %@", buf, 0x20u);
        }
      }

      v44 = [v39 changeUUID];
      [v37 setChangeUUID:v44];

      v36 = v58;
    }

    [(NPKPassSyncEngine *)self setCandidateChange:v37];
    [(NPKPassSyncEngine *)self _sendStateChange:v37];

LABEL_24:
  }

LABEL_25:

  v45 = *MEMORY[0x277D85DE8];
}

- (void)_shouldProcessAddOrUpdateChangeOfType:(unint64_t)a3 changeSyncStateItem:(id)a4 librarySyncStateItem:(id)a5 reconciledSyncStateItem:(id)a6 candidateChange:(id)a7 shouldApplyToPassLibrary:(BOOL *)a8 shouldApplyToReconciledState:(BOOL *)a9
{
  v15 = a9;
  v75 = *MEMORY[0x277D85DE8];
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  if (a3 != 1 || v17)
  {
    if (PKEqualObjects())
    {
      v26 = 1;
      goto LABEL_48;
    }

    v27 = pk_Sync_log();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);

    if (v28)
    {
      v29 = pk_Sync_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(NPKPassSyncEngine *)self engineName];
        *buf = 138413058;
        v68 = v30;
        v69 = 2112;
        v70 = v18;
        v71 = 2112;
        v72 = v17;
        v73 = 2112;
        v74 = v16;
        _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Pass has been added/updated in local library also.\n\tReconciled sync state item: %@\n\tLocal library sync state item: %@\n\tChange sync state item: %@", buf, 0x2Au);
      }
    }

    v22 = [v17 sequenceCounter];
    v31 = [v16 sequenceCounter];
    v32 = v31;
    if (!v22 && v31)
    {
LABEL_14:

      v26 = 1;
LABEL_44:
      v59 = 1;
      goto LABEL_45;
    }

    if (v22 && v31)
    {
      if ([v22 compare:v31]!= 1)
      {
        goto LABEL_14;
      }

      v66 = a9;
      v33 = pk_Sync_log();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

      if (v34)
      {
        v35 = pk_Sync_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [(NPKPassSyncEngine *)self engineName];
          *buf = 138412802;
          v68 = v36;
          v69 = 2112;
          v70 = v22;
          v71 = 2112;
          v72 = v32;
          v37 = "Notice: Sync state engine (%@): local pass has higher sequence counter (%@) than change (%@); not applying change to local library";
          v38 = v35;
          v39 = 32;
LABEL_25:
          _os_log_impl(&dword_25B300000, v38, OS_LOG_TYPE_DEFAULT, v37, buf, v39);

          goto LABEL_26;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v65 = v22;
      v66 = a9;
      v40 = self;
      v41 = v16;
      v42 = a8;
      v43 = v18;
      v44 = v19;
      v45 = v40;
      engineRole = v40->_engineRole;
      v47 = pk_Sync_log();
      v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);

      if (!engineRole)
      {
        v19 = v44;
        v18 = v43;
        a8 = v42;
        v16 = v41;
        v62 = v45;
        v22 = v65;
        v15 = a9;
        if (v48)
        {
          v63 = pk_Sync_log();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            v64 = [(NPKPassSyncEngine *)v62 engineName];
            *buf = 138412290;
            v68 = v64;
            _os_log_impl(&dword_25B300000, v63, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Applying change in the absence of sync state counters", buf, 0xCu);
          }
        }

        goto LABEL_14;
      }

      v19 = v44;
      v18 = v43;
      a8 = v42;
      v16 = v41;
      self = v45;
      v22 = v65;
      if (v48)
      {
        v35 = pk_Sync_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [(NPKPassSyncEngine *)self engineName];
          *buf = 138412290;
          v68 = v36;
          v37 = "Notice: Sync state engine (%@): Not applying change in the absence of sync state counters";
          v38 = v35;
          v39 = 12;
          goto LABEL_25;
        }

LABEL_26:
      }
    }

    v15 = v66;
    goto LABEL_28;
  }

  v20 = pk_Sync_log();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

  if (!v21)
  {
    goto LABEL_29;
  }

  v22 = pk_Sync_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [(NPKPassSyncEngine *)self engineName];
    v24 = [v16 uniqueID];
    v25 = [(NPKPassSyncEngine *)self libraryState];
    *buf = 138412802;
    v68 = v23;
    v69 = 2112;
    v70 = v24;
    v71 = 2112;
    v72 = v25;
    _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Ignoring request to apply pass update with unique ID %@ to local library since the pass is not in our library state: %@", buf, 0x20u);

    v15 = a9;
  }

LABEL_28:

LABEL_29:
  if (self->_engineRole != 1)
  {
LABEL_47:
    v26 = 0;
LABEL_48:
    v59 = 1;
    if (!a8)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (PKEqualObjects())
  {
    v49 = pk_Sync_log();
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);

    if (v50)
    {
      v22 = pk_Sync_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v51 = [(NPKPassSyncEngine *)self engineName];
        *buf = 138413058;
        v68 = v51;
        v69 = 2112;
        v70 = v17;
        v71 = 2112;
        v72 = v16;
        v73 = 2112;
        v74 = v19;
        _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Applying change to reconciled state because it matches our library state\n\tLocal library sync state item: %@\n\tChange sync state item: %@\n\tCandidate change: %@", buf, 0x2Au);
LABEL_42:

        goto LABEL_43;
      }

      goto LABEL_43;
    }

    goto LABEL_47;
  }

  v52 = [v19 uniqueID];
  v53 = [v16 uniqueID];
  v54 = [v52 isEqualToString:v53];

  v55 = pk_Sync_log();
  v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);

  if (!v54)
  {
    if (v56)
    {
      v22 = pk_Sync_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v51 = [(NPKPassSyncEngine *)self engineName];
        v60 = [v16 uniqueID];
        *buf = 138412802;
        v68 = v51;
        v69 = 2112;
        v70 = v60;
        v71 = 2112;
        v72 = v19;
        _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Applying change to reconciled state even though we have an outstanding candidate change for pass with unique ID %@: %@", buf, 0x20u);

        goto LABEL_42;
      }

LABEL_43:
      v26 = 0;
      goto LABEL_44;
    }

    goto LABEL_47;
  }

  if (v56)
  {
    v22 = pk_Sync_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v57 = [(NPKPassSyncEngine *)self engineName];
      v58 = [v16 uniqueID];
      *buf = 138412802;
      v68 = v57;
      v69 = 2112;
      v70 = v58;
      v71 = 2112;
      v72 = v19;
      _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Not applying change to reconciled state since we are not applying it to the local library and have an outstanding candidate change for pass with unique ID %@: %@", buf, 0x20u);
    }

    v26 = 0;
    v59 = 0;
LABEL_45:

    if (!a8)
    {
      goto LABEL_50;
    }

LABEL_49:
    *a8 = v26;
    goto LABEL_50;
  }

  v26 = 0;
  v59 = 0;
  if (a8)
  {
    goto LABEL_49;
  }

LABEL_50:
  if (v15)
  {
    *v15 = v59;
  }

  v61 = *MEMORY[0x277D85DE8];
}

- (void)_sendStateChange:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Sync_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Sync_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NPKPassSyncEngine *)self engineName];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Sending state change\n\tChange: %@", &v11, 0x16u);
    }
  }

  v9 = [(NPKPassSyncEngine *)self delegate];
  [v9 passSyncEngine:self sendStateChange:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sendReconciledStateUnrecognizedWithHash:(id)a3 version:(unint64_t)a4 currentPassSyncState:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = pk_Sync_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Sync_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(NPKPassSyncEngine *)self engineName];
      v14 = [v8 hexEncoding];
      v17 = 138413058;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2048;
      v22 = a4;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Sending reconciled state unrecognized\n\tReconciled state hash: %@\n\tversion:%lu\n\tPass sync state: %@", &v17, 0x2Au);
    }
  }

  v15 = [(NPKPassSyncEngine *)self delegate];
  [v15 passSyncEngine:self sendReconciledStateUnrecognizedWithHash:v8 version:a4 currentPassSyncState:v9];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_sendReconciledStateAcceptedWithHash:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Sync_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Sync_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NPKPassSyncEngine *)self engineName];
      v9 = [v4 hexEncoding];
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Sending reconciled state accepted\n\tReconciled state hash: %@", &v12, 0x16u);
    }
  }

  v10 = [(NPKPassSyncEngine *)self delegate];
  [v10 passSyncEngine:self sendReconciledStateAcceptedWithHash:v4];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_sendProposedReconciledState:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_Sync_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Sync_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NPKPassSyncEngine *)self engineName];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Sending proposed reconciled state\n\tProposed pass sync state: %@", &v11, 0x16u);
    }
  }

  v9 = [(NPKPassSyncEngine *)self delegate];
  [v9 passSyncEngine:self sendProposedReconciledState:v4];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_requestAddPassData:(id)a3 forSyncStateItem:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pk_Sync_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Sync_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(NPKPassSyncEngine *)self engineName];
      v15 = [v8 npkDescription];
      *buf = 138412802;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Requesting that delegate add pass to local pass library\n\tData: %@\n\tSync state item: %@", buf, 0x20u);
    }
  }

  v16 = [(NPKPassSyncEngine *)self delegate];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __69__NPKPassSyncEngine__requestAddPassData_forSyncStateItem_completion___block_invoke;
  v20[3] = &unk_279947AF8;
  v20[4] = self;
  v21 = v9;
  v22 = v10;
  v17 = v10;
  v18 = v9;
  [v16 passSyncEngine:self requestsAddPassData:v8 forSyncStateItem:v18 completion:v20];

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __69__NPKPassSyncEngine__requestAddPassData_forSyncStateItem_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = pk_Sync_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Sync_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) engineName];
      v8 = *(a1 + 40);
      v11 = 138412802;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 1024;
      v16 = a2;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Delegate invoked add completion\n\tsync state item: %@\n\tadded: %d", &v11, 0x1Cu);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_requestUpdatePassData:(id)a3 forSyncStateItem:(id)a4 baseManifestHashForPartialUpdate:(id)a5 remoteAssetsForPartialUpdate:(id)a6 completion:(id)a7
{
  v39 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = pk_Sync_log();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (v18)
  {
    v19 = pk_Sync_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(NPKPassSyncEngine *)self engineName];
      v21 = [v12 npkDescription];
      *buf = 138413314;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      v33 = 2112;
      v34 = v13;
      v35 = 2112;
      v36 = v14;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Requesting that delegate update pass in local pass library\n\tData: %@\n\tSync state item: %@\n\tBase manifest hash for partial update: %@\n\tRemote assets for partial update: %@", buf, 0x34u);
    }
  }

  v22 = [(NPKPassSyncEngine *)self delegate];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __134__NPKPassSyncEngine__requestUpdatePassData_forSyncStateItem_baseManifestHashForPartialUpdate_remoteAssetsForPartialUpdate_completion___block_invoke;
  v26[3] = &unk_279947B20;
  v26[4] = self;
  v27 = v13;
  v28 = v16;
  v23 = v16;
  v24 = v13;
  [v22 passSyncEngine:self requestsUpdatePassData:v12 forSyncStateItem:v24 baseManifestHashForPartialUpdate:v14 remoteAssetsForPartialUpdate:v15 completion:v26];

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __134__NPKPassSyncEngine__requestUpdatePassData_forSyncStateItem_baseManifestHashForPartialUpdate_remoteAssetsForPartialUpdate_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = pk_Sync_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_Sync_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) engineName];
      v10 = *(a1 + 40);
      v13 = 138412802;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 1024;
      v18 = a2;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Delegate invoked update completion\n\tsync state item: %@\n\tupdated: %d", &v13, 0x1Cu);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))(result, a2, a3);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_requestRemovePassWithUniqueID:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pk_Sync_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Sync_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(NPKPassSyncEngine *)self engineName];
      *buf = 138412546;
      v20 = v11;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Requesting that delegate remove pass in local pass library\n\tunique ID: %@", buf, 0x16u);
    }
  }

  v12 = [(NPKPassSyncEngine *)self delegate];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__NPKPassSyncEngine__requestRemovePassWithUniqueID_completion___block_invoke;
  v16[3] = &unk_279947AF8;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v13 = v7;
  v14 = v6;
  [v12 passSyncEngine:self requestsRemovePassWithUniqueID:v14 completion:v16];

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __63__NPKPassSyncEngine__requestRemovePassWithUniqueID_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = pk_Sync_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Sync_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) engineName];
      v8 = *(a1 + 40);
      v11 = 138412802;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 1024;
      v16 = a2;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Delegate invoked remove completion\n\tunique ID: %@\n\tremoved: %d", &v11, 0x1Cu);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_unexpectedEventOccurred
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = pk_Sync_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Sync_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NPKPassSyncEngine *)self engineName];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): encountered unexpected event", &v9, 0xCu);
    }
  }

  v7 = [(NPKPassSyncEngine *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 passSyncEngineEncounteredUnexpectedEvent:self];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_engineStateChanged
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = pk_Sync_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Sync_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NPKPassSyncEngine *)self engineName];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Engine state changed", &v9, 0xCu);
    }
  }

  v7 = [(NPKPassSyncEngine *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 passSyncEngineStateChanged:self];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_finishedProcessingChange:(id)a3
{
  v5 = a3;
  v4 = [(NPKPassSyncEngine *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 passSyncEngine:self finishedProcessingChange:v5];
  }
}

- (NPKPassSyncEngineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NPKPassSyncEngineDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end