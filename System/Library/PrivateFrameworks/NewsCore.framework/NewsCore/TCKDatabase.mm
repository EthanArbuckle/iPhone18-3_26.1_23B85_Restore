@interface TCKDatabase
- (CKRecord)secureSentinelRecord;
- (CKRecord)sentinelRecord;
- (TCKDatabase)init;
- (id)recordIDsInZoneName:(id)name;
- (void)addOperation:(id)operation;
- (void)addRecord:(id)record;
@end

@implementation TCKDatabase

- (TCKDatabase)init
{
  v6.receiver = self;
  v6.super_class = TCKDatabase;
  v2 = [(TCKDatabase *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    recordsByID = v2->_recordsByID;
    v2->_recordsByID = v3;
  }

  return v2;
}

- (void)addOperation:(id)operation
{
  v291 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = operationCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v199 = v6;
  selfCopy = self;
  v194 = operationCopy;
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  tSavedRecords = [(TCKDatabase *)self tSavedRecords];

  if (!tSavedRecords)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(TCKDatabase *)self setTSavedRecords:v9];
  }

  tSavedRecordIDs = [(TCKDatabase *)self tSavedRecordIDs];

  if (!tSavedRecordIDs)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(TCKDatabase *)self setTSavedRecordIDs:v11];
  }

  tDeletedRecordIDs = [(TCKDatabase *)self tDeletedRecordIDs];

  if (!tDeletedRecordIDs)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(TCKDatabase *)self setTDeletedRecordIDs:v13];
  }

  tSavedRecords2 = [(TCKDatabase *)self tSavedRecords];
  tSavedRecordIDs2 = [(TCKDatabase *)self tSavedRecordIDs];
  tDeletedRecordIDs2 = [(TCKDatabase *)self tDeletedRecordIDs];
  modifyRecordsCompletionBlock = [v7 modifyRecordsCompletionBlock];
  v267[0] = MEMORY[0x1E69E9820];
  v267[1] = 3221225472;
  v267[2] = __28__TCKDatabase_addOperation___block_invoke;
  v267[3] = &unk_1E7C43D18;
  v197 = tSavedRecords2;
  v268 = v197;
  v195 = tSavedRecordIDs2;
  v269 = v195;
  v192 = tDeletedRecordIDs2;
  v270 = v192;
  v191 = modifyRecordsCompletionBlock;
  v271 = v191;
  [v7 setModifyRecordsCompletionBlock:v267];
  tModifyRecordsOperationHandler = [(TCKDatabase *)self tModifyRecordsOperationHandler];

  if (tModifyRecordsOperationHandler)
  {
    tModifyRecordsOperationHandler2 = [(TCKDatabase *)self tModifyRecordsOperationHandler];
    (tModifyRecordsOperationHandler2)[2](tModifyRecordsOperationHandler2, v7);
LABEL_15:
    operationCopy = v194;
    goto LABEL_16;
  }

  tModifyRecordsHandler = [(TCKDatabase *)self tModifyRecordsHandler];

  if (tModifyRecordsHandler)
  {
    tModifyRecordsHandler2 = [(TCKDatabase *)self tModifyRecordsHandler];
    recordsToSave = [v7 recordsToSave];
    recordIDsToDelete = [v7 recordIDsToDelete];
    v265[0] = MEMORY[0x1E69E9820];
    v265[1] = 3221225472;
    v265[2] = __28__TCKDatabase_addOperation___block_invoke_2;
    v265[3] = &unk_1E7C39A20;
    v266 = v7;
    (tModifyRecordsHandler2)[2](tModifyRecordsHandler2, recordsToSave, recordIDsToDelete, v265);

    tModifyRecordsOperationHandler2 = v266;
    goto LABEL_15;
  }

  v263 = 0u;
  v264 = 0u;
  v261 = 0u;
  v262 = 0u;
  obj = [v7 recordsToSave];
  v105 = [obj countByEnumeratingWithState:&v261 objects:v290 count:16];
  if (v105)
  {
    v106 = v105;
    v107 = *v262;
    v200 = *v262;
    do
    {
      v108 = 0;
      v201 = v106;
      do
      {
        if (*v262 != v107)
        {
          objc_enumerationMutation(obj);
        }

        v109 = *(*(&v261 + 1) + 8 * v108);
        savePolicy = [v7 savePolicy];
        recordsByID = self->_recordsByID;
        recordID = [v109 recordID];
        if (savePolicy == 1)
        {
          v113 = [(NSMutableDictionary *)recordsByID objectForKeyedSubscript:recordID];

          if (v113)
          {
            v206 = v108;
            v259 = 0u;
            v260 = 0u;
            v257 = 0u;
            v258 = 0u;
            encryptedValueStore = [v109 encryptedValueStore];
            changedKeys = [encryptedValueStore changedKeys];

            v116 = [changedKeys countByEnumeratingWithState:&v257 objects:v289 count:16];
            if (v116)
            {
              v117 = v116;
              v118 = *v258;
              do
              {
                for (i = 0; i != v117; ++i)
                {
                  if (*v258 != v118)
                  {
                    objc_enumerationMutation(changedKeys);
                  }

                  v120 = *(*(&v257 + 1) + 8 * i);
                  encryptedValueStore2 = [v109 encryptedValueStore];
                  v122 = [encryptedValueStore2 objectForKeyedSubscript:v120];
                  encryptedValueStore3 = [v113 encryptedValueStore];
                  [encryptedValueStore3 setObject:v122 forKeyedSubscript:v120];
                }

                v117 = [changedKeys countByEnumeratingWithState:&v257 objects:v289 count:16];
              }

              while (v117);
            }

            v255 = 0u;
            v256 = 0u;
            v253 = 0u;
            v254 = 0u;
            valueStore = [v109 valueStore];
            changedKeys2 = [valueStore changedKeys];

            v126 = [changedKeys2 countByEnumeratingWithState:&v253 objects:v288 count:16];
            if (v126)
            {
              v127 = v126;
              v128 = *v254;
              do
              {
                for (j = 0; j != v127; ++j)
                {
                  if (*v254 != v128)
                  {
                    objc_enumerationMutation(changedKeys2);
                  }

                  v130 = *(*(&v253 + 1) + 8 * j);
                  valueStore2 = [v109 valueStore];
                  v132 = [valueStore2 objectForKeyedSubscript:v130];
                  valueStore3 = [v113 valueStore];
                  [valueStore3 setObject:v132 forKeyedSubscript:v130];
                }

                v127 = [changedKeys2 countByEnumeratingWithState:&v253 objects:v288 count:16];
              }

              while (v127);
            }

            v7 = v199;
            v107 = v200;
            v108 = v206;
            self = selfCopy;
            v106 = v201;
          }

          else
          {
            v134 = self->_recordsByID;
            changedKeys2 = [v109 recordID];
            [(NSMutableDictionary *)v134 setObject:v109 forKeyedSubscript:changedKeys2];
          }
        }

        else
        {
          [(NSMutableDictionary *)recordsByID setObject:v109 forKeyedSubscript:recordID];
          v113 = recordID;
        }

        ++v108;
      }

      while (v108 != v106);
      v106 = [obj countByEnumeratingWithState:&v261 objects:v290 count:16];
    }

    while (v106);
  }

  v251 = 0u;
  v252 = 0u;
  v249 = 0u;
  v250 = 0u;
  recordIDsToDelete2 = [v7 recordIDsToDelete];
  v136 = [recordIDsToDelete2 countByEnumeratingWithState:&v249 objects:v287 count:16];
  if (v136)
  {
    v137 = v136;
    v138 = *v250;
    do
    {
      for (k = 0; k != v137; ++k)
      {
        if (*v250 != v138)
        {
          objc_enumerationMutation(recordIDsToDelete2);
        }

        [(NSMutableDictionary *)self->_recordsByID setObject:0 forKeyedSubscript:*(*(&v249 + 1) + 8 * k)];
      }

      v137 = [recordIDsToDelete2 countByEnumeratingWithState:&v249 objects:v287 count:16];
    }

    while (v137);
  }

  perRecordCompletionBlock = [v7 perRecordCompletionBlock];

  if (perRecordCompletionBlock)
  {
    v247 = 0u;
    v248 = 0u;
    v245 = 0u;
    v246 = 0u;
    recordsToSave2 = [v7 recordsToSave];
    v142 = [recordsToSave2 countByEnumeratingWithState:&v245 objects:v286 count:16];
    if (v142)
    {
      v143 = v142;
      v144 = *v246;
      do
      {
        for (m = 0; m != v143; ++m)
        {
          if (*v246 != v144)
          {
            objc_enumerationMutation(recordsToSave2);
          }

          v146 = *(*(&v245 + 1) + 8 * m);
          perRecordCompletionBlock2 = [v7 perRecordCompletionBlock];
          perRecordCompletionBlock2[2](perRecordCompletionBlock2, v146, 0);
        }

        v143 = [recordsToSave2 countByEnumeratingWithState:&v245 objects:v286 count:16];
      }

      while (v143);
    }

    self = selfCopy;
  }

  modifyRecordsCompletionBlock2 = [v7 modifyRecordsCompletionBlock];
  recordsToSave3 = [v7 recordsToSave];
  recordIDsToDelete3 = [v7 recordIDsToDelete];
  (modifyRecordsCompletionBlock2)[2](modifyRecordsCompletionBlock2, recordsToSave3, recordIDsToDelete3, 0);

  completionBlock = [v7 completionBlock];

  operationCopy = v194;
  if (!completionBlock)
  {
    goto LABEL_17;
  }

  tModifyRecordsOperationHandler2 = [v7 completionBlock];
  (tModifyRecordsOperationHandler2[2])();
LABEL_16:

LABEL_17:
LABEL_18:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = operationCopy;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  if (v25)
  {
    tSavedZones = [(TCKDatabase *)self tSavedZones];

    if (!tSavedZones)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(TCKDatabase *)self setTSavedZones:v27];
    }

    tDeletedZoneIDs = [(TCKDatabase *)self tDeletedZoneIDs];

    if (!tDeletedZoneIDs)
    {
      v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(TCKDatabase *)self setTDeletedZoneIDs:v29];
    }

    tSavedZones2 = [(TCKDatabase *)self tSavedZones];
    v31 = objc_alloc(MEMORY[0x1E695DEC8]);
    recordZonesToSave = [v25 recordZonesToSave];
    v33 = [v31 initWithArray:recordZonesToSave copyItems:1];
    [tSavedZones2 addObjectsFromArray:v33];

    tDeletedZoneIDs2 = [(TCKDatabase *)selfCopy tDeletedZoneIDs];
    self = selfCopy;
    v35 = objc_alloc(MEMORY[0x1E695DEC8]);
    recordZoneIDsToDelete = [v25 recordZoneIDsToDelete];
    v37 = [v35 initWithArray:recordZoneIDsToDelete copyItems:1];
    [tDeletedZoneIDs2 addObjectsFromArray:v37];

    tModifyZonesHandler = [(TCKDatabase *)selfCopy tModifyZonesHandler];

    if (tModifyZonesHandler)
    {
      tModifyZonesHandler2 = [(TCKDatabase *)selfCopy tModifyZonesHandler];
      recordZonesToSave2 = [v25 recordZonesToSave];
      recordZoneIDsToDelete2 = [v25 recordZoneIDsToDelete];
      v243[0] = MEMORY[0x1E69E9820];
      v243[1] = 3221225472;
      v243[2] = __28__TCKDatabase_addOperation___block_invoke_3;
      v243[3] = &unk_1E7C39A20;
      v244 = v25;
      (tModifyZonesHandler2)[2](tModifyZonesHandler2, recordZonesToSave2, recordZoneIDsToDelete2, v243);

      modifyRecordZonesCompletionBlock = v244;
    }

    else
    {
      v43 = operationCopy;
      v241 = 0u;
      v242 = 0u;
      v239 = 0u;
      v240 = 0u;
      recordZoneIDsToDelete3 = [v25 recordZoneIDsToDelete];
      v45 = [recordZoneIDsToDelete3 countByEnumeratingWithState:&v239 objects:v285 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v240;
        do
        {
          for (n = 0; n != v46; ++n)
          {
            if (*v240 != v47)
            {
              objc_enumerationMutation(recordZoneIDsToDelete3);
            }

            v49 = *(*(&v239 + 1) + 8 * n);
            v50 = selfCopy->_recordsByID;
            v238[0] = MEMORY[0x1E69E9820];
            v238[1] = 3221225472;
            v238[2] = __28__TCKDatabase_addOperation___block_invoke_4;
            v238[3] = &unk_1E7C43D40;
            v238[4] = v49;
            [(NSMutableDictionary *)v50 fc_removeObjectsForKeysPassingTest:v238];
          }

          v46 = [recordZoneIDsToDelete3 countByEnumeratingWithState:&v239 objects:v285 count:16];
        }

        while (v46);
      }

      modifyRecordZonesCompletionBlock = [v25 modifyRecordZonesCompletionBlock];
      recordZonesToSave3 = [v25 recordZonesToSave];
      recordZoneIDsToDelete4 = [v25 recordZoneIDsToDelete];
      (modifyRecordZonesCompletionBlock)[2](modifyRecordZonesCompletionBlock, recordZonesToSave3, recordZoneIDsToDelete4, 0);

      operationCopy = v43;
      self = selfCopy;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v53 = operationCopy;
  }

  else
  {
    v53 = 0;
  }

  v54 = v53;
  if (v54)
  {
    tFetchZonesHandler = [(TCKDatabase *)self tFetchZonesHandler];
    recordZoneIDs = [v54 recordZoneIDs];
    v236[0] = MEMORY[0x1E69E9820];
    v236[1] = 3221225472;
    v236[2] = __28__TCKDatabase_addOperation___block_invoke_5;
    v236[3] = &unk_1E7C39358;
    v237 = v54;
    (tFetchZonesHandler)[2](tFetchZonesHandler, recordZoneIDs, v236);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v57 = operationCopy;
  }

  else
  {
    v57 = 0;
  }

  v58 = v57;
  v59 = v58;
  v205 = v58;
  if (v58)
  {
    if ([v58 isCancelled])
    {
      fetchRecordsCompletionBlock = [v59 fetchRecordsCompletionBlock];
      v61 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695B740] code:20 userInfo:0];
      (fetchRecordsCompletionBlock)[2](fetchRecordsCompletionBlock, 0, v61);

      v59 = v205;
    }

    else
    {
      tFetchedRecords = [(TCKDatabase *)self tFetchedRecords];

      if (!tFetchedRecords)
      {
        v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [(TCKDatabase *)self setTFetchedRecords:v63];
      }

      tFetchRecordsHandler = [(TCKDatabase *)self tFetchRecordsHandler];

      if (tFetchRecordsHandler)
      {
        tFetchRecordsHandler2 = [(TCKDatabase *)self tFetchRecordsHandler];
        recordIDs = [v59 recordIDs];
        v234[0] = MEMORY[0x1E69E9820];
        v234[1] = 3221225472;
        v234[2] = __28__TCKDatabase_addOperation___block_invoke_6;
        v234[3] = &unk_1E7C40918;
        v234[4] = self;
        v235 = v205;
        (tFetchRecordsHandler2)[2](tFetchRecordsHandler2, recordIDs, v234);

        v59 = v205;
      }

      else
      {
        v67 = v54;
        selfCopy2 = self;
        v69 = operationCopy;
        v70 = selfCopy2->_recordsByID;
        recordIDs2 = [v59 recordIDs];
        v72 = [(NSMutableDictionary *)v70 fc_subdictionaryForKeys:recordIDs2];

        v59 = v205;
        v232 = 0u;
        v233 = 0u;
        v230 = 0u;
        v231 = 0u;
        v73 = v72;
        v74 = [v73 countByEnumeratingWithState:&v230 objects:v284 count:16];
        if (v74)
        {
          v75 = v74;
          v76 = *v231;
          do
          {
            for (ii = 0; ii != v75; ++ii)
            {
              if (*v231 != v76)
              {
                objc_enumerationMutation(v73);
              }

              v78 = *(*(&v230 + 1) + 8 * ii);
              perRecordCompletionBlock3 = [v59 perRecordCompletionBlock];

              if (perRecordCompletionBlock3)
              {
                perRecordCompletionBlock4 = [v59 perRecordCompletionBlock];
                v81 = [v73 objectForKeyedSubscript:v78];
                (perRecordCompletionBlock4)[2](perRecordCompletionBlock4, v81, v78, 0);

                v59 = v205;
              }
            }

            v75 = [v73 countByEnumeratingWithState:&v230 objects:v284 count:16];
          }

          while (v75);
        }

        fetchRecordsCompletionBlock2 = [v59 fetchRecordsCompletionBlock];
        (fetchRecordsCompletionBlock2)[2](fetchRecordsCompletionBlock2, v73, 0);

        operationCopy = v69;
        self = selfCopy;
        v54 = v67;
      }
    }
  }

  v196 = v54;
  objc_opt_class();
  if (operationCopy && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v83 = operationCopy;
    tFetchedChangedRecordZoneNames = [(TCKDatabase *)self tFetchedChangedRecordZoneNames];

    if (!tFetchedChangedRecordZoneNames)
    {
      v85 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(TCKDatabase *)self setTFetchedChangedRecordZoneNames:v85];
    }

    v228 = 0u;
    v229 = 0u;
    v226 = 0u;
    v227 = 0u;
    recordZoneIDs2 = [v83 recordZoneIDs];
    v87 = [recordZoneIDs2 countByEnumeratingWithState:&v226 objects:v283 count:16];
    if (v87)
    {
      v88 = v87;
      v89 = *v227;
      do
      {
        for (jj = 0; jj != v88; ++jj)
        {
          if (*v227 != v89)
          {
            objc_enumerationMutation(recordZoneIDs2);
          }

          v91 = *(*(&v226 + 1) + 8 * jj);
          tFetchedChangedRecordZoneNames2 = [(TCKDatabase *)selfCopy tFetchedChangedRecordZoneNames];
          zoneName = [v91 zoneName];
          [tFetchedChangedRecordZoneNames2 addObject:zoneName];
        }

        v88 = [recordZoneIDs2 countByEnumeratingWithState:&v226 objects:v283 count:16];
      }

      while (v88);
    }

    self = selfCopy;
    tFetchRecordZoneChangesOperationHandler = [(TCKDatabase *)selfCopy tFetchRecordZoneChangesOperationHandler];

    if (tFetchRecordZoneChangesOperationHandler)
    {
      tFetchRecordZoneChangesOperationHandler2 = [(TCKDatabase *)selfCopy tFetchRecordZoneChangesOperationHandler];
      (tFetchRecordZoneChangesOperationHandler2)[2](tFetchRecordZoneChangesOperationHandler2, v83);
      operationCopy = v194;
    }

    else
    {
      v193 = v25;
      tFetchZoneChangesHandler = [(TCKDatabase *)selfCopy tFetchZoneChangesHandler];

      if (tFetchZoneChangesHandler)
      {
        v224 = 0uLL;
        v225 = 0uLL;
        v222 = 0uLL;
        v223 = 0uLL;
        recordZoneIDs3 = [v83 recordZoneIDs];
        v98 = [recordZoneIDs3 countByEnumeratingWithState:&v222 objects:v282 count:16];
        if (v98)
        {
          v99 = v98;
          v100 = *v223;
          do
          {
            for (kk = 0; kk != v99; ++kk)
            {
              if (*v223 != v100)
              {
                objc_enumerationMutation(recordZoneIDs3);
              }

              v102 = *(*(&v222 + 1) + 8 * kk);
              tFetchZoneChangesHandler2 = [(TCKDatabase *)selfCopy tFetchZoneChangesHandler];

              if (tFetchZoneChangesHandler2)
              {
                tFetchZoneChangesHandler3 = [(TCKDatabase *)selfCopy tFetchZoneChangesHandler];
                v219[0] = MEMORY[0x1E69E9820];
                v219[1] = 3221225472;
                v219[2] = __28__TCKDatabase_addOperation___block_invoke_7;
                v219[3] = &unk_1E7C39650;
                v220 = v83;
                v221 = v102;
                (tFetchZoneChangesHandler3)[2](tFetchZoneChangesHandler3, v102, v219);
              }
            }

            v99 = [recordZoneIDs3 countByEnumeratingWithState:&v222 objects:v282 count:16];
          }

          while (v99);
        }
      }

      else
      {
        v217 = 0uLL;
        v218 = 0uLL;
        v215 = 0uLL;
        v216 = 0uLL;
        recordZoneIDs4 = [v83 recordZoneIDs];
        obja = [recordZoneIDs4 countByEnumeratingWithState:&v215 objects:v281 count:16];
        if (obja)
        {
          v202 = *v216;
          do
          {
            for (mm = 0; mm != obja; mm = mm + 1)
            {
              if (*v216 != v202)
              {
                objc_enumerationMutation(recordZoneIDs4);
              }

              v153 = *(*(&v215 + 1) + 8 * mm);
              v154 = selfCopy->_recordsByID;
              v214[0] = MEMORY[0x1E69E9820];
              v214[1] = 3221225472;
              v214[2] = __28__TCKDatabase_addOperation___block_invoke_8;
              v214[3] = &unk_1E7C43D68;
              v214[4] = v153;
              v155 = [(NSMutableDictionary *)v154 keysOfEntriesPassingTest:v214];
              v210 = 0u;
              v211 = 0u;
              v212 = 0u;
              v213 = 0u;
              v156 = v155;
              v157 = [v156 countByEnumeratingWithState:&v210 objects:v280 count:16];
              if (v157)
              {
                v158 = v157;
                v159 = *v211;
                do
                {
                  for (nn = 0; nn != v158; ++nn)
                  {
                    if (*v211 != v159)
                    {
                      objc_enumerationMutation(v156);
                    }

                    v161 = *(*(&v210 + 1) + 8 * nn);
                    recordChangedBlock = [v83 recordChangedBlock];

                    if (recordChangedBlock)
                    {
                      recordChangedBlock2 = [v83 recordChangedBlock];
                      v164 = [(NSMutableDictionary *)selfCopy->_recordsByID objectForKeyedSubscript:v161];
                      (recordChangedBlock2)[2](recordChangedBlock2, v164);
                    }
                  }

                  v158 = [v156 countByEnumeratingWithState:&v210 objects:v280 count:16];
                }

                while (v158);
              }

              recordZoneFetchCompletionBlock = [v83 recordZoneFetchCompletionBlock];

              if (recordZoneFetchCompletionBlock)
              {
                recordZoneFetchCompletionBlock2 = [v83 recordZoneFetchCompletionBlock];
                v167 = objc_opt_new();
                (recordZoneFetchCompletionBlock2)[2](recordZoneFetchCompletionBlock2, v153, 0, v167, 0, 0);
              }
            }

            obja = [recordZoneIDs4 countByEnumeratingWithState:&v215 objects:v281 count:16];
          }

          while (obja);
        }
      }

      fetchRecordZoneChangesCompletionBlock = [v83 fetchRecordZoneChangesCompletionBlock];

      if (!fetchRecordZoneChangesCompletionBlock)
      {
        v25 = v193;
        operationCopy = v194;
        v59 = v205;
        goto LABEL_154;
      }

      tFetchRecordZoneChangesOperationHandler2 = [v83 fetchRecordZoneChangesCompletionBlock];
      tFetchRecordZoneChangesOperationHandler2[2](tFetchRecordZoneChangesOperationHandler2, 0);
      v25 = v193;
      operationCopy = v194;
    }

    v59 = v205;
  }

  else
  {
    v83 = 0;
  }

LABEL_154:
  objc_opt_class();
  if (operationCopy && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v169 = operationCopy;
    tFetchDatabaseChangesHandler = [(TCKDatabase *)self tFetchDatabaseChangesHandler];

    if (tFetchDatabaseChangesHandler)
    {
      tFetchDatabaseChangesHandler2 = [(TCKDatabase *)self tFetchDatabaseChangesHandler];
      v208[0] = MEMORY[0x1E69E9820];
      v208[1] = 3221225472;
      v208[2] = __28__TCKDatabase_addOperation___block_invoke_9;
      v208[3] = &unk_1E7C39A20;
      v209 = v169;
      (tFetchDatabaseChangesHandler2)[2](tFetchDatabaseChangesHandler2, v208);
    }

    objc_opt_class();
  }

  else
  {
    objc_opt_class();
    v169 = 0;
    if (!operationCopy)
    {
      goto LABEL_164;
    }
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_164:
    objc_opt_class();
    v172 = 0;
    if (!operationCopy)
    {
      goto LABEL_171;
    }

    goto LABEL_165;
  }

  v172 = operationCopy;
  fetchSubscriptionCompletionBlock = [v172 fetchSubscriptionCompletionBlock];

  if (fetchSubscriptionCompletionBlock)
  {
    fetchSubscriptionCompletionBlock2 = [v172 fetchSubscriptionCompletionBlock];
    v175 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695B740] code:11 userInfo:0];
    (fetchSubscriptionCompletionBlock2)[2](fetchSubscriptionCompletionBlock2, 0, v175);

    v59 = v205;
  }

  objc_opt_class();
LABEL_165:
  if (objc_opt_isKindOfClass())
  {
    v176 = v25;
    v177 = operationCopy;
    tSavedSubscriptions = [(TCKDatabase *)self tSavedSubscriptions];

    if (!tSavedSubscriptions)
    {
      array = [MEMORY[0x1E695DF70] array];
      [(TCKDatabase *)self setTSavedSubscriptions:array];
    }

    tSavedSubscriptions2 = [(TCKDatabase *)self tSavedSubscriptions];
    subscriptionsToSave = [v177 subscriptionsToSave];
    [tSavedSubscriptions2 addObjectsFromArray:subscriptionsToSave];

    modifySubscriptionsCompletionBlock = [v177 modifySubscriptionsCompletionBlock];

    if (modifySubscriptionsCompletionBlock)
    {
      modifySubscriptionsCompletionBlock2 = [v177 modifySubscriptionsCompletionBlock];
      subscriptionsToSave2 = [v177 subscriptionsToSave];
      subscriptionIDsToDelete = [v177 subscriptionIDsToDelete];
      (modifySubscriptionsCompletionBlock2)[2](modifySubscriptionsCompletionBlock2, subscriptionsToSave2, subscriptionIDsToDelete, 0);
    }

    objc_opt_class();
    v59 = v205;
    goto LABEL_172;
  }

LABEL_171:
  v176 = v25;
  objc_opt_class();
  v177 = 0;
  if (!operationCopy)
  {
LABEL_176:
    v186 = 0;
    goto LABEL_177;
  }

LABEL_172:
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_176;
  }

  v186 = operationCopy;
  v187 = MEMORY[0x1E69E9C10];
  v188 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
  {
    v190 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CKQueryOperation is not supported"];
    *buf = 136315906;
    v273 = "[TCKDatabase addOperation:]";
    v274 = 2080;
    v275 = "TCKDatabase.m";
    v276 = 1024;
    v277 = 299;
    v278 = 2114;
    v279 = v190;
    v59 = v205;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_177:
  v189 = *MEMORY[0x1E69E9840];
}

void __28__TCKDatabase_addOperation___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v7 = a3;
  v8 = a4;
  v9 = a1[4];
  v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v16 copyItems:1];
  [v9 addObjectsFromArray:v10];

  v11 = a1[5];
  v12 = [v16 valueForKeyPath:@"recordID"];
  [v11 addObjectsFromArray:v12];

  v13 = a1[6];
  v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v7 copyItems:1];
  [v13 addObjectsFromArray:v14];

  v15 = a1[7];
  if (v15)
  {
    (*(v15 + 16))(v15, v16, v7, v8);
  }
}

void __28__TCKDatabase_addOperation___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        v15 = [*(a1 + 32) perRecordCompletionBlock];

        if (v15)
        {
          v16 = [*(a1 + 32) perRecordCompletionBlock];
          v16[2](v16, v14, 0);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v17 = [*(a1 + 32) modifyRecordsCompletionBlock];

  if (v17)
  {
    v18 = [*(a1 + 32) modifyRecordsCompletionBlock];
    (v18)[2](v18, v7, v8, v9);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __28__TCKDatabase_addOperation___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [v6 modifyRecordZonesCompletionBlock];
  v10[2](v10, v9, v8, v7);
}

uint64_t __28__TCKDatabase_addOperation___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 zoneID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __28__TCKDatabase_addOperation___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 fetchRecordZonesCompletionBlock];
  v7[2](v7, v6, v5);
}

void __28__TCKDatabase_addOperation___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) tFetchedRecords];
  v8 = objc_alloc(MEMORY[0x1E695DEC8]);
  v9 = [v5 allValues];
  v10 = [v8 initWithArray:v9 copyItems:1];
  [v7 addObjectsFromArray:v10];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      v15 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * v15);
        v17 = [*(a1 + 40) perRecordCompletionBlock];

        if (v17)
        {
          v18 = [*(a1 + 40) perRecordCompletionBlock];
          v19 = [v11 objectForKeyedSubscript:v16];
          (v18)[2](v18, v19, v16, v6);
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v20 = [*(a1 + 40) fetchRecordsCompletionBlock];
  (v20)[2](v20, v11, v6);

  v21 = *MEMORY[0x1E69E9840];
}

void __28__TCKDatabase_addOperation___block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      v13 = 0;
      do
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v34 + 1) + 8 * v13);
        v15 = [*(a1 + 32) recordChangedBlock];

        if (v15)
        {
          v16 = [*(a1 + 32) recordChangedBlock];
          v16[2](v16, v14);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v11);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v31;
    do
    {
      v21 = 0;
      do
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v30 + 1) + 8 * v21);
        v23 = [*(a1 + 32) recordWithIDWasDeletedBlock];

        if (v23)
        {
          v24 = [*(a1 + 32) recordWithIDWasDeletedBlock];
          (v24)[2](v24, v22, @"UNKNOWN_RECORD_TYPE");
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v19);
  }

  v25 = [*(a1 + 32) recordZoneFetchCompletionBlock];

  if (v25)
  {
    v26 = [*(a1 + 32) recordZoneFetchCompletionBlock];
    v27 = *(a1 + 40);
    v28 = objc_opt_new();
    (v26)[2](v26, v27, 0, v28, v9 != 0, v9);
  }

  v29 = *MEMORY[0x1E69E9840];
}

uint64_t __28__TCKDatabase_addOperation___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = [a2 zoneID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __28__TCKDatabase_addOperation___block_invoke_9(uint64_t a1, void *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      v13 = 0;
      do
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v32 + 1) + 8 * v13);
        v15 = [*(a1 + 32) recordZoneWithIDChangedBlock];

        if (v15)
        {
          v16 = [*(a1 + 32) recordZoneWithIDChangedBlock];
          v16[2](v16, v14);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v11);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      v21 = 0;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v28 + 1) + 8 * v21);
        v23 = [*(a1 + 32) recordZoneWithIDWasDeletedBlock];

        if (v23)
        {
          v24 = [*(a1 + 32) recordZoneWithIDWasDeletedBlock];
          v24[2](v24, v22);
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v19);
  }

  v25 = [*(a1 + 32) fetchDatabaseChangesCompletionBlock];

  if (v25)
  {
    v26 = [*(a1 + 32) fetchDatabaseChangesCompletionBlock];
    (v26)[2](v26, 0, 0, v9);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)addRecord:(id)record
{
  recordsByID = self->_recordsByID;
  recordCopy = record;
  recordID = [recordCopy recordID];
  [(NSMutableDictionary *)recordsByID setObject:recordCopy forKeyedSubscript:recordID];
}

- (id)recordIDsInZoneName:(id)name
{
  nameCopy = name;
  recordsByID = self->_recordsByID;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__TCKDatabase_recordIDsInZoneName___block_invoke;
  v9[3] = &unk_1E7C43D68;
  v10 = nameCopy;
  v6 = nameCopy;
  v7 = [(NSMutableDictionary *)recordsByID keysOfEntriesPassingTest:v9];

  return v7;
}

uint64_t __35__TCKDatabase_recordIDsInZoneName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 zoneID];
  v4 = [v3 zoneName];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (CKRecord)sentinelRecord
{
  v3 = +[CKRecordID fc_staticSentinelRecordID];
  v4 = [(TCKDatabase *)self recordWithID:v3];

  return v4;
}

- (CKRecord)secureSentinelRecord
{
  v3 = +[CKRecordID fc_staticSecureSentinelRecordID];
  v4 = [(TCKDatabase *)self recordWithID:v3];

  return v4;
}

@end