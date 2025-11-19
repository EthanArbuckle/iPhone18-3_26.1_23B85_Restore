@interface CCDatabaseUpdater
+ (BOOL)_writeRecordWithKey:(id)a3 stringValue:(id)a4 integerValue:(id)a5 dataValue:(id)a6 onConflictType:(int64_t)a7 database:(id)a8 error:(id *)a9;
+ (BOOL)upsertLastMaintenanceDate:(id)a3 database:(id)a4 error:(id *)a5;
+ (BOOL)upsertRowsModified:(unint64_t)a3 database:(id)a4 error:(id *)a5;
+ (id)selectLocalSourceValidityHashInDatabase:(id)a3 error:(id *)a4;
+ (id)selectLocalSourceVersionInDatabase:(id)a3 error:(id *)a4;
+ (id)selectRowsModifiedCountInDatabase:(id)a3 error:(id *)a4;
+ (id)updaterForDatabase:(id)a3;
+ (id)updaterForDonateRequest:(id)a3 toDatabase:(id)a4;
- (BOOL)_deleteDeviceRowId:(id)a3;
- (BOOL)_deleteSourceItemIdHash:(id)a3 outProvenanceRowId:(id *)a4;
- (BOOL)_enumerateLocalInstancesSelectingOnlyUnmodified:(BOOL)a3 usingBlock:(id)a4;
- (BOOL)_expireAndTombstoneAllProvenanceForDeviceRowId:(id)a3;
- (BOOL)_expireDeviceRowId:(id)a3;
- (BOOL)_incrementLocalDeltaGeneration;
- (BOOL)_insertContent:(id)a3 contentHash:(id)a4 outExists:(BOOL *)a5;
- (BOOL)_insertContent:(id)a3 contentHash:(id)a4 outSequenceNumber:(id *)a5;
- (BOOL)_insertDeviceSite:(id)a3 returningRowId:(id *)a4;
- (BOOL)_insertLocalInstanceForItemWithSourceItemIdHash:(id)a3 provenanceRowId:(id)a4;
- (BOOL)_insertMetaContent:(id)a3 instanceHash:(id)a4 outSequenceNumber:(id *)a5 outIsDuplicate:(BOOL *)a6;
- (BOOL)_insertNewProvenanceAndTombstonePriorProvenanceRow:(id)a3 outInsertedProvenanceRowId:(id *)a4 instanceHash:(id)a5 contentHash:(id)a6 contentSequenceNumber:(id)a7 metaContentSequenceNumber:(id)a8 contentChanged:(BOOL)a9;
- (BOOL)_insertProvenanceForItemWithContentHash:(id)a3 contentSequenceNumber:(id)a4 metaContentSequenceNumber:(id)a5 instanceHash:(id)a6 onDeviceRowId:(id)a7 insertedRowId:(id *)a8;
- (BOOL)_persistCachedIntegers;
- (BOOL)_persistDateWithDeltaProduced:(BOOL)a3 isFullSet:(BOOL)a4;
- (BOOL)_selectLatestDeviceRecordWithDeviceUUID:(id)a3 outRecord:(id *)a4;
- (BOOL)_selectLocalDeviceProvenenceWithContentHash:(id)a3 outSequenceNumber:(id *)a4;
- (BOOL)_selectLocalDeviceRecord:(id *)a3;
- (BOOL)_selectLocalInstanceCount:(id *)a3;
- (BOOL)_selectLocalSourcePersistedValuesOutVersion:(id *)a3 outValidityHash:(id *)a4 outRevisionToken:(id *)a5 outDonationDate:(id *)a6 outFullSetDonationDate:(id *)a7;
- (BOOL)_selectMetaContentWithInstanceHash:(id)a3 outRecord:(id *)a4;
- (BOOL)_selectPersistedValueForKey:(id)a3 outValue:(id *)a4 valueClass:(Class)a5;
- (BOOL)_selectProvenanceWithContentHash:(id)a3 outLocalInstancePresent:(BOOL *)a4 outRemoteContentPresent:(BOOL *)a5;
- (BOOL)_selectProvenenceWithRowId:(id)a3 outInstanceHash:(id *)a4 outContentHash:(id *)a5;
- (BOOL)_tombstoneMetaContentWithProvenanceRowId:(id)a3 tombstoneContentIfNoLongerPresent:(BOOL)a4;
- (BOOL)_tombstoneProvenanceRowsForExpiredDeviceRowId:(id)a3;
- (BOOL)_updateDeviceRowId:(id)a3 deltaGeneration:(id)a4 expirationDate:(id)a5;
- (BOOL)_updateLocalInstanceRowId:(id)a3 provenanceRowId:(id)a4;
- (BOOL)_updateLocalSourceVersion:(id)a3 localSourceValidityHash:(id)a4;
- (BOOL)_writeRecordWithKey:(id)a3 stringValue:(id)a4 integerValue:(id)a5 dataValue:(id)a6 onConflictType:(int64_t)a7;
- (BOOL)compactContiguousRunsOfDeletes:(id)a3;
- (BOOL)deleteAllLocalInstances;
- (BOOL)deleteContentRecordsNoLongerReferencedByAnyProvenanceRecord;
- (BOOL)deleteExpiredRemoteDeviceState:(id)a3 shouldTombstoneSet:(BOOL *)a4;
- (BOOL)deleteSourceItemIdHash:(id)a3;
- (BOOL)expireRemoteDeviceUUID:(id)a3;
- (BOOL)insertContent:(id)a3 contentHash:(id)a4 sequenceNumber:(id)a5 onDeviceRowId:(id)a6;
- (BOOL)insertItemWithSourceItemIdHash:(id)a3 instanceHash:(id)a4 contentHash:(id)a5 metaContent:(id)a6 content:(id)a7 isDuplicate:(BOOL *)a8;
- (BOOL)registerLocalDeviceSite:(id)a3;
- (BOOL)registerRemoteDeviceSite:(id)a3 peerDeviceUUID:(id)a4 isRelayed:(BOOL)a5 hasDeltas:(BOOL)a6 returningRowId:(id *)a7;
- (BOOL)selectProvenanceWithContentSequenceNumber:(id)a3 onDeviceRowId:(id)a4 outProvenanceRowId:(id *)a5;
- (BOOL)selectSourceItemIdHash:(id)a3 outLocalInstanceRowId:(id *)a4 outProvenanceRowId:(id *)a5 outInstanceHash:(id *)a6 outContentHash:(id *)a7 outContentSequenceNumber:(id *)a8 isDuplicate:(BOOL *)a9;
- (BOOL)tombstoneContentSequenceNumbersInRange:(_NSRange)a3 forDeviceRowId:(id)a4;
- (BOOL)updateContent:(id)a3 andMetaContent:(id)a4 localInstanceRowId:(id)a5 priorProvenanceRowId:(id)a6 contentHash:(id)a7 instanceHash:(id)a8 isDuplicate:(BOOL *)a9;
- (BOOL)updateMetaContent:(id)a3 localInstanceRowId:(id)a4 provenanceRowId:(id)a5 priorInstanceHash:(id)a6 instanceHash:(id)a7 contentHash:(id)a8 contentSequenceNumber:(id)a9 isDuplicate:(BOOL *)a10;
- (CCDatabaseUpdater)initWithDatabase:(id)a3 request:(id)a4;
- (id)_incrementCachedIntegerWithKey:(id)a3;
- (id)description;
- (id)selectAllDeviceRecords;
- (void)deleteContentRecordsNoLongerReferencedByAnyProvenanceRecord;
- (void)selectAllDeviceRecords;
@end

@implementation CCDatabaseUpdater

- (BOOL)_persistCachedIntegers
{
  if (![(CCDatabaseUpdater *)self _upsertInteger:self->_cachedLocalHighestContentSequenceNumber forKey:@"localHighestContent" skipIfNil:1]|| ![(CCDatabaseUpdater *)self _upsertInteger:self->_cachedLocalHighestMetaContentSequenceNumber forKey:@"localHighestMetaContent" skipIfNil:1])
  {
    return 0;
  }

  cachedLocalHighestAttestationGeneration = self->_cachedLocalHighestAttestationGeneration;

  return [(CCDatabaseUpdater *)self _upsertInteger:cachedLocalHighestAttestationGeneration forKey:@"localHighestAttestationGeneration" skipIfNil:1];
}

+ (id)updaterForDatabase:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithDatabase:v3 request:0];

  return v4;
}

+ (id)updaterForDonateRequest:(id)a3 toDatabase:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [objc_alloc(objc_opt_class()) initWithDatabase:v6 request:v5];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CCDatabaseUpdater *)v8 updaterForDonateRequest:v9 toDatabase:v10, v11, v12, v13, v14, v15];
    }

    v7 = 0;
  }

  return v7;
}

- (CCDatabaseUpdater)initWithDatabase:(id)a3 request:(id)a4
{
  v7 = a3;
  v8 = a4;
  v55.receiver = self;
  v55.super_class = CCDatabaseUpdater;
  v9 = [(CCDatabaseUpdater *)&v55 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v9->_database, a3);
  if (!v10->_database)
  {
    v22 = __biome_log_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater initWithDatabase:request:];
    }

    goto LABEL_10;
  }

  v11 = MEMORY[0x1E696AD98];
  v12 = [MEMORY[0x1E695DF00] date];
  [v12 timeIntervalSince1970];
  v14 = [v11 numberWithLongLong:(v13 * 1000000.0)];
  startTimeMicros = v10->_startTimeMicros;
  v10->_startTimeMicros = v14;

  v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:25];
  commandCache = v10->_commandCache;
  v10->_commandCache = v16;

  if (v8)
  {
    v18 = [v8 description];
    requestDescription = v10->_requestDescription;
    v10->_requestDescription = v18;

    v54 = 0;
    v20 = [(CCDatabaseUpdater *)v10 _selectLocalDeviceRecord:&v54];
    v21 = v54;
    v22 = v54;
    if (v20)
    {
      objc_storeStrong(&v10->_localDeviceRecord, v21);
      if ([v8 isRemoteSync])
      {
LABEL_6:

        goto LABEL_7;
      }

      v10->_isLocalDonation = 1;
      v52 = 0;
      v53 = 0;
      v50 = 0;
      v51 = 0;
      v49 = 0;
      v25 = [(CCDatabaseUpdater *)v10 _selectLocalSourcePersistedValuesOutVersion:&v53 outValidityHash:&v52 outRevisionToken:&v51 outDonationDate:&v50 outFullSetDonationDate:&v49];
      v26 = v53;
      v47 = v53;
      v27 = v52;
      v46 = v52;
      obj = v51;
      v45 = v51;
      v28 = v50;
      v44 = v50;
      v29 = v49;
      v30 = v49;
      v31 = v30;
      if (v25)
      {
        v43 = v30;
        v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v8, "sourceVersion")}];
        updatedLocalSourceVersion = v10->_updatedLocalSourceVersion;
        v10->_updatedLocalSourceVersion = v32;

        objc_storeStrong(&v10->_priorLocalSourceVersion, v26);
        v34 = [v8 sourceValidity];
        if (v34)
        {
          v35 = [v8 sourceValidity];
          v36 = CCHash64String(v35);
          updatedLocalSourceValidityHash = v10->_updatedLocalSourceValidityHash;
          v10->_updatedLocalSourceValidityHash = v36;
        }

        else
        {
          v35 = v10->_updatedLocalSourceValidityHash;
          v10->_updatedLocalSourceValidityHash = &unk_1F2EC9438;
        }

        objc_storeStrong(&v10->_priorLocalSourceValidityHash, v27);
        v38 = [(CCDatabaseUpdater *)v10 _updateLocalSourceVersion:v10->_updatedLocalSourceVersion localSourceValidityHash:v10->_updatedLocalSourceValidityHash];
        v31 = v43;
        if (v38)
        {
          objc_storeStrong(&v10->_priorLocalSourceRevisionToken, obj);
          objc_storeStrong(&v10->_priorLocalDonationDate, v28);
          objc_storeStrong(&v10->_priorLocalFullSetDonationDate, v29);
          v48 = 0;
          v39 = [(CCDatabaseUpdater *)v10 _selectLocalInstanceCount:&v48];
          v40 = v48;
          if (v39)
          {
            priorLocalInstanceCount = v10->_priorLocalInstanceCount;
            v10->_priorLocalInstanceCount = v40;

            goto LABEL_6;
          }

          v31 = v43;
        }
      }
    }

LABEL_10:

    v23 = 0;
    goto LABEL_11;
  }

LABEL_7:
  v23 = v10;
LABEL_11:

  return v23;
}

- (id)description
{
  requestDescription = @"Database initializer -";
  if (self->_requestDescription)
  {
    requestDescription = self->_requestDescription;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ startTimeMicros: %@", requestDescription, self->_startTimeMicros];
}

- (BOOL)registerLocalDeviceSite:(id)a3
{
  v4 = a3;
  v5 = [v4 device];
  v6 = [v5 isLocal];

  if ((v6 & 1) == 0)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater registerLocalDeviceSite:];
    }

    goto LABEL_7;
  }

  if (![(CCDatabaseUpdater *)self _insertDeviceSite:v4 returningRowId:0])
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v7 = [(CCDatabaseUpdater *)self _persistCachedIntegers];
LABEL_8:

  return v7;
}

- (BOOL)registerRemoteDeviceSite:(id)a3 peerDeviceUUID:(id)a4 isRelayed:(BOOL)a5 hasDeltas:(BOOL)a6 returningRowId:(id *)a7
{
  v8 = a6;
  v9 = a5;
  v157 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  if (a7)
  {
    *a7 = 0;
  }

  v14 = [v12 device];
  v15 = [v14 deviceUUID];
  v16 = [v15 isEqual:v13];

  if ([v14 isLocal])
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = @"relayed";
      if (v16)
      {
        v18 = @"peer";
      }

      v19 = @"out";
      if (v8)
      {
        v19 = &stru_1F2EBB700;
      }

      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", v18, v19, v12];
      v21 = [(CCDatabaseUpdater *)self description];
      *buf = 138412546;
      v148 = v20;
      v149 = 2112;
      p_super = v21;
      v22 = "Unexpected remote device site %@ has isLocal flag set. %@";
LABEL_23:
      v30 = v17;
      v31 = 22;
LABEL_24:
      _os_log_error_impl(&dword_1B6DB2000, v30, OS_LOG_TYPE_ERROR, v22, buf, v31);

      goto LABEL_35;
    }

    goto LABEL_35;
  }

  v23 = [v12 expirationDate];

  if (!v23)
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v28 = @"relayed";
      if (v16)
      {
        v28 = @"peer";
      }

      v29 = @"out";
      if (v8)
      {
        v29 = &stru_1F2EBB700;
      }

      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", v28, v29, v12];
      v21 = [(CCDatabaseUpdater *)self description];
      *buf = 138412546;
      v148 = v20;
      v149 = 2112;
      p_super = v21;
      v22 = "Unexpected remote device site %@ missing expiration date. %@";
      goto LABEL_23;
    }

LABEL_35:
    v27 = 0;
    goto LABEL_36;
  }

  if ((v16 & v9) != 1)
  {
    if (((v16 | v9) & 1) == 0)
    {
      v17 = __biome_log_for_category();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      v65 = @"out";
      if (v8)
      {
        v65 = &stru_1F2EBB700;
      }

      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", @"relayed", v65, v12];
      v21 = [(CCDatabaseUpdater *)self description];
      *buf = 138412802;
      v148 = v20;
      v149 = 2112;
      p_super = v13;
      v151 = 2112;
      v152 = v21;
      v22 = "Unexpected peer device site %@ not matching peerDeviceUUID: %@. %@";
      v30 = v17;
      v31 = 32;
      goto LABEL_24;
    }

    v27 = v16 ^ 1;
    v32 = MEMORY[0x1E696AD98];
    v33 = [v12 expirationDate];
    [v33 timeIntervalSince1970];
    v17 = [v32 numberWithLongLong:(v34 * 1000000.0)];

    if ([v17 compare:self->_startTimeMicros]== -1)
    {
      v39 = __biome_log_for_category();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v48 = @"relayed";
        if (v16)
        {
          v48 = @"peer";
        }

        v49 = @"out";
        if (v8)
        {
          v49 = &stru_1F2EBB700;
        }

        v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", v48, v49, v12];
        v51 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{-[NSNumber longLongValue](self->_startTimeMicros, "longLongValue") / 1000000.0}];
        v52 = [(CCDatabaseUpdater *)self description];
        *buf = 138412802;
        v148 = v50;
        v149 = 2112;
        p_super = v51;
        v151 = 2112;
        v152 = v52;
        _os_log_impl(&dword_1B6DB2000, v39, OS_LOG_TYPE_DEFAULT, "Device site %@ already expired (compared to: %@). %@", buf, 0x20u);
      }

      goto LABEL_54;
    }

    v144 = v17;
    v145 = v13;
    v35 = [v14 deviceUUID];
    [(CCDeviceRecord *)self->_localDeviceRecord deviceUUID];
    v37 = v36 = self;
    v38 = [v35 isEqual:v37];

    if (v38)
    {
      v39 = __biome_log_for_category();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = @"relayed";
        if (v16)
        {
          v40 = @"peer";
        }

        v41 = @"out";
        if (v8)
        {
          v41 = &stru_1F2EBB700;
        }

        v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", v40, v41, v12];
        v43 = v39;
        localDeviceRecord = v36->_localDeviceRecord;
        v45 = [(CCDatabaseUpdater *)v36 description];
        *buf = 138412802;
        v148 = v42;
        v149 = 2112;
        p_super = &localDeviceRecord->super;
        v39 = v43;
        v151 = 2112;
        v152 = v45;
        _os_log_impl(&dword_1B6DB2000, v43, OS_LOG_TYPE_DEFAULT, "Device site %@ matches local deviceUUID: %@. %@", buf, 0x20u);
      }

      goto LABEL_53;
    }

    v53 = [v14 deviceUUID];
    v146 = 0;
    v143 = v36;
    v54 = [(CCDatabaseUpdater *)v36 _selectLatestDeviceRecordWithDeviceUUID:v53 outRecord:&v146];
    v39 = v146;

    if (!v54)
    {
      v27 = 0;
LABEL_53:
      v17 = v144;
      v13 = v145;
LABEL_54:

      goto LABEL_36;
    }

    v13 = v145;
    if (!v39)
    {
      v66 = __biome_log_for_category();
      v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT);
      v68 = v36;
      v17 = v144;
      if (v8)
      {
        if (v67)
        {
          v69 = @"relayed";
          if (v16)
          {
            v69 = @"peer";
          }

          v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", v69, &stru_1F2EBB700, v12];
          v71 = [(CCDatabaseUpdater *)v143 description];
          *buf = 138412546;
          v148 = v70;
          v149 = 2112;
          p_super = v71;
          _os_log_impl(&dword_1B6DB2000, v66, OS_LOG_TYPE_DEFAULT, "Inserting first record of device site %@. %@", buf, 0x16u);

          v68 = v143;
          v13 = v145;
        }

        v27 = [(CCDatabaseUpdater *)v68 _insertDeviceSite:v12 returningRowId:a7];
        goto LABEL_54;
      }

      if (v67)
      {
        v73 = @"relayed";
        if (v16)
        {
          v73 = @"peer";
        }

        v74 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", v73, @"out", v12];
        v75 = [(CCDatabaseUpdater *)v143 description];
        *buf = 138412546;
        v148 = v74;
        v149 = 2112;
        p_super = v75;
        _os_log_impl(&dword_1B6DB2000, v66, OS_LOG_TYPE_DEFAULT, "Skipping new registration of device site %@. %@", buf, 0x16u);

        v13 = v145;
      }

      goto LABEL_71;
    }

    if (([v39 recordOptions]& 1) != 0)
    {
      v72 = __biome_log_for_category();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        v120 = @"relayed";
        if (v16)
        {
          v120 = @"peer";
        }

        v121 = @"out";
        if (v8)
        {
          v121 = &stru_1F2EBB700;
        }

        v122 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", v120, v121, v12];
        v123 = [(CCDatabaseUpdater *)v36 description];
        *buf = 138412802;
        v148 = v39;
        v149 = 2112;
        p_super = v122;
        v151 = 2112;
        v152 = v123;
        _os_log_error_impl(&dword_1B6DB2000, v72, OS_LOG_TYPE_ERROR, "Cannot re-register local device record: %@ with site %@. %@", buf, 0x20u);

        v13 = v145;
      }

      v27 = 0;
      v17 = v144;
      goto LABEL_54;
    }

    v55 = [v39 resourceGeneration];
    v56 = [v12 resourceGeneration];
    v57 = v39;
    v58 = [v55 compare:v56];

    v142 = v57;
    if (v58 == 1)
    {
      v59 = __biome_log_for_category();
      v60 = v59;
      v17 = v144;
      v13 = v145;
      if (v16)
      {
        v39 = v142;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          v61 = @"out";
          if (v8)
          {
            v61 = &stru_1F2EBB700;
          }

          v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", @"peer", v61, v12];
          v63 = [(CCDatabaseUpdater *)v143 description];
          *buf = 138412802;
          v148 = v62;
          v149 = 2112;
          p_super = v142;
          v151 = 2112;
          v152 = v63;
          v64 = "device site %@ has regressed resourceGeneration compared with record: %@. %@";
          goto LABEL_103;
        }

        goto LABEL_104;
      }

      if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_84;
      }

      v84 = @"out";
      if (v8)
      {
        v84 = &stru_1F2EBB700;
      }

      v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", @"relayed", v84, v12];
      v86 = [(CCDatabaseUpdater *)v143 description];
      *buf = 138412802;
      v148 = v142;
      v149 = 2112;
      p_super = v85;
      v151 = 2112;
      v152 = v86;
      v87 = "Skipping registration - resource generation of record: %@ is more recent than device site %@. %@";
LABEL_83:
      _os_log_impl(&dword_1B6DB2000, v60, OS_LOG_TYPE_DEFAULT, v87, buf, 0x20u);

      v13 = v145;
LABEL_84:

      v27 = 1;
LABEL_153:
      v39 = v142;
      goto LABEL_54;
    }

    v76 = [v57 resourceGeneration];
    v77 = [v12 resourceGeneration];
    v78 = [v76 compare:v77];

    v17 = v144;
    if (v78 == -1)
    {
      v88 = v27 | v8;
      v89 = __biome_log_for_category();
      v90 = v89;
      if ((v88 & 1) == 0)
      {
        v39 = v142;
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          v138 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", @"peer", @"out", v12];
          v139 = [(CCDatabaseUpdater *)v143 description];
          *buf = 138412802;
          v148 = v138;
          v149 = 2112;
          p_super = v142;
          v151 = 2112;
          v152 = v139;
          _os_log_error_impl(&dword_1B6DB2000, v90, OS_LOG_TYPE_ERROR, "device site %@ not expected to invalidate record: %@. %@", buf, 0x20u);

          v39 = v142;
        }

        v27 = 0;
        v13 = v145;
        goto LABEL_54;
      }

      v91 = v143;
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        v92 = @"relayed";
        if (v16)
        {
          v92 = @"peer";
        }

        v93 = @"out";
        if (v8)
        {
          v93 = &stru_1F2EBB700;
        }

        v94 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", v92, v93, v12];
        v95 = [(CCDatabaseUpdater *)v143 description];
        *buf = 138412802;
        v148 = v142;
        v149 = 2112;
        p_super = v94;
        v151 = 2112;
        v152 = v95;
        _os_log_impl(&dword_1B6DB2000, v90, OS_LOG_TYPE_DEFAULT, "Expiring device record: %@ and associated state which is now invalid due to registration of device site %@. %@", buf, 0x20u);
      }

      v96 = [v142 deviceRowId];
      v97 = [(CCDatabaseUpdater *)v143 _expireAndTombstoneAllProvenanceForDeviceRowId:v96];

      if (!v97)
      {
        v27 = 0;
LABEL_152:
        v13 = v145;
        goto LABEL_153;
      }

      v98 = __biome_log_for_category();
      v99 = os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v99)
        {
          v100 = @"relayed";
          if (v16)
          {
            v100 = @"peer";
          }

          v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", v100, &stru_1F2EBB700, v12];
          v102 = [(CCDatabaseUpdater *)v143 description];
          *buf = 138412546;
          v148 = v101;
          v149 = 2112;
          p_super = v102;
          v103 = "Inserting latest record of device site %@. %@";
          goto LABEL_136;
        }

LABEL_137:

        v27 = [(CCDatabaseUpdater *)v91 _insertDeviceSite:v12 returningRowId:a7];
        goto LABEL_152;
      }

      if (v99)
      {
        v126 = @"relayed";
        if (v16)
        {
          v126 = @"peer";
        }

        v127 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", v126, @"out", v12];
        v128 = [(CCDatabaseUpdater *)v143 description];
        *buf = 138412546;
        v148 = v127;
        v149 = 2112;
        p_super = v128;
        v129 = "Skipping unattested registration of device site %@. %@";
        v130 = v98;
        v131 = 22;
        goto LABEL_150;
      }
    }

    else
    {
      v79 = [v142 deltaGeneration];
      v80 = [v12 deltaGeneration];
      v81 = [v79 compare:v80];

      if (v81 == 1)
      {
        v82 = __biome_log_for_category();
        v60 = v82;
        if (v16)
        {
          v13 = v145;
          v39 = v142;
          if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
          {
            v83 = @"out";
            if (v8)
            {
              v83 = &stru_1F2EBB700;
            }

            v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", @"peer", v83, v12];
            v63 = [(CCDatabaseUpdater *)v143 description];
            *buf = 138412802;
            v148 = v62;
            v149 = 2112;
            p_super = v142;
            v151 = 2112;
            v152 = v63;
            v64 = "device site %@ has regressed deltaGeneration compared with record: %@. %@";
            goto LABEL_103;
          }

          goto LABEL_104;
        }

        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          v117 = @"out";
          if (v8)
          {
            v117 = &stru_1F2EBB700;
          }

          v118 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", @"relayed", v117, v12];
          v119 = [(CCDatabaseUpdater *)v143 description];
          *buf = 138412802;
          v148 = v142;
          v149 = 2112;
          p_super = v118;
          v151 = 2112;
          v152 = v119;
          _os_log_impl(&dword_1B6DB2000, v60, OS_LOG_TYPE_DEFAULT, "Skipping registration - delta generation of record: %@ is more recent than device site %@. %@", buf, 0x20u);
        }

        v27 = 1;
        goto LABEL_124;
      }

      v104 = [v142 deltaGeneration];
      v105 = [v12 deltaGeneration];
      v106 = [v104 compare:v105];

      if (v106 == -1 && !v8)
      {
        v107 = __biome_log_for_category();
        v60 = v107;
        v13 = v145;
        if (v16)
        {
          v39 = v142;
          if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
          {
            v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", @"peer", @"out", v12];
            v63 = [(CCDatabaseUpdater *)v143 description];
            *buf = 138412802;
            v148 = v62;
            v149 = 2112;
            p_super = v142;
            v151 = 2112;
            v152 = v63;
            v64 = "device site %@ not expected to progress deltaGeneration for record: %@. %@";
LABEL_103:
            _os_log_error_impl(&dword_1B6DB2000, v60, OS_LOG_TYPE_ERROR, v64, buf, 0x20u);

            v39 = v142;
            v13 = v145;
          }

LABEL_104:

          v27 = 0;
          goto LABEL_54;
        }

        if (!os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_84;
        }

        v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", @"relayed", @"out", v12];
        v86 = [(CCDatabaseUpdater *)v143 description];
        *buf = 138412802;
        v148 = v85;
        v149 = 2112;
        p_super = v142;
        v151 = 2112;
        v152 = v86;
        v87 = "Skipping unattested registration of device site %@ which would progress the deltaGeneration for record: %@. %@";
        goto LABEL_83;
      }

      v39 = v142;
      if (([v142 recordOptions]& 2) == 0)
      {
        if ((v16 | v8) != 1)
        {
          v13 = v145;
          if (!a7)
          {
            goto LABEL_71;
          }

          goto LABEL_159;
        }

        v108 = [v142 expirationDate];
        v109 = [v12 expirationDate];
        v110 = [v108 compare:v109];

        if (v110 == 1)
        {
          v116 = __biome_log_for_category();
          if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
          {
            v133 = [v12 expirationDate];
            v134 = [v142 expirationDate];
            v135 = [(CCDatabaseUpdater *)v143 description];
            *buf = 138412802;
            v148 = v133;
            v149 = 2112;
            p_super = v134;
            v151 = 2112;
            v152 = v135;
            _os_log_impl(&dword_1B6DB2000, v116, OS_LOG_TYPE_DEFAULT, "Ignoring re-attested expiration date of device site %@ which occurs sooner than the stored device record: %@. %@", buf, 0x20u);
          }
        }

        else
        {
          if (v110 != -1)
          {
LABEL_157:
            v136 = [v142 deviceRowId];
            v137 = [v12 deltaGeneration];
            v27 = [(CCDatabaseUpdater *)v143 _updateDeviceRowId:v136 deltaGeneration:v137 expirationDate:v108];

            if (!a7)
            {
LABEL_124:
              v17 = v144;
              v13 = v145;
              goto LABEL_153;
            }

            v17 = v144;
            v13 = v145;
            v39 = v142;
            if ((v27 & 1) == 0)
            {
              goto LABEL_54;
            }

LABEL_159:
            *a7 = [v39 deviceRowId];
LABEL_71:
            v27 = 1;
            goto LABEL_54;
          }

          v111 = __biome_log_for_category();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            v141 = [v142 expirationDate];
            v140 = [v12 expirationDate];
            v112 = @"relayed";
            if (v16)
            {
              v112 = @"peer";
            }

            v113 = @"out";
            if (v8)
            {
              v113 = &stru_1F2EBB700;
            }

            v114 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", v112, v113, v12];
            v115 = [(CCDatabaseUpdater *)v143 description];
            *buf = 138413314;
            v148 = v141;
            v149 = 2112;
            p_super = v140;
            v151 = 2112;
            v152 = v114;
            v153 = 2112;
            v154 = v142;
            v155 = 2112;
            v156 = v115;
            _os_log_impl(&dword_1B6DB2000, v111, OS_LOG_TYPE_DEFAULT, "Extending expiration date from %@ to %@ due to re-attestation of device site %@ compared to record: %@. %@", buf, 0x34u);
          }

          [v12 expirationDate];
          v108 = v116 = v108;
        }

        goto LABEL_157;
      }

      v98 = __biome_log_for_category();
      v124 = os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        v91 = v143;
        if (v124)
        {
          v125 = @"relayed";
          if (v16)
          {
            v125 = @"peer";
          }

          v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", v125, &stru_1F2EBB700, v12];
          v102 = [(CCDatabaseUpdater *)v143 description];
          *buf = 138412546;
          v148 = v101;
          v149 = 2112;
          p_super = v102;
          v103 = "Inserting device record due to re-attestation of device site %@. %@";
LABEL_136:
          _os_log_impl(&dword_1B6DB2000, v98, OS_LOG_TYPE_DEFAULT, v103, buf, 0x16u);

          goto LABEL_137;
        }

        goto LABEL_137;
      }

      if (v124)
      {
        v132 = @"relayed";
        if (v16)
        {
          v132 = @"peer";
        }

        v127 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", v132, @"out", v12];
        v128 = [(CCDatabaseUpdater *)v143 description];
        *buf = 138412802;
        v148 = v127;
        v149 = 2112;
        p_super = v142;
        v151 = 2112;
        v152 = v128;
        v129 = "Skipping unattested registration of device site %@ for expired record: %@. %@";
        v130 = v98;
        v131 = 32;
LABEL_150:
        _os_log_impl(&dword_1B6DB2000, v130, OS_LOG_TYPE_DEFAULT, v129, buf, v131);
      }
    }

    v27 = 1;
    goto LABEL_152;
  }

  v17 = __biome_log_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v24 = @"out";
    if (v8)
    {
      v24 = &stru_1F2EBB700;
    }

    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@ with%@ deltas] %@", @"peer", v24, v12];
    v26 = [(CCDatabaseUpdater *)self description];
    *buf = 138412802;
    v148 = v25;
    v149 = 2112;
    p_super = v13;
    v151 = 2112;
    v152 = v26;
    _os_log_impl(&dword_1B6DB2000, v17, OS_LOG_TYPE_DEFAULT, "Ignoring registration of relayed device site %@ matching peerDeviceUUID: %@. %@", buf, 0x20u);
  }

  v27 = 1;
LABEL_36:

  v46 = *MEMORY[0x1E69E9840];
  return v27;
}

- (BOOL)expireRemoteDeviceUUID:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0;
  v5 = [(CCDatabaseUpdater *)self _selectLatestDeviceRecordWithDeviceUUID:v4 outRecord:&v17];
  v6 = v17;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      if ([v6 recordOptions])
      {
        v8 = __biome_log_for_category();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v16 = [(CCDatabaseUpdater *)self description];
          *buf = 138412802;
          v19 = v7;
          v20 = 2112;
          v21 = v4;
          v22 = 2112;
          v23 = v16;
          _os_log_error_impl(&dword_1B6DB2000, v8, OS_LOG_TYPE_ERROR, "Cannot expire local device record: %@ with deviceUUID: %@. %@", buf, 0x20u);
        }

        v9 = 0;
        goto LABEL_16;
      }

      if (([v7 recordOptions] & 2) == 0)
      {
        v8 = [v7 deviceRowId];
        v9 = [(CCDatabaseUpdater *)self _expireAndTombstoneAllProvenanceForDeviceRowId:v8];
LABEL_16:

        goto LABEL_17;
      }

      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(CCDatabaseUpdater *)self description];
        *buf = 138412802;
        v19 = v4;
        v20 = 2112;
        v21 = v7;
        v22 = 2112;
        v23 = v10;
        v11 = "deviceUUID: %@ record already expired: %@. %@";
        v12 = v8;
        v13 = 32;
        goto LABEL_14;
      }
    }

    else
    {
      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(CCDatabaseUpdater *)self description];
        *buf = 138412546;
        v19 = v4;
        v20 = 2112;
        v21 = v10;
        v11 = "Found no device record to expire with deviceUUID: %@. %@";
        v12 = v8;
        v13 = 22;
LABEL_14:
        _os_log_impl(&dword_1B6DB2000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }

    v9 = 1;
    goto LABEL_16;
  }

  v9 = 0;
LABEL_17:

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)deleteAllLocalInstances
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__CCDatabaseUpdater_deleteAllLocalInstances__block_invoke;
  v5[3] = &unk_1E7C8BFF8;
  v5[4] = self;
  v5[5] = &v6;
  v3 = [(CCDatabaseUpdater *)self _enumerateLocalInstancesSelectingOnlyUnmodified:0 usingBlock:v5];
  if (v3)
  {
    self->_localInstanceRemovedCount += *(v7 + 6);
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)deleteSourceItemIdHash:(id)a3
{
  v9 = 0;
  v4 = [(CCDatabaseUpdater *)self _deleteSourceItemIdHash:a3 outProvenanceRowId:&v9];
  v5 = v9;
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = [(CCDatabaseUpdater *)self _tombstoneMetaContentWithProvenanceRowId:v5 tombstoneContentIfNoLongerPresent:1];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_deleteSourceItemIdHash:(id)a3 outProvenanceRowId:(id *)a4
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v34[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v8 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC9450];
  if ([v8 updateParameters:v7])
  {
    v9 = v8;
LABEL_5:
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__14;
    v29 = __Block_byref_object_dispose__14;
    v30 = 0;
    database = self->_database;
    v23[4] = &v25;
    v24 = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __64__CCDatabaseUpdater__deleteSourceItemIdHash_outProvenanceRowId___block_invoke;
    v23[3] = &unk_1E7C8C020;
    v15 = [(CCDatabaseReadWriteAccess *)database executeCommand:v9 error:&v24 returningRowBlock:v23];
    v16 = v24;
    if (v15)
    {
      v17 = v26;
      if (v26[5])
      {
        ++self->_modifiedRowCount;
        ++self->_localInstanceRemovedCount;
        if (a4)
        {
          *a4 = v17[5];
        }
      }

      else
      {
        v20 = __biome_log_for_category();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v32 = v6;
          _os_log_impl(&dword_1B6DB2000, v20, OS_LOG_TYPE_DEFAULT, "No item exists with sourceItemIdHash: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(CCDatabaseUpdater *)self description];
        objc_claimAutoreleasedReturnValue();
        [CCDatabaseUpdater _deleteSourceItemIdHash:outProvenanceRowId:];
      }
    }

    _Block_object_dispose(&v25, 8);

    v10 = v9;
    goto LABEL_19;
  }

  v10 = [CCDatabaseDelete builderWithTableName:@"instance"];
  v11 = [v7 objectAtIndex:0];
  v12 = [CCSQLCommandCriterion criterionWithColumnName:@"source_item_id_hash" onTable:@"instance" EQUALSColumnValue:v11];

  [v10 setCommandCriterion:v12];
  v33 = @"provenance_row_id";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  [v10 setReturningColumns:v13];

  v9 = [v10 build];

  if (v9)
  {
    [(NSMutableDictionary *)self->_commandCache setObject:v9 forKey:&unk_1F2EC9450];

    goto LABEL_5;
  }

  v19 = __biome_log_for_category();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [CCDatabaseUpdater _deleteSourceItemIdHash:outProvenanceRowId:];
  }

  v16 = 0;
  v15 = 0;
LABEL_19:

  v21 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t __64__CCDatabaseUpdater__deleteSourceItemIdHash_outProvenanceRowId___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 numberValueAtColumnIndex:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_tombstoneProvenanceRowsForExpiredDeviceRowId:(id)a3
{
  v31[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31[0] = &unk_1F2EC9468;
  v31[1] = v4;
  v31[2] = &unk_1F2EC9480;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
  v6 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC9498];
  if ([v6 updateParameters:v5])
  {
    v7 = v6;
  }

  else
  {
    v8 = [v5 objectAtIndex:1];
    v9 = [CCSQLCommandCriterion criterionWithColumnName:@"device_row_id" EQUALSColumnValue:v8];

    v10 = [v5 objectAtIndex:2];
    v11 = [CCSQLCommandCriterion criterionWithColumnName:@"content_state" EQUALSColumnValue:v10];

    v30[0] = v9;
    v30[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v13 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v12];

    v14 = [CCDatabaseUpdate builderWithTableName:@"provenance"];
    v15 = [v5 objectAtIndex:0];
    [v14 setValue:v15 forColumn:@"content_state"];

    [v14 setCommandCriterion:v13];
    v7 = [v14 build];

    if (v7)
    {
      [(NSMutableDictionary *)self->_commandCache setObject:v7 forKey:&unk_1F2EC9498];
    }

    else
    {
      v16 = __biome_log_for_category();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseUpdater _tombstoneProvenanceRowsForExpiredDeviceRowId:];
      }
    }

    if (!v7)
    {
      v19 = 0;
      v23 = 0;
      goto LABEL_21;
    }
  }

  database = self->_database;
  v29 = 0;
  v18 = [(CCDatabaseReadWriteAccess *)database executeCommand:v7 error:&v29];
  v19 = v29;
  if (v18)
  {
    v20 = self->_database;
    v28 = v19;
    v21 = [(CCDatabaseReadWriteAccess *)v20 rowsModified:&v28];
    v22 = v28;

    if (v21 < 0)
    {
      v25 = __biome_log_for_category();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseUpdater _tombstoneProvenanceRowsForExpiredDeviceRowId:];
      }

      v23 = 0;
    }

    else
    {
      self->_modifiedRowCount += v21;
      v23 = 1;
    }

    v19 = v22;
  }

  else
  {
    v24 = __biome_log_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater _tombstoneProvenanceRowsForExpiredDeviceRowId:];
    }

    v23 = 0;
  }

LABEL_21:
  v26 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)_tombstoneMetaContentWithProvenanceRowId:(id)a3 tombstoneContentIfNoLongerPresent:(BOOL)a4
{
  v4 = a4;
  v102 = *MEMORY[0x1E69E9840];
  v100 = &unk_1F2EC9468;
  v101 = a3;
  v70 = v101;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:2];
  v7 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC94B0];
  if ([v7 updateParameters:v6])
  {
    v8 = v7;
    goto LABEL_5;
  }

  v9 = [v6 objectAtIndex:1];
  v10 = [CCSQLCommandCriterion criterionWithColumnName:@"provenance_row_id" EQUALSColumnValue:v9];

  v11 = [CCDatabaseUpdate builderWithTableName:@"provenance"];
  v12 = [v6 objectAtIndex:0];
  [v11 setValue:v12 forColumn:@"metacontent_state"];

  [v11 setCommandCriterion:v10];
  v99[0] = @"instance_hash";
  v99[1] = @"content_hash";
  v99[2] = @"content_sequence_number";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:3];
  [v11 setReturningColumns:v13];

  v8 = [v11 build];

  if (v8)
  {
    [(NSMutableDictionary *)self->_commandCache setObject:v8 forKey:&unk_1F2EC94B0];

LABEL_5:
    v89 = 0;
    v90 = &v89;
    v91 = 0x3032000000;
    v92 = __Block_byref_object_copy__14;
    v93 = __Block_byref_object_dispose__14;
    v94 = 0;
    v83 = 0;
    v84 = &v83;
    v85 = 0x3032000000;
    v86 = __Block_byref_object_copy__14;
    v87 = __Block_byref_object_dispose__14;
    v88 = 0;
    v77 = 0;
    v78 = &v77;
    v79 = 0x3032000000;
    v80 = __Block_byref_object_copy__14;
    v81 = __Block_byref_object_dispose__14;
    v82 = 0;
    database = self->_database;
    v75[6] = &v77;
    v76 = 0;
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __96__CCDatabaseUpdater__tombstoneMetaContentWithProvenanceRowId_tombstoneContentIfNoLongerPresent___block_invoke;
    v75[3] = &unk_1E7C8C048;
    v75[4] = &v89;
    v75[5] = &v83;
    v15 = [(CCDatabaseReadWriteAccess *)database executeCommand:v8 error:&v76 returningRowBlock:v75];
    v16 = v76;
    if ((v15 & 1) == 0)
    {
      v19 = __biome_log_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(CCDatabaseUpdater *)self description];
        objc_claimAutoreleasedReturnValue();
        [CCDatabaseUpdater _tombstoneMetaContentWithProvenanceRowId:tombstoneContentIfNoLongerPresent:];
      }

      v20 = 0;
      goto LABEL_26;
    }

    ++self->_modifiedRowCount;
    v98 = v90[5];
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v98 count:1];

    v18 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC9480];
    if (([v18 updateParameters:v17]& 1) != 0)
    {
      v19 = v18;
    }

    else
    {
      v21 = [CCSQLCommandCriterion criterionWithColumnName:@"instance_hash" EQUALSColumnValue:v90[5]];
      v22 = [CCDatabaseDelete builderWithTableName:@"metacontent"];
      [v22 setCommandCriterion:v21];
      v19 = [v22 build];

      if (!v19)
      {
        v30 = __biome_log_for_category();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [(CCDatabaseUpdater *)self description];
          objc_claimAutoreleasedReturnValue();
          [CCDatabaseUpdater _tombstoneMetaContentWithProvenanceRowId:tombstoneContentIfNoLongerPresent:];
        }

        v19 = 0;
        v20 = 0;
        v6 = v17;
        goto LABEL_26;
      }

      [(NSMutableDictionary *)self->_commandCache setObject:v19 forKey:&unk_1F2EC9480];
    }

    v23 = self->_database;
    v74 = v16;
    v24 = [(CCDatabaseReadWriteAccess *)v23 executeCommand:v19 error:&v74];
    v25 = v74;

    if (v24)
    {
      ++self->_modifiedRowCount;
      if (!v4)
      {
LABEL_17:
        v20 = 1;
LABEL_25:
        v6 = v17;
        v16 = v25;
LABEL_26:

        _Block_object_dispose(&v77, 8);
        _Block_object_dispose(&v83, 8);

        _Block_object_dispose(&v89, 8);
        v10 = v8;
        goto LABEL_27;
      }

      v73 = 0;
      if ([(CCDatabaseUpdater *)self _selectProvenanceWithContentHash:v84[5] outLocalInstancePresent:&v73 + 1 outRemoteContentPresent:&v73])
      {
        if ((v73 & 0x100) != 0)
        {
          goto LABEL_17;
        }

        v97[0] = &unk_1F2EC9468;
        v31 = [(CCDeviceRecord *)self->_localDeviceRecord deviceRowId];
        v32 = v78[5];
        v97[1] = v31;
        v97[2] = v32;
        v97[3] = &unk_1F2EC9480;
        v97[4] = &unk_1F2EC9468;
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:5];

        v34 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC94C8];
        if ([v34 updateParameters:v33])
        {
          v35 = v34;
        }

        else
        {
          v36 = [v33 objectAtIndex:1];
          v69 = [CCSQLCommandCriterion criterionWithColumnName:@"device_row_id" EQUALSColumnValue:v36];

          v37 = [v33 objectAtIndex:2];
          v68 = [CCSQLCommandCriterion criterionWithColumnName:@"content_sequence_number" EQUALSColumnValue:v37];

          v38 = [v33 objectAtIndex:3];
          v67 = [CCSQLCommandCriterion criterionWithColumnName:@"content_state" EQUALSColumnValue:v38];

          v39 = [v33 objectAtIndex:4];
          v66 = [CCSQLCommandCriterion criterionWithColumnName:@"metacontent_state" EQUALSColumnValue:v39];

          v96[0] = v69;
          v96[1] = v68;
          v96[2] = v67;
          v96[3] = v66;
          v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:4];
          v41 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v40];

          v42 = [CCDatabaseUpdate builderWithTableName:@"provenance"];
          v43 = [v33 objectAtIndex:0];
          [v42 setValue:v43 forColumn:@"content_state"];

          [v42 setCommandCriterion:v41];
          v44 = [v42 build];

          if (v44)
          {
            v45 = v44;
            [(NSMutableDictionary *)self->_commandCache setObject:v44 forKey:&unk_1F2EC94C8];
          }

          else
          {
            v46 = __biome_log_for_category();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              [(CCDatabaseUpdater *)self description];
              objc_claimAutoreleasedReturnValue();
              [CCDatabaseUpdater _tombstoneMetaContentWithProvenanceRowId:tombstoneContentIfNoLongerPresent:];
            }

            v45 = 0;
          }

          v35 = v44;
          if (!v45)
          {
            v20 = 0;
            v17 = v33;
            goto LABEL_25;
          }
        }

        v47 = self->_database;
        v72[1] = v25;
        v48 = v35;
        v49 = [CCDatabaseReadWriteAccess executeCommand:v47 error:"executeCommand:error:"];
        v50 = v25;

        if ((v49 & 1) == 0)
        {
          v54 = __biome_log_for_category();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            [(CCDatabaseUpdater *)self description];
            objc_claimAutoreleasedReturnValue();
            [CCDatabaseUpdater _tombstoneMetaContentWithProvenanceRowId:tombstoneContentIfNoLongerPresent:];
          }

          v20 = 0;
          goto LABEL_62;
        }

        v51 = self->_database;
        v72[0] = v50;
        v52 = [(CCDatabaseReadWriteAccess *)v51 rowsModified:v72];
        v53 = v72[0];

        if (v52 < 0)
        {
          v55 = __biome_log_for_category();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            [(CCDatabaseUpdater *)self description];
            objc_claimAutoreleasedReturnValue();
            [CCDatabaseUpdater _tombstoneMetaContentWithProvenanceRowId:tombstoneContentIfNoLongerPresent:];
          }

          v20 = 0;
          goto LABEL_61;
        }

        self->_modifiedRowCount += v52;
        if (v73 == 1)
        {
          ++self->_sharedItemProvenanceUpdatedCount;
          v20 = 1;
LABEL_61:
          v50 = v53;
LABEL_62:

          v17 = v33;
          v25 = v50;
          goto LABEL_25;
        }

        v95 = v84[5];
        v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v95 count:1];

        v57 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC9468];
        if ([v57 updateParameters:v56])
        {
          v58 = v57;
        }

        else
        {
          v59 = [CCSQLCommandCriterion criterionWithColumnName:@"content_hash" EQUALSColumnValue:v84[5]];
          v60 = [CCDatabaseDelete builderWithTableName:@"content"];
          [v60 setCommandCriterion:v59];
          v58 = [v60 build];

          if (!v58)
          {
            v65 = __biome_log_for_category();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              [(CCDatabaseUpdater *)self description];
              objc_claimAutoreleasedReturnValue();
              [CCDatabaseUpdater _tombstoneMetaContentWithProvenanceRowId:tombstoneContentIfNoLongerPresent:];
            }

            v20 = 0;
            goto LABEL_60;
          }

          [(NSMutableDictionary *)self->_commandCache setObject:v58 forKey:&unk_1F2EC9468];
        }

        v61 = self->_database;
        v71 = v53;
        v62 = [(CCDatabaseReadWriteAccess *)v61 executeCommand:v58 error:&v71];
        v63 = v71;

        if (v62)
        {
          ++self->_sharedItemRemovedCount;
          ++self->_modifiedRowCount;
          v20 = 1;
        }

        else
        {
          v64 = __biome_log_for_category();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            [(CCDatabaseUpdater *)self description];
            objc_claimAutoreleasedReturnValue();
            [CCDatabaseUpdater _deleteSourceItemIdHash:outProvenanceRowId:];
          }

          v20 = 0;
        }

        v59 = v58;
        v53 = v63;
LABEL_60:

        v33 = v56;
        goto LABEL_61;
      }
    }

    else
    {
      v27 = __biome_log_for_category();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [(CCDatabaseUpdater *)self description];
        objc_claimAutoreleasedReturnValue();
        [CCDatabaseUpdater _deleteSourceItemIdHash:outProvenanceRowId:];
      }
    }

    v20 = 0;
    goto LABEL_25;
  }

  v26 = __biome_log_for_category();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [CCDatabaseUpdater _tombstoneMetaContentWithProvenanceRowId:tombstoneContentIfNoLongerPresent:];
  }

  v16 = 0;
  v20 = 0;
LABEL_27:

  v28 = *MEMORY[0x1E69E9840];
  return v20;
}

void __96__CCDatabaseUpdater__tombstoneMetaContentWithProvenanceRowId_tombstoneContentIfNoLongerPresent___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 numberValueAtColumnIndex:0];
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 numberValueAtColumnIndex:1];
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [v3 numberValueAtColumnIndex:2];

  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (BOOL)tombstoneContentSequenceNumbersInRange:(_NSRange)a3 forDeviceRowId:(id)a4
{
  length = a3.length;
  location = a3.location;
  v39[5] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:location];
  v36 = length;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:length + location - 1];
  v39[0] = &unk_1F2EC9468;
  v39[1] = v7;
  v39[2] = v8;
  v39[3] = v9;
  v39[4] = &unk_1F2EC9480;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:5];
  v11 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC94E0];
  if ([v11 updateParameters:v10])
  {
    v12 = v11;
  }

  else
  {
    v34 = v8;
    v35 = v7;
    v13 = [v10 objectAtIndex:1];
    v14 = [CCSQLCommandCriterion criterionWithColumnName:@"device_row_id" EQUALSColumnValue:v13];

    v15 = [v10 objectAtIndex:2];
    v16 = [v10 objectAtIndex:3];
    v17 = [CCSQLCommandCriterion criterionWithColumnName:@"content_sequence_number" BETWEENLowerColumnValue:v15 ANDUpperColumnValue:v16];

    v18 = [v10 objectAtIndex:4];
    v19 = [CCSQLCommandCriterion criterionWithColumnName:@"content_state" EQUALSColumnValue:v18];

    v33 = v14;
    v38[0] = v14;
    v38[1] = v17;
    v20 = v17;
    v38[2] = v19;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
    v22 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v21];

    v23 = [CCDatabaseUpdate builderWithTableName:@"provenance"];
    v24 = [v10 objectAtIndex:0];
    [v23 setValue:v24 forColumn:@"content_state"];

    [v23 setCommandCriterion:v22];
    v12 = [v23 build];

    if (v12)
    {
      [(NSMutableDictionary *)self->_commandCache setObject:v12 forKey:&unk_1F2EC94E0];
    }

    else
    {
      v25 = __biome_log_for_category();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseUpdater _tombstoneProvenanceRowsForExpiredDeviceRowId:];
      }
    }

    v8 = v34;
    v7 = v35;
    if (!v12)
    {
      v28 = 0;
      v27 = 0;
      goto LABEL_15;
    }
  }

  database = self->_database;
  v37 = 0;
  v27 = [(CCDatabaseReadWriteAccess *)database executeCommand:v12 error:&v37];
  v28 = v37;
  if (v27)
  {
    self->_sharedItemRemovedCount += v36;
    self->_modifiedRowCount += v36;
  }

  else
  {
    v29 = v9;
    v30 = __biome_log_for_category();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater _tombstoneProvenanceRowsForExpiredDeviceRowId:];
    }

    v9 = v29;
  }

LABEL_15:
  v31 = *MEMORY[0x1E69E9840];
  return v27;
}

- (BOOL)deleteContentRecordsNoLongerReferencedByAnyProvenanceRecord
{
  v24[2] = *MEMORY[0x1E69E9840];
  v3 = [CCDatabaseSelect builderWithTableName:@"provenance"];
  v4 = [CCSQLCommandCriterion criterionWithColumnName:@"content_hash" onTable:@"content" EQUALSColumnName:@"content_hash" onTable:@"provenance"];
  v24[0] = v4;
  v5 = [CCSQLCommandCriterion criterionWithColumnName:@"content_state" EQUALSColumnValue:&unk_1F2EC9480];
  v24[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v7 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v6];

  [v3 setCommandCriterion:v7];
  v8 = [CCDatabaseDelete builderWithTableName:@"content"];
  v9 = [v3 build];
  v10 = [CCSQLCommandCriterion criterionWithNOTEXISTSSubQuery:v9];
  [v8 setCommandCriterion:v10];

  v11 = [v8 build];
  database = self->_database;
  v23 = 0;
  LOBYTE(v5) = [(CCDatabaseReadWriteAccess *)database executeCommand:v11 error:&v23];
  v13 = v23;
  if (v5)
  {
    v14 = self->_database;
    v22 = v13;
    v15 = [(CCDatabaseReadWriteAccess *)v14 rowsModified:&v22];
    v16 = v22;

    if (v15 < 0)
    {
      v19 = __biome_log_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseUpdater deleteContentRecordsNoLongerReferencedByAnyProvenanceRecord];
      }

      v17 = 0;
    }

    else
    {
      self->_modifiedRowCount += v15;
      v17 = 1;
    }

    v13 = v16;
  }

  else
  {
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater deleteContentRecordsNoLongerReferencedByAnyProvenanceRecord];
    }

    v17 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)compactContiguousRunsOfDeletes:(id)a3
{
  v120[2] = *MEMORY[0x1E69E9840];
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6DB2000, v4, OS_LOG_TYPE_DEFAULT, "Starting database tombstone compaction operation", buf, 2u);
  }

  v5 = [[CCDatabaseSetStateReader alloc] initWithDatabaseAccess:self->_database siteIdentifierFormat:2];
  v110 = 0;
  v6 = [(CCDatabaseSetStateReader *)v5 constructDeviceMapping:&v110];
  v7 = v110;
  v8 = v7;
  if (v6)
  {
    v108 = 0;
    v109 = 0;
    v107 = v7;
    v9 = [(CCDatabaseSetStateReader *)v5 constructStateVectorsFromDatabaseWithDeviceMapping:v6 outContent:&v109 outMetaContent:&v108 error:&v107];
    v10 = v109;
    v11 = v108;
    v12 = v107;

    if (v9)
    {
      v93 = v11;
      v94 = v10;
      v86 = v6;
      v88 = v12;
      v90 = v5;
      v13 = [CCSQLCommandCriterion criterionWithColumnName:@"content_state" EQUALSColumnValue:&unk_1F2EC9468];
      v14 = [CCSQLCommandCriterion criterionWithColumnName:"criterionWithColumnName:EQUALSColumnValue:" EQUALSColumnValue:?];
      v15 = [CCDatabaseUpdate builderWithTableName:?];
      v16 = [MEMORY[0x1E695DFB0] null];
      v17 = [CCSQLCommandCriterion criterionWithColumnName:@"content_sequence_number" ISNOTColumnValue:v16];

      v18 = [MEMORY[0x1E695DFB0] null];
      v19 = [CCSQLCommandCriterion criterionWithColumnName:@"metacontent_sequence_number" ISNOTColumnValue:v18];

      v87 = v17;
      v120[0] = v17;
      v120[1] = v19;
      v85 = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:2];
      v21 = [CCSQLCommandCriterion criterionWithORSubCriteria:v20];

      v91 = v14;
      v92 = v13;
      v119[0] = v13;
      v119[1] = v14;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:2];
      v23 = [CCSQLCommandCriterion criterionWithORSubCriteria:v22];

      v83 = v23;
      v84 = v21;
      v118[0] = v23;
      v118[1] = v21;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:2];
      v25 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v24];
      [v15 setCommandCriterion:v25];

      v26 = [MEMORY[0x1E695DFB0] null];
      [v15 setValue:v26 forColumn:@"content_sequence_number_end_of_run"];

      v27 = [MEMORY[0x1E695DFB0] null];
      [v15 setValue:v27 forColumn:@"metacontent_sequence_number_end_of_run"];

      v89 = v15;
      v28 = [v15 build];
      v29 = __biome_log_for_category();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [CCDatabaseUpdater compactContiguousRunsOfDeletes:v28];
      }

      database = self->_database;
      v106 = 0;
      v82 = v28;
      v31 = [(CCDatabaseReadWriteAccess *)database executeCommand:v28 error:&v106];
      v81 = v106;
      v6 = v86;
      v11 = v93;
      if (v31)
      {
        v102[0] = MEMORY[0x1E69E9820];
        v102[1] = 3221225472;
        v102[2] = __52__CCDatabaseUpdater_compactContiguousRunsOfDeletes___block_invoke;
        v102[3] = &unk_1E7C8C070;
        v32 = v86;
        v103 = v32;
        v33 = v13;
        v104 = v33;
        v105 = self;
        [v10 enumerateAllClockValuesUsingBlock:v102];
        v97[0] = MEMORY[0x1E69E9820];
        v97[1] = 3221225472;
        v97[2] = __52__CCDatabaseUpdater_compactContiguousRunsOfDeletes___block_invoke_54;
        v97[3] = &unk_1E7C8C098;
        v98 = v32;
        v74 = v33;
        v99 = v74;
        v34 = v91;
        v100 = v34;
        v101 = self;
        [v93 enumerateAllClockValuesUsingBlock:v97];
        v35 = [MEMORY[0x1E695DFB0] null];
        v36 = [CCSQLCommandCriterion criterionWithColumnName:@"content_sequence_number_end_of_run" ISColumnValue:v35];

        v37 = [MEMORY[0x1E695DFB0] null];
        v38 = [CCSQLCommandCriterion criterionWithColumnName:@"metacontent_sequence_number_end_of_run" ISColumnValue:v37];

        v117[0] = v36;
        v117[1] = v38;
        v78 = v38;
        v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:2];
        v40 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v39];

        v116[0] = v74;
        v116[1] = v34;
        v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:2];
        v42 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v41];

        v76 = v42;
        v77 = v40;
        v115[0] = v42;
        v115[1] = v40;
        v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:2];
        v44 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v43];

        v45 = v36;
        v46 = [MEMORY[0x1E695DFB0] null];
        v47 = [CCSQLCommandCriterion criterionWithColumnName:@"metacontent_state" ISColumnValue:v46];

        v114[0] = v74;
        v114[1] = v47;
        v75 = v47;
        v114[2] = v45;
        v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:3];
        v49 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v48];

        v79 = v44;
        v113[0] = v44;
        v113[1] = v49;
        v73 = v49;
        v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:2];
        v51 = [CCSQLCommandCriterion criterionWithORSubCriteria:v50];

        v52 = [CCDatabaseDelete builderWithTableName:@"provenance"];
        v72 = v51;
        [v52 setCommandCriterion:v51];
        v53 = [v52 build];
        v54 = __biome_log_for_category();
        v5 = v90;
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          [CCDatabaseUpdater compactContiguousRunsOfDeletes:v53];
        }

        v55 = self->_database;
        v96 = 0;
        v71 = v53;
        v56 = [(CCDatabaseReadWriteAccess *)v55 executeCommand:v53 error:&v96];
        v80 = v96;
        v12 = v88;
        if (v56)
        {
          v70 = v52;
          v57 = self->_database;
          v95 = v88;
          v58 = [(CCDatabaseReadWriteAccess *)v57 rowsModified:&v95];
          v59 = v95;

          v11 = v93;
          v10 = v94;
          if ((v58 & 0x80000000) != 0)
          {
            v64 = v59;
            v65 = __biome_log_for_category();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              [CCDatabaseUpdater compactContiguousRunsOfDeletes:];
            }

            v59 = v64;
          }

          else if (v58)
          {
            self->_modifiedRowCount += v58;
          }

          v62 = __biome_log_for_category();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            [MEMORY[0x1E696AD98] numberWithInt:v58];
            v66 = v12 = v59;
            *buf = 138412290;
            v112 = v66;
            _os_log_impl(&dword_1B6DB2000, v62, OS_LOG_TYPE_DEFAULT, "Finished database tombstone compaction operation with deleted count: %@", buf, 0xCu);
          }

          else
          {
            v12 = v59;
          }

          v63 = v78;
          v52 = v70;
        }

        else
        {
          v62 = __biome_log_for_category();
          v11 = v93;
          v10 = v94;
          v63 = v78;
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            [CCDatabaseUpdater compactContiguousRunsOfDeletes:];
          }
        }

        v61 = v103;
      }

      else
      {
        v61 = __biome_log_for_category();
        v5 = v90;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v67 = v81;
          [CCDatabaseUpdater compactContiguousRunsOfDeletes:];
          v56 = 0;
          goto LABEL_33;
        }

        v56 = 0;
      }

      v67 = v81;
LABEL_33:

      v8 = v12;
      v60 = v92;
      goto LABEL_34;
    }

    v60 = __biome_log_for_category();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater compactContiguousRunsOfDeletes:];
    }

    v56 = 0;
    v8 = v12;
  }

  else
  {
    v60 = __biome_log_for_category();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater compactContiguousRunsOfDeletes:];
    }

    v11 = 0;
    v10 = 0;
    v56 = 0;
  }

LABEL_34:

  v68 = *MEMORY[0x1E69E9840];
  return v56;
}

void __52__CCDatabaseUpdater_compactContiguousRunsOfDeletes___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v28[3] = *MEMORY[0x1E69E9840];
  if (a6 == 2 && a4)
  {
    v9 = a2;
    v10 = [CCDatabaseUpdate builderWithTableName:@"provenance"];
    v11 = [*(a1 + 32) deviceRowIdForSiteIdentifier:v9];

    v12 = [CCSQLCommandCriterion criterionWithColumnName:@"device_row_id" EQUALSColumnValue:v11];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v14 = [CCSQLCommandCriterion criterionWithColumnName:@"content_sequence_number" EQUALSColumnValue:v13];

    v15 = [MEMORY[0x1E695DFB0] null];
    [v10 setValue:v15 forColumn:@"content_hash"];

    v16 = [MEMORY[0x1E695DFB0] null];
    [v10 setValue:v16 forColumn:@"instance_hash"];

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3 + a4];
    [v10 setValue:v17 forColumn:@"content_sequence_number_end_of_run"];

    v28[0] = v12;
    v28[1] = v14;
    v28[2] = *(a1 + 40);
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
    v19 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v18];
    [v10 setCommandCriterion:v19];

    v20 = [v10 build];
    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      __52__CCDatabaseUpdater_compactContiguousRunsOfDeletes___block_invoke_cold_1(v20);
    }

    v22 = *(*(a1 + 48) + 8);
    v27 = 0;
    v23 = [v22 executeCommand:v20 error:&v27];
    v24 = v27;
    if ((v23 & 1) == 0)
    {
      v25 = __biome_log_for_category();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        __52__CCDatabaseUpdater_compactContiguousRunsOfDeletes___block_invoke_cold_2();
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __52__CCDatabaseUpdater_compactContiguousRunsOfDeletes___block_invoke_54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v29[4] = *MEMORY[0x1E69E9840];
  if (a6 == 2 && a4)
  {
    v9 = a2;
    v10 = [CCDatabaseUpdate builderWithTableName:@"provenance"];
    v11 = [*(a1 + 32) deviceRowIdForSiteIdentifier:v9];

    v12 = [CCSQLCommandCriterion criterionWithColumnName:@"device_row_id" EQUALSColumnValue:v11];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v14 = [CCSQLCommandCriterion criterionWithColumnName:@"metacontent_sequence_number" EQUALSColumnValue:v13];

    v15 = [MEMORY[0x1E695DFB0] null];
    [v10 setValue:v15 forColumn:@"content_hash"];

    v16 = [MEMORY[0x1E695DFB0] null];
    [v10 setValue:v16 forColumn:@"instance_hash"];

    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3 + a4];
    [v10 setValue:v17 forColumn:@"metacontent_sequence_number_end_of_run"];

    v29[0] = v12;
    v29[1] = v14;
    v18 = *(a1 + 48);
    v29[2] = *(a1 + 40);
    v29[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
    v20 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v19];
    [v10 setCommandCriterion:v20];

    v21 = [v10 build];
    v22 = __biome_log_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __52__CCDatabaseUpdater_compactContiguousRunsOfDeletes___block_invoke_54_cold_1(v21);
    }

    v23 = *(*(a1 + 56) + 8);
    v28 = 0;
    v24 = [v23 executeCommand:v21 error:&v28];
    v25 = v28;
    if ((v24 & 1) == 0)
    {
      v26 = __biome_log_for_category();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __52__CCDatabaseUpdater_compactContiguousRunsOfDeletes___block_invoke_54_cold_2();
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (BOOL)deleteExpiredRemoteDeviceState:(id)a3 shouldTombstoneSet:(BOOL *)a4
{
  v79 = *MEMORY[0x1E69E9840];
  v74 = 0;
  v6 = [(CCDatabaseUpdater *)self _selectDeviceRecords:&v74 withOptions:0 beyondExpirationDate:self->_startTimeMicros];
  v7 = v74;
  LOBYTE(v8) = 0;
  if (v6)
  {
    v57 = a4;
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(__CFString *)v7 count];
      v11 = [(__CFString *)v7 count];
      v12 = &stru_1F2EBB700;
      if (v11)
      {
        v12 = v7;
      }

      *buf = 67109378;
      *v78 = v10;
      *&v78[4] = 2112;
      *&v78[6] = v12;
      _os_log_impl(&dword_1B6DB2000, v9, OS_LOG_TYPE_DEFAULT, "Found %u active remote device records past their expiration date %@", buf, 0x12u);
    }

    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
    v70 = 0u;
    v58 = v7;
    v13 = v7;
    v14 = [(__CFString *)v13 countByEnumeratingWithState:&v70 objects:v76 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v71;
LABEL_8:
      v17 = 0;
      while (1)
      {
        if (*v71 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v70 + 1) + 8 * v17);
        v19 = __biome_log_for_category();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v78 = v18;
          _os_log_impl(&dword_1B6DB2000, v19, OS_LOG_TYPE_DEFAULT, "Expiring device record: %@", buf, 0xCu);
        }

        v20 = [v18 deviceRowId];
        v8 = [(CCDatabaseUpdater *)self _expireAndTombstoneAllProvenanceForDeviceRowId:v20];

        if (!v8)
        {
          goto LABEL_61;
        }

        if (v15 == ++v17)
        {
          v15 = [(__CFString *)v13 countByEnumeratingWithState:&v70 objects:v76 count:16];
          if (v15)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    v21 = MEMORY[0x1E696AD98];
    v22 = [(NSNumber *)self->_startTimeMicros longLongValue];
    v23 = [v21 numberWithLongLong:v22 - (*&CCDataResourceTombstonedInterval * 1000000.0)];
    v69 = 0;
    LODWORD(v21) = [(CCDatabaseUpdater *)self _selectDeviceRecords:&v69 withOptions:2 beyondExpirationDate:v23];
    v24 = v69;
    if (v21)
    {
      v56 = v23;
      v25 = __biome_log_for_category();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(__CFString *)v24 count];
        v27 = [(__CFString *)v24 count];
        v28 = &stru_1F2EBB700;
        if (v27)
        {
          v28 = v24;
        }

        *buf = 67109378;
        *v78 = v26;
        *&v78[4] = 2112;
        *&v78[6] = v28;
        _os_log_impl(&dword_1B6DB2000, v25, OS_LOG_TYPE_DEFAULT, "Found %u expired remote device records past the tombstone preservation interval %@", buf, 0x12u);
      }

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v55 = v24;
      v29 = v24;
      v30 = [(__CFString *)v29 countByEnumeratingWithState:&v65 objects:v75 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v66;
        obj = v29;
        while (2)
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v66 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(*(&v65 + 1) + 8 * i);
            v35 = __biome_log_for_category();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v78 = v34;
              _os_log_impl(&dword_1B6DB2000, v35, OS_LOG_TYPE_DEFAULT, "Deleting device record: %@", buf, 0xCu);
            }

            v36 = [v34 deviceRowId];
            v37 = [(CCDatabaseUpdater *)self _deleteDeviceRowId:v36];

            if (!v37)
            {
              LOBYTE(v8) = 0;
              v7 = v58;
              v24 = v55;
              v23 = v56;
              goto LABEL_59;
            }
          }

          v29 = obj;
          v31 = [(CCDatabaseSetStateReader *)obj countByEnumeratingWithState:&v65 objects:v75 count:16];
          if (v31)
          {
            continue;
          }

          break;
        }
      }

      v7 = v58;
      v23 = v56;
      if (![(__CFString *)v13 count]&& ![(__CFString *)v29 count])
      {
        goto LABEL_36;
      }

      v38 = __biome_log_for_category();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6DB2000, v38, OS_LOG_TYPE_DEFAULT, "Deleting any content records no longer referenced by provenance", buf, 2u);
      }

      if ([(CCDatabaseUpdater *)self deleteContentRecordsNoLongerReferencedByAnyProvenanceRecord])
      {
LABEL_36:
        v39 = [[CCDatabaseSetStateReader alloc] initWithDatabaseAccess:self->_database siteIdentifierFormat:2];
        v64 = 0;
        v40 = [(CCDatabaseSetStateReader *)v39 constructDeviceMapping:&v64];
        v41 = v64;
        obj = v39;
        if (!v40)
        {
          v43 = __biome_log_for_category();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            [CCDatabaseUpdater deleteExpiredRemoteDeviceState:shouldTombstoneSet:];
          }

          LOBYTE(v8) = 0;
          goto LABEL_57;
        }

        if ([v40 count] >= 2)
        {
          v42 = __biome_log_for_category();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            [CCDatabaseUpdater deleteExpiredRemoteDeviceState:shouldTombstoneSet:];
          }

          LOBYTE(v8) = 1;
          goto LABEL_57;
        }

        v63 = 1;
        v62 = v41;
        v44 = [(CCDatabaseSetStateReader *)v39 checkForPresentContent:&v63 filterByDeviceRowId:0 error:&v62];
        v45 = v62;

        if (v44)
        {
          if (v63 != 1)
          {
            v61 = 1;
            v60 = v45;
            LOBYTE(v8) = [(CCDatabaseSetStateReader *)v39 checkForLocalSourceDonation:&v61 error:&v60];
            v41 = v60;

            if (v8)
            {
              v50 = v61;
              v51 = __biome_log_for_category();
              v52 = v51;
              if (v50 != 1)
              {
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                {
                  v54 = [(CCDatabaseUpdater *)self description];
                  *buf = 138412290;
                  *v78 = v54;
                  _os_log_impl(&dword_1B6DB2000, v52, OS_LOG_TYPE_DEFAULT, "All conditions met for set tombstone eligibility. %@", buf, 0xCu);
                }

                v24 = v55;
                if (v57)
                {
                  *v57 = 1;
                }

LABEL_58:

LABEL_59:
                goto LABEL_60;
              }

              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
              {
                [CCDatabaseUpdater deleteExpiredRemoteDeviceState:shouldTombstoneSet:];
              }
            }

            else
            {
              v53 = __biome_log_for_category();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                [CCDatabaseUpdater deleteExpiredRemoteDeviceState:shouldTombstoneSet:];
              }
            }

LABEL_57:
            v24 = v55;
            goto LABEL_58;
          }

          v46 = __biome_log_for_category();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            [CCDatabaseUpdater deleteExpiredRemoteDeviceState:shouldTombstoneSet:];
          }

          LOBYTE(v8) = 1;
        }

        else
        {
          v47 = __biome_log_for_category();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            [CCDatabaseUpdater deleteExpiredRemoteDeviceState:shouldTombstoneSet:];
          }

          LOBYTE(v8) = 0;
        }

        v41 = v45;
        goto LABEL_57;
      }

      LOBYTE(v8) = 0;
      v24 = v55;
    }

    else
    {
      LOBYTE(v8) = 0;
    }

LABEL_60:

    v13 = v23;
LABEL_61:
  }

  v48 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_expireAndTombstoneAllProvenanceForDeviceRowId:(id)a3
{
  v4 = a3;
  if ([(CCDatabaseUpdater *)self _expireDeviceRowId:v4])
  {
    v5 = [(CCDatabaseUpdater *)self _tombstoneProvenanceRowsForExpiredDeviceRowId:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_deleteDeviceRowId:(id)a3
{
  v4 = a3;
  v5 = [CCDatabaseDelete builderWithTableName:@"device"];
  v6 = [CCSQLCommandCriterion criterionWithColumnName:@"device_row_id" EQUALSColumnValue:v4];

  [v5 setCommandCriterion:v6];
  v7 = [v5 build];
  database = self->_database;
  v13 = 0;
  v9 = [(CCDatabaseReadWriteAccess *)database executeCommand:v7 error:&v13];
  v10 = v13;
  if (v9)
  {
    ++self->_modifiedRowCount;
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater _deleteDeviceRowId:];
    }
  }

  return v9;
}

- (BOOL)_insertDeviceSite:(id)a3 returningRowId:(id *)a4
{
  v62[8] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v46 = [v4 device];
  v5 = [v46 options];
  v6 = [v4 device];
  v7 = [v6 deviceUUID];
  v45 = BMDataFromNSUUID();

  if (v45)
  {
    v43 = [(CCDatabaseUpdater *)self _incrementCachedIntegerWithKey:@"localHighestAttestationGeneration"];
    v8 = v43;
    if (v43)
    {
      v9 = [v4 expirationDate];

      if (v9)
      {
        v10 = MEMORY[0x1E696AD98];
        v11 = [v4 expirationDate];
        [v11 timeIntervalSince1970];
        v41 = [v10 numberWithLongLong:(v12 * 1000000.0)];
      }

      else
      {
        v41 = 0;
      }

      v62[0] = v45;
      v15 = [v46 idsDeviceIdentifier];
      v16 = v15;
      if (!v15)
      {
        v16 = [MEMORY[0x1E695DFB0] null];
      }

      v62[1] = v16;
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v46, "platform")}];
      v62[2] = v17;
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v5 & 1];
      v62[3] = v18;
      v19 = [v4 resourceGeneration];
      v62[4] = v19;
      v62[5] = v43;
      v20 = [v4 deltaGeneration];
      v21 = v20;
      if (!v20)
      {
        v21 = [MEMORY[0x1E695DFB0] null];
      }

      v62[6] = v21;
      v22 = v41;
      v23 = v41;
      if (!v41)
      {
        v23 = [MEMORY[0x1E695DFB0] null];
        v22 = 0;
      }

      v24 = v22 == 0;
      v62[7] = v23;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:8];
      if (v24)
      {
      }

      if (!v20)
      {
      }

      if (!v15)
      {
      }

      v25 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC94F8];
      if ([v25 updateParameters:v42])
      {
        v26 = 0;
      }

      else
      {
        v61[0] = @"device_uuid";
        v61[1] = @"ids_device_id";
        v61[2] = @"device_platform";
        v61[3] = @"options";
        v61[4] = @"resource_generation";
        v61[5] = @"attestation_generation";
        v61[6] = @"delta_generation";
        v61[7] = @"expiration_date";
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:8];
        v28 = [CCDatabaseInsert builderWithTableName:@"device" columnNames:v27];

        [v28 setColumnValues:v42];
        v60 = @"device_row_id";
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
        [v28 setReturningColumns:v29];

        v49 = 0;
        v30 = [v28 buildWithError:&v49];
        v26 = v49;

        if (!v30)
        {
          v36 = __biome_log_for_category();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v38 = [(CCDatabaseUpdater *)self description];
            *v56 = 138412802;
            *&v56[4] = v42;
            *&v56[12] = 2112;
            *&v56[14] = v38;
            *&v56[22] = 2112;
            v57 = v26;
            _os_log_error_impl(&dword_1B6DB2000, v36, OS_LOG_TYPE_ERROR, "Failed to build Insert with params: {%@}, %@ error: %@", v56, 0x20u);
          }

          v14 = 0;
          goto LABEL_33;
        }

        [(NSMutableDictionary *)self->_commandCache setObject:v30 forKey:&unk_1F2EC94F8];

        v25 = v30;
      }

      *v56 = 0;
      *&v56[8] = v56;
      *&v56[16] = 0x3032000000;
      v57 = __Block_byref_object_copy__14;
      v58 = __Block_byref_object_dispose__14;
      v59 = 0;
      database = self->_database;
      v47[4] = v56;
      v48 = v26;
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __54__CCDatabaseUpdater__insertDeviceSite_returningRowId___block_invoke;
      v47[3] = &unk_1E7C8C020;
      v14 = [(CCDatabaseReadWriteAccess *)database executeCommand:v25 error:&v48 returningRowBlock:v47];
      v32 = v48;

      if (v14)
      {
        if (v40)
        {
          *v40 = *(*&v56[8] + 40);
        }

        ++self->_modifiedRowCount;
      }

      else
      {
        v33 = __biome_log_for_category();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v37 = [(CCDatabaseUpdater *)self description];
          *buf = 138412802;
          v51 = v25;
          v52 = 2112;
          v53 = v37;
          v54 = 2112;
          v55 = v32;
          _os_log_error_impl(&dword_1B6DB2000, v33, OS_LOG_TYPE_ERROR, "Insert %@ failed. %@ error: %@", buf, 0x20u);
        }
      }

      _Block_object_dispose(v56, 8);

      v28 = v25;
      v26 = v32;
LABEL_33:

      v8 = v43;
      goto LABEL_34;
    }

    goto LABEL_7;
  }

  v13 = __biome_log_for_category();
  v8 = v13;
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
LABEL_7:
    v14 = 0;
    goto LABEL_34;
  }

  [CCDatabaseUpdater _insertDeviceSite:returningRowId:];
  v14 = 0;
  v8 = v13;
LABEL_34:

  v34 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __54__CCDatabaseUpdater__insertDeviceSite_returningRowId___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 numberValueAtColumnIndex:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)insertItemWithSourceItemIdHash:(id)a3 instanceHash:(id)a4 contentHash:(id)a5 metaContent:(id)a6 content:(id)a7 isDuplicate:(BOOL *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v28 = 0;
  LODWORD(a6) = [(CCDatabaseUpdater *)self _insertMetaContent:a6 instanceHash:v15 outSequenceNumber:&v28 outIsDuplicate:a8];
  v18 = v28;
  if (a6)
  {
    v27 = 0;
    v19 = [(CCDatabaseUpdater *)self _insertContent:v17 contentHash:v16 outSequenceNumber:&v27];
    v20 = v27;
    if (v19)
    {
      v21 = [(CCDeviceRecord *)self->_localDeviceRecord deviceRowId];
      v26 = 0;
      v22 = [(CCDatabaseUpdater *)self _insertProvenanceForItemWithContentHash:v16 contentSequenceNumber:v20 metaContentSequenceNumber:v18 instanceHash:v15 onDeviceRowId:v21 insertedRowId:&v26];
      v23 = v26;

      v24 = v22 && [(CCDatabaseUpdater *)self _insertLocalInstanceForItemWithSourceItemIdHash:v14 provenanceRowId:v23];
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (BOOL)insertContent:(id)a3 contentHash:(id)a4 sequenceNumber:(id)a5 onDeviceRowId:(id)a6
{
  v36[4] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([(CCDatabaseUpdater *)self _insertContent:a3 contentHash:v10 outExists:0])
  {
    v36[0] = v12;
    v36[1] = v10;
    v36[2] = v11;
    v36[3] = &unk_1F2EC9480;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
    v14 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC9510];
    if ([v14 updateParameters:v13])
    {
      v15 = 0;
      v16 = v14;
    }

    else
    {
      v35[0] = @"device_row_id";
      v35[1] = @"content_hash";
      v35[2] = @"content_sequence_number";
      v35[3] = @"content_state";
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
      v16 = [CCDatabaseInsert builderWithTableName:@"provenance" columnNames:v18];

      [v16 setColumnValues:v13];
      v28 = 0;
      v19 = [v16 buildWithError:&v28];
      v15 = v28;

      if (!v19)
      {
        v23 = __biome_log_for_category();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v26 = [(CCDatabaseUpdater *)self description];
          *buf = 138412802;
          v30 = v13;
          v31 = 2112;
          v32 = v26;
          v33 = 2112;
          v34 = v15;
          _os_log_error_impl(&dword_1B6DB2000, v23, OS_LOG_TYPE_ERROR, "Failed to build provenance with params: {%@}, %@ error: %@", buf, 0x20u);
        }

        goto LABEL_13;
      }

      [(NSMutableDictionary *)self->_commandCache setObject:v19 forKey:&unk_1F2EC9510];

      v16 = v19;
    }

    v20 = v15;
    database = self->_database;
    v27 = v15;
    v22 = [(CCDatabaseReadWriteAccess *)database executeCommand:v16 error:&v27];
    v15 = v27;

    if (v22)
    {
      ++self->_modifiedRowCount;
      v17 = 1;
LABEL_14:

      goto LABEL_15;
    }

    v23 = __biome_log_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater insertContent:contentHash:sequenceNumber:onDeviceRowId:];
    }

LABEL_13:

    v17 = 0;
    goto LABEL_14;
  }

  v17 = 0;
LABEL_15:

  v24 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)_insertMetaContent:(id)a3 instanceHash:(id)a4 outSequenceNumber:(id *)a5 outIsDuplicate:(BOOL *)a6
{
  v47[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v47[0] = v11;
  v47[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
  v13 = [(CCDatabaseUpdater *)self _incrementCachedIntegerWithKey:@"localHighestMetaContent"];
  if (v13)
  {
    v34 = a6;
    v14 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC9528];
    if ([v14 updateParameters:v12])
    {
      v15 = 0;
    }

    else
    {
      v33 = v10;
      v46[0] = @"instance_hash";
      v46[1] = @"metacontent";
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
      v18 = [CCDatabaseInsert builderWithTableName:@"metacontent" columnNames:v17];

      [v18 setColumnValues:v12];
      v37 = 0;
      v19 = [v18 buildWithError:&v37];
      v15 = v37;

      if (!v19)
      {
        v27 = __biome_log_for_category();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v30 = [(CCDatabaseUpdater *)self description];
          *buf = 138412802;
          v39 = v12;
          v40 = 2112;
          v41 = v30;
          v42 = 2112;
          v43 = v15;
          _os_log_error_impl(&dword_1B6DB2000, v27, OS_LOG_TYPE_ERROR, "Failed to build Insert with params: {%@}, %@ error: %@", buf, 0x20u);
        }

        v14 = 0;
        v16 = 0;
        v10 = v33;
        goto LABEL_25;
      }

      [(NSMutableDictionary *)self->_commandCache setObject:v19 forKey:&unk_1F2EC9528];

      v14 = v19;
      v10 = v33;
    }

    v20 = v15;
    database = self->_database;
    v36 = v15;
    v22 = [(CCDatabaseReadWriteAccess *)database executeCommand:v14 error:&v36];
    v15 = v36;

    if (v22)
    {
      ++self->_modifiedRowCount;
      if (a5)
      {
        *a5 = self->_cachedLocalHighestMetaContentSequenceNumber;
      }

      v16 = 1;
    }

    else
    {
      v23 = __biome_log_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseUpdater insertContent:contentHash:sequenceNumber:onDeviceRowId:];
      }

      if (CCDatabaseUnderlyingError(v15) == 1555)
      {
        if (v34)
        {
          *v34 = 1;
        }

        v35 = 0;
        v24 = [(CCDatabaseUpdater *)self _selectMetaContentWithInstanceHash:v11 outRecord:&v35];
        v25 = v35;
        if (v24)
        {
          v26 = __biome_log_for_category();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v31 = [v25 instanceHash];
            v32 = [v25 metaContent];
            *buf = 138413058;
            v39 = v11;
            v40 = 2112;
            v41 = v10;
            v42 = 2112;
            v43 = v31;
            v44 = 2112;
            v45 = v32;
            _os_log_error_impl(&dword_1B6DB2000, v26, OS_LOG_TYPE_ERROR, "Attempt to insert:\n\n\t{instanceHash: %@ metaContent: %@}\n\ncollided with existing record:\n\n\t{instanceHash: %@ metaContent: %@}", buf, 0x2Au);
          }
        }
      }

      v16 = 0;
    }

LABEL_25:

    goto LABEL_26;
  }

  v15 = 0;
  v16 = 0;
LABEL_26:

  v28 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)_insertContent:(id)a3 contentHash:(id)a4 outSequenceNumber:(id *)a5
{
  v7 = a4;
  v13 = 0;
  v8 = [(CCDatabaseUpdater *)self _insertContent:a3 contentHash:v7 outExists:&v13];
  LOBYTE(a3) = 0;
  if (v8)
  {
    if (v13 == 1)
    {
      v12 = 0;
      LODWORD(a3) = [(CCDatabaseUpdater *)self _selectLocalDeviceProvenenceWithContentHash:v7 outSequenceNumber:&v12];
      v10 = v12;
      if (!a3)
      {
        goto LABEL_7;
      }

      if (v10)
      {
LABEL_6:
        v10 = v10;
        *a5 = v10;
        goto LABEL_7;
      }
    }

    v10 = [(CCDatabaseUpdater *)self _incrementCachedIntegerWithKey:@"localHighestContent"];
    LOBYTE(a3) = v10 != 0;
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_7:
  }

  return a3;
}

- (BOOL)_insertContent:(id)a3 contentHash:(id)a4 outExists:(BOOL *)a5
{
  v34[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v34[0] = v9;
  v34[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  v11 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC9540];
  if ([v11 updateParameters:v10])
  {
    v12 = 0;
  }

  else
  {
    v33[0] = @"content_hash";
    v33[1] = @"content";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v14 = [CCDatabaseInsert builderWithTableName:@"content" columnNames:v13];

    [v14 setColumnValues:v10];
    v26 = 0;
    v15 = [v14 buildWithError:&v26];
    v12 = v26;

    if (!v15)
    {
      v21 = __biome_log_for_category();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v24 = [(CCDatabaseUpdater *)self description];
        *buf = 138412802;
        v28 = v10;
        v29 = 2112;
        v30 = v24;
        v31 = 2112;
        v32 = v12;
        _os_log_error_impl(&dword_1B6DB2000, v21, OS_LOG_TYPE_ERROR, "Failed to build Insert with params: {%@}, %@ error: %@", buf, 0x20u);
      }

      v11 = 0;
      goto LABEL_16;
    }

    [(NSMutableDictionary *)self->_commandCache setObject:v15 forKey:&unk_1F2EC9540];

    v11 = v15;
  }

  v16 = v12;
  database = self->_database;
  v25 = v12;
  v18 = [(CCDatabaseReadWriteAccess *)database executeCommand:v11 error:&v25];
  v12 = v25;

  if (v18)
  {
    ++self->_modifiedRowCount;
    ++self->_sharedItemAddedCount;
    v19 = 1;
    goto LABEL_17;
  }

  if (CCDatabaseUnderlyingError(v12) != 1555)
  {
    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater insertContent:contentHash:sequenceNumber:onDeviceRowId:];
    }

LABEL_16:
    v19 = 0;
    goto LABEL_17;
  }

  ++self->_sharedItemProvenanceUpdatedCount;
  v19 = 1;
  if (a5)
  {
    *a5 = 1;
  }

LABEL_17:

  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)_insertProvenanceForItemWithContentHash:(id)a3 contentSequenceNumber:(id)a4 metaContentSequenceNumber:(id)a5 instanceHash:(id)a6 onDeviceRowId:(id)a7 insertedRowId:(id *)a8
{
  v54[7] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = v17;
  v37 = v13;
  v38 = v15;
  if (v14)
  {
    v54[0] = v17;
    v54[1] = v13;
    v54[2] = v16;
    v54[3] = v14;
    v54[4] = &unk_1F2EC9480;
    v54[5] = v15;
    v54[6] = &unk_1F2EC9480;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:7];
    v20 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC9558];
    if ([v20 updateParameters:v19])
    {
      v21 = 0;
    }

    else
    {
      v53[0] = @"device_row_id";
      v53[1] = @"content_hash";
      v53[2] = @"instance_hash";
      v53[3] = @"content_sequence_number";
      v53[4] = @"content_state";
      v53[5] = @"metacontent_sequence_number";
      v53[6] = @"metacontent_state";
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:7];
      v24 = [CCDatabaseInsert builderWithTableName:@"provenance" columnNames:v23];

      [v24 setColumnValues:v19];
      v52 = @"provenance_row_id";
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
      [v24 setReturningColumns:v25];

      v41 = 0;
      v26 = [v24 buildWithError:&v41];
      v21 = v41;

      if (!v26)
      {
        v32 = __biome_log_for_category();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v34 = [(CCDatabaseUpdater *)self description];
          *v48 = 138412802;
          *&v48[4] = v19;
          *&v48[12] = 2112;
          *&v48[14] = v34;
          *&v48[22] = 2112;
          v49 = v21;
          _os_log_error_impl(&dword_1B6DB2000, v32, OS_LOG_TYPE_ERROR, "Failed to build Insert with params: {%@}, %@ error: %@", v48, 0x20u);
        }

        v22 = 0;
        goto LABEL_15;
      }

      [(NSMutableDictionary *)self->_commandCache setObject:v26 forKey:&unk_1F2EC9558];

      v20 = v26;
    }

    *v48 = 0;
    *&v48[8] = v48;
    *&v48[16] = 0x3032000000;
    v49 = __Block_byref_object_copy__14;
    v50 = __Block_byref_object_dispose__14;
    v51 = 0;
    database = self->_database;
    v39[4] = v48;
    v40 = v21;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __150__CCDatabaseUpdater__insertProvenanceForItemWithContentHash_contentSequenceNumber_metaContentSequenceNumber_instanceHash_onDeviceRowId_insertedRowId___block_invoke;
    v39[3] = &unk_1E7C8C020;
    v22 = [(CCDatabaseReadWriteAccess *)database executeCommand:v20 error:&v40 returningRowBlock:v39, a8, v37, v38];
    v28 = v40;

    if (v22)
    {
      *v36 = *(*&v48[8] + 40);
      ++self->_modifiedRowCount;
    }

    else
    {
      v29 = __biome_log_for_category();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v33 = [(CCDatabaseUpdater *)self description];
        *buf = 138412802;
        v43 = v20;
        v44 = 2112;
        v45 = v33;
        v46 = 2112;
        v47 = v28;
        _os_log_error_impl(&dword_1B6DB2000, v29, OS_LOG_TYPE_ERROR, "Insert %@ failed. %@ error: %@", buf, 0x20u);
      }
    }

    _Block_object_dispose(v48, 8);

    v24 = v20;
    v21 = v28;
LABEL_15:

    goto LABEL_16;
  }

  v21 = __biome_log_for_category();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [CCDatabaseUpdater _insertProvenanceForItemWithContentHash:? contentSequenceNumber:? metaContentSequenceNumber:? instanceHash:? onDeviceRowId:? insertedRowId:?];
  }

  v22 = 0;
LABEL_16:

  v30 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t __150__CCDatabaseUpdater__insertProvenanceForItemWithContentHash_contentSequenceNumber_metaContentSequenceNumber_instanceHash_onDeviceRowId_insertedRowId___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 numberValueAtColumnIndex:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_insertLocalInstanceForItemWithSourceItemIdHash:(id)a3 provenanceRowId:(id)a4
{
  v31[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v31[0] = v6;
  v31[1] = v7;
  v31[2] = self->_startTimeMicros;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
  v9 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC9570];
  if ([v9 updateParameters:v8])
  {
    v10 = 0;
    v11 = v9;
  }

  else
  {
    v30[0] = @"source_item_id_hash";
    v30[1] = @"provenance_row_id";
    v30[2] = @"modified";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
    v11 = [CCDatabaseInsert builderWithTableName:@"instance" columnNames:v12];

    [v11 setColumnValues:v8];
    v23 = 0;
    v13 = [v11 buildWithError:&v23];
    v10 = v23;

    if (!v13)
    {
      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v21 = [(CCDatabaseUpdater *)self description];
        *buf = 138412802;
        v25 = v8;
        v26 = 2112;
        v27 = v21;
        v28 = 2112;
        v29 = v10;
        _os_log_error_impl(&dword_1B6DB2000, v18, OS_LOG_TYPE_ERROR, "Failed to build Insert with params: {%@}, %@ error: %@", buf, 0x20u);
      }

      goto LABEL_11;
    }

    [(NSMutableDictionary *)self->_commandCache setObject:v13 forKey:&unk_1F2EC9570];

    v11 = v13;
  }

  v14 = v10;
  database = self->_database;
  v22 = v10;
  v16 = [(CCDatabaseReadWriteAccess *)database executeCommand:v11 error:&v22];
  v10 = v22;

  if (!v16)
  {
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater insertContent:contentHash:sequenceNumber:onDeviceRowId:];
    }

LABEL_11:

    v17 = 0;
    goto LABEL_12;
  }

  *&self->_modifiedRowCount = vadd_s32(*&self->_modifiedRowCount, 0x100000001);
  v17 = 1;
LABEL_12:

  v19 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (BOOL)_writeRecordWithKey:(id)a3 stringValue:(id)a4 integerValue:(id)a5 dataValue:(id)a6 onConflictType:(int64_t)a7 database:(id)a8 error:(id *)a9
{
  v32[4] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v32[0] = @"key";
  v32[1] = @"string_value";
  v32[2] = @"integer_value";
  v32[3] = @"data_value";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
  v19 = [CCDatabaseInsert builderWithTableName:@"keyvalue" columnNames:v18];

  v31[0] = v13;
  v20 = v14;
  if (!v14)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v31[1] = v20;
  v21 = v15;
  if (!v15)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v31[2] = v21;
  v22 = v16;
  if (!v16)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v31[3] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:{4, a7}];
  [v19 setColumnValues:v23];

  if (!v16)
  {
  }

  if (v15)
  {
    if (v14)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v14)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  v24 = [CCDatabaseOnConflict onConflictWithType:v30];
  [v19 setOnConflict:v24];

  v25 = [v19 buildWithError:a9];
  if (v25)
  {
    v26 = [v17 executeCommand:v25 error:a9];
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (BOOL)_writeRecordWithKey:(id)a3 stringValue:(id)a4 integerValue:(id)a5 dataValue:(id)a6 onConflictType:(int64_t)a7
{
  v35 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_opt_class();
  database = self->_database;
  v26 = 0;
  v18 = [v16 _writeRecordWithKey:v12 stringValue:v13 integerValue:v14 dataValue:v15 onConflictType:a7 database:database error:&v26];
  v19 = v26;
  if (v18)
  {
    ++self->_modifiedRowCount;
  }

  else
  {
    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      if (v14)
      {
        v23 = v14;
      }

      else
      {
        v23 = v15;
      }

      if (v13)
      {
        v24 = v13;
      }

      else
      {
        v24 = v23;
      }

      v25 = [(CCDatabaseUpdater *)self description];
      *buf = 138413058;
      v28 = v24;
      v29 = 2112;
      v30 = v12;
      v31 = 2112;
      v32 = v19;
      v33 = 2112;
      v34 = v25;
      _os_log_error_impl(&dword_1B6DB2000, v20, OS_LOG_TYPE_ERROR, "Failed to write persisted value: %@ for key: %@ error: %@ %@", buf, 0x2Au);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (BOOL)upsertLastMaintenanceDate:(id)a3 database:(id)a4 error:(id *)a5
{
  if (!a3)
  {
    return 0;
  }

  v8 = MEMORY[0x1E696AD98];
  v9 = a4;
  [a3 timeIntervalSinceReferenceDate];
  v10 = [v8 numberWithDouble:?];
  LOBYTE(a1) = [a1 _writeRecordWithKey:@"lastMaintenanceDate" stringValue:0 integerValue:v10 dataValue:0 onConflictType:2 database:v9 error:a5];

  return a1;
}

+ (BOOL)upsertRowsModified:(unint64_t)a3 database:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x1E696AD98];
  v9 = a4;
  v10 = [v8 numberWithUnsignedInteger:a3];
  LOBYTE(a5) = [a1 _writeRecordWithKey:@"rowsModified" stringValue:0 integerValue:v10 dataValue:0 onConflictType:2 database:v9 error:a5];

  return a5;
}

- (BOOL)_selectLatestDeviceRecordWithDeviceUUID:(id)a3 outRecord:(id *)a4
{
  v35[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = BMDataFromNSUUID();
  v7 = v6;
  if (v6)
  {
    v35[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    v9 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC9588];
    if ([v9 updateParameters:v8])
    {
      v10 = v9;
    }

    else
    {
      v13 = [CCDatabaseSelect builderWithTableName:@"device"];
      v14 = [v8 objectAtIndex:0];
      v15 = [CCSQLCommandCriterion criterionWithColumnName:@"device_uuid" EQUALSColumnValue:v14];

      [v13 setCommandCriterion:v15];
      v16 = [CCSQLCommandOrder alloc];
      v34 = @"attestation_generation";
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
      v18 = [(CCSQLCommandOrder *)v16 initWithOrderMode:3 columnNames:v17];

      [v13 setCommandOrder:v18];
      [v13 setLimit:&unk_1F2EC95A0];
      v10 = [v13 build];

      if (!v10)
      {
        v24 = __biome_log_for_category();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [CCDatabaseUpdater _selectLatestDeviceRecordWithDeviceUUID:outRecord:];
        }

        v11 = 0;
        v12 = 0;
        goto LABEL_16;
      }

      [(NSMutableDictionary *)self->_commandCache setObject:v10 forKey:&unk_1F2EC9588];
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__14;
    v32 = __Block_byref_object_dispose__14;
    v33 = 0;
    database = self->_database;
    v20 = objc_opt_class();
    v26[4] = &v28;
    v27 = 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __71__CCDatabaseUpdater__selectLatestDeviceRecordWithDeviceUUID_outRecord___block_invoke;
    v26[3] = &unk_1E7C8B288;
    v12 = [(CCDatabaseReadWriteAccess *)database enumerateRecordResultsOfSelect:v10 recordClass:v20 error:&v27 usingBlock:v26];
    v11 = v27;
    if (v12)
    {
      if (a4)
      {
        *a4 = v29[5];
      }
    }

    else
    {
      v21 = __biome_log_for_category();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [(CCDatabaseUpdater *)self description];
        objc_claimAutoreleasedReturnValue();
        [CCDatabaseUpdater _selectLatestDeviceRecordWithDeviceUUID:outRecord:];
      }
    }

    _Block_object_dispose(&v28, 8);

    v13 = v10;
LABEL_16:

    goto LABEL_17;
  }

  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [CCDatabaseUpdater _selectLatestDeviceRecordWithDeviceUUID:outRecord:];
  }

  v11 = 0;
  v12 = 0;
LABEL_17:

  v22 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __71__CCDatabaseUpdater__selectLatestDeviceRecordWithDeviceUUID_outRecord___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  *a4 = 1;
  return 1;
}

- (BOOL)_selectLocalDeviceRecord:(id *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [CCDatabaseSelect builderWithTableName:@"device"];
  v6 = [CCSQLCommandCriterion criterionWithColumnName:@"options" EQUALSColumnValue:&unk_1F2EC9480];
  [v5 setCommandCriterion:v6];
  v7 = [v5 build];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  database = self->_database;
  v10 = objc_opt_class();
  v23 = 0;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __46__CCDatabaseUpdater__selectLocalDeviceRecord___block_invoke;
  v21 = &unk_1E7C8C0C0;
  v11 = v8;
  v22 = v11;
  LOBYTE(v10) = [(CCDatabaseReadWriteAccess *)database enumerateRecordResultsOfSelect:v7 recordClass:v10 error:&v23 usingBlock:&v18];
  v12 = v23;
  if ((v10 & 1) == 0)
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater _selectLocalDeviceRecord:];
    }

    goto LABEL_10;
  }

  if ([v11 count] != 1)
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = [(CCDatabaseUpdater *)self description];
      *buf = 138412802;
      v25 = v7;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v17;
      _os_log_error_impl(&dword_1B6DB2000, v14, OS_LOG_TYPE_ERROR, "Select (%@) returned an unexpected number of local device records: %@. %@", buf, 0x20u);
    }

LABEL_10:

    v13 = 0;
    goto LABEL_11;
  }

  if (a3)
  {
    *a3 = [v11 firstObject];
  }

  v13 = 1;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)_selectLocalInstanceCount:(id *)a3
{
  v5 = [CCDatabaseSelect builderWithTableName:@"instance"];
  [v5 setCount:1];
  v6 = [v5 build];
  database = self->_database;
  v16 = 0;
  v17 = 0;
  v8 = [(CCDatabaseReadWriteAccess *)database firstResultOfSelect:v6 outNumberValue:&v17 error:&v16];
  v9 = v17;
  v10 = v16;
  if ((v8 & 1) == 0)
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater _selectLocalDeviceRecord:];
    }

    goto LABEL_12;
  }

  if (!v9)
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater _selectLocalInstanceCount:];
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if (a3)
  {
    v11 = v9;
    *a3 = v9;
  }

  v12 = 1;
LABEL_13:

  return v12;
}

- (BOOL)selectSourceItemIdHash:(id)a3 outLocalInstanceRowId:(id *)a4 outProvenanceRowId:(id *)a5 outInstanceHash:(id *)a6 outContentHash:(id *)a7 outContentSequenceNumber:(id *)a8 isDuplicate:(BOOL *)a9
{
  v76[1] = *MEMORY[0x1E69E9840];
  v34 = a3;
  v76[0] = v34;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:1];
  v11 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC95B8];
  if ([v11 updateParameters:v10])
  {
    v12 = v11;
LABEL_5:
    v67 = 0;
    v68 = &v67;
    v69 = 0x3032000000;
    v70 = __Block_byref_object_copy__14;
    v71 = __Block_byref_object_dispose__14;
    v72 = 0;
    v61 = 0;
    v62 = &v61;
    v63 = 0x3032000000;
    v64 = __Block_byref_object_copy__14;
    v65 = __Block_byref_object_dispose__14;
    v66 = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = __Block_byref_object_copy__14;
    v59 = __Block_byref_object_dispose__14;
    v60 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__14;
    v53 = __Block_byref_object_dispose__14;
    v54 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__14;
    v47 = __Block_byref_object_dispose__14;
    v48 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__14;
    v41 = __Block_byref_object_dispose__14;
    v42 = 0;
    database = self->_database;
    v35[9] = &v37;
    v36 = 0;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __153__CCDatabaseUpdater_selectSourceItemIdHash_outLocalInstanceRowId_outProvenanceRowId_outInstanceHash_outContentHash_outContentSequenceNumber_isDuplicate___block_invoke;
    v35[3] = &unk_1E7C8C0E8;
    v35[4] = &v67;
    v35[5] = &v61;
    v35[6] = &v55;
    v35[7] = &v49;
    v35[8] = &v43;
    v22 = [(CCDatabaseReadWriteAccess *)database enumerateRowResultsOfSelect:v12 error:&v36 usingBlock:v35];
    v23 = v36;
    if (v22)
    {
      if (v62[5])
      {
        if (a4)
        {
          *a4 = v68[5];
        }

        if (a5)
        {
          *a5 = v62[5];
        }

        if (a6)
        {
          *a6 = v50[5];
        }

        if (a7)
        {
          *a7 = v44[5];
        }

        if (a8)
        {
          *a8 = v38[5];
        }

        if ([v56[5] isEqual:self->_startTimeMicros])
        {
          v24 = __biome_log_for_category();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [(CCDatabaseUpdater *)self description];
            objc_claimAutoreleasedReturnValue();
            [CCDatabaseUpdater selectSourceItemIdHash:outLocalInstanceRowId:outProvenanceRowId:outInstanceHash:outContentHash:outContentSequenceNumber:isDuplicate:];
          }

          if (a9)
          {
            *a9 = 1;
          }
        }
      }
    }

    else
    {
      v25 = __biome_log_for_category();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(CCDatabaseUpdater *)self description];
        objc_claimAutoreleasedReturnValue();
        [CCDatabaseUpdater _selectLatestDeviceRecordWithDeviceUUID:outRecord:];
      }
    }

    _Block_object_dispose(&v37, 8);

    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&v49, 8);

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&v61, 8);

    _Block_object_dispose(&v67, 8);
    v13 = v12;
    goto LABEL_26;
  }

  v13 = [CCDatabaseSelect builderWithTableName:@"instance"];
  v14 = [CCSQLCommandJoinCriterion criterionWithColumnName:@"provenance_row_id" onTable:@"instance" EQUALSColumnName:@"provenance_row_id" comparingTableName:@"provenance"];
  v15 = [[CCSQLCommandJoinTable alloc] initWithTable:@"provenance" joinCriterion:v14];
  v75 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
  [v13 setJoinWithType:1 tables:v16];

  v17 = [v10 objectAtIndex:0];
  v18 = [CCSQLCommandCriterion criterionWithColumnName:@"source_item_id_hash" onTable:@"instance" EQUALSColumnValue:v17];

  [v13 setCommandCriterion:v18];
  v74[0] = @"rowid";
  v74[1] = @"provenance_row_id";
  v74[2] = @"modified";
  v74[3] = @"instance_hash";
  v74[4] = @"content_hash";
  v74[5] = @"content_sequence_number";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:6];
  v73[0] = @"instance";
  v73[1] = @"instance";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
  [v13 setColumns:v19 withTablePrefixes:v20];

  v12 = [v13 build];

  if (v12)
  {
    [(NSMutableDictionary *)self->_commandCache setObject:v12 forKey:&unk_1F2EC95B8];

    goto LABEL_5;
  }

  v28 = __biome_log_for_category();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [CCDatabaseUpdater _selectLatestDeviceRecordWithDeviceUUID:outRecord:];
  }

  v23 = 0;
  v22 = 0;
LABEL_26:

  v26 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t __153__CCDatabaseUpdater_selectSourceItemIdHash_outLocalInstanceRowId_outProvenanceRowId_outInstanceHash_outContentHash_outContentSequenceNumber_isDuplicate___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = v6;
  v8 = 1;
  *a4 = 1;
  if (v6)
  {
    if ([v6 columnCount])
    {
      if ([v7 columnCount] == 6)
      {
        v9 = [v7 numberValueAtColumnIndex:0];
        v10 = *(a1[4] + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;

        v8 = 1;
        v12 = [v7 numberValueAtColumnIndex:1];
        v13 = *(a1[5] + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;

        v15 = [v7 numberValueAtColumnIndex:2];
        v16 = *(a1[6] + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;

        v18 = [v7 numberValueAtColumnIndex:3];
        v19 = *(a1[7] + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;

        v21 = [v7 numberValueAtColumnIndex:4];
        v22 = *(a1[8] + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;

        v24 = [v7 numberValueAtColumnIndex:5];
        v25 = *(a1[9] + 8);
        v26 = *(v25 + 40);
        *(v25 + 40) = v24;
      }

      else
      {
        v27 = __biome_log_for_category();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          __153__CCDatabaseUpdater_selectSourceItemIdHash_outLocalInstanceRowId_outProvenanceRowId_outInstanceHash_outContentHash_outContentSequenceNumber_isDuplicate___block_invoke_cold_1();
        }

        v8 = 0;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (BOOL)selectProvenanceWithContentSequenceNumber:(id)a3 onDeviceRowId:(id)a4 outProvenanceRowId:(id *)a5
{
  v38[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v38[0] = v8;
  v38[1] = v7;
  v38[2] = &unk_1F2EC9480;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
  v10 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC95D0];
  if ([v10 updateParameters:v9])
  {
    v11 = v10;
  }

  else
  {
    v12 = [v9 objectAtIndex:0];
    v27 = [CCSQLCommandCriterion criterionWithColumnName:@"device_row_id" EQUALSColumnValue:v12];

    v13 = [v9 objectAtIndex:1];
    v14 = [CCSQLCommandCriterion criterionWithColumnName:@"content_sequence_number" EQUALSColumnValue:v13];

    v15 = [v9 objectAtIndex:2];
    v16 = [CCSQLCommandCriterion criterionWithColumnName:@"content_state" EQUALSColumnValue:v15];

    v37[0] = v27;
    v37[1] = v14;
    v37[2] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
    v18 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v17];

    v19 = [CCDatabaseSelect builderWithTableName:@"provenance"];
    [v19 setCommandCriterion:v18];
    v11 = [v19 build];

    if (v11)
    {
      [(NSMutableDictionary *)self->_commandCache setObject:v11 forKey:&unk_1F2EC95D0];
    }

    else
    {
      v20 = __biome_log_for_category();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseUpdater _selectLatestDeviceRecordWithDeviceUUID:outRecord:];
      }
    }

    if (!v11)
    {
      v24 = 0;
      v23 = 0;
      goto LABEL_12;
    }
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__14;
  v35 = __Block_byref_object_dispose__14;
  v36 = 0;
  database = self->_database;
  v22 = objc_opt_class();
  v29[4] = &v31;
  v30 = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __96__CCDatabaseUpdater_selectProvenanceWithContentSequenceNumber_onDeviceRowId_outProvenanceRowId___block_invoke;
  v29[3] = &unk_1E7C8B288;
  v23 = [(CCDatabaseReadWriteAccess *)database enumerateRecordResultsOfSelect:v11 recordClass:v22 error:&v30 usingBlock:v29];
  v24 = v30;
  if (a5)
  {
    *a5 = [v32[5] provenanceRowId];
  }

  _Block_object_dispose(&v31, 8);

LABEL_12:
  v25 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t __96__CCDatabaseUpdater_selectProvenanceWithContentSequenceNumber_onDeviceRowId_outProvenanceRowId___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  *a4 = 1;
  return 1;
}

- (BOOL)_selectProvenenceWithRowId:(id)a3 outInstanceHash:(id *)a4 outContentHash:(id *)a5
{
  v37[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v37[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
  v10 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC95E8];
  if ([v10 updateParameters:v9])
  {
    v11 = v10;
LABEL_5:
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__14;
    v34 = __Block_byref_object_dispose__14;
    v35 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__14;
    v28 = __Block_byref_object_dispose__14;
    v29 = 0;
    database = self->_database;
    v22[5] = &v24;
    v23 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __79__CCDatabaseUpdater__selectProvenenceWithRowId_outInstanceHash_outContentHash___block_invoke;
    v22[3] = &unk_1E7C8C110;
    v22[4] = &v30;
    v16 = [(CCDatabaseReadWriteAccess *)database enumerateRowResultsOfSelect:v11 error:&v23 usingBlock:v22];
    v17 = v23;
    if (v16)
    {
      if (a4)
      {
        *a4 = v31[5];
      }

      if (a5)
      {
        *a5 = v25[5];
      }
    }

    else
    {
      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(CCDatabaseUpdater *)self description];
        objc_claimAutoreleasedReturnValue();
        [CCDatabaseUpdater _selectLatestDeviceRecordWithDeviceUUID:outRecord:];
      }
    }

    _Block_object_dispose(&v24, 8);

    _Block_object_dispose(&v30, 8);
    v12 = v11;
    goto LABEL_14;
  }

  v12 = [CCSQLCommandCriterion criterionWithColumnName:@"provenance_row_id" EQUALSColumnValue:v8];
  v13 = [CCDatabaseSelect builderWithTableName:@"provenance"];
  [v13 setCommandCriterion:v12];
  v36[0] = @"instance_hash";
  v36[1] = @"content_hash";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  [v13 setColumns:v14];

  v11 = [v13 build];

  if (v11)
  {
    [(NSMutableDictionary *)self->_commandCache setObject:v11 forKey:&unk_1F2EC95E8];

    goto LABEL_5;
  }

  v21 = __biome_log_for_category();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [CCDatabaseUpdater _selectLatestDeviceRecordWithDeviceUUID:outRecord:];
  }

  v17 = 0;
  v16 = 0;
LABEL_14:

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __79__CCDatabaseUpdater__selectProvenenceWithRowId_outInstanceHash_outContentHash___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = v6;
  v8 = 1;
  *a4 = 1;
  if (v6)
  {
    if ([v6 columnCount])
    {
      if ([v7 columnCount] == 2)
      {
        v9 = [v7 numberValueAtColumnIndex:0];
        v10 = *(*(a1 + 32) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;

        v8 = 1;
        v12 = [v7 numberValueAtColumnIndex:1];
        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;
      }

      else
      {
        v15 = __biome_log_for_category();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          __79__CCDatabaseUpdater__selectProvenenceWithRowId_outInstanceHash_outContentHash___block_invoke_cold_1();
        }

        v8 = 0;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (BOOL)_selectProvenanceWithContentHash:(id)a3 outLocalInstancePresent:(BOOL *)a4 outRemoteContentPresent:(BOOL *)a5
{
  v64[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v64[0] = v6;
  v64[1] = &unk_1F2EC9480;
  v64[2] = &unk_1F2EC9480;
  v64[3] = &unk_1F2EC95A0;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
  v8 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC9600];
  if ([v8 updateParameters:v7])
  {
    v9 = v8;
    goto LABEL_9;
  }

  v55 = self;
  v10 = [CCDatabaseSelect builderWithTableName:@"provenance"];
  v11 = [v7 objectAtIndex:0];
  v12 = [CCSQLCommandCriterion criterionWithColumnName:@"content_hash" EQUALSColumnValue:v11];

  v13 = [v7 objectAtIndex:1];
  v14 = [CCSQLCommandCriterion criterionWithColumnName:@"content_state" EQUALSColumnValue:v13];

  v15 = [v7 objectAtIndex:2];
  v16 = [CCSQLCommandCriterion criterionWithColumnName:@"metacontent_state" EQUALSColumnValue:v15];

  v63[0] = v12;
  v63[1] = v14;
  v63[2] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:3];
  v18 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v17];

  [v10 setCommandCriterion:v18];
  [v10 setCount:1];
  [v10 setLimit:&unk_1F2EC95A0];
  v9 = [v10 build];

  if (v9)
  {
    [(NSMutableDictionary *)v55->_commandCache setObject:v9 forKey:&unk_1F2EC9600];
  }

  else
  {
    v19 = __biome_log_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater _selectLatestDeviceRecordWithDeviceUUID:outRecord:];
    }
  }

  self = v55;
  if (v9)
  {
LABEL_9:
    database = self->_database;
    v59 = 0;
    v60 = 0;
    v21 = [(CCDatabaseReadWriteAccess *)database firstResultOfSelect:v9 outNumberValue:&v60 error:&v59];
    v22 = v60;
    v23 = v59;
    if ((v21 & 1) == 0)
    {
      v25 = __biome_log_for_category();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseUpdater _selectLocalDeviceRecord:];
      }

      v28 = 0;
      v29 = v23;
      goto LABEL_32;
    }

    v51 = v22;
    v50 = [v22 intValue] > 0;
    v62[0] = v6;
    v62[1] = &unk_1F2EC9480;
    v24 = [MEMORY[0x1E695DFB0] null];
    v62[2] = v24;
    v62[3] = &unk_1F2EC95A0;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:4];

    v26 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC9618];
    if ([v26 updateParameters:v25])
    {
      v27 = v26;
    }

    else
    {
      v47 = v23;
      v54 = v6;
      v56 = self;
      v45 = [CCDatabaseSelect builderWithTableName:@"provenance"];
      v30 = [v25 objectAtIndex:0];
      v31 = [CCSQLCommandCriterion criterionWithColumnName:@"content_hash" EQUALSColumnValue:v30];

      v32 = [v25 objectAtIndex:1];
      v33 = [CCSQLCommandCriterion criterionWithColumnName:@"content_state" EQUALSColumnValue:v32];

      v34 = [v25 objectAtIndex:2];
      v35 = [CCSQLCommandCriterion criterionWithColumnName:@"metacontent_state" ISColumnValue:v34];

      v48 = v33;
      v49 = v31;
      v61[0] = v31;
      v61[1] = v33;
      v46 = v35;
      v61[2] = v35;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:3];
      v37 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v36];

      [v45 setCommandCriterion:v37];
      [v45 setCount:1];
      [v45 setLimit:&unk_1F2EC95A0];
      v27 = [v45 build];

      if (v27)
      {
        self = v56;
        [(NSMutableDictionary *)v56->_commandCache setObject:v27 forKey:&unk_1F2EC9618];
      }

      else
      {
        v38 = __biome_log_for_category();
        self = v56;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [CCDatabaseUpdater _selectLatestDeviceRecordWithDeviceUUID:outRecord:];
        }
      }

      v6 = v54;
      v23 = v47;

      if (!v27)
      {
        v28 = 0;
        v29 = v47;
LABEL_31:
        v22 = v51;
LABEL_32:

        goto LABEL_33;
      }
    }

    v39 = self->_database;
    v57 = v23;
    v58 = 0;
    v28 = [(CCDatabaseReadWriteAccess *)v39 firstResultOfSelect:v27 outNumberValue:&v58 error:&v57];
    v40 = v58;
    v29 = v57;

    if (v28)
    {
      v41 = [v40 intValue] > 0;
      if (a4)
      {
        *a4 = v50;
      }

      if (a5)
      {
        *a5 = v41;
      }
    }

    else
    {
      v42 = __biome_log_for_category();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseUpdater _selectLocalDeviceRecord:];
      }
    }

    goto LABEL_31;
  }

  v29 = 0;
  v28 = 0;
LABEL_33:

  v43 = *MEMORY[0x1E69E9840];
  return v28;
}

- (BOOL)_selectLocalDeviceProvenenceWithContentHash:(id)a3 outSequenceNumber:(id *)a4
{
  v36[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v36[0] = v6;
  v36[1] = &unk_1F2EC9480;
  v7 = [(CCDeviceRecord *)self->_localDeviceRecord deviceRowId];
  v36[2] = v7;
  v36[3] = &unk_1F2EC95A0;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];

  v9 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC9630];
  if ([v9 updateParameters:v8])
  {
    v10 = v9;
  }

  else
  {
    v31 = self;
    v30 = a4;
    v11 = [CCDatabaseSelect builderWithTableName:@"provenance"];
    v12 = [v8 objectAtIndex:0];
    v13 = [CCSQLCommandCriterion criterionWithColumnName:@"content_hash" EQUALSColumnValue:v12];

    v14 = [v8 objectAtIndex:1];
    v15 = [CCSQLCommandCriterion criterionWithColumnName:@"content_state" EQUALSColumnValue:v14];

    v16 = [v8 objectAtIndex:2];
    v17 = [CCSQLCommandCriterion criterionWithColumnName:@"device_row_id" EQUALSColumnValue:v16];

    v35[0] = v13;
    v35[1] = v15;
    v35[2] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
    v19 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v18];

    [v11 setCommandCriterion:v19];
    v34 = @"content_sequence_number";
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    [v11 setColumns:v20];

    [v11 setLimit:&unk_1F2EC95A0];
    v10 = [v11 build];

    if (v10)
    {
      [(NSMutableDictionary *)v31->_commandCache setObject:v10 forKey:&unk_1F2EC9630];
    }

    else
    {
      v21 = __biome_log_for_category();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseUpdater _selectLatestDeviceRecordWithDeviceUUID:outRecord:];
      }
    }

    a4 = v30;
    self = v31;
    if (!v10)
    {
      v25 = 0;
      v23 = 0;
      goto LABEL_16;
    }
  }

  database = self->_database;
  v32 = 0;
  v33 = 0;
  v23 = [(CCDatabaseReadWriteAccess *)database firstResultOfSelect:v10 outNumberValue:&v33 error:&v32];
  v24 = v33;
  v25 = v32;
  if (v23)
  {
    if (a4)
    {
      v26 = v24;
      *a4 = v24;
    }
  }

  else
  {
    v27 = __biome_log_for_category();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater _selectLocalDeviceRecord:];
    }
  }

LABEL_16:
  v28 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)_enumerateLocalInstancesSelectingOnlyUnmodified:(BOOL)a3 usingBlock:(id)a4
{
  v4 = a3;
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [CCDatabaseSelect builderWithTableName:@"instance"];
  if (v4)
  {
    v8 = [CCSQLCommandCriterion criterionWithColumnName:@"modified" LESSTHANColumnValue:self->_startTimeMicros];
    [v7 setCommandCriterion:v8];
  }

  v27[0] = @"source_item_id_hash";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  [v7 setColumns:v9];

  v10 = [v7 build];
  database = self->_database;
  v26 = 0;
  v12 = [(CCDatabaseReadWriteAccess *)database enumeratorForRowResultsOfSelect:v10 error:&v26];
  v13 = v26;
  if (!v12)
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater _enumerateLocalInstancesSelectingOnlyUnmodified:usingBlock:];
    }

LABEL_18:
    v21 = 0;
    goto LABEL_24;
  }

  v14 = [v12 nextRow];
  if (!v14)
  {
LABEL_14:
    v19 = [v12 error];

    if (!v19)
    {
      v21 = 1;
      goto LABEL_24;
    }

    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater _enumerateLocalInstancesSelectingOnlyUnmodified:usingBlock:];
    }

    goto LABEL_18;
  }

  v25 = v13;
  while (1)
  {
    v15 = objc_autoreleasePoolPush();
    if (![v14 columnCount])
    {
      objc_autoreleasePoolPop(v15);
      goto LABEL_14;
    }

    if ([v14 columnCount]!= 1)
    {
      break;
    }

    v16 = [v14 numberValueAtColumnIndex:0];
    v17 = v6[2](v6, v16);

    if ((v17 & 1) == 0)
    {
      goto LABEL_23;
    }

    objc_autoreleasePoolPop(v15);
    v18 = [v12 nextRow];

    v14 = v18;
    if (!v18)
    {
      goto LABEL_14;
    }
  }

  v22 = __biome_log_for_category();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [CCDatabaseUpdater _enumerateLocalInstancesSelectingOnlyUnmodified:usingBlock:];
  }

LABEL_23:
  objc_autoreleasePoolPop(v15);
  v21 = 0;
LABEL_24:

  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)selectAllDeviceRecords
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [CCDatabaseSelect builderWithTableName:@"device"];
  v5 = [v4 build];
  database = self->_database;
  v7 = objc_opt_class();
  v15 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__CCDatabaseUpdater_selectAllDeviceRecords__block_invoke;
  v13[3] = &unk_1E7C8C0C0;
  v8 = v3;
  v14 = v8;
  LOBYTE(v7) = [(CCDatabaseReadWriteAccess *)database enumerateRecordResultsOfSelect:v5 recordClass:v7 error:&v15 usingBlock:v13];
  v9 = v15;
  if (v7)
  {

    v10 = v8;
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater selectAllDeviceRecords];
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)_selectMetaContentWithInstanceHash:(id)a3 outRecord:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [CCSQLCommandCriterion criterionWithColumnName:@"instance_hash" EQUALSColumnValue:v6];
  v8 = [CCDatabaseSelect builderWithTableName:@"metacontent"];
  [v8 setCommandCriterion:v7];
  v9 = [v8 build];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__14;
  v23 = __Block_byref_object_dispose__14;
  v24 = 0;
  database = self->_database;
  v11 = objc_opt_class();
  v17[4] = &v19;
  v18 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__CCDatabaseUpdater__selectMetaContentWithInstanceHash_outRecord___block_invoke;
  v17[3] = &unk_1E7C8B288;
  v12 = [(CCDatabaseReadWriteAccess *)database enumerateRecordResultsOfSelect:v9 recordClass:v11 error:&v18 usingBlock:v17];
  v13 = v18;
  if (v12)
  {
    if (a4)
    {
      *a4 = v20[5];
    }
  }

  else
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(CCDatabaseUpdater *)self description];
      objc_claimAutoreleasedReturnValue();
      [CCDatabaseUpdater _selectLatestDeviceRecordWithDeviceUUID:outRecord:];
    }
  }

  _Block_object_dispose(&v19, 8);

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __66__CCDatabaseUpdater__selectMetaContentWithInstanceHash_outRecord___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  *a4 = 1;
  return 1;
}

+ (id)selectRowsModifiedCountInDatabase:(id)a3 error:(id *)a4
{
  v4 = [CCDatabaseSetStateReader persistedKeyValueForKey:@"rowsModified" database:a3 error:a4];
  v5 = [v4 integerValue];

  return v5;
}

+ (id)selectLocalSourceVersionInDatabase:(id)a3 error:(id *)a4
{
  v4 = [CCDatabaseSetStateReader persistedKeyValueForKey:@"localSourceVersion" database:a3 error:a4];
  v5 = [v4 integerValue];

  return v5;
}

+ (id)selectLocalSourceValidityHashInDatabase:(id)a3 error:(id *)a4
{
  v4 = [CCDatabaseSetStateReader persistedKeyValueForKey:@"localSourceValidityHash" database:a3 error:a4];
  v5 = [v4 integerValue];

  return v5;
}

- (BOOL)_selectPersistedValueForKey:(id)a3 outValue:(id *)a4 valueClass:(Class)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  database = self->_database;
  v19 = 0;
  v10 = [CCDatabaseSetStateReader persistedKeyValueForKey:v8 database:database error:&v19];
  v11 = v19;
  if (v11)
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = [(CCDatabaseUpdater *)self description];
      *buf = 138412802;
      v21 = v8;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v18;
      _os_log_error_impl(&dword_1B6DB2000, v12, OS_LOG_TYPE_ERROR, "Failed to select persisted value for key: %@ error: %@ %@", buf, 0x20u);
    }

    goto LABEL_5;
  }

  if (!a4 || !v10)
  {
    goto LABEL_5;
  }

  if (objc_opt_class() == a5)
  {
    v17 = [v10 stringValue];
LABEL_18:
    *a4 = v17;
    goto LABEL_5;
  }

  if (objc_opt_class() == a5)
  {
    v17 = [v10 integerValue];
    goto LABEL_18;
  }

  if (objc_opt_class() == a5)
  {
    v17 = [v10 dataValue];
    goto LABEL_18;
  }

  if (objc_opt_class() == a5)
  {
    v15 = [v10 integerValue];
    v16 = v15;
    if (v15)
    {
      *a4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v15, "longLongValue") / 1000000.0}];
    }
  }

LABEL_5:

  v13 = *MEMORY[0x1E69E9840];
  return v11 == 0;
}

- (BOOL)_selectLocalSourcePersistedValuesOutVersion:(id *)a3 outValidityHash:(id *)a4 outRevisionToken:(id *)a5 outDonationDate:(id *)a6 outFullSetDonationDate:(id *)a7
{
  if (![(CCDatabaseUpdater *)self _selectPersistedValueForKey:@"localSourceVersion" outValue:a3 valueClass:objc_opt_class()]|| ![(CCDatabaseUpdater *)self _selectPersistedValueForKey:@"localSourceValidityHash" outValue:a4 valueClass:objc_opt_class()]|| ![(CCDatabaseUpdater *)self _selectPersistedValueForKey:@"localSourceRevisionToken" outValue:a5 valueClass:objc_opt_class()]|| ![(CCDatabaseUpdater *)self _selectPersistedValueForKey:@"lastLocalDonationDate" outValue:a6 valueClass:objc_opt_class()])
  {
    return 0;
  }

  v12 = objc_opt_class();

  return [(CCDatabaseUpdater *)self _selectPersistedValueForKey:@"lastLocalFullSetDonationDate" outValue:a7 valueClass:v12];
}

- (BOOL)_updateLocalSourceVersion:(id)a3 localSourceValidityHash:(id)a4
{
  v6 = a4;
  if ([(CCDatabaseUpdater *)self _upsertInteger:a3 forKey:@"localSourceVersion"])
  {
    v7 = [(CCDatabaseUpdater *)self _upsertInteger:v6 forKey:@"localSourceValidityHash"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_incrementCachedIntegerWithKey:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isEqual:@"localHighestContent"])
  {
    v5 = 40;
  }

  else if ([v4 isEqual:@"localHighestMetaContent"])
  {
    v5 = 48;
  }

  else
  {
    if (([v4 isEqual:@"localHighestAttestationGeneration"] & 1) == 0)
    {
      v6 = __biome_log_for_category();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseUpdater _incrementCachedIntegerWithKey:];
      }

      goto LABEL_15;
    }

    v5 = 56;
  }

  v6 = *(&self->super.isa + v5);
  if (v6)
  {
LABEL_8:
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSObject unsignedIntegerValue](v6, "unsignedIntegerValue") + 1}];

    objc_storeStrong((&self->super.isa + v5), v7);
    v6 = v7;
    v8 = v6;
    goto LABEL_16;
  }

  database = self->_database;
  v18 = 0;
  v10 = [CCDatabaseSetStateReader persistedKeyValueForKey:v4 database:database error:&v18];
  v11 = v18;
  v6 = [v10 integerValue];

  v12 = __biome_log_for_category();
  v13 = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v17 = [(CCDatabaseUpdater *)self description];
      *buf = 138412802;
      v20 = v17;
      v21 = 2112;
      v22 = v4;
      v23 = 2112;
      v24 = v6;
      _os_log_debug_impl(&dword_1B6DB2000, v13, OS_LOG_TYPE_DEBUG, "(%@) Persisted value for key: %@ is: %@", buf, 0x20u);
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v16 = [(CCDatabaseUpdater *)self description];
    *buf = 138412802;
    v20 = v16;
    v21 = 2112;
    v22 = v4;
    v23 = 2112;
    v24 = v11;
    _os_log_error_impl(&dword_1B6DB2000, v13, OS_LOG_TYPE_ERROR, "(%@) Failed to select persisted key: %@ with error: %@", buf, 0x20u);
  }

LABEL_15:
  v8 = 0;
LABEL_16:

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)_persistDateWithDeltaProduced:(BOOL)a3 isFullSet:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ((!a3 || (v7 = [(CCDatabaseUpdater *)self _upsertInteger:self->_startTimeMicros forKey:@"lastDeltaDate"])) && (!self->_isLocalDonation || (v7 = [(CCDatabaseUpdater *)self _upsertInteger:self->_startTimeMicros forKey:@"lastLocalDonationDate"]) && (!v4 || (v7 = [(CCDatabaseUpdater *)self _upsertInteger:self->_startTimeMicros forKey:@"lastLocalFullSetDonationDate"])) && (!v5 || (v7 = [(CCDatabaseUpdater *)self _incrementLocalDeltaGeneration]))))
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)updateMetaContent:(id)a3 localInstanceRowId:(id)a4 provenanceRowId:(id)a5 priorInstanceHash:(id)a6 instanceHash:(id)a7 contentHash:(id)a8 contentSequenceNumber:(id)a9 isDuplicate:(BOOL *)a10
{
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v27 = 0;
  v20 = [(CCDatabaseUpdater *)self _insertMetaContent:a3 instanceHash:v17 outSequenceNumber:&v27 outIsDuplicate:a10];
  v21 = v27;
  if (v20)
  {
    v26 = 0;
    LOBYTE(v25) = 0;
    v22 = [(CCDatabaseUpdater *)self _insertNewProvenanceAndTombstonePriorProvenanceRow:v16 outInsertedProvenanceRowId:&v26 instanceHash:v17 contentHash:v18 contentSequenceNumber:v19 metaContentSequenceNumber:v21 contentChanged:v25];
    v23 = v26;
    LOBYTE(v20) = 0;
    if (v22)
    {
      LOBYTE(v20) = [(CCDatabaseUpdater *)self _updateLocalInstanceRowId:v15 provenanceRowId:v23];
    }
  }

  return v20;
}

- (BOOL)updateContent:(id)a3 andMetaContent:(id)a4 localInstanceRowId:(id)a5 priorProvenanceRowId:(id)a6 contentHash:(id)a7 instanceHash:(id)a8 isDuplicate:(BOOL *)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v31 = 0;
  v20 = [(CCDatabaseUpdater *)self _insertMetaContent:a4 instanceHash:v19 outSequenceNumber:&v31 outIsDuplicate:a9];
  v21 = v31;
  if (v20)
  {
    v30 = 0;
    v22 = [(CCDatabaseUpdater *)self _insertContent:v15 contentHash:v18 outSequenceNumber:&v30];
    v23 = v30;
    if (v22)
    {
      v29 = 0;
      LOBYTE(v28) = 1;
      v24 = [(CCDatabaseUpdater *)self _insertNewProvenanceAndTombstonePriorProvenanceRow:v17 outInsertedProvenanceRowId:&v29 instanceHash:v19 contentHash:v18 contentSequenceNumber:v23 metaContentSequenceNumber:v21 contentChanged:v28];
      v25 = v29;
      v26 = v24 && [(CCDatabaseUpdater *)self _updateLocalInstanceRowId:v16 provenanceRowId:v25];
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (BOOL)_updateLocalInstanceRowId:(id)a3 provenanceRowId:(id)a4
{
  v26[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  startTimeMicros = self->_startTimeMicros;
  v26[0] = v7;
  v26[1] = startTimeMicros;
  v26[2] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
  v10 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC9648];
  if ([v10 updateParameters:v9])
  {
    v11 = v10;
  }

  else
  {
    v12 = [v9 objectAtIndex:2];
    v11 = [CCSQLCommandCriterion criterionWithColumnName:@"rowid" EQUALSColumnValue:v12];

    v13 = [CCDatabaseUpdate builderWithTableName:@"instance"];
    v14 = [v9 objectAtIndex:0];
    [v13 setValue:v14 forColumn:@"provenance_row_id"];

    v15 = [v9 objectAtIndex:1];
    [v13 setValue:v15 forColumn:@"modified"];

    [v13 setCommandCriterion:v11];
    v16 = [v13 build];

    if (!v16)
    {
      v22 = __biome_log_for_category();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseUpdater _tombstoneProvenanceRowsForExpiredDeviceRowId:];
      }

      v19 = 0;
      goto LABEL_13;
    }

    [(NSMutableDictionary *)self->_commandCache setObject:v16 forKey:&unk_1F2EC9648];

    v11 = v16;
  }

  database = self->_database;
  v25 = 0;
  v18 = [(CCDatabaseReadWriteAccess *)database executeCommand:v11 error:&v25];
  v19 = v25;
  if (!v18)
  {
    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater _updateLocalInstanceRowId:provenanceRowId:];
    }

LABEL_13:
    v20 = 0;
    goto LABEL_14;
  }

  ++self->_localInstanceUpdatedCount;
  ++self->_modifiedRowCount;
  v20 = 1;
LABEL_14:

  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)_insertNewProvenanceAndTombstonePriorProvenanceRow:(id)a3 outInsertedProvenanceRowId:(id *)a4 instanceHash:(id)a5 contentHash:(id)a6 contentSequenceNumber:(id)a7 metaContentSequenceNumber:(id)a8 contentChanged:(BOOL)a9
{
  v15 = a3;
  localDeviceRecord = self->_localDeviceRecord;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = [(CCDeviceRecord *)localDeviceRecord deviceRowId];
  v27 = 0;
  v22 = [(CCDatabaseUpdater *)self _insertProvenanceForItemWithContentHash:v19 contentSequenceNumber:v18 metaContentSequenceNumber:v17 instanceHash:v20 onDeviceRowId:v21 insertedRowId:&v27];

  v23 = v27;
  if (v22)
  {
    if (a4)
    {
      v24 = v23;
      *a4 = v23;
    }

    v25 = [(CCDatabaseUpdater *)self _tombstoneMetaContentWithProvenanceRowId:v15 tombstoneContentIfNoLongerPresent:a9];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BOOL)_expireDeviceRowId:(id)a3
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  startTimeMicros = self->_startTimeMicros;
  v23[0] = &unk_1F2EC9468;
  v23[1] = startTimeMicros;
  v23[2] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v7 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC9660];
  if ([v7 updateParameters:v6])
  {
    v8 = v7;
  }

  else
  {
    v9 = [v6 objectAtIndex:2];
    v8 = [CCSQLCommandCriterion criterionWithColumnName:@"device_row_id" EQUALSColumnValue:v9];

    v10 = [CCDatabaseUpdate builderWithTableName:@"device"];
    v11 = [v6 objectAtIndex:0];
    [v10 setValue:v11 forColumn:@"options"];

    v12 = [v6 objectAtIndex:1];
    [v10 setValue:v12 forColumn:@"expiration_date"];

    [v10 setCommandCriterion:v8];
    v13 = [v10 build];

    if (!v13)
    {
      v19 = __biome_log_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseUpdater _tombstoneProvenanceRowsForExpiredDeviceRowId:];
      }

      v16 = 0;
      goto LABEL_13;
    }

    [(NSMutableDictionary *)self->_commandCache setObject:v13 forKey:&unk_1F2EC9660];

    v8 = v13;
  }

  database = self->_database;
  v22 = 0;
  v15 = [(CCDatabaseReadWriteAccess *)database executeCommand:v8 error:&v22];
  v16 = v22;
  if (!v15)
  {
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater _updateLocalInstanceRowId:provenanceRowId:];
    }

LABEL_13:
    v17 = 0;
    goto LABEL_14;
  }

  ++self->_modifiedRowCount;
  v17 = 1;
LABEL_14:

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)_updateDeviceRowId:(id)a3 deltaGeneration:(id)a4 expirationDate:(id)a5
{
  v30[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    v10 = MEMORY[0x1E696AD98];
    [a5 timeIntervalSince1970];
    v12 = [v10 numberWithLongLong:(v11 * 1000000.0)];
    v30[0] = v12;
    v30[1] = v9;
    v30[2] = v8;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
    v14 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC9678];
    if ([v14 updateParameters:v13])
    {
      v15 = v14;
    }

    else
    {
      v17 = [v13 objectAtIndex:2];
      v15 = [CCSQLCommandCriterion criterionWithColumnName:@"device_row_id" EQUALSColumnValue:v17];

      v18 = [CCDatabaseUpdate builderWithTableName:@"device"];
      v19 = [v13 objectAtIndex:0];
      [v18 setValue:v19 forColumn:@"expiration_date"];

      v20 = [v13 objectAtIndex:1];
      [v18 setValue:v20 forColumn:@"delta_generation"];

      [v18 setCommandCriterion:v15];
      v21 = [v18 build];

      if (!v21)
      {
        v26 = __biome_log_for_category();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [CCDatabaseUpdater _tombstoneProvenanceRowsForExpiredDeviceRowId:];
        }

        v24 = 0;
        goto LABEL_17;
      }

      [(NSMutableDictionary *)self->_commandCache setObject:v21 forKey:&unk_1F2EC9678];

      v15 = v21;
    }

    database = self->_database;
    v29 = 0;
    v23 = [(CCDatabaseReadWriteAccess *)database executeCommand:v15 error:&v29];
    v24 = v29;
    if (v23)
    {
      ++self->_modifiedRowCount;
      v16 = 1;
LABEL_18:

      goto LABEL_19;
    }

    v25 = __biome_log_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater _updateLocalInstanceRowId:provenanceRowId:];
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v12 = __biome_log_for_category();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [CCDatabaseUpdater _updateDeviceRowId:deltaGeneration:expirationDate:];
  }

  v16 = 0;
LABEL_19:

  v27 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)_incrementLocalDeltaGeneration
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(CCDeviceRecord *)self->_localDeviceRecord deltaGeneration];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3, "unsignedLongLongValue") + 1}];
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v16 = [(CCDatabaseUpdater *)self description];
    *buf = 138412802;
    v19 = v3;
    v20 = 2112;
    v21 = v4;
    v22 = 2112;
    v23 = v16;
    _os_log_debug_impl(&dword_1B6DB2000, v5, OS_LOG_TYPE_DEBUG, "Incrementing local delta generation from %@ to %@, %@", buf, 0x20u);
  }

  v6 = [CCDatabaseUpdate builderWithTableName:@"device"];
  v7 = [(CCDeviceRecord *)self->_localDeviceRecord deviceRowId];
  v8 = [CCSQLCommandCriterion criterionWithColumnName:@"device_row_id" EQUALSColumnValue:v7];

  [v6 setValue:v4 forColumn:@"delta_generation"];
  [v6 setCommandCriterion:v8];
  v9 = [v6 build];
  database = self->_database;
  v17 = 0;
  v11 = [(CCDatabaseReadWriteAccess *)database executeCommand:v9 error:&v17];
  v12 = v17;
  if (v11)
  {
    ++self->_modifiedRowCount;
  }

  else
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseUpdater _updateLocalInstanceRowId:provenanceRowId:];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (void)updaterForDonateRequest:(uint64_t)a3 toDatabase:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, a1, a3, "invalid donate request (%@)", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)registerLocalDeviceSite:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Cannot register local device with invalid device site: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_deleteSourceItemIdHash:outProvenanceRowId:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 description];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_deleteSourceItemIdHash:outProvenanceRowId:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_1_3(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_10(&dword_1B6DB2000, "Delete failed. %@ error: %@", v4, v5);
}

- (void)_tombstoneProvenanceRowsForExpiredDeviceRowId:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_12(v1 v2)];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_tombstoneProvenanceRowsForExpiredDeviceRowId:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 description];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_tombstoneProvenanceRowsForExpiredDeviceRowId:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 description];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_tombstoneMetaContentWithProvenanceRowId:tombstoneContentIfNoLongerPresent:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 description];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_tombstoneMetaContentWithProvenanceRowId:tombstoneContentIfNoLongerPresent:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_1_3(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_10(&dword_1B6DB2000, "Update provenance for metacontent failed. %@ error: %@", v4, v5);
}

- (void)_tombstoneMetaContentWithProvenanceRowId:tombstoneContentIfNoLongerPresent:.cold.3()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  OUTLINED_FUNCTION_1_3(v2, v0, v3, 5.778e-34);
  OUTLINED_FUNCTION_10(&dword_1B6DB2000, "Failed to build delete with params: {%@}, %@", v4, v5);
}

- (void)_tombstoneMetaContentWithProvenanceRowId:tombstoneContentIfNoLongerPresent:.cold.5()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  OUTLINED_FUNCTION_1_3(v2, v0, v3, 5.778e-34);
  OUTLINED_FUNCTION_10(&dword_1B6DB2000, "Failed to build update with params: (%@}, %@", v4, v5);
}

- (void)_tombstoneMetaContentWithProvenanceRowId:tombstoneContentIfNoLongerPresent:.cold.6()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_1_3(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_10(&dword_1B6DB2000, "Update provenance rows for content state failed. %@ error: %@", v4, v5);
}

- (void)_tombstoneMetaContentWithProvenanceRowId:tombstoneContentIfNoLongerPresent:.cold.9()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_1_3(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_10(&dword_1B6DB2000, "Failed to count modified rows after provenance update %@ error: %@", v4, v5);
}

- (void)deleteContentRecordsNoLongerReferencedByAnyProvenanceRecord
{
  OUTLINED_FUNCTION_4_0();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 description];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)compactContiguousRunsOfDeletes:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to extract content and metacontent state vectors. error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)compactContiguousRunsOfDeletes:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 commandString];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)compactContiguousRunsOfDeletes:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to clear prior state of deletion compaction. error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)compactContiguousRunsOfDeletes:(void *)a1 .cold.4(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 commandString];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)compactContiguousRunsOfDeletes:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Delete failed. error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)compactContiguousRunsOfDeletes:.cold.6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to retrieve the number of tombstones being deleted, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)compactContiguousRunsOfDeletes:.cold.7()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to construct device mapping: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__CCDatabaseUpdater_compactContiguousRunsOfDeletes___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 commandString];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x1E69E9840];
}

void __52__CCDatabaseUpdater_compactContiguousRunsOfDeletes___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Compact content sequence numbers failed. error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__CCDatabaseUpdater_compactContiguousRunsOfDeletes___block_invoke_54_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 commandString];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15(v2, v3, v4, v5, v6);

  v7 = *MEMORY[0x1E69E9840];
}

void __52__CCDatabaseUpdater_compactContiguousRunsOfDeletes___block_invoke_54_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Compact metacontent sequence numbers command failed. error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)deleteExpiredRemoteDeviceState:shouldTombstoneSet:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to check for present content: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)deleteExpiredRemoteDeviceState:shouldTombstoneSet:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to check for local source donation: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)deleteExpiredRemoteDeviceState:shouldTombstoneSet:.cold.3()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_14();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)deleteExpiredRemoteDeviceState:shouldTombstoneSet:.cold.4()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_14();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)deleteExpiredRemoteDeviceState:shouldTombstoneSet:.cold.5()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_14();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)deleteExpiredRemoteDeviceState:shouldTombstoneSet:.cold.6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to construct device mapping: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_deleteDeviceRowId:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Delete failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_insertDeviceSite:returningRowId:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 description];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)insertContent:contentHash:sequenceNumber:onDeviceRowId:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 description];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_insertProvenanceForItemWithContentHash:(void *)a1 contentSequenceNumber:metaContentSequenceNumber:instanceHash:onDeviceRowId:insertedRowId:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_selectLatestDeviceRecordWithDeviceUUID:outRecord:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to build select with params: (%@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_selectLatestDeviceRecordWithDeviceUUID:outRecord:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_1_3(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_10(&dword_1B6DB2000, "Select failed. %@ error: %@", v4, v5);
}

- (void)_selectLatestDeviceRecordWithDeviceUUID:outRecord:.cold.3()
{
  OUTLINED_FUNCTION_16();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 description];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_selectLocalDeviceRecord:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 description];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_selectLocalInstanceCount:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Unexpected - count not produced from select: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)selectSourceItemIdHash:outLocalInstanceRowId:outProvenanceRowId:outInstanceHash:outContentHash:outContentSequenceNumber:isDuplicate:.cold.3()
{
  OUTLINED_FUNCTION_11();
  v1 = v0;
  OUTLINED_FUNCTION_1_3(v2, v0, v3, 5.778e-34);
  OUTLINED_FUNCTION_10(&dword_1B6DB2000, "Record with sourceItemIdHash: %@ has already been updated - donated set (%@) contains items with duplicate sourceItemIdentifiers", v4, v5);
}

void __153__CCDatabaseUpdater_selectSourceItemIdHash_outLocalInstanceRowId_outProvenanceRowId_outInstanceHash_outContentHash_outContentSequenceNumber_isDuplicate___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __79__CCDatabaseUpdater__selectProvenenceWithRowId_outInstanceHash_outContentHash___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_enumerateLocalInstancesSelectingOnlyUnmodified:usingBlock:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_enumerateLocalInstancesSelectingOnlyUnmodified:usingBlock:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [v1 description];
  v3 = [v0 error];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_enumerateLocalInstancesSelectingOnlyUnmodified:usingBlock:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 description];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)selectAllDeviceRecords
{
  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_12(v1 v2)];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_incrementCachedIntegerWithKey:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 description];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_updateLocalInstanceRowId:provenanceRowId:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 description];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_updateDeviceRowId:deltaGeneration:expirationDate:.cold.3()
{
  OUTLINED_FUNCTION_13();
  v0 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_12(v1 v2)];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

@end