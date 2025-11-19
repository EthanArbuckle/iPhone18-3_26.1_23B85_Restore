@interface HDCloudSyncFinishOwnerTakeoverOperation
+ (id)operationTagDependencies;
- (void)main;
@end

@implementation HDCloudSyncFinishOwnerTakeoverOperation

+ (id)operationTagDependencies
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"compute-push-targets";
  v5[1] = @"compute-pull-targets";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)main
{
  v267 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D10BB0]);
  taskGroup = self->_taskGroup;
  self->_taskGroup = v3;

  [(HDSynchronousTaskGroup *)self->_taskGroup setDelegate:self];
  v5 = [(HDCloudSyncOperation *)self configuration];
  v6 = [v5 computedState];
  v7 = [v6 pushTargets];
  v8 = [v7 count];

  v194 = self;
  if (!v8)
  {
    v176 = *MEMORY[0x277D85DE8];

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
    return;
  }

  v9 = [(HDCloudSyncOperation *)self configuration];
  v10 = [v9 repository];
  v11 = [v10 syncIdentityManager];
  v12 = [v11 currentSyncIdentity];
  v13 = [v12 identity];

  v14 = [(HDCloudSyncOperation *)self configuration];
  v15 = [v14 computedState];
  v16 = [v15 targets];
  v229[0] = MEMORY[0x277D85DD0];
  v229[1] = 3221225472;
  v229[2] = __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke;
  v229[3] = &unk_2786210A0;
  v229[4] = self;
  v17 = v13;
  v230 = v17;
  v18 = [v16 hk_filter:v229];

  v19 = [(HDCloudSyncOperation *)self configuration];
  v20 = [v19 computedState];
  v21 = [v20 targets];
  v227[0] = MEMORY[0x277D85DD0];
  v227[1] = 3221225472;
  v227[2] = __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke_2;
  v227[3] = &unk_2786210A0;
  v227[4] = self;
  v183 = v17;
  v228 = v183;
  v184 = [v21 hk_filter:v227];

  if (![v18 count] && !objc_msgSend(v184, "count"))
  {
    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
    goto LABEL_106;
  }

  v182 = v18;
  v22 = v18;
  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v253 = 0u;
  v254 = 0u;
  v255 = 0u;
  v256 = 0u;
  obj = v22;
  v25 = [obj countByEnumeratingWithState:&v253 objects:buf count:16];
  if (!v25)
  {
    goto LABEL_20;
  }

  v26 = v25;
  v27 = *v254;
  v198 = v24;
  do
  {
    for (i = 0; i != v26; ++i)
    {
      if (*v254 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v29 = *(*(&v253 + 1) + 8 * i);
      v30 = [v29 storeRecord];
      v31 = [v30 syncIdentity];
      v32 = [v23 objectForKeyedSubscript:v31];

      v33 = [v29 storeRecord];
      v34 = [v33 syncIdentity];
      v35 = [v24 objectForKeyedSubscript:v34];

      if (v32)
      {
        if (v35)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v42 = [v29 storeRecord];
        v43 = [v42 syncIdentity];
        [v23 setObject:v32 forKeyedSubscript:v43];

        if (v35)
        {
          goto LABEL_11;
        }
      }

      v35 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v44 = [v29 storeRecord];
      v45 = [v44 syncIdentity];
      [v24 setObject:v35 forKeyedSubscript:v45];

LABEL_11:
      v36 = [v29 storeRecord];
      v37 = [v36 activeSequenceHeaderRecord];

      if (v37)
      {
        v38 = [v37 includedSyncIdentities];
        v39 = [v38 allObjects];
        [v32 addObjectsFromArray:v39];

        v40 = [v37 includedIdentifiers];
        v41 = [v40 allObjects];
        [v35 addObjectsFromArray:v41];
      }

      else
      {
        v46 = [v29 storeRecord];
        v40 = [v46 currentSequenceHeaderRecord];

        if (!v40)
        {
          goto LABEL_18;
        }

        v47 = [v40 includedSyncIdentities];
        [v47 allObjects];
        v48 = v26;
        v49 = v27;
        v51 = v50 = v23;
        [v32 addObjectsFromArray:v51];

        v41 = [v40 includedIdentifiers];
        v52 = [v41 allObjects];
        [v35 addObjectsFromArray:v52];

        v23 = v50;
        v27 = v49;
        v26 = v48;
        v24 = v198;
      }

LABEL_18:
    }

    v26 = [obj countByEnumeratingWithState:&v253 objects:buf count:16];
  }

  while (v26);
LABEL_20:

  v53 = v184;
  v54 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v253 = 0u;
  v254 = 0u;
  v255 = 0u;
  v256 = 0u;
  v192 = v53;
  v55 = [v192 countByEnumeratingWithState:&v253 objects:buf count:16];
  if (!v55)
  {
    goto LABEL_34;
  }

  v56 = v55;
  v57 = *v254;
  while (2)
  {
    v58 = 0;
    while (2)
    {
      if (*v254 != v57)
      {
        objc_enumerationMutation(v192);
      }

      v59 = *(*(&v253 + 1) + 8 * v58);
      v60 = [v59 storeRecord];
      v61 = [v60 ownerIdentifier];
      v62 = [v54 objectForKeyedSubscript:v61];

      if (!v62)
      {
        v62 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v63 = [v59 storeRecord];
        v64 = [v63 ownerIdentifier];
        [v54 setObject:v62 forKeyedSubscript:v64];
      }

      v65 = [v59 storeRecord];
      v66 = [v65 activeSequenceHeaderRecord];

      if (v66)
      {
        v67 = [v66 includedIdentifiers];
        v68 = [v67 allObjects];
        [v62 addObjectsFromArray:v68];
        goto LABEL_31;
      }

      v69 = [v59 storeRecord];
      v67 = [v69 currentSequenceHeaderRecord];

      if (v67)
      {
        v68 = [v67 includedIdentifiers];
        v70 = [v68 allObjects];
        [v62 addObjectsFromArray:v70];

LABEL_31:
      }

      if (v56 != ++v58)
      {
        continue;
      }

      break;
    }

    v56 = [v192 countByEnumeratingWithState:&v253 objects:buf count:16];
    if (v56)
    {
      continue;
    }

    break;
  }

LABEL_34:

  _HKInitializeLogging();
  v71 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v72 = v71;
    v73 = [v54 count];
    v74 = [v23 count];
    *buf = 138543874;
    v258 = v194;
    v259 = 2048;
    *v260 = v73;
    *&v260[8] = 2048;
    *&v260[10] = v74;
    _os_log_impl(&dword_228986000, v72, OS_LOG_TYPE_DEFAULT, "%{public}@: Considering finishing takeover for %ld owners and %ld identities:", buf, 0x20u);
  }

  v225 = 0u;
  v226 = 0u;
  v223 = 0u;
  v224 = 0u;
  v199 = v23;
  v75 = [v199 countByEnumeratingWithState:&v223 objects:v252 count:16];
  if (v75)
  {
    v76 = v75;
    v77 = 0;
    v78 = *v224;
    do
    {
      v79 = 0;
      v191 = v76;
      do
      {
        if (*v224 != v78)
        {
          objc_enumerationMutation(v199);
        }

        v80 = *(*(&v223 + 1) + 8 * v79);
        _HKInitializeLogging();
        v81 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v82 = v81;
          v83 = [v199 objectForKeyedSubscript:v80];
          v84 = [v83 allObjects];
          v85 = [v84 componentsJoinedByString:{@", "}];
          *buf = 138544130;
          v258 = v194;
          v259 = 1024;
          *v260 = v77;
          *&v260[4] = 2112;
          *&v260[6] = v80;
          *&v260[14] = 2112;
          *&v260[16] = v85;
          _os_log_impl(&dword_228986000, v82, OS_LOG_TYPE_DEFAULT, "%{public}@: %d. %@ (%@)", buf, 0x26u);

          ++v77;
          v76 = v191;
        }

        ++v79;
      }

      while (v76 != v79);
      v76 = [v199 countByEnumeratingWithState:&v223 objects:v252 count:16];
    }

    while (v76);
  }

  v221 = 0u;
  v222 = 0u;
  v219 = 0u;
  v220 = 0u;
  v86 = v54;
  v87 = [v86 countByEnumeratingWithState:&v219 objects:v251 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = 0;
    v90 = *v220;
    do
    {
      for (j = 0; j != v88; ++j)
      {
        if (*v220 != v90)
        {
          objc_enumerationMutation(v86);
        }

        v92 = *(*(&v219 + 1) + 8 * j);
        _HKInitializeLogging();
        v93 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v94 = v89 + 1;
          v95 = v93;
          v96 = [v86 objectForKeyedSubscript:v92];
          v97 = [v96 allObjects];
          v98 = [v97 componentsJoinedByString:{@", "}];
          v99 = v89;
          v100 = v90;
          v101 = v86;
          v102 = v98;
          *buf = 138544130;
          v258 = v194;
          v259 = 1024;
          *v260 = v99;
          *&v260[4] = 2112;
          *&v260[6] = v92;
          *&v260[14] = 2112;
          *&v260[16] = v98;
          _os_log_impl(&dword_228986000, v95, OS_LOG_TYPE_DEFAULT, "%{public}@: %d. %@ (%@)", buf, 0x26u);

          v86 = v101;
          v90 = v100;

          v89 = v94;
        }
      }

      v88 = [v86 countByEnumeratingWithState:&v219 objects:v251 count:16];
    }

    while (v88);
  }

  v103 = [v199 allKeys];
  v216[0] = MEMORY[0x277D85DD0];
  v216[1] = 3221225472;
  v216[2] = __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke_297;
  v216[3] = &unk_2786210C8;
  v181 = v199;
  v217 = v181;
  v218 = v194;
  v104 = [v103 hk_mapToSet:v216];

  v105 = [v86 allKeys];
  v213[0] = MEMORY[0x277D85DD0];
  v213[1] = 3221225472;
  v213[2] = __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke_2_299;
  v213[3] = &unk_2786210F0;
  v106 = v86;
  v214 = v106;
  v215 = v194;
  v107 = [v105 hk_mapToSet:v213];

  if ([v104 count] || objc_msgSend(v107, "count"))
  {
    v179 = v106;
    v180 = v104;
    v211[0] = MEMORY[0x277D85DD0];
    v211[1] = 3221225472;
    v211[2] = __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke_301;
    v211[3] = &unk_278614BF0;
    v212 = v104;
    v108 = [obj hk_filter:v211];
    v209[0] = MEMORY[0x277D85DD0];
    v209[1] = 3221225472;
    v209[2] = __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke_2_302;
    v209[3] = &unk_278614BF0;
    v210 = v107;
    v109 = [v192 hk_filter:v209];
    _HKInitializeLogging();
    v110 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v111 = v110;
      v112 = [v108 count];
      v113 = [v109 count];
      *buf = 138543874;
      v258 = v194;
      v259 = 2048;
      *v260 = v112;
      *&v260[8] = 2048;
      *&v260[10] = v113;
      _os_log_impl(&dword_228986000, v111, OS_LOG_TYPE_DEFAULT, "%{public}@: Proceeding with takeover (Deletion) for %ld owners and %ld identities:", buf, 0x20u);
    }

    obja = v109;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v187 = v108;
    v114 = [v187 countByEnumeratingWithState:&v205 objects:v250 count:16];
    v178 = v107;
    if (v114)
    {
      v115 = v114;
      v116 = 0;
      v117 = *v206;
      do
      {
        for (k = 0; k != v115; ++k)
        {
          if (*v206 != v117)
          {
            objc_enumerationMutation(v187);
          }

          v119 = *(*(&v205 + 1) + 8 * k);
          _HKInitializeLogging();
          v120 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v121 = v120;
            v122 = [v119 storeRecord];
            v123 = [v122 syncIdentity];
            *buf = 138543874;
            v258 = v194;
            v259 = 1024;
            *v260 = v116;
            *&v260[4] = 2112;
            *&v260[6] = v123;
            _os_log_impl(&dword_228986000, v121, OS_LOG_TYPE_DEFAULT, "%{public}@: %d. %@", buf, 0x1Cu);

            ++v116;
          }
        }

        v115 = [v187 countByEnumeratingWithState:&v205 objects:v250 count:16];
      }

      while (v115);
    }

    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v186 = obja;
    v124 = [v186 countByEnumeratingWithState:&v201 objects:v249 count:16];
    if (v124)
    {
      v125 = v124;
      v126 = 0;
      v127 = *v202;
      do
      {
        for (m = 0; m != v125; ++m)
        {
          if (*v202 != v127)
          {
            objc_enumerationMutation(v186);
          }

          v129 = *(*(&v201 + 1) + 8 * m);
          _HKInitializeLogging();
          v130 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
          {
            v131 = v130;
            v132 = [v129 storeRecord];
            v133 = [v132 ownerIdentifier];
            *buf = 138543874;
            v258 = v194;
            v259 = 1024;
            *v260 = v126;
            *&v260[4] = 2112;
            *&v260[6] = v133;
            _os_log_impl(&dword_228986000, v131, OS_LOG_TYPE_DEFAULT, "%{public}@: %d. %@", buf, 0x1Cu);

            ++v126;
          }
        }

        v125 = [v186 countByEnumeratingWithState:&v201 objects:v249 count:16];
      }

      while (v125);
    }

    v189 = [v187 arrayByAddingObjectsFromArray:v186];
    v134 = v194;
    [(HDSynchronousTaskGroup *)v194->_taskGroup beginTask];
    v235 = 0u;
    v236 = 0u;
    v237 = 0u;
    v238 = 0u;
    v135 = [(HDCloudSyncOperation *)v194 configuration];
    v136 = [v135 repository];
    v137 = [v136 allCKContainers];

    v185 = v137;
    v190 = [v137 countByEnumeratingWithState:&v235 objects:buf count:16];
    if (v190)
    {
      v188 = *v236;
      do
      {
        v138 = 0;
        do
        {
          if (*v236 != v188)
          {
            objc_enumerationMutation(v185);
          }

          v193 = v138;
          v139 = *(*(&v235 + 1) + 8 * v138);
          v200 = objc_alloc_init(MEMORY[0x277CBEB18]);
          objb = objc_alloc_init(MEMORY[0x277CBEB18]);
          v231 = 0u;
          v232 = 0u;
          v233 = 0u;
          v234 = 0u;
          v140 = v189;
          v141 = [v140 countByEnumeratingWithState:&v231 objects:&v253 count:16];
          if (v141)
          {
            v142 = v141;
            v143 = *v232;
            do
            {
              for (n = 0; n != v142; ++n)
              {
                if (*v232 != v143)
                {
                  objc_enumerationMutation(v140);
                }

                v145 = *(*(&v231 + 1) + 8 * n);
                v146 = [v145 container];
                v147 = [v146 containerIdentifier];
                v148 = [v139 containerIdentifier];
                v149 = [v147 isEqualToString:v148];

                if (v149)
                {
                  v150 = [v145 zoneIdentifier];
                  v151 = [v150 type];

                  v152 = [v145 zoneIdentifier];
                  v153 = v152;
                  if (v151 == 1)
                  {
                    v154 = [v152 zoneIdentifier];
                    v155 = v200;
                  }

                  else
                  {
                    v156 = [v152 type];

                    if (v156 != 2)
                    {
                      continue;
                    }

                    v153 = [v145 storeRecord];
                    v154 = [v153 recordID];
                    v155 = objb;
                  }

                  [v155 addObject:v154];
                }
              }

              v142 = [v140 countByEnumeratingWithState:&v231 objects:&v253 count:16];
            }

            while (v142);
          }

          v157 = v200;
          v158 = v139;
          v134 = v194;
          if ([v157 count])
          {
            [(HDSynchronousTaskGroup *)v194->_taskGroup beginTask];
            _HKInitializeLogging();
            v159 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v160 = v159;
              v161 = [v157 count];
              v162 = [v157 componentsJoinedByString:{@", "}];
              *v261 = 138543874;
              v262 = v194;
              v263 = 2048;
              v264 = v161;
              v265 = 2114;
              v266 = v162;
              _os_log_impl(&dword_228986000, v160, OS_LOG_TYPE_DEFAULT, "%{public}@: Deleting %ld zones: %{public}@", v261, 0x20u);
            }

            v163 = [HDCloudSyncModifyRecordZonesOperation alloc];
            v164 = [(HDCloudSyncOperation *)v194 configuration];
            v165 = [(HDCloudSyncModifyRecordZonesOperation *)v163 initWithConfiguration:v164 container:v158 recordZonesToSave:0 recordZoneIDsToDelete:v157];

            v244 = MEMORY[0x277D85DD0];
            v245 = 3221225472;
            v246 = __66__HDCloudSyncFinishOwnerTakeoverOperation__deleteZones_container___block_invoke;
            v247 = &unk_278613060;
            v248 = v194;
            [(HDCloudSyncOperation *)v165 setOnSuccess:&v244];
            v239 = MEMORY[0x277D85DD0];
            v240 = 3221225472;
            v241 = __66__HDCloudSyncFinishOwnerTakeoverOperation__deleteZones_container___block_invoke_2;
            v242 = &unk_278613088;
            v243 = v194;
            [(HDCloudSyncOperation *)v165 setOnError:&v239];
            [(HDCloudSyncOperation *)v165 start];
          }

          v166 = objb;
          v167 = v158;
          if ([v166 count])
          {
            [(HDSynchronousTaskGroup *)v194->_taskGroup beginTask];
            _HKInitializeLogging();
            v168 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
            {
              v169 = v168;
              v170 = [v166 count];
              v171 = [v166 componentsJoinedByString:{@", "}];
              *v261 = 138543874;
              v262 = v194;
              v263 = 2048;
              v264 = v170;
              v265 = 2114;
              v266 = v171;
              _os_log_impl(&dword_228986000, v169, OS_LOG_TYPE_DEFAULT, "%{public}@: Deleting %ld records: %{public}@", v261, 0x20u);
            }

            v172 = [HDCloudSyncModifyRecordsOperation alloc];
            v173 = [(HDCloudSyncOperation *)v194 configuration];
            v174 = [(HDCloudSyncModifyRecordsOperation *)v172 initWithConfiguration:v173 container:v167 recordsToSave:0 recordIDsToDelete:v166];

            v244 = MEMORY[0x277D85DD0];
            v245 = 3221225472;
            v246 = __68__HDCloudSyncFinishOwnerTakeoverOperation__deleteRecords_container___block_invoke;
            v247 = &unk_278613060;
            v248 = v194;
            [(HDCloudSyncOperation *)v174 setOnSuccess:&v244];
            v239 = MEMORY[0x277D85DD0];
            v240 = 3221225472;
            v241 = __68__HDCloudSyncFinishOwnerTakeoverOperation__deleteRecords_container___block_invoke_2;
            v242 = &unk_278613088;
            v243 = v194;
            [(HDCloudSyncOperation *)v174 setOnError:&v239];
            [(HDCloudSyncOperation *)v174 start];
          }

          v138 = v193 + 1;
        }

        while (v193 + 1 != v190);
        v190 = [v185 countByEnumeratingWithState:&v235 objects:buf count:16];
      }

      while (v190);
    }

    [(HDSynchronousTaskGroup *)v134->_taskGroup finishTask];
    v106 = v179;
    v104 = v180;
    v107 = v178;
  }

  else
  {
    _HKInitializeLogging();
    v177 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v258 = v194;
      _os_log_impl(&dword_228986000, v177, OS_LOG_TYPE_DEFAULT, "%{public}@: Unable to finish takeover; we have not pushed all relevant sync identities or store identifiers.", buf, 0xCu);
    }

    [(HDCloudSyncOperation *)v194 finishWithSuccess:1 error:0];
  }

  v18 = v182;
LABEL_106:

  v175 = *MEMORY[0x277D85DE8];
}

uint64_t __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) configuration];
  v5 = [v4 repository];
  v6 = [v3 container];
  v7 = [v5 cachedOwnerIdentifierForContainer:v6];

  v8 = [v3 storeRecord];
  v9 = [v8 syncIdentity];
  if (v9)
  {
    v10 = [v3 storeRecord];
    v11 = [v10 pendingOwner];
    v12 = [v7 string];
    if ([v11 isEqualToString:v12])
    {
      v13 = 1;
    }

    else
    {
      v14 = [v3 storeRecord];
      v15 = [v14 pendingSyncIdentity];
      v13 = [v15 isEqual:*(a1 + 40)];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) configuration];
  v5 = [v4 repository];
  v6 = [v3 container];
  v7 = [v5 cachedOwnerIdentifierForContainer:v6];

  v8 = [v3 storeRecord];
  v9 = [v8 syncIdentity];
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [v3 storeRecord];
    v12 = [v11 pendingOwner];
    v13 = [v7 string];
    if ([v12 isEqualToString:v13])
    {
      v10 = 1;
    }

    else
    {
      v14 = [v3 storeRecord];
      v15 = [v14 pendingSyncIdentity];
      v10 = [v15 isEqual:*(a1 + 40)];
    }
  }

  return v10;
}

id __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke_297(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [*(a1 + 40) configuration];
  v6 = [v5 computedState];
  v7 = [v6 pushTargets];

  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v19 + 1) + 8 * i) storeRecord];
        v13 = [v12 activeSequenceHeaderRecord];
        v14 = [v13 includedSyncIdentities];

        if (v14)
        {
          v15 = [v4 isSubsetOfSet:v14];

          if (v15)
          {
            continue;
          }
        }

        v16 = 0;
        goto LABEL_12;
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = v3;
LABEL_12:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke_2_299(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [*(a1 + 40) configuration];
  v6 = [v5 computedState];
  v7 = [v6 pushTargets];

  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v19 + 1) + 8 * i) storeRecord];
        v13 = [v12 activeSequenceHeaderRecord];
        v14 = [v13 includedIdentifiers];

        if (v14)
        {
          v15 = [v4 isSubsetOfSet:v14];

          if (v15)
          {
            continue;
          }
        }

        v16 = 0;
        goto LABEL_12;
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = v3;
LABEL_12:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke_301(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 storeRecord];
  v4 = [v3 syncIdentity];
  v5 = [v2 containsObject:v4];

  return v5;
}

uint64_t __47__HDCloudSyncFinishOwnerTakeoverOperation_main__block_invoke_2_302(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 storeRecord];
  v4 = [v3 ownerIdentifier];
  v5 = [v2 containsObject:v4];

  return v5;
}

void __66__HDCloudSyncFinishOwnerTakeoverOperation__deleteZones_container___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete zones to during takeover completion: %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];

  v6 = *MEMORY[0x277D85DE8];
}

void __68__HDCloudSyncFinishOwnerTakeoverOperation__deleteRecords_container___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 2114;
    v11 = v4;
    _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete records to during takeover completion: %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:0 error:v4];

  v6 = *MEMORY[0x277D85DE8];
}

@end