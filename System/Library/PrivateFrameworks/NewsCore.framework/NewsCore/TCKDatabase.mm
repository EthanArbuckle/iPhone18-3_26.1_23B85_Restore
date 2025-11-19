@interface TCKDatabase
- (CKRecord)secureSentinelRecord;
- (CKRecord)sentinelRecord;
- (TCKDatabase)init;
- (id)recordIDsInZoneName:(id)a3;
- (void)addOperation:(id)a3;
- (void)addRecord:(id)a3;
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

- (void)addOperation:(id)a3
{
  v291 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v199 = v6;
  v207 = self;
  v194 = v4;
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  v8 = [(TCKDatabase *)self tSavedRecords];

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(TCKDatabase *)self setTSavedRecords:v9];
  }

  v10 = [(TCKDatabase *)self tSavedRecordIDs];

  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(TCKDatabase *)self setTSavedRecordIDs:v11];
  }

  v12 = [(TCKDatabase *)self tDeletedRecordIDs];

  if (!v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(TCKDatabase *)self setTDeletedRecordIDs:v13];
  }

  v14 = [(TCKDatabase *)self tSavedRecords];
  v15 = [(TCKDatabase *)self tSavedRecordIDs];
  v16 = [(TCKDatabase *)self tDeletedRecordIDs];
  v17 = [v7 modifyRecordsCompletionBlock];
  v267[0] = MEMORY[0x1E69E9820];
  v267[1] = 3221225472;
  v267[2] = __28__TCKDatabase_addOperation___block_invoke;
  v267[3] = &unk_1E7C43D18;
  v197 = v14;
  v268 = v197;
  v195 = v15;
  v269 = v195;
  v192 = v16;
  v270 = v192;
  v191 = v17;
  v271 = v191;
  [v7 setModifyRecordsCompletionBlock:v267];
  v18 = [(TCKDatabase *)self tModifyRecordsOperationHandler];

  if (v18)
  {
    v19 = [(TCKDatabase *)self tModifyRecordsOperationHandler];
    (v19)[2](v19, v7);
LABEL_15:
    v4 = v194;
    goto LABEL_16;
  }

  v20 = [(TCKDatabase *)self tModifyRecordsHandler];

  if (v20)
  {
    v21 = [(TCKDatabase *)self tModifyRecordsHandler];
    v22 = [v7 recordsToSave];
    v23 = [v7 recordIDsToDelete];
    v265[0] = MEMORY[0x1E69E9820];
    v265[1] = 3221225472;
    v265[2] = __28__TCKDatabase_addOperation___block_invoke_2;
    v265[3] = &unk_1E7C39A20;
    v266 = v7;
    (v21)[2](v21, v22, v23, v265);

    v19 = v266;
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
        v110 = [v7 savePolicy];
        recordsByID = self->_recordsByID;
        v112 = [v109 recordID];
        if (v110 == 1)
        {
          v113 = [(NSMutableDictionary *)recordsByID objectForKeyedSubscript:v112];

          if (v113)
          {
            v206 = v108;
            v259 = 0u;
            v260 = 0u;
            v257 = 0u;
            v258 = 0u;
            v114 = [v109 encryptedValueStore];
            v115 = [v114 changedKeys];

            v116 = [v115 countByEnumeratingWithState:&v257 objects:v289 count:16];
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
                    objc_enumerationMutation(v115);
                  }

                  v120 = *(*(&v257 + 1) + 8 * i);
                  v121 = [v109 encryptedValueStore];
                  v122 = [v121 objectForKeyedSubscript:v120];
                  v123 = [v113 encryptedValueStore];
                  [v123 setObject:v122 forKeyedSubscript:v120];
                }

                v117 = [v115 countByEnumeratingWithState:&v257 objects:v289 count:16];
              }

              while (v117);
            }

            v255 = 0u;
            v256 = 0u;
            v253 = 0u;
            v254 = 0u;
            v124 = [v109 valueStore];
            v125 = [v124 changedKeys];

            v126 = [v125 countByEnumeratingWithState:&v253 objects:v288 count:16];
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
                    objc_enumerationMutation(v125);
                  }

                  v130 = *(*(&v253 + 1) + 8 * j);
                  v131 = [v109 valueStore];
                  v132 = [v131 objectForKeyedSubscript:v130];
                  v133 = [v113 valueStore];
                  [v133 setObject:v132 forKeyedSubscript:v130];
                }

                v127 = [v125 countByEnumeratingWithState:&v253 objects:v288 count:16];
              }

              while (v127);
            }

            v7 = v199;
            v107 = v200;
            v108 = v206;
            self = v207;
            v106 = v201;
          }

          else
          {
            v134 = self->_recordsByID;
            v125 = [v109 recordID];
            [(NSMutableDictionary *)v134 setObject:v109 forKeyedSubscript:v125];
          }
        }

        else
        {
          [(NSMutableDictionary *)recordsByID setObject:v109 forKeyedSubscript:v112];
          v113 = v112;
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
  v135 = [v7 recordIDsToDelete];
  v136 = [v135 countByEnumeratingWithState:&v249 objects:v287 count:16];
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
          objc_enumerationMutation(v135);
        }

        [(NSMutableDictionary *)self->_recordsByID setObject:0 forKeyedSubscript:*(*(&v249 + 1) + 8 * k)];
      }

      v137 = [v135 countByEnumeratingWithState:&v249 objects:v287 count:16];
    }

    while (v137);
  }

  v140 = [v7 perRecordCompletionBlock];

  if (v140)
  {
    v247 = 0u;
    v248 = 0u;
    v245 = 0u;
    v246 = 0u;
    v141 = [v7 recordsToSave];
    v142 = [v141 countByEnumeratingWithState:&v245 objects:v286 count:16];
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
            objc_enumerationMutation(v141);
          }

          v146 = *(*(&v245 + 1) + 8 * m);
          v147 = [v7 perRecordCompletionBlock];
          v147[2](v147, v146, 0);
        }

        v143 = [v141 countByEnumeratingWithState:&v245 objects:v286 count:16];
      }

      while (v143);
    }

    self = v207;
  }

  v148 = [v7 modifyRecordsCompletionBlock];
  v149 = [v7 recordsToSave];
  v150 = [v7 recordIDsToDelete];
  (v148)[2](v148, v149, v150, 0);

  v151 = [v7 completionBlock];

  v4 = v194;
  if (!v151)
  {
    goto LABEL_17;
  }

  v19 = [v7 completionBlock];
  (v19[2])();
LABEL_16:

LABEL_17:
LABEL_18:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v4;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  if (v25)
  {
    v26 = [(TCKDatabase *)self tSavedZones];

    if (!v26)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(TCKDatabase *)self setTSavedZones:v27];
    }

    v28 = [(TCKDatabase *)self tDeletedZoneIDs];

    if (!v28)
    {
      v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(TCKDatabase *)self setTDeletedZoneIDs:v29];
    }

    v30 = [(TCKDatabase *)self tSavedZones];
    v31 = objc_alloc(MEMORY[0x1E695DEC8]);
    v32 = [v25 recordZonesToSave];
    v33 = [v31 initWithArray:v32 copyItems:1];
    [v30 addObjectsFromArray:v33];

    v34 = [(TCKDatabase *)v207 tDeletedZoneIDs];
    self = v207;
    v35 = objc_alloc(MEMORY[0x1E695DEC8]);
    v36 = [v25 recordZoneIDsToDelete];
    v37 = [v35 initWithArray:v36 copyItems:1];
    [v34 addObjectsFromArray:v37];

    v38 = [(TCKDatabase *)v207 tModifyZonesHandler];

    if (v38)
    {
      v39 = [(TCKDatabase *)v207 tModifyZonesHandler];
      v40 = [v25 recordZonesToSave];
      v41 = [v25 recordZoneIDsToDelete];
      v243[0] = MEMORY[0x1E69E9820];
      v243[1] = 3221225472;
      v243[2] = __28__TCKDatabase_addOperation___block_invoke_3;
      v243[3] = &unk_1E7C39A20;
      v244 = v25;
      (v39)[2](v39, v40, v41, v243);

      v42 = v244;
    }

    else
    {
      v43 = v4;
      v241 = 0u;
      v242 = 0u;
      v239 = 0u;
      v240 = 0u;
      v44 = [v25 recordZoneIDsToDelete];
      v45 = [v44 countByEnumeratingWithState:&v239 objects:v285 count:16];
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
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v239 + 1) + 8 * n);
            v50 = v207->_recordsByID;
            v238[0] = MEMORY[0x1E69E9820];
            v238[1] = 3221225472;
            v238[2] = __28__TCKDatabase_addOperation___block_invoke_4;
            v238[3] = &unk_1E7C43D40;
            v238[4] = v49;
            [(NSMutableDictionary *)v50 fc_removeObjectsForKeysPassingTest:v238];
          }

          v46 = [v44 countByEnumeratingWithState:&v239 objects:v285 count:16];
        }

        while (v46);
      }

      v42 = [v25 modifyRecordZonesCompletionBlock];
      v51 = [v25 recordZonesToSave];
      v52 = [v25 recordZoneIDsToDelete];
      (v42)[2](v42, v51, v52, 0);

      v4 = v43;
      self = v207;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v53 = v4;
  }

  else
  {
    v53 = 0;
  }

  v54 = v53;
  if (v54)
  {
    v55 = [(TCKDatabase *)self tFetchZonesHandler];
    v56 = [v54 recordZoneIDs];
    v236[0] = MEMORY[0x1E69E9820];
    v236[1] = 3221225472;
    v236[2] = __28__TCKDatabase_addOperation___block_invoke_5;
    v236[3] = &unk_1E7C39358;
    v237 = v54;
    (v55)[2](v55, v56, v236);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v57 = v4;
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
      v60 = [v59 fetchRecordsCompletionBlock];
      v61 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695B740] code:20 userInfo:0];
      (v60)[2](v60, 0, v61);

      v59 = v205;
    }

    else
    {
      v62 = [(TCKDatabase *)self tFetchedRecords];

      if (!v62)
      {
        v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [(TCKDatabase *)self setTFetchedRecords:v63];
      }

      v64 = [(TCKDatabase *)self tFetchRecordsHandler];

      if (v64)
      {
        v65 = [(TCKDatabase *)self tFetchRecordsHandler];
        v66 = [v59 recordIDs];
        v234[0] = MEMORY[0x1E69E9820];
        v234[1] = 3221225472;
        v234[2] = __28__TCKDatabase_addOperation___block_invoke_6;
        v234[3] = &unk_1E7C40918;
        v234[4] = self;
        v235 = v205;
        (v65)[2](v65, v66, v234);

        v59 = v205;
      }

      else
      {
        v67 = v54;
        v68 = self;
        v69 = v4;
        v70 = v68->_recordsByID;
        v71 = [v59 recordIDs];
        v72 = [(NSMutableDictionary *)v70 fc_subdictionaryForKeys:v71];

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
              v79 = [v59 perRecordCompletionBlock];

              if (v79)
              {
                v80 = [v59 perRecordCompletionBlock];
                v81 = [v73 objectForKeyedSubscript:v78];
                (v80)[2](v80, v81, v78, 0);

                v59 = v205;
              }
            }

            v75 = [v73 countByEnumeratingWithState:&v230 objects:v284 count:16];
          }

          while (v75);
        }

        v82 = [v59 fetchRecordsCompletionBlock];
        (v82)[2](v82, v73, 0);

        v4 = v69;
        self = v207;
        v54 = v67;
      }
    }
  }

  v196 = v54;
  objc_opt_class();
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v83 = v4;
    v84 = [(TCKDatabase *)self tFetchedChangedRecordZoneNames];

    if (!v84)
    {
      v85 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(TCKDatabase *)self setTFetchedChangedRecordZoneNames:v85];
    }

    v228 = 0u;
    v229 = 0u;
    v226 = 0u;
    v227 = 0u;
    v86 = [v83 recordZoneIDs];
    v87 = [v86 countByEnumeratingWithState:&v226 objects:v283 count:16];
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
            objc_enumerationMutation(v86);
          }

          v91 = *(*(&v226 + 1) + 8 * jj);
          v92 = [(TCKDatabase *)v207 tFetchedChangedRecordZoneNames];
          v93 = [v91 zoneName];
          [v92 addObject:v93];
        }

        v88 = [v86 countByEnumeratingWithState:&v226 objects:v283 count:16];
      }

      while (v88);
    }

    self = v207;
    v94 = [(TCKDatabase *)v207 tFetchRecordZoneChangesOperationHandler];

    if (v94)
    {
      v95 = [(TCKDatabase *)v207 tFetchRecordZoneChangesOperationHandler];
      (v95)[2](v95, v83);
      v4 = v194;
    }

    else
    {
      v193 = v25;
      v96 = [(TCKDatabase *)v207 tFetchZoneChangesHandler];

      if (v96)
      {
        v224 = 0uLL;
        v225 = 0uLL;
        v222 = 0uLL;
        v223 = 0uLL;
        v97 = [v83 recordZoneIDs];
        v98 = [v97 countByEnumeratingWithState:&v222 objects:v282 count:16];
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
                objc_enumerationMutation(v97);
              }

              v102 = *(*(&v222 + 1) + 8 * kk);
              v103 = [(TCKDatabase *)v207 tFetchZoneChangesHandler];

              if (v103)
              {
                v104 = [(TCKDatabase *)v207 tFetchZoneChangesHandler];
                v219[0] = MEMORY[0x1E69E9820];
                v219[1] = 3221225472;
                v219[2] = __28__TCKDatabase_addOperation___block_invoke_7;
                v219[3] = &unk_1E7C39650;
                v220 = v83;
                v221 = v102;
                (v104)[2](v104, v102, v219);
              }
            }

            v99 = [v97 countByEnumeratingWithState:&v222 objects:v282 count:16];
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
        v198 = [v83 recordZoneIDs];
        obja = [v198 countByEnumeratingWithState:&v215 objects:v281 count:16];
        if (obja)
        {
          v202 = *v216;
          do
          {
            for (mm = 0; mm != obja; mm = mm + 1)
            {
              if (*v216 != v202)
              {
                objc_enumerationMutation(v198);
              }

              v153 = *(*(&v215 + 1) + 8 * mm);
              v154 = v207->_recordsByID;
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
                    v162 = [v83 recordChangedBlock];

                    if (v162)
                    {
                      v163 = [v83 recordChangedBlock];
                      v164 = [(NSMutableDictionary *)v207->_recordsByID objectForKeyedSubscript:v161];
                      (v163)[2](v163, v164);
                    }
                  }

                  v158 = [v156 countByEnumeratingWithState:&v210 objects:v280 count:16];
                }

                while (v158);
              }

              v165 = [v83 recordZoneFetchCompletionBlock];

              if (v165)
              {
                v166 = [v83 recordZoneFetchCompletionBlock];
                v167 = objc_opt_new();
                (v166)[2](v166, v153, 0, v167, 0, 0);
              }
            }

            obja = [v198 countByEnumeratingWithState:&v215 objects:v281 count:16];
          }

          while (obja);
        }
      }

      v168 = [v83 fetchRecordZoneChangesCompletionBlock];

      if (!v168)
      {
        v25 = v193;
        v4 = v194;
        v59 = v205;
        goto LABEL_154;
      }

      v95 = [v83 fetchRecordZoneChangesCompletionBlock];
      v95[2](v95, 0);
      v25 = v193;
      v4 = v194;
    }

    v59 = v205;
  }

  else
  {
    v83 = 0;
  }

LABEL_154:
  objc_opt_class();
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v169 = v4;
    v170 = [(TCKDatabase *)self tFetchDatabaseChangesHandler];

    if (v170)
    {
      v171 = [(TCKDatabase *)self tFetchDatabaseChangesHandler];
      v208[0] = MEMORY[0x1E69E9820];
      v208[1] = 3221225472;
      v208[2] = __28__TCKDatabase_addOperation___block_invoke_9;
      v208[3] = &unk_1E7C39A20;
      v209 = v169;
      (v171)[2](v171, v208);
    }

    objc_opt_class();
  }

  else
  {
    objc_opt_class();
    v169 = 0;
    if (!v4)
    {
      goto LABEL_164;
    }
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_164:
    objc_opt_class();
    v172 = 0;
    if (!v4)
    {
      goto LABEL_171;
    }

    goto LABEL_165;
  }

  v172 = v4;
  v173 = [v172 fetchSubscriptionCompletionBlock];

  if (v173)
  {
    v174 = [v172 fetchSubscriptionCompletionBlock];
    v175 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695B740] code:11 userInfo:0];
    (v174)[2](v174, 0, v175);

    v59 = v205;
  }

  objc_opt_class();
LABEL_165:
  if (objc_opt_isKindOfClass())
  {
    v176 = v25;
    v177 = v4;
    v178 = [(TCKDatabase *)self tSavedSubscriptions];

    if (!v178)
    {
      v179 = [MEMORY[0x1E695DF70] array];
      [(TCKDatabase *)self setTSavedSubscriptions:v179];
    }

    v180 = [(TCKDatabase *)self tSavedSubscriptions];
    v181 = [v177 subscriptionsToSave];
    [v180 addObjectsFromArray:v181];

    v182 = [v177 modifySubscriptionsCompletionBlock];

    if (v182)
    {
      v183 = [v177 modifySubscriptionsCompletionBlock];
      v184 = [v177 subscriptionsToSave];
      v185 = [v177 subscriptionIDsToDelete];
      (v183)[2](v183, v184, v185, 0);
    }

    objc_opt_class();
    v59 = v205;
    goto LABEL_172;
  }

LABEL_171:
  v176 = v25;
  objc_opt_class();
  v177 = 0;
  if (!v4)
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

  v186 = v4;
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

- (void)addRecord:(id)a3
{
  recordsByID = self->_recordsByID;
  v4 = a3;
  v5 = [v4 recordID];
  [(NSMutableDictionary *)recordsByID setObject:v4 forKeyedSubscript:v5];
}

- (id)recordIDsInZoneName:(id)a3
{
  v4 = a3;
  recordsByID = self->_recordsByID;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__TCKDatabase_recordIDsInZoneName___block_invoke;
  v9[3] = &unk_1E7C43D68;
  v10 = v4;
  v6 = v4;
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