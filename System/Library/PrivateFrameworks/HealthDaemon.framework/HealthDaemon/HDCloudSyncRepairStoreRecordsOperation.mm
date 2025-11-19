@interface HDCloudSyncRepairStoreRecordsOperation
- (void)_repairRecordsForContainer:(void *)a3 database:;
- (void)_repairStoreRecordWithRandomOwnerIdentifier:(uint64_t)a1;
- (void)main;
@end

@implementation HDCloudSyncRepairStoreRecordsOperation

- (void)main
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D10BB0]);
  taskGroup = self->_taskGroup;
  self->_taskGroup = v3;

  [(HDSynchronousTaskGroup *)self->_taskGroup setDelegate:self];
  [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(HDCloudSyncOperation *)self configuration];
  v6 = [v5 repository];
  v7 = [v6 allCKContainers];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 privateCloudDatabase];
        [(HDCloudSyncRepairStoreRecordsOperation *)self _repairRecordsForContainer:v12 database:v13];

        v14 = [v12 sharedCloudDatabase];
        [(HDCloudSyncRepairStoreRecordsOperation *)self _repairRecordsForContainer:v12 database:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_repairRecordsForContainer:(void *)a3 database:
{
  v155 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = [a1 configuration];
    v9 = [v8 cachedCloudState];
    v10 = [v5 containerIdentifier];
    v126 = 0;
    v11 = [v9 zoneIdentifiersForContainerIdentifier:v10 databaseScope:objc_msgSend(v6 error:{"databaseScope"), &v126}];
    v12 = v126;

    v103 = v12;
    v97 = v11;
    if (!v11 && v12)
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC328];
      if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
LABEL_74:

        goto LABEL_75;
      }

      v14 = v13;
      v15 = [v5 containerIdentifier];
      [v6 databaseScope];
      v16 = CKDatabaseScopeString();
      *buf = 138544130;
      v148 = a1;
      v149 = 2114;
      v150 = v15;
      v151 = 2114;
      v152 = v16;
      v153 = 2114;
      v154 = v12;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get zone identifiers for container %{public}@, database %{public}@, %{public}@", buf, 0x2Au);
      goto LABEL_77;
    }

    if (!v11)
    {
      _HKInitializeLogging();
      v94 = *MEMORY[0x277CCC328];
      if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_74;
      }

      v14 = v94;
      v15 = [v5 containerIdentifier];
      [v6 databaseScope];
      v16 = CKDatabaseScopeString();
      *buf = 138543874;
      v148 = a1;
      v149 = 2114;
      v150 = v15;
      v151 = 2114;
      v152 = v16;
      _os_log_debug_impl(&dword_228986000, v14, OS_LOG_TYPE_DEBUG, "%{public}@ No zones cached for container %{public}@, database %{public}@", buf, 0x20u);
LABEL_77:

LABEL_72:
      goto LABEL_74;
    }

    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    obj = v11;
    v17 = v5;
    v98 = v7;
    v99 = v5;
    v96 = v6;
    v104 = [obj countByEnumeratingWithState:&v122 objects:v133 count:16];
    if (!v104)
    {
LABEL_57:

      v14 = v7;
      v5 = v17;
      v71 = v17;
      v6 = v96;
      v72 = v96;
      if (v14 && [v14 count])
      {
        _HKInitializeLogging();
        v73 = MEMORY[0x277CCC328];
        v74 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
        {
          v75 = v74;
          v76 = [v14 count];
          v77 = [v71 containerIdentifier];
          v78 = HDCKDatabaseScopeToString([v72 databaseScope]);
          *buf = 138544130;
          v148 = a1;
          v149 = 2048;
          v150 = v76;
          v151 = 2114;
          v152 = v77;
          v153 = 2114;
          v154 = v78;
          _os_log_impl(&dword_228986000, v75, OS_LOG_TYPE_DEFAULT, "%{public}@: Saving %ld repaired records in %{public}@:%{public}@", buf, 0x2Au);
        }

        v116 = v72;
        v118 = v71;
        v79 = a1;
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v120 = v14;
        v80 = v14;
        v81 = [v80 countByEnumeratingWithState:&v134 objects:buf count:16];
        if (v81)
        {
          v82 = v81;
          v83 = *v135;
          do
          {
            for (i = 0; i != v82; ++i)
            {
              if (*v135 != v83)
              {
                objc_enumerationMutation(v80);
              }

              v85 = *(*(&v134 + 1) + 8 * i);
              _HKInitializeLogging();
              v86 = *v73;
              if (os_log_type_enabled(*v73, OS_LOG_TYPE_DEFAULT))
              {
                v87 = v86;
                v88 = [v85 recordID];
                *v138 = 138543618;
                *&v138[4] = v79;
                *&v138[12] = 2114;
                *&v138[14] = v88;
                _os_log_impl(&dword_228986000, v87, OS_LOG_TYPE_DEFAULT, "%{public}@: Repaired %{public}@", v138, 0x16u);
              }
            }

            v82 = [v80 countByEnumeratingWithState:&v134 objects:buf count:16];
          }

          while (v82);
        }

        v89 = v79;
        [v79[13] beginTask];
        v90 = [v80 hk_map:&__block_literal_global_175];
        v91 = [HDCloudSyncModifyRecordsOperation alloc];
        v92 = [v79 configuration];
        v71 = v118;
        v93 = [(HDCloudSyncModifyRecordsOperation *)v91 initWithConfiguration:v92 container:v118 recordsToSave:v90 recordIDsToDelete:0];

        *v138 = MEMORY[0x277D85DD0];
        *&v138[8] = 3221225472;
        *&v138[16] = __82__HDCloudSyncRepairStoreRecordsOperation__saveRepairedRecords_container_database___block_invoke_2;
        *&v138[24] = &unk_278613088;
        *&v139 = v89;
        [(HDCloudSyncOperation *)v93 setOnError:v138];
        *&v127 = MEMORY[0x277D85DD0];
        *(&v127 + 1) = 3221225472;
        *&v128 = __82__HDCloudSyncRepairStoreRecordsOperation__saveRepairedRecords_container_database___block_invoke_3;
        *(&v128 + 1) = &unk_278613060;
        *&v129 = v89;
        [(HDCloudSyncOperation *)v93 setOnSuccess:&v127];
        [(HDCloudSyncOperation *)v93 start];

        v7 = v98;
        v5 = v99;
        v6 = v96;
        v12 = v103;
        v14 = v120;
        v72 = v116;
      }

      goto LABEL_72;
    }

    v102 = *v123;
    v18 = MEMORY[0x277CCC328];
    v107 = a1;
LABEL_9:
    v19 = 0;
    while (1)
    {
      if (*v123 != v102)
      {
        objc_enumerationMutation(obj);
      }

      v106 = v19;
      v20 = *(*(&v122 + 1) + 8 * v19);
      v109 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v21 = [HDCloudSyncCachedZone alloc];
      v22 = [a1 configuration];
      v23 = [v22 repository];
      v24 = [a1 configuration];
      v25 = [v24 accessibilityAssertion];
      v110 = v20;
      v26 = [(HDCloudSyncCachedZone *)v21 initForZoneIdentifier:v20 repository:v23 accessibilityAssertion:v25];

      v27 = v26;
      v28 = objc_opt_class();
      v131 = 0;
      v29 = [v26 recordsForClass:v28 error:&v131];
      v30 = v131;
      v31 = v29 || v30 == 0;
      v105 = v30;
      if (v31)
      {
        break;
      }

      v66 = v30;
      _HKInitializeLogging();
      v67 = *v18;
      if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        v69 = v67;
        v70 = [v27 zoneIdentifier];
        *buf = 138543874;
        v148 = a1;
        v149 = 2114;
        v150 = v70;
        v151 = 2114;
        v152 = v66;
        _os_log_error_impl(&dword_228986000, v69, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get store records for %{public}@, %{public}@", buf, 0x20u);
      }

LABEL_54:
      v64 = 0;
      v65 = v106;
      v34 = v109;
      v33 = v110;
LABEL_55:

      [v7 addObjectsFromArray:v64];
      v19 = v65 + 1;
      v12 = v103;
      if (v19 == v104)
      {
        v104 = [obj countByEnumeratingWithState:&v122 objects:v133 count:16];
        if (!v104)
        {
          goto LABEL_57;
        }

        goto LABEL_9;
      }
    }

    if (!v29)
    {
      goto LABEL_54;
    }

    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v101 = v29;
    v114 = v29;
    v32 = 0x27860D000uLL;
    v34 = v109;
    v33 = v110;
    v119 = [v114 countByEnumeratingWithState:&v127 objects:&v134 count:16];
    if (!v119)
    {
      goto LABEL_51;
    }

    v117 = *v128;
    v108 = v26;
LABEL_20:
    v35 = 0;
    while (1)
    {
      if (*v128 != v117)
      {
        objc_enumerationMutation(v114);
      }

      v36 = *(*(&v127 + 1) + 8 * v35);
      v37 = [v36 ownerIdentifier];

      if (v37)
      {
        goto LABEL_49;
      }

      if ([v33 type] != 2)
      {
        break;
      }

      v121 = v36;
      v38 = v27;
      v39 = *(v32 + 3968);
      v40 = objc_opt_class();
      v132 = 0;
      v113 = v38;
      v41 = [v38 recordsForClass:v40 error:&v132];
      v42 = v132;
      v112 = v42;
      if (v41 || !v42)
      {
        if (v41)
        {
          v111 = v41;
          if ([v41 count] >= 2)
          {
            _HKInitializeLogging();
            v46 = *v18;
            if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
            {
              v62 = v46;
              v63 = [v113 zoneIdentifier];
              *v141 = 138543618;
              v142 = a1;
              v143 = 2114;
              v144 = v63;
              _os_log_error_impl(&dword_228986000, v62, OS_LOG_TYPE_ERROR, "%{public}@ Retrieved multiple cached registry records for %{public}@,", v141, 0x16u);
            }
          }

          v47 = [v41 firstObject];
          v48 = [v47 ownerIdentifiers];
          memset(v138, 0, sizeof(v138));
          v139 = 0u;
          v140 = 0u;
          v115 = v48;
          v49 = [v115 countByEnumeratingWithState:v138 objects:buf count:16];
          if (v49)
          {
            v50 = v49;
            v51 = **&v138[16];
            while (2)
            {
              for (j = 0; j != v50; ++j)
              {
                if (**&v138[16] != v51)
                {
                  objc_enumerationMutation(v115);
                }

                v53 = *(*&v138[8] + 8 * j);
                v54 = [v47 storeIdentifiersForOwnerIdentifier:v53];
                v55 = [v121 storeIdentifier];
                v56 = [v54 containsObject:v55];

                if (v56)
                {
                  _HKInitializeLogging();
                  v18 = MEMORY[0x277CCC328];
                  v59 = *MEMORY[0x277CCC328];
                  a1 = v107;
                  v58 = v121;
                  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
                  {
                    v60 = v59;
                    v61 = [v121 storeIdentifier];
                    *v141 = 138543874;
                    v142 = v107;
                    v143 = 2114;
                    v144 = v61;
                    v145 = 2114;
                    v146 = v53;
                    _os_log_impl(&dword_228986000, v60, OS_LOG_TYPE_DEFAULT, "%{public}@: Found broken store identifier %{public}@ in set for owner %{public}@; repairing.", v141, 0x20u);
                  }

                  [v121 repairOwnerIdentifier:v53];
                  [v121 setRepaired:1];
                  v57 = v115;

                  goto LABEL_47;
                }
              }

              v50 = [v115 countByEnumeratingWithState:v138 objects:buf count:16];
              if (v50)
              {
                continue;
              }

              break;
            }
          }

          v57 = v115;

          a1 = v107;
          v58 = v121;
          [(HDCloudSyncRepairStoreRecordsOperation *)v107 _repairStoreRecordWithRandomOwnerIdentifier:v121];
          v18 = MEMORY[0x277CCC328];
LABEL_47:

          v32 = 0x27860D000;
          v34 = v109;
          v33 = v110;
          v27 = v108;
          goto LABEL_48;
        }
      }

      else
      {
        _HKInitializeLogging();
        v43 = *v18;
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          v44 = v43;
          v45 = [v113 zoneIdentifier];
          *v141 = 138543874;
          v142 = a1;
          v143 = 2114;
          v144 = v45;
          v145 = 2114;
          v146 = v112;
          _os_log_error_impl(&dword_228986000, v44, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get registry records for %{public}@, %{public}@", v141, 0x20u);

          v27 = v108;
        }
      }

LABEL_49:
      if (++v35 == v119)
      {
        v119 = [v114 countByEnumeratingWithState:&v127 objects:&v134 count:16];
        if (!v119)
        {
LABEL_51:

          v64 = v34;
          v7 = v98;
          v17 = v99;
          v65 = v106;
          v29 = v101;
          goto LABEL_55;
        }

        goto LABEL_20;
      }
    }

    [(HDCloudSyncRepairStoreRecordsOperation *)a1 _repairStoreRecordWithRandomOwnerIdentifier:v36];
LABEL_48:
    [v34 addObject:{v36, v96}];
    goto LABEL_49;
  }

LABEL_75:

  v95 = *MEMORY[0x277D85DE8];
}

- (void)_repairStoreRecordWithRandomOwnerIdentifier:(uint64_t)a1
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 storeIdentifier];
    *buf = 138543618;
    v17 = a1;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Repairing broken store record with identifier %{public}@ by generating random owner identifier.", buf, 0x16u);
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [v8 UUIDString];
  v10 = [MEMORY[0x277CCAD78] UUID];
  v11 = [v10 UUIDString];
  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v12 UUIDString];
  v14 = [v7 stringWithFormat:@"%@:%@:%@", v9, v11, v13];
  [v3 repairOwnerIdentifier:v14];

  [v3 setRepaired:1];
  v15 = *MEMORY[0x277D85DE8];
}

@end