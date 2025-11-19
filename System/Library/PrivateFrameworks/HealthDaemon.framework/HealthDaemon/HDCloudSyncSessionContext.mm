@interface HDCloudSyncSessionContext
- (BOOL)addChangeData:(id)a3 changes:(id)a4 sessionIdentifier:(id)a5 outError:(id *)a6;
- (BOOL)resetInvalidArchiveCreatorWithSessionUUID:(id)a3 error:(id *)a4;
- (HDCloudSyncSessionContext)init;
- (HDCloudSyncSessionContext)initWithChangedSyncEntityCount:(unint64_t)a3 profile:(id)a4;
- (HDProfile)profile;
- (unint64_t)archiveSize;
- (void)finishProgress;
@end

@implementation HDCloudSyncSessionContext

- (HDCloudSyncSessionContext)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncSessionContext)initWithChangedSyncEntityCount:(unint64_t)a3 profile:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = HDCloudSyncSessionContext;
  v7 = [(HDCloudSyncSessionContext *)&v16 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_profile, v6);
    v9 = objc_alloc_init(HDSyncAnchorRangeMap);
    pendingAnchorRangeMap = v8->_pendingAnchorRangeMap;
    v8->_pendingAnchorRangeMap = v9;

    v8->_changesetCount = 0;
    v8->_archiveCount = 0;
    v11 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:a3];
    progress = v8->_progress;
    v8->_progress = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    syncEntityClassesWithProcessedChanges = v8->_syncEntityClassesWithProcessedChanges;
    v8->_syncEntityClassesWithProcessedChanges = v13;
  }

  return v8;
}

- (unint64_t)archiveSize
{
  v2 = [(_HKArchiveCreator *)self->_archiveCreator fileHandle];
  v3 = [v2 seekToEndOfFile];

  return v3;
}

- (BOOL)resetInvalidArchiveCreatorWithSessionUUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  archiveCreator = self->_archiveCreator;
  if (archiveCreator && ([(_HKArchiveCreator *)archiveCreator archiveIsValid]& 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v10 = MEMORY[0x277CCACA8];
    v11 = [v6 UUIDString];
    v12 = [v10 stringWithFormat:@"syncarchive-%@-%llu", v11, self->_archiveCount];

    v13 = [v9 temporaryDirectory];
    v14 = [v13 URLByAppendingPathComponent:v12];
    v15 = [v14 URLByAppendingPathExtension:@"zip"];

    v16 = HDAssetFileHandleForFileURL(v15, v9, a4);
    v8 = v16 != 0;
    if (v16)
    {
      v17 = [objc_alloc(MEMORY[0x277CCDD18]) initWithFileHandle:v16 archiveType:0];
      v18 = self->_archiveCreator;
      self->_archiveCreator = v17;

      objc_storeStrong(&self->_archiveURL, v15);
      [(HDSyncAnchorRangeMap *)self->_pendingAnchorRangeMap reset];
      v19 = self->_archiveCount + 1;
      self->_changesetCount = 0;
      self->_archiveCount = v19;
    }
  }

  return v8;
}

- (BOOL)addChangeData:(id)a3 changes:(id)a4 sessionIdentifier:(id)a5 outError:(id *)a6
{
  v78 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if ([(HDCloudSyncSessionContext *)self resetInvalidArchiveCreatorWithSessionUUID:a5 error:a6])
  {
    v67 = a6;
    v68 = v11;
    v69 = v10;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v71 objects:v77 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v72;
      v70 = v12;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v72 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v71 + 1) + 8 * v16);
        syncEntityClassesWithProcessedChanges = self->_syncEntityClassesWithProcessedChanges;
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        LOBYTE(syncEntityClassesWithProcessedChanges) = -[NSMutableSet containsObject:](syncEntityClassesWithProcessedChanges, "containsObject:", [v17 syncEntityClassForProfile:WeakRetained]);

        if ((syncEntityClassesWithProcessedChanges & 1) == 0)
        {
          v20 = self->_syncEntityClassesWithProcessedChanges;
          v21 = objc_loadWeakRetained(&self->_profile);
          -[NSMutableSet addObject:](v20, "addObject:", [v17 syncEntityClassForProfile:v21]);

          v22 = [(NSMutableSet *)self->_syncEntityClassesWithProcessedChanges count];
          v23 = [(NSProgress *)self->_progress totalUnitCount];
          if (v22 >= v23)
          {
            v24 = v23;
          }

          else
          {
            v24 = v22;
          }

          [(NSProgress *)self->_progress setCompletedUnitCount:v24];
        }

        v25 = self->_pendingAnchorRangeMap;
        v26 = v17;
        objc_opt_self();
        v75 = 0;
        v76 = 0;
        v27 = [v26 syncEntityIdentifier];
        v28 = [(HDSyncAnchorRangeMap *)v25 getAnchorRange:&v75 forSyncEntityIdentifier:v27];

        if (v28)
        {
          v29 = [v26 sequenceNumber];
          if ([v29 integerValue])
          {
          }

          else
          {
            v37 = [v26 syncAnchorRange];
            v38 = v76;

            v39 = v37 == v38;
            v12 = v70;
            if (!v39)
            {
              v57 = MEMORY[0x277CCA9B8];
              v58 = objc_opt_class();
              v59 = [v26 syncAnchorRange];
              v60 = v76;
              v61 = [v26 sequenceNumber];
              [v57 hk_errorForInvalidArgument:@"@" class:v58 selector:sel__updateAnchorRangeMap_withChange_outError_ format:{@"startAnchor (%lld) != previous endAnchor (%lld), sequence (%@)", v59, v60, v61}];
              v62 = LABEL_30:;
              v63 = v62;
              if (v62)
              {
                v11 = v68;
                if (v67)
                {
                  v64 = v62;
                  *v67 = v63;
                }

                else
                {
                  _HKLogDroppedError();
                }
              }

              else
              {
                v11 = v68;
              }

              v51 = 0;
              v10 = v69;
              v47 = v70;
              goto LABEL_36;
            }
          }

          v40 = [v26 sequenceNumber];
          if ([v40 integerValue] < 1)
          {
          }

          else
          {
            [v26 syncAnchorRange];
            v42 = v41;
            v43 = v76;

            v39 = v42 == v43;
            v12 = v70;
            if (!v39)
            {
              v52 = MEMORY[0x277CCA9B8];
              v53 = objc_opt_class();
              [v26 syncAnchorRange];
              v55 = v54;
              v56 = v76;
              v61 = [v26 sequenceNumber];
              [v52 hk_errorForInvalidArgument:@"@" class:v53 selector:sel__updateAnchorRangeMap_withChange_outError_ format:{@"endAnchor (%lld) != previous endAnchor (%lld), sequence (%@)", v55, v56, v61}];
              goto LABEL_30;
            }
          }

          [v26 syncAnchorRange];
          v76 = v44;
          v33 = [v26 syncEntityIdentifier];
          v35 = v75;
          v36 = v76;
          v34 = v25;
        }

        else
        {
          v30 = [v26 syncAnchorRange];
          v32 = v31;
          v33 = [v26 syncEntityIdentifier];
          v34 = v25;
          v35 = v30;
          v36 = v32;
        }

        [(HDSyncAnchorRangeMap *)v34 setAnchorRange:v35 forSyncEntityIdentifier:v36, v33];

        v45 = [v26 sequenceNumber];
        if (v45)
        {
          v46 = [v26 done] ^ 1;
        }

        else
        {
          v46 = 0;
        }

        self->_hasOpenSequence = v46;

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v71 objects:v77 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v47 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"/changeset-%04llu", self->_changesetCount];
    archiveCreator = self->_archiveCreator;
    v49 = [MEMORY[0x277CBEBC0] fileURLWithPath:v47 isDirectory:0];
    v50 = archiveCreator;
    v10 = v69;
    [(_HKArchiveCreator *)v50 addDataToArchive:v69 pathInArchive:v49];

    ++self->_changesetCount;
    v51 = 1;
    v11 = v68;
LABEL_36:
  }

  else
  {
    v51 = 0;
  }

  v65 = *MEMORY[0x277D85DE8];
  return v51;
}

- (void)finishProgress
{
  progress = self->_progress;
  self->_progress = 0;
  MEMORY[0x2821F96F8]();
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end