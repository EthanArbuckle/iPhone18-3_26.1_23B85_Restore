@interface NPKPassSyncEngine
- (NPKPassSyncEngine)initWithCoder:(id)coder;
- (NPKPassSyncEngine)initWithRole:(unint64_t)role;
- (NPKPassSyncEngineDataSource)dataSource;
- (NPKPassSyncEngineDelegate)delegate;
- (NPKPassSyncState)candidateState;
- (NPKPassSyncState)libraryState;
- (NPKPassSyncState)reconciledState;
- (NSString)engineName;
- (void)_engineStateChanged;
- (void)_finishedProcessingChange:(id)change;
- (void)_handleStateChange:(id)change attemptRecoverReconcileStateVersionMismatch:(BOOL)mismatch;
- (void)_requestAddPassData:(id)data forSyncStateItem:(id)item completion:(id)completion;
- (void)_requestRemovePassWithUniqueID:(id)d completion:(id)completion;
- (void)_requestUpdatePassData:(id)data forSyncStateItem:(id)item baseManifestHashForPartialUpdate:(id)update remoteAssetsForPartialUpdate:(id)partialUpdate completion:(id)completion;
- (void)_sendNextStateChange;
- (void)_sendProposedReconciledState:(id)state;
- (void)_sendReconciledStateAcceptedWithHash:(id)hash;
- (void)_sendReconciledStateUnrecognizedWithHash:(id)hash version:(unint64_t)version currentPassSyncState:(id)state;
- (void)_sendStateChange:(id)change;
- (void)_shouldProcessAddOrUpdateChangeOfType:(unint64_t)type changeSyncStateItem:(id)item librarySyncStateItem:(id)stateItem reconciledSyncStateItem:(id)syncStateItem candidateChange:(id)change shouldApplyToPassLibrary:(BOOL *)library shouldApplyToReconciledState:(BOOL *)state;
- (void)_unexpectedEventOccurred;
- (void)encodeWithCoder:(id)coder;
- (void)handleProposedReconciledState:(id)state;
- (void)handleReconciledStateAcceptedWithHash:(id)hash;
- (void)handleReconciledStateUnrecognizedWithHash:(id)hash version:(unint64_t)version passSyncState:(id)state;
- (void)setBackupState:(id)state;
- (void)setCandidateChange:(id)change;
- (void)setCandidateState:(id)state;
- (void)setLibraryState:(id)state;
- (void)setMinSyncStateVersion:(unint64_t)version;
- (void)setReconciledState:(id)state;
- (void)syncIfNecessary;
@end

@implementation NPKPassSyncEngine

- (NPKPassSyncEngine)initWithRole:(unint64_t)role
{
  v5.receiver = self;
  v5.super_class = NPKPassSyncEngine;
  result = [(NPKPassSyncEngine *)&v5 init];
  if (result)
  {
    result->_engineRole = role;
    result->_requireAppleAccountForPaymentPasses = 1;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  libraryState = self->_libraryState;
  coderCopy = coder;
  [coderCopy encodeObject:libraryState forKey:@"libraryState"];
  [coderCopy encodeObject:self->_reconciledState forKey:@"reconciledState"];
  [coderCopy encodeObject:self->_backupState forKey:@"backupState"];
  [coderCopy encodeObject:self->_candidateState forKey:@"candidateState"];
  v7 = [(NPKPassSyncChange *)self->_candidateChange copy];
  [v7 setPassData:0];
  [coderCopy encodeObject:v7 forKey:@"candidateChange"];
  if (self->_engineRole)
  {
    v6 = @"Companion";
  }

  else
  {
    v6 = @"Watch";
  }

  [coderCopy encodeObject:v6 forKey:@"engineRole"];
}

- (NPKPassSyncEngine)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = NPKPassSyncEngine;
  v5 = [(NPKPassSyncEngine *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"libraryState"];
    libraryState = v5->_libraryState;
    v5->_libraryState = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reconciledState"];
    reconciledState = v5->_reconciledState;
    v5->_reconciledState = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backupState"];
    backupState = v5->_backupState;
    v5->_backupState = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidateState"];
    candidateState = v5->_candidateState;
    v5->_candidateState = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidateChange"];
    candidateChange = v5->_candidateChange;
    v5->_candidateChange = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"engineRole"];
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
  libraryState = [(NPKPassSyncEngine *)self libraryState];
  reconciledState = [(NPKPassSyncEngine *)self reconciledState];
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
        engineName = [(NPKPassSyncEngine *)self engineName];
        v13 = 138412290;
        v14 = engineName;
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
        engineName2 = [(NPKPassSyncEngine *)self engineName];
        v13 = 138412802;
        v14 = engineName2;
        v15 = 2112;
        v16 = libraryState;
        v17 = 2112;
        v18 = reconciledState;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Sync is necessary.\n libraryState:%@\n reconciledState:%@", &v13, 0x20u);
      }
    }

    [(NPKPassSyncEngine *)self _sendNextStateChange];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleStateChange:(id)change attemptRecoverReconcileStateVersionMismatch:(BOOL)mismatch
{
  mismatchCopy = mismatch;
  v145 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v7 = pk_Sync_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Sync_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      [(NPKPassSyncEngine *)self engineName];
      v106 = v99 = self;
      v10 = changeCopy;
      v97 = changeCopy;
      changeUUID = [changeCopy changeUUID];
      reconciledStateHash = [changeCopy reconciledStateHash];
      hexEncoding = [reconciledStateHash hexEncoding];
      reconciledStateVersion = [changeCopy reconciledStateVersion];
      v12 = NPKPassSyncChangeTypeToString([changeCopy changeType]);
      uniqueID = [v10 uniqueID];
      syncStateItem = [v10 syncStateItem];
      passData = [v10 passData];
      npkDescription = [passData npkDescription];
      baseManifestHashForPartialUpdate = [v10 baseManifestHashForPartialUpdate];
      hexEncoding2 = [baseManifestHashForPartialUpdate hexEncoding];
      [v10 remoteAssetsForPartialUpdate];
      v17 = v100 = mismatchCopy;
      *buf = 138414594;
      v126 = v106;
      v127 = 2112;
      v128 = changeUUID;
      v129 = 2112;
      v130 = hexEncoding;
      v131 = 2048;
      v132 = reconciledStateVersion;
      v133 = 2112;
      v134 = v12;
      v135 = 2112;
      v136 = uniqueID;
      v137 = 2112;
      v138 = syncStateItem;
      v139 = 2112;
      v140 = npkDescription;
      v141 = 2112;
      v142 = hexEncoding2;
      v143 = 2112;
      v144 = v17;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Received state change\n\tChange UUID: %@\n\tReconciled state hash: %@\n\tVersion:%lu\n\tChange type: %@\n\tunique ID: %@\n\tsync state item: %@\n\tpass data: %@\n\tbase manifest hash for partial update: %@\n\t remote assets for partial update: %@", buf, 0x66u);

      mismatchCopy = v100;
      self = v99;
      changeCopy = v97;
    }
  }

  backupState = [(NPKPassSyncEngine *)self backupState];
  v19 = backupState;
  if (backupState)
  {
    syncStateHash = [backupState syncStateHash];
    reconciledState = [(NPKPassSyncEngine *)self reconciledState];
    syncStateHash2 = [reconciledState syncStateHash];

    reconciledStateHash2 = [changeCopy reconciledStateHash];
    if (PKEqualObjects())
    {
    }

    else
    {
      reconciledStateHash3 = [changeCopy reconciledStateHash];
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
            engineName = [(NPKPassSyncEngine *)self engineName];
            *buf = 138412802;
            v126 = engineName;
            v127 = 2112;
            v128 = syncStateHash;
            v129 = 2112;
            v130 = syncStateHash2;
            _os_log_impl(&dword_25B300000, v28, OS_LOG_TYPE_DEFAULT, "Warning: Sync state engine (%@): State change based on backup hash (%@), not reconciled hash (%@); moving backup to reconciled", buf, 0x20u);
          }
        }

        [(NPKPassSyncEngine *)self setReconciledState:v19];
        [(NPKPassSyncEngine *)self setBackupState:0];
        [(NPKPassSyncEngine *)self _unexpectedEventOccurred];
      }
    }
  }

  reconciledStateHash4 = [changeCopy reconciledStateHash];
  reconciledState2 = [(NPKPassSyncEngine *)self reconciledState];
  syncStateHash3 = [reconciledState2 syncStateHash];
  if (PKEqualObjects())
  {
    reconciledStateVersion2 = [changeCopy reconciledStateVersion];
    reconciledState3 = [(NPKPassSyncEngine *)self reconciledState];
    v35 = mismatchCopy;
    version = [reconciledState3 version];

    v37 = reconciledStateVersion2 == version;
    mismatchCopy = v35;
    if (!v37)
    {
      goto LABEL_22;
    }

    changeType = [changeCopy changeType];
    uniqueID2 = [changeCopy uniqueID];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke;
    aBlock[3] = &unk_279947A80;
    aBlock[4] = self;
    v40 = changeCopy;
    v124 = v40;
    v107 = _Block_copy(aBlock);
    v119[0] = MEMORY[0x277D85DD0];
    v119[1] = 3221225472;
    v119[2] = __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_82;
    v119[3] = &unk_279945958;
    v122 = changeType;
    v119[4] = self;
    v41 = v40;
    v120 = v41;
    v42 = uniqueID2;
    v121 = v42;
    v104 = _Block_copy(v119);
    v115[0] = MEMORY[0x277D85DD0];
    v115[1] = 3221225472;
    v115[2] = __84__NPKPassSyncEngine__handleStateChange_attemptRecoverReconcileStateVersionMismatch___block_invoke_84;
    v115[3] = &unk_279947AA8;
    v118 = changeType;
    v115[4] = self;
    v43 = v41;
    v116 = v43;
    v44 = v42;
    v117 = v44;
    v45 = _Block_copy(v115);
    v114 = 0;
    if (changeType >= 2)
    {
      if (changeType != 2)
      {
        goto LABEL_45;
      }

      v114 = 257;
    }

    else
    {
      libraryState = [(NPKPassSyncEngine *)self libraryState];
      syncStateItems = [libraryState syncStateItems];
      v48 = [syncStateItems objectForKey:v44];

      reconciledState4 = [(NPKPassSyncEngine *)self reconciledState];
      syncStateItems2 = [reconciledState4 syncStateItems];
      [syncStateItems2 objectForKey:v44];
      v101 = v44;
      v52 = v51 = v45;

      candidateChange = [(NPKPassSyncEngine *)self candidateChange];
      syncStateItem2 = [v43 syncStateItem];
      [(NPKPassSyncEngine *)self _shouldProcessAddOrUpdateChangeOfType:changeType changeSyncStateItem:syncStateItem2 librarySyncStateItem:v48 reconciledSyncStateItem:v52 candidateChange:candidateChange shouldApplyToPassLibrary:&v114 + 1 shouldApplyToReconciledState:&v114];

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
              engineName2 = [(NPKPassSyncEngine *)self engineName];
              changeUUID2 = [v43 changeUUID];
              *buf = 138412546;
              v126 = engineName2;
              v127 = 2112;
              v128 = changeUUID2;
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
              engineName3 = [(NPKPassSyncEngine *)self engineName];
              changeUUID3 = [v43 changeUUID];
              *buf = 138412546;
              v126 = engineName3;
              v127 = 2112;
              v128 = changeUUID3;
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
        engineName4 = [(NPKPassSyncEngine *)self engineName];
        changeUUID4 = [v43 changeUUID];
        *buf = 138412546;
        v126 = engineName4;
        v127 = 2112;
        v128 = changeUUID4;
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
  reconciledStateVersion3 = [changeCopy reconciledStateVersion];
  reconciledState5 = [(NPKPassSyncEngine *)self reconciledState];
  version2 = [reconciledState5 version];

  v58 = pk_Sync_log();
  v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);

  if (!mismatchCopy || version2 == reconciledStateVersion3)
  {
    if (v59)
    {
      v67 = pk_Sync_log();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        engineName5 = [(NPKPassSyncEngine *)self engineName];
        reconciledStateHash5 = [changeCopy reconciledStateHash];
        hexEncoding3 = [reconciledStateHash5 hexEncoding];
        reconciledStateVersion4 = [changeCopy reconciledStateVersion];
        reconciledState6 = [(NPKPassSyncEngine *)self reconciledState];
        syncStateHash4 = [reconciledState6 syncStateHash];
        hexEncoding4 = [syncStateHash4 hexEncoding];
        reconciledState7 = [(NPKPassSyncEngine *)self reconciledState];
        version3 = [reconciledState7 version];
        *buf = 138413314;
        v126 = engineName5;
        v127 = 2112;
        v128 = hexEncoding3;
        v129 = 2048;
        v130 = reconciledStateVersion4;
        v131 = 2112;
        v132 = hexEncoding4;
        v133 = 2048;
        v134 = version3;
        _os_log_impl(&dword_25B300000, v67, OS_LOG_TYPE_DEFAULT, "Warning: Sync state engine (%@): Unrecognized reconciled state hash %@ version:%lu, current state hash:%@ version:%lu", buf, 0x34u);
      }
    }

    reconciledStateHash6 = [changeCopy reconciledStateHash];
    reconciledStateVersion5 = [changeCopy reconciledStateVersion];
    reconciledState8 = [(NPKPassSyncEngine *)self reconciledState];
    [(NPKPassSyncEngine *)self _sendReconciledStateUnrecognizedWithHash:reconciledStateHash6 version:reconciledStateVersion5 currentPassSyncState:reconciledState8];

    [(NPKPassSyncEngine *)self _unexpectedEventOccurred];
  }

  else
  {
    if (v59)
    {
      v60 = pk_Sync_log();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        engineName6 = [(NPKPassSyncEngine *)self engineName];
        *buf = 138412290;
        v126 = engineName6;
        _os_log_impl(&dword_25B300000, v60, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Attempt to recover from mismatch reconcile state", buf, 0xCu);
      }
    }

    -[NPKPassSyncEngine setMinSyncStateVersion:](self, "setMinSyncStateVersion:", [changeCopy reconciledStateVersion]);
    v62 = pk_Sync_log();
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);

    if (v63)
    {
      v64 = pk_Sync_log();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        engineName7 = [(NPKPassSyncEngine *)self engineName];
        uniqueID3 = [changeCopy uniqueID];
        *buf = 138412546;
        v126 = engineName7;
        v127 = 2112;
        v128 = uniqueID3;
        _os_log_impl(&dword_25B300000, v64, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): handle second time change with UUID:%@", buf, 0x16u);
      }
    }

    [(NPKPassSyncEngine *)self _handleStateChange:changeCopy attemptRecoverReconcileStateVersionMismatch:0];
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

- (void)handleReconciledStateUnrecognizedWithHash:(id)hash version:(unint64_t)version passSyncState:(id)state
{
  v31 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  stateCopy = state;
  v10 = pk_Sync_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Sync_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      hexEncoding = [hashCopy hexEncoding];
      v23 = 138413058;
      v24 = engineName;
      v25 = 2112;
      v26 = hexEncoding;
      v27 = 2048;
      versionCopy = version;
      v29 = 2112;
      v30 = stateCopy;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Received reconciled state unrecognized\n\tReconciled state hash: %@\n\tversion:%lu\n\tPass sync state: %@", &v23, 0x2Au);
    }
  }

  version = [stateCopy version];
  reconciledState = [(NPKPassSyncEngine *)self reconciledState];
  version2 = [reconciledState version];

  if (version2 == version)
  {
    reconciledState2 = [(NPKPassSyncEngine *)self reconciledState];
  }

  else
  {
    [(NPKPassSyncEngine *)self setMinSyncStateVersion:version];
    reconciledState3 = [(NPKPassSyncEngine *)self reconciledState];
    libraryState = [(NPKPassSyncEngine *)self libraryState];
    reconciledState2 = [reconciledState3 commonBaselinePassSyncStateWithState:libraryState version:version];
  }

  [(NPKPassSyncEngine *)self setCandidateState:0];
  [(NPKPassSyncEngine *)self setReconciledState:0];
  if (stateCopy)
  {
    v21 = [reconciledState2 commonBaselinePassSyncStateWithState:stateCopy version:{objc_msgSend(reconciledState2, "version")}];
    [(NPKPassSyncEngine *)self setCandidateState:v21];
    [(NPKPassSyncEngine *)self _sendProposedReconciledState:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleProposedReconciledState:(id)state
{
  v22 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = pk_Sync_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Sync_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      *buf = 138412546;
      v19 = engineName;
      v20 = 2112;
      v21 = stateCopy;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Received proposed reconciled state\n\tProposed pass sync state: %@", buf, 0x16u);
    }
  }

  version = [stateCopy version];
  libraryState = [(NPKPassSyncEngine *)self libraryState];
  if (version != [libraryState version])
  {

    goto LABEL_9;
  }

  candidateState = [(NPKPassSyncEngine *)self candidateState];
  libraryState2 = [(NPKPassSyncEngine *)self libraryState];
  v17[1] = libraryState2;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v14 = [stateCopy stateIsSubsetOfUnionOfPassSyncStates:v13];

  if (!v14)
  {
LABEL_9:
    syncStateHash = [stateCopy syncStateHash];
    -[NPKPassSyncEngine _sendReconciledStateUnrecognizedWithHash:version:currentPassSyncState:](self, "_sendReconciledStateUnrecognizedWithHash:version:currentPassSyncState:", syncStateHash, [stateCopy version], 0);
    goto LABEL_10;
  }

  [(NPKPassSyncEngine *)self setBackupState:0];
  [(NPKPassSyncEngine *)self setReconciledState:stateCopy];
  syncStateHash = [stateCopy syncStateHash];
  [(NPKPassSyncEngine *)self _sendReconciledStateAcceptedWithHash:syncStateHash];
LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleReconciledStateAcceptedWithHash:(id)hash
{
  v26 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  v5 = pk_Sync_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Sync_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      hexEncoding = [hashCopy hexEncoding];
      v20 = 138412546;
      v21 = engineName;
      v22 = 2112;
      v23 = hexEncoding;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Received proposed reconciled state accepted\n\tReconciled state hash: %@", &v20, 0x16u);
    }
  }

  candidateState = [(NPKPassSyncEngine *)self candidateState];
  syncStateHash = [candidateState syncStateHash];
  v12 = PKEqualObjects();

  if (v12)
  {
    [(NPKPassSyncEngine *)self setReconciledState:candidateState];
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
        engineName2 = [(NPKPassSyncEngine *)self engineName];
        hexEncoding2 = [hashCopy hexEncoding];
        syncStateHash2 = [candidateState syncStateHash];
        v20 = 138412802;
        v21 = engineName2;
        v22 = 2112;
        v23 = hexEncoding2;
        v24 = 2112;
        v25 = syncStateHash2;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Warning: Sync state engine (%@): Did not recognize hash (%@) in reconciled state accepted message; reconciled state hash is %@", &v20, 0x20u);
      }
    }

    [(NPKPassSyncEngine *)self _unexpectedEventOccurred];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setMinSyncStateVersion:(unint64_t)version
{
  v38 = *MEMORY[0x277D85DE8];
  libraryState = [(NPKPassSyncEngine *)self libraryState];
  version = [libraryState version];

  reconciledState = [(NPKPassSyncEngine *)self reconciledState];
  version2 = [reconciledState version];

  backupState = self->_backupState;
  if (backupState)
  {
    version3 = [(NPKPassSyncState *)backupState version];
  }

  else
  {
    version3 = version2;
  }

  if (version2 != version || version != version || version != version2 || version2 != version3)
  {
    v11 = pk_Sync_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = pk_Sync_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 134217984;
        versionCopy = version;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Requested to move to sync state version:%lu", &v34, 0xCu);
      }
    }

    [NPKPassSyncState setMinRemoteDevicePassSyncStateVersionSupport:version];
    dataSource = [(NPKPassSyncEngine *)self dataSource];
    v15 = [dataSource passSyncEngineNeedsUpdatedPassLibraryState:self];

    v16 = [v15 passSyncStateWithVersion:version];
    [(NPKPassSyncEngine *)self setLibraryState:v16];
    v17 = pk_Sync_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v19 = pk_Sync_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        engineName = [(NPKPassSyncEngine *)self engineName];
        v34 = 138412546;
        versionCopy = engineName;
        v36 = 2112;
        v37 = v16;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): updated library state to match expected version:%@", &v34, 0x16u);
      }
    }

    reconciledState2 = [(NPKPassSyncEngine *)self reconciledState];
    v22 = [v15 updateReconcileState:reconciledState2 expectedVersion:version];

    [(NPKPassSyncEngine *)self setReconciledState:v22];
    v23 = pk_Sync_log();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

    if (v24)
    {
      v25 = pk_Sync_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        engineName2 = [(NPKPassSyncEngine *)self engineName];
        v34 = 138412546;
        versionCopy = engineName2;
        v36 = 2112;
        v37 = v22;
        _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): updated reconciled state to match expected version:%@", &v34, 0x16u);
      }
    }

    v27 = self->_backupState;
    if (v27)
    {
      v28 = [v15 updateReconcileState:v27 expectedVersion:version];
      [(NPKPassSyncEngine *)self setBackupState:v28];
      v29 = pk_Sync_log();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

      if (v30)
      {
        v31 = pk_Sync_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          engineName3 = [(NPKPassSyncEngine *)self engineName];
          v34 = 138412546;
          versionCopy = engineName3;
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

- (void)setLibraryState:(id)state
{
  v19 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  libraryState = self->_libraryState;
  if ((PKEqualObjects() & 1) == 0)
  {
    version = [stateCopy version];
    if (version != +[NPKPassSyncState minRemoteDevicePassSyncStateVersionSupport])
    {
      v8 = pk_Sync_log();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

      if (v9)
      {
        v10 = pk_Sync_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          engineName = [(NPKPassSyncEngine *)self engineName];
          v13 = 138412802;
          v14 = engineName;
          v15 = 2048;
          version2 = [stateCopy version];
          v17 = 2048;
          v18 = +[NPKPassSyncState minRemoteDevicePassSyncStateVersionSupport];
          _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Warning: Sync state engine (%@): setting new library state with version:%lu, expected:%lu", &v13, 0x20u);
        }
      }
    }

    objc_storeStrong(&self->_libraryState, state);
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

- (void)setBackupState:(id)state
{
  stateCopy = state;
  backupState = self->_backupState;
  v7 = stateCopy;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_backupState, state);
    [(NPKPassSyncEngine *)self _engineStateChanged];
  }
}

- (void)setReconciledState:(id)state
{
  stateCopy = state;
  reconciledState = self->_reconciledState;
  v7 = stateCopy;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_reconciledState, state);
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

- (void)setCandidateState:(id)state
{
  stateCopy = state;
  candidateState = self->_candidateState;
  v7 = stateCopy;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_candidateState, state);
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

- (void)setCandidateChange:(id)change
{
  changeCopy = change;
  candidateChange = self->_candidateChange;
  v7 = changeCopy;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_candidateChange, change);
    [(NPKPassSyncEngine *)self _engineStateChanged];
  }
}

- (void)_sendNextStateChange
{
  v77 = *MEMORY[0x277D85DE8];
  libraryState = [(NPKPassSyncEngine *)self libraryState];
  reconciledState = [(NPKPassSyncEngine *)self reconciledState];
  v63 = 0;
  v64 = 0;
  v62 = 0;
  [libraryState compareWithBaselinePassSyncState:reconciledState outAddedSyncItems:&v64 outUpdatedSyncItems:&v63 outRemovedSyncItems:&v62];
  v5 = v64;
  v6 = v63;
  v60 = v62;

  uUID = [MEMORY[0x277CCAD78] UUID];
  reconciledState2 = [(NPKPassSyncEngine *)self reconciledState];
  syncStateHash = [reconciledState2 syncStateHash];

  reconciledState3 = [(NPKPassSyncEngine *)self reconciledState];
  version = [reconciledState3 version];

  v10 = pk_Sync_log();
  LODWORD(reconciledState) = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  v59 = uUID;
  if (reconciledState)
  {
    v11 = pk_Sync_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      libraryState2 = [(NPKPassSyncEngine *)self libraryState];
      [libraryState2 syncStateHash];
      v14 = v13 = v6;
      hexEncoding = [v14 hexEncoding];
      reconciledState4 = [(NPKPassSyncEngine *)self reconciledState];
      syncStateHash2 = [reconciledState4 syncStateHash];
      hexEncoding2 = [syncStateHash2 hexEncoding];
      *buf = 138413570;
      v66 = engineName;
      v67 = 2112;
      v68 = hexEncoding;
      v69 = 2112;
      v70 = hexEncoding2;
      v71 = 2112;
      v72 = v5;
      v73 = 2112;
      v74 = v13;
      v75 = 2112;
      v76 = v60;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Compared library state with manifestHash:%@ with reconcileState:%@\n addedID:%@\n updatedIDs:%@\n removedIDs:%@\n", buf, 0x3Eu);

      uUID = v59;
      v6 = v13;
    }
  }

  v57 = v5;
  if ([v5 count] || objc_msgSend(v6, "count"))
  {
    v55 = v6;
    if ([v6 count])
    {
      firstObject = [v6 firstObject];
      reconciledState5 = [(NPKPassSyncEngine *)self reconciledState];
      syncStateItems = [reconciledState5 syncStateItems];
      uniqueID = [firstObject uniqueID];
      v23 = [syncStateItems objectForKey:uniqueID];

      manifest = [v23 manifest];
      manifestHash = [v23 manifestHash];

      if (manifest)
      {
        dataSource = [(NPKPassSyncEngine *)self dataSource];
        uniqueID2 = [firstObject uniqueID];
        v61 = 0;
        v28 = [dataSource passSyncEngine:self partialDataForPassWithUniqueID:uniqueID2 baseManifest:manifest outRemoteAssets:&v61];
        v29 = v61;

        v30 = 1;
        if (v28)
        {
LABEL_14:
          v33 = [NPKPassSyncChange alloc];
          uniqueID3 = [firstObject uniqueID];
          v35 = v33;
          v36 = syncStateHash;
          v37 = [(NPKPassSyncChange *)v35 initWithChangeUUID:uUID reconciledStateHash:syncStateHash reconciledStateVersion:version changeType:v30 uniqueID:uniqueID3 syncStateItem:firstObject passData:v28 baseManifestHashForPartialUpdate:manifestHash remoteAssetsForPartialUpdate:v29];

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
      firstObject = [v5 firstObject];
      v29 = 0;
      v30 = 0;
      manifestHash = 0;
      manifest = 0;
    }

    dataSource2 = [(NPKPassSyncEngine *)self dataSource];
    uniqueID4 = [firstObject uniqueID];
    v28 = [dataSource2 passSyncEngine:self dataForPassWithUniqueID:uniqueID4];

    v29 = 0;
    manifestHash = 0;
    goto LABEL_14;
  }

  v38 = v60;
  if (![v60 count])
  {
    v48 = pk_Sync_log();
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);

    v36 = syncStateHash;
    if (!v49)
    {
      goto LABEL_25;
    }

    v37 = pk_Sync_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      engineName2 = [(NPKPassSyncEngine *)self engineName];
      reconciledState6 = [(NPKPassSyncEngine *)self reconciledState];
      syncStateHash3 = [reconciledState6 syncStateHash];
      hexEncoding3 = [syncStateHash3 hexEncoding];
      *buf = 138412546;
      v66 = engineName2;
      v67 = 2112;
      v68 = hexEncoding3;
      _os_log_impl(&dword_25B300000, v37, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): No state changes to send; settling on reconciled state hash %@.", buf, 0x16u);

      v36 = syncStateHash;
      v38 = v60;
    }

    goto LABEL_24;
  }

  firstObject = [v60 firstObject];
  v46 = [NPKPassSyncChange alloc];
  manifest = [firstObject uniqueID];
  v47 = v46;
  v36 = syncStateHash;
  v37 = [(NPKPassSyncChange *)v47 initWithChangeUUID:uUID reconciledStateHash:syncStateHash reconciledStateVersion:version changeType:2 uniqueID:manifest syncStateItem:0 passData:0];
LABEL_15:

  if (v37)
  {
    candidateChange = [(NPKPassSyncEngine *)self candidateChange];
    if (candidateChange && [v37 isEqualToChangeIgnoringUUID:candidateChange])
    {
      v40 = pk_Sync_log();
      v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);

      if (v41)
      {
        v42 = pk_Sync_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          engineName3 = [(NPKPassSyncEngine *)self engineName];
          *buf = 138412802;
          v66 = engineName3;
          v67 = 2112;
          v68 = candidateChange;
          v69 = 2112;
          v70 = v37;
          _os_log_impl(&dword_25B300000, v42, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Outgoing change is identical to candidate change except for UUID; changing UUID to match candidate change\n\tCandidate change: %@\n\tOutgoing change: %@", buf, 0x20u);
        }
      }

      changeUUID = [candidateChange changeUUID];
      [v37 setChangeUUID:changeUUID];

      v36 = syncStateHash;
    }

    [(NPKPassSyncEngine *)self setCandidateChange:v37];
    [(NPKPassSyncEngine *)self _sendStateChange:v37];

LABEL_24:
  }

LABEL_25:

  v45 = *MEMORY[0x277D85DE8];
}

- (void)_shouldProcessAddOrUpdateChangeOfType:(unint64_t)type changeSyncStateItem:(id)item librarySyncStateItem:(id)stateItem reconciledSyncStateItem:(id)syncStateItem candidateChange:(id)change shouldApplyToPassLibrary:(BOOL *)library shouldApplyToReconciledState:(BOOL *)state
{
  stateCopy5 = state;
  v75 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  stateItemCopy = stateItem;
  syncStateItemCopy = syncStateItem;
  changeCopy = change;
  if (type != 1 || stateItemCopy)
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
        engineName = [(NPKPassSyncEngine *)self engineName];
        *buf = 138413058;
        v68 = engineName;
        v69 = 2112;
        v70 = syncStateItemCopy;
        v71 = 2112;
        v72 = stateItemCopy;
        v73 = 2112;
        v74 = itemCopy;
        _os_log_impl(&dword_25B300000, v29, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Pass has been added/updated in local library also.\n\tReconciled sync state item: %@\n\tLocal library sync state item: %@\n\tChange sync state item: %@", buf, 0x2Au);
      }
    }

    sequenceCounter = [stateItemCopy sequenceCounter];
    sequenceCounter2 = [itemCopy sequenceCounter];
    v32 = sequenceCounter2;
    if (!sequenceCounter && sequenceCounter2)
    {
LABEL_14:

      v26 = 1;
LABEL_44:
      v59 = 1;
      goto LABEL_45;
    }

    if (sequenceCounter && sequenceCounter2)
    {
      if ([sequenceCounter compare:sequenceCounter2]!= 1)
      {
        goto LABEL_14;
      }

      stateCopy3 = state;
      v33 = pk_Sync_log();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

      if (v34)
      {
        v35 = pk_Sync_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          engineName2 = [(NPKPassSyncEngine *)self engineName];
          *buf = 138412802;
          v68 = engineName2;
          v69 = 2112;
          v70 = sequenceCounter;
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
      v65 = sequenceCounter;
      stateCopy3 = state;
      selfCopy = self;
      v41 = itemCopy;
      libraryCopy = library;
      v43 = syncStateItemCopy;
      v44 = changeCopy;
      v45 = selfCopy;
      engineRole = selfCopy->_engineRole;
      v47 = pk_Sync_log();
      v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);

      if (!engineRole)
      {
        changeCopy = v44;
        syncStateItemCopy = v43;
        library = libraryCopy;
        itemCopy = v41;
        v62 = v45;
        sequenceCounter = v65;
        stateCopy5 = state;
        if (v48)
        {
          v63 = pk_Sync_log();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            engineName3 = [(NPKPassSyncEngine *)v62 engineName];
            *buf = 138412290;
            v68 = engineName3;
            _os_log_impl(&dword_25B300000, v63, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Applying change in the absence of sync state counters", buf, 0xCu);
          }
        }

        goto LABEL_14;
      }

      changeCopy = v44;
      syncStateItemCopy = v43;
      library = libraryCopy;
      itemCopy = v41;
      self = v45;
      sequenceCounter = v65;
      if (v48)
      {
        v35 = pk_Sync_log();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          engineName2 = [(NPKPassSyncEngine *)self engineName];
          *buf = 138412290;
          v68 = engineName2;
          v37 = "Notice: Sync state engine (%@): Not applying change in the absence of sync state counters";
          v38 = v35;
          v39 = 12;
          goto LABEL_25;
        }

LABEL_26:
      }
    }

    stateCopy5 = stateCopy3;
    goto LABEL_28;
  }

  v20 = pk_Sync_log();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

  if (!v21)
  {
    goto LABEL_29;
  }

  sequenceCounter = pk_Sync_log();
  if (os_log_type_enabled(sequenceCounter, OS_LOG_TYPE_DEFAULT))
  {
    engineName4 = [(NPKPassSyncEngine *)self engineName];
    uniqueID = [itemCopy uniqueID];
    libraryState = [(NPKPassSyncEngine *)self libraryState];
    *buf = 138412802;
    v68 = engineName4;
    v69 = 2112;
    v70 = uniqueID;
    v71 = 2112;
    v72 = libraryState;
    _os_log_impl(&dword_25B300000, sequenceCounter, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Ignoring request to apply pass update with unique ID %@ to local library since the pass is not in our library state: %@", buf, 0x20u);

    stateCopy5 = state;
  }

LABEL_28:

LABEL_29:
  if (self->_engineRole != 1)
  {
LABEL_47:
    v26 = 0;
LABEL_48:
    v59 = 1;
    if (!library)
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
      sequenceCounter = pk_Sync_log();
      if (os_log_type_enabled(sequenceCounter, OS_LOG_TYPE_DEFAULT))
      {
        engineName5 = [(NPKPassSyncEngine *)self engineName];
        *buf = 138413058;
        v68 = engineName5;
        v69 = 2112;
        v70 = stateItemCopy;
        v71 = 2112;
        v72 = itemCopy;
        v73 = 2112;
        v74 = changeCopy;
        _os_log_impl(&dword_25B300000, sequenceCounter, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Applying change to reconciled state because it matches our library state\n\tLocal library sync state item: %@\n\tChange sync state item: %@\n\tCandidate change: %@", buf, 0x2Au);
LABEL_42:

        goto LABEL_43;
      }

      goto LABEL_43;
    }

    goto LABEL_47;
  }

  uniqueID2 = [changeCopy uniqueID];
  uniqueID3 = [itemCopy uniqueID];
  v54 = [uniqueID2 isEqualToString:uniqueID3];

  v55 = pk_Sync_log();
  v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);

  if (!v54)
  {
    if (v56)
    {
      sequenceCounter = pk_Sync_log();
      if (os_log_type_enabled(sequenceCounter, OS_LOG_TYPE_DEFAULT))
      {
        engineName5 = [(NPKPassSyncEngine *)self engineName];
        uniqueID4 = [itemCopy uniqueID];
        *buf = 138412802;
        v68 = engineName5;
        v69 = 2112;
        v70 = uniqueID4;
        v71 = 2112;
        v72 = changeCopy;
        _os_log_impl(&dword_25B300000, sequenceCounter, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Applying change to reconciled state even though we have an outstanding candidate change for pass with unique ID %@: %@", buf, 0x20u);

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
    sequenceCounter = pk_Sync_log();
    if (os_log_type_enabled(sequenceCounter, OS_LOG_TYPE_DEFAULT))
    {
      engineName6 = [(NPKPassSyncEngine *)self engineName];
      uniqueID5 = [itemCopy uniqueID];
      *buf = 138412802;
      v68 = engineName6;
      v69 = 2112;
      v70 = uniqueID5;
      v71 = 2112;
      v72 = changeCopy;
      _os_log_impl(&dword_25B300000, sequenceCounter, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Not applying change to reconciled state since we are not applying it to the local library and have an outstanding candidate change for pass with unique ID %@: %@", buf, 0x20u);
    }

    v26 = 0;
    v59 = 0;
LABEL_45:

    if (!library)
    {
      goto LABEL_50;
    }

LABEL_49:
    *library = v26;
    goto LABEL_50;
  }

  v26 = 0;
  v59 = 0;
  if (library)
  {
    goto LABEL_49;
  }

LABEL_50:
  if (stateCopy5)
  {
    *stateCopy5 = v59;
  }

  v61 = *MEMORY[0x277D85DE8];
}

- (void)_sendStateChange:(id)change
{
  v15 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = pk_Sync_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Sync_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      v11 = 138412546;
      v12 = engineName;
      v13 = 2112;
      v14 = changeCopy;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Sending state change\n\tChange: %@", &v11, 0x16u);
    }
  }

  delegate = [(NPKPassSyncEngine *)self delegate];
  [delegate passSyncEngine:self sendStateChange:changeCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sendReconciledStateUnrecognizedWithHash:(id)hash version:(unint64_t)version currentPassSyncState:(id)state
{
  v25 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  stateCopy = state;
  v10 = pk_Sync_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Sync_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      hexEncoding = [hashCopy hexEncoding];
      v17 = 138413058;
      v18 = engineName;
      v19 = 2112;
      v20 = hexEncoding;
      v21 = 2048;
      versionCopy = version;
      v23 = 2112;
      v24 = stateCopy;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Sending reconciled state unrecognized\n\tReconciled state hash: %@\n\tversion:%lu\n\tPass sync state: %@", &v17, 0x2Au);
    }
  }

  delegate = [(NPKPassSyncEngine *)self delegate];
  [delegate passSyncEngine:self sendReconciledStateUnrecognizedWithHash:hashCopy version:version currentPassSyncState:stateCopy];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_sendReconciledStateAcceptedWithHash:(id)hash
{
  v16 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  v5 = pk_Sync_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Sync_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      hexEncoding = [hashCopy hexEncoding];
      v12 = 138412546;
      v13 = engineName;
      v14 = 2112;
      v15 = hexEncoding;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Sending reconciled state accepted\n\tReconciled state hash: %@", &v12, 0x16u);
    }
  }

  delegate = [(NPKPassSyncEngine *)self delegate];
  [delegate passSyncEngine:self sendReconciledStateAcceptedWithHash:hashCopy];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_sendProposedReconciledState:(id)state
{
  v15 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = pk_Sync_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Sync_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      v11 = 138412546;
      v12 = engineName;
      v13 = 2112;
      v14 = stateCopy;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Sending proposed reconciled state\n\tProposed pass sync state: %@", &v11, 0x16u);
    }
  }

  delegate = [(NPKPassSyncEngine *)self delegate];
  [delegate passSyncEngine:self sendProposedReconciledState:stateCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_requestAddPassData:(id)data forSyncStateItem:(id)item completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  itemCopy = item;
  completionCopy = completion;
  v11 = pk_Sync_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Sync_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      npkDescription = [dataCopy npkDescription];
      *buf = 138412802;
      v24 = engineName;
      v25 = 2112;
      v26 = npkDescription;
      v27 = 2112;
      v28 = itemCopy;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Requesting that delegate add pass to local pass library\n\tData: %@\n\tSync state item: %@", buf, 0x20u);
    }
  }

  delegate = [(NPKPassSyncEngine *)self delegate];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __69__NPKPassSyncEngine__requestAddPassData_forSyncStateItem_completion___block_invoke;
  v20[3] = &unk_279947AF8;
  v20[4] = self;
  v21 = itemCopy;
  v22 = completionCopy;
  v17 = completionCopy;
  v18 = itemCopy;
  [delegate passSyncEngine:self requestsAddPassData:dataCopy forSyncStateItem:v18 completion:v20];

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

- (void)_requestUpdatePassData:(id)data forSyncStateItem:(id)item baseManifestHashForPartialUpdate:(id)update remoteAssetsForPartialUpdate:(id)partialUpdate completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  itemCopy = item;
  updateCopy = update;
  partialUpdateCopy = partialUpdate;
  completionCopy = completion;
  v17 = pk_Sync_log();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (v18)
  {
    v19 = pk_Sync_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      npkDescription = [dataCopy npkDescription];
      *buf = 138413314;
      v30 = engineName;
      v31 = 2112;
      v32 = npkDescription;
      v33 = 2112;
      v34 = itemCopy;
      v35 = 2112;
      v36 = updateCopy;
      v37 = 2112;
      v38 = partialUpdateCopy;
      _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Requesting that delegate update pass in local pass library\n\tData: %@\n\tSync state item: %@\n\tBase manifest hash for partial update: %@\n\tRemote assets for partial update: %@", buf, 0x34u);
    }
  }

  delegate = [(NPKPassSyncEngine *)self delegate];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __134__NPKPassSyncEngine__requestUpdatePassData_forSyncStateItem_baseManifestHashForPartialUpdate_remoteAssetsForPartialUpdate_completion___block_invoke;
  v26[3] = &unk_279947B20;
  v26[4] = self;
  v27 = itemCopy;
  v28 = completionCopy;
  v23 = completionCopy;
  v24 = itemCopy;
  [delegate passSyncEngine:self requestsUpdatePassData:dataCopy forSyncStateItem:v24 baseManifestHashForPartialUpdate:updateCopy remoteAssetsForPartialUpdate:partialUpdateCopy completion:v26];

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

- (void)_requestRemovePassWithUniqueID:(id)d completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v8 = pk_Sync_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Sync_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      engineName = [(NPKPassSyncEngine *)self engineName];
      *buf = 138412546;
      v20 = engineName;
      v21 = 2112;
      v22 = dCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Requesting that delegate remove pass in local pass library\n\tunique ID: %@", buf, 0x16u);
    }
  }

  delegate = [(NPKPassSyncEngine *)self delegate];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__NPKPassSyncEngine__requestRemovePassWithUniqueID_completion___block_invoke;
  v16[3] = &unk_279947AF8;
  v16[4] = self;
  v17 = dCopy;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = dCopy;
  [delegate passSyncEngine:self requestsRemovePassWithUniqueID:v14 completion:v16];

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
      engineName = [(NPKPassSyncEngine *)self engineName];
      v9 = 138412290;
      v10 = engineName;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): encountered unexpected event", &v9, 0xCu);
    }
  }

  delegate = [(NPKPassSyncEngine *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passSyncEngineEncounteredUnexpectedEvent:self];
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
      engineName = [(NPKPassSyncEngine *)self engineName];
      v9 = 138412290;
      v10 = engineName;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Sync state engine (%@): Engine state changed", &v9, 0xCu);
    }
  }

  delegate = [(NPKPassSyncEngine *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passSyncEngineStateChanged:self];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_finishedProcessingChange:(id)change
{
  changeCopy = change;
  delegate = [(NPKPassSyncEngine *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate passSyncEngine:self finishedProcessingChange:changeCopy];
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