@interface HDCloudSyncSynchronizeProfilesOperation
- (uint64_t)_synchronizeProfilesWithRegistryAndShareRecordsForContainer:(void *)container database:(void *)database error:;
- (void)main;
@end

@implementation HDCloudSyncSynchronizeProfilesOperation

- (void)main
{
  v37 = *MEMORY[0x277D85DE8];
  profile = [(HDCloudSyncOperation *)self profile];
  daemon = [profile daemon];
  behavior = [daemon behavior];
  supportsSecondaryProfiles = [behavior supportsSecondaryProfiles];

  if (supportsSecondaryProfiles)
  {
    v7 = objc_alloc_init(MEMORY[0x277D10BB0]);
    taskGroup = self->_taskGroup;
    self->_taskGroup = v7;

    [(HDSynchronousTaskGroup *)self->_taskGroup setDelegate:self];
    [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    configuration = [(HDCloudSyncOperation *)self configuration];
    repository = [configuration repository];
    allCKContainers = [repository allCKContainers];

    obj = allCKContainers;
    v12 = [allCKContainers countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v31;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
          privateCloudDatabase = [v17 privateCloudDatabase];
          v29 = v14;
          v19 = [(HDCloudSyncSynchronizeProfilesOperation *)self _synchronizeProfilesWithRegistryAndShareRecordsForContainer:v17 database:privateCloudDatabase error:&v29];
          v20 = v29;

          v21 = self->_taskGroup;
          if (v19)
          {
            [(HDSynchronousTaskGroup *)v21 finishTask];
          }

          else
          {
            [(HDSynchronousTaskGroup *)v21 failTaskWithError:v20];
          }

          [(HDSynchronousTaskGroup *)self->_taskGroup beginTask];
          sharedCloudDatabase = [v17 sharedCloudDatabase];
          v28 = v20;
          v23 = [(HDCloudSyncSynchronizeProfilesOperation *)self _synchronizeProfilesWithRegistryAndShareRecordsForContainer:v17 database:sharedCloudDatabase error:&v28];
          v14 = v28;

          v24 = self->_taskGroup;
          if (v23)
          {
            [(HDSynchronousTaskGroup *)v24 finishTask];
          }

          else
          {
            [(HDSynchronousTaskGroup *)v24 failTaskWithError:v14];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    [(HDSynchronousTaskGroup *)self->_taskGroup finishTask];
  }

  else
  {
    _HKInitializeLogging();
    v25 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Device ineligble for synchronizing additional profiles", buf, 0xCu);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_synchronizeProfilesWithRegistryAndShareRecordsForContainer:(void *)container database:(void *)database error:
{
  v198 = *MEMORY[0x277D85DE8];
  v6 = a2;
  containerCopy = container;
  if (!self)
  {
    databaseCopy = 0;
    goto LABEL_150;
  }

  v149 = v6;
  v8 = v6;
  v9 = containerCopy;
  selfCopy = self;
  configuration = [self configuration];
  cachedCloudState = [configuration cachedCloudState];
  containerIdentifier = [v8 containerIdentifier];
  v188[0] = 0;
  v13 = [cachedCloudState zoneIdentifiersForContainerIdentifier:containerIdentifier databaseScope:objc_msgSend(v9 error:{"databaseScope"), v188}];
  v14 = v188[0];

  if (v13 || !v14)
  {
    if (!v13)
    {
      _HKInitializeLogging();
      v39 = *MEMORY[0x277CCC328];
      v6 = v149;
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEBUG))
      {
        v126 = v39;
        containerIdentifier2 = [v8 containerIdentifier];
        [v9 databaseScope];
        v128 = CKDatabaseScopeString();
        *buf = 138543874;
        *&buf[4] = selfCopy;
        *&buf[12] = 2114;
        *&buf[14] = containerIdentifier2;
        *&buf[22] = 2114;
        v190 = v128;
        _os_log_debug_impl(&dword_228986000, v126, OS_LOG_TYPE_DEBUG, "%{public}@ No zones cached for container %{public}@, database %{public}@", buf, 0x20u);

        v6 = v149;
      }

      v18 = 0;
      v17 = MEMORY[0x277CBEBF8];
      goto LABEL_10;
    }

    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __102__HDCloudSyncSynchronizeProfilesOperation__cachedZonesWithRegistryRecordsForContainer_database_error___block_invoke;
    v190 = &unk_27861EAE8;
    v191[0] = selfCopy;
    v17 = [v13 hk_map:buf];
    v18 = 0;
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v121 = v15;
      containerIdentifier3 = [v8 containerIdentifier];
      [v9 databaseScope];
      v123 = CKDatabaseScopeString();
      *buf = 138544130;
      *&buf[4] = selfCopy;
      *&buf[12] = 2114;
      *&buf[14] = containerIdentifier3;
      *&buf[22] = 2114;
      v190 = v123;
      LOWORD(v191[0]) = 2114;
      *(v191 + 2) = v14;
      _os_log_error_impl(&dword_228986000, v121, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get zone identifiers for container %{public}@, database %{public}@, %{public}@", buf, 0x2Au);
    }

    v16 = v14;
    v17 = 0;
    v18 = v14;
  }

  v6 = v149;
LABEL_10:

  v19 = v18;
  v148 = v17;
  if (!v17 && v19)
  {
    databaseCopy = database;
    v21 = v19;
    if (database)
    {
      databaseCopy = 0;
      *database = v19;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_149;
  }

  v144 = v19;
  if (![v17 count])
  {
    databaseCopy = 1;
    goto LABEL_148;
  }

  v22 = v17;
  v142 = v8;
  v141 = v9;
  v152 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  obj = v22;
  v23 = [obj countByEnumeratingWithState:&v176 objects:v188 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v26 = *v177;
    do
    {
      v27 = 0;
      v28 = v25;
      do
      {
        if (*v177 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v176 + 1) + 8 * v27);
        v30 = objc_opt_class();
        v175 = v28;
        v31 = [v29 recordsForClass:v30 error:&v175];
        v32 = v175;

        v28 = v32;
        if (v31)
        {
          v33 = 1;
        }

        else
        {
          v33 = v32 == 0;
        }

        if (!v33)
        {
          _HKInitializeLogging();
          v34 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v124 = v34;
            zoneIdentifier = [v29 zoneIdentifier];
            *buf = 138543874;
            *&buf[4] = selfCopy;
            *&buf[12] = 2114;
            *&buf[14] = zoneIdentifier;
            *&buf[22] = 2114;
            v190 = v32;
            _os_log_error_impl(&dword_228986000, v124, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get registry records for %{public}@, %{public}@", buf, 0x20u);
          }

          v6 = v149;
          v36 = obj;
          if (database)
          {
            v37 = v32;
            *database = v32;
            v38 = v32;
          }

          else
          {
            v38 = v32;
            _HKLogDroppedError();
          }

          buf[0] = 0;
          v57 = obj;
          goto LABEL_147;
        }

        if (v31)
        {
          [v152 addObjectsFromArray:v31];
        }

        ++v27;
      }

      while (v24 != v27);
      v25 = v32;
      v24 = [obj countByEnumeratingWithState:&v176 objects:v188 count:16];
    }

    while (v24);
  }

  else
  {
    v25 = 0;
  }

  v136 = v25;

  _HKInitializeLogging();
  v40 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v41 = v40;
    containerIdentifier4 = [v142 containerIdentifier];
    v43 = [v152 count];
    [v141 databaseScope];
    v44 = CKDatabaseScopeString();
    *buf = 138544130;
    *&buf[4] = selfCopy;
    *&buf[12] = 2114;
    *&buf[14] = containerIdentifier4;
    *&buf[22] = 2048;
    v190 = v43;
    LOWORD(v191[0]) = 2114;
    *(v191 + 2) = v44;
    _os_log_impl(&dword_228986000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: Fetched %ld records from cache %{public}@", buf, 0x2Au);
  }

  v146 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v45 = obj;
  v46 = [v45 countByEnumeratingWithState:&v171 objects:v187 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = 0;
    v49 = *v172;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v172 != v49)
        {
          objc_enumerationMutation(v45);
        }

        v51 = *(*(&v171 + 1) + 8 * i);
        v170 = v48;
        v52 = [v51 zoneShareWithError:&v170];
        v53 = v170;

        v153 = v53;
        if (v52)
        {
          v54 = 1;
        }

        else
        {
          v54 = v53 == 0;
        }

        if (!v54)
        {
          _HKInitializeLogging();
          v55 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v129 = v55;
            zoneIdentifier2 = [v51 zoneIdentifier];
            *buf = 138543874;
            *&buf[4] = selfCopy;
            *&buf[12] = 2114;
            *&buf[14] = zoneIdentifier2;
            *&buf[22] = 2114;
            v190 = v53;
            _os_log_error_impl(&dword_228986000, v129, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get share for %{public}@, %{public}@", buf, 0x20u);
          }

          v6 = v149;
          v36 = obj;
          if (database)
          {
            *database = v53;
          }

          else
          {
            _HKLogDroppedError();
          }

          buf[0] = 0;

          goto LABEL_146;
        }

        if (v52)
        {
          [v146 addObject:v52];
        }

        v48 = v53;
      }

      v47 = [v45 countByEnumeratingWithState:&v171 objects:v187 count:16];
      v48 = v53;
    }

    while (v47);
  }

  else
  {
    v48 = 0;
  }

  v153 = v48;

  _HKInitializeLogging();
  v58 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v59 = v58;
    containerIdentifier5 = [v142 containerIdentifier];
    v61 = [v146 count];
    [v141 databaseScope];
    v62 = CKDatabaseScopeString();
    *buf = 138544130;
    *&buf[4] = selfCopy;
    *&buf[12] = 2114;
    *&buf[14] = containerIdentifier5;
    *&buf[22] = 2048;
    v190 = v61;
    LOWORD(v191[0]) = 2114;
    *(v191 + 2) = v62;
    _os_log_impl(&dword_228986000, v59, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: Fetched %ld shares from cache %{public}@", buf, 0x2Au);
  }

  v63 = v152;
  v165 = v142;
  v164 = v141;
  v163 = [v146 hk_mapToDictionary:&__block_literal_global_117];
  v158 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v64 = v63;
  v134 = 1;
  v36 = obj;
  v159 = v64;
  v167 = [v64 countByEnumeratingWithState:&v180 objects:buf count:16];
  if (!v167)
  {
    v6 = v149;
    goto LABEL_144;
  }

  v157 = 0;
  v162 = *v181;
  *&v65 = 138543618;
  v133 = v65;
  do
  {
    for (j = 0; j != v167; ++j)
    {
      if (*v181 != v162)
      {
        objc_enumerationMutation(v159);
      }

      v67 = *(*(&v180 + 1) + 8 * j);
      recordID = [v67 recordID];
      zoneID = [recordID zoneID];
      v70 = [v163 objectForKeyedSubscript:zoneID];
      v71 = v67;
      v72 = v70;
      v73 = v165;
      v74 = v164;
      v169 = v74;
      if ([v71 deleted])
      {
        v75 = 0;
        v76 = 1;
        goto LABEL_130;
      }

      v161 = recordID;
      v168 = v73;
      v77 = containerCopy;
      recordID2 = [v71 recordID];
      zoneID2 = [recordID2 zoneID];
      v185 = 0;
      v80 = [zoneID2 hd_isUnifiedSyncZoneIDForSyncCircleIdentifier:&v185];
      v81 = v185;

      v166 = v81;
      if (v80 && (![v81 isEqualToString:@"PrimarySyncCircle"] || objc_msgSend(v74, "databaseScope") != 2))
      {
        containerCopy = v77;
        v73 = v168;
        if ([v74 databaseScope] == 2)
        {
          ownerProfileIdentifier = [v71 ownerProfileIdentifier];
          if (!ownerProfileIdentifier)
          {
            goto LABEL_82;
          }
        }

        else
        {
          ownerProfileIdentifier = [v71 sharedProfileIdentifier];
          if (!ownerProfileIdentifier)
          {
LABEL_82:
            ownerProfileIdentifier = [MEMORY[0x277CCD7C8] hd_profileIdentifierWithSyncCircleIdentifier:v81];
            if (ownerProfileIdentifier)
            {
              goto LABEL_83;
            }

            v75 = 0;
            v192[0] = 1;
LABEL_101:
            v36 = obj;
LABEL_128:
            v76 = v192[0];
            goto LABEL_129;
          }
        }

LABEL_83:
        v83 = ownerProfileIdentifier;
        type = [ownerProfileIdentifier type];
        if ((type - 1) >= 4 && type != 100)
        {
          v192[0] = 1;

          v75 = 0;
          goto LABEL_101;
        }

        v155 = zoneID;
        configuration2 = [selfCopy configuration];
        repository = [configuration2 repository];
        profile = [repository profile];
        daemon = [profile daemon];
        profileManager = [daemon profileManager];

        v90 = profileManager;
        v91 = [profileManager profileForIdentifier:v83];
        v156 = v83;
        if (v91)
        {
          v75 = 0;
          v192[0] = 1;
          containerCopy = v77;
          v36 = obj;
          v73 = v168;
          zoneID = v155;
LABEL_127:

          goto LABEL_128;
        }

        displayFirstName = [v71 displayFirstName];
        v93 = displayFirstName;
        if (displayFirstName)
        {
          v94 = displayFirstName;
        }

        else
        {
          v94 = @"Auxiliary Health Store";
        }

        displayLastName = [v71 displayLastName];
        v184 = 0;
        v150 = profileManager;
        v96 = [profileManager createProfileForIdentifier:v83 firstName:v94 lastName:displayLastName error:&v184];
        v151 = v184;

        _HKInitializeLogging();
        v97 = *MEMORY[0x277CCC328];
        v98 = *MEMORY[0x277CCC328];
        if (!v96)
        {
          containerCopy = v77;
          if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
          {
            *v192 = 138543874;
            v193 = selfCopy;
            v194 = 2114;
            v195 = v166;
            v196 = 2114;
            v197 = v151;
            _os_log_error_impl(&dword_228986000, v97, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create profile for sync circle identifier %{public}@: %{public}@", v192, 0x20u);
          }

          v108 = v151;
          v75 = v108;
          v36 = obj;
          v90 = profileManager;
          if (v108)
          {
            v109 = v108;
          }

          v192[0] = v75 == 0;
          goto LABEL_125;
        }

        containerCopy = v77;
        v73 = v168;
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
        {
          *v192 = 138543874;
          v193 = selfCopy;
          v194 = 2114;
          v195 = v166;
          v196 = 2114;
          v197 = v156;
          _os_log_impl(&dword_228986000, v97, OS_LOG_TYPE_DEFAULT, "%{public}@: Created local profile for sync circle identifier %{public}@: %{public}@", v192, 0x20u);
        }

        v36 = obj;
        v90 = profileManager;
        if (([v156 type] & 0xFFFFFFFFFFFFFFFELL) != 2)
        {
          goto LABEL_119;
        }

        recordID3 = [v71 recordID];
        zoneID3 = [recordID3 zoneID];
        v145 = v96;
        v100 = v72;
        v101 = zoneID3;
        if (v100)
        {
          v140 = v100;
          owner = [v100 owner];
          if (owner)
          {
            v103 = owner;
            v139 = v101;
            cloudSyncManager = [v145 cloudSyncManager];
            v186 = 0;
            v105 = [cloudSyncManager setShareOwnerParticipant:v103 error:&v186];
            v137 = v186;

            _HKInitializeLogging();
            v106 = *MEMORY[0x277CCC328];
            v138 = v105;
            log = *MEMORY[0x277CCC328];
            if (v105)
            {
              v73 = v168;
              v107 = v137;
              if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
              {
                *v192 = v133;
                v193 = selfCopy;
                v194 = 2114;
                v195 = v103;
                _os_log_impl(&dword_228986000, log, OS_LOG_TYPE_DEFAULT, "%{public}@: Stored owner participant: %{public}@", v192, 0x16u);
              }
            }

            else
            {
              v73 = v168;
              v107 = v137;
              if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
              {
                *v192 = v133;
                v193 = selfCopy;
                v194 = 2114;
                v195 = v137;
                _os_log_error_impl(&dword_228986000, log, OS_LOG_TYPE_ERROR, "%{public}@: Failed to store owner participant: %{public}@", v192, 0x16u);
              }
            }

            if ((v138 & 1) == 0)
            {
LABEL_117:
              profileIdentifier = [v145 profileIdentifier];
              v186 = 0;
              v113 = [v150 deleteProfile:profileIdentifier error:&v186];
              v114 = v186;

              if (v113)
              {

                v73 = v168;
                v90 = v150;
                goto LABEL_119;
              }

              _HKInitializeLogging();
              v115 = *MEMORY[0x277CCC328];
              if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
              {
                *v192 = v133;
                v193 = selfCopy;
                v194 = 2114;
                v195 = v145;
                _os_log_fault_impl(&dword_228986000, v115, OS_LOG_TYPE_FAULT, "%{public}@: Failed to delete profile %{public}@ after failing to set store owner participant.", v192, 0x16u);
              }

              v116 = v114;
              v75 = v116;
              v90 = v150;
              if (v116)
              {
                v117 = v116;
              }

              v192[0] = v75 == 0;
LABEL_125:
              v73 = v168;
LABEL_126:
              zoneID = v155;

              v91 = 0;
              goto LABEL_127;
            }

LABEL_119:
            v75 = 0;
            v192[0] = 1;
            goto LABEL_126;
          }

          _HKInitializeLogging();
          v111 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
          {
            *v192 = v133;
            v193 = selfCopy;
            v194 = 2114;
            v195 = v140;
            _os_log_fault_impl(&dword_228986000, v111, OS_LOG_TYPE_FAULT, "%{public}@: Unable to find owner participant on share %{public}@", v192, 0x16u);
          }
        }

        else
        {
          _HKInitializeLogging();
          v110 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            *v192 = v133;
            v193 = selfCopy;
            v194 = 2114;
            v195 = v101;
            _os_log_error_impl(&dword_228986000, v110, OS_LOG_TYPE_ERROR, "%{public}@: Zone %{public}@ does not have a zone share during zone synchronization", v192, 0x16u);
          }
        }

        goto LABEL_117;
      }

      v75 = 0;
      v76 = 1;
      containerCopy = v77;
      v36 = obj;
      v73 = v168;
LABEL_129:

      recordID = v161;
LABEL_130:

      v118 = v75;
      if ((v76 & 1) == 0)
      {
        [v158 addObject:v118];
        v157 = 1;
      }
    }

    v167 = [v159 countByEnumeratingWithState:&v180 objects:buf count:16];
  }

  while (v167);

  if (v157)
  {
    firstObject = [v158 firstObject];
    v64 = firstObject;
    v134 = firstObject == 0;
    v6 = v149;
    if (firstObject)
    {
      if (database)
      {
        v120 = firstObject;
        *database = v64;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

LABEL_144:
  }

  else
  {
    v134 = 1;
    v6 = v149;
  }

  buf[0] = v134;
LABEL_146:
  v38 = v136;

  v57 = v153;
LABEL_147:

  databaseCopy = buf[0];
LABEL_148:
  v21 = v144;
LABEL_149:

LABEL_150:
  v131 = *MEMORY[0x277D85DE8];
  return databaseCopy;
}

id __102__HDCloudSyncSynchronizeProfilesOperation__cachedZonesWithRegistryRecordsForContainer_database_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 zoneIdentifier];
  v17 = 0;
  v5 = [v4 hd_isUnifiedSyncZoneIDForSyncCircleIdentifier:&v17];
  v6 = v17;

  if (!v5)
  {
    goto LABEL_4;
  }

  v7 = [*(a1 + 32) configuration];
  v8 = [v7 syncContainerPrefix];
  if ([v6 isEqualToString:v8])
  {
    v9 = [v3 scope];

    if (v9 == 2)
    {
LABEL_4:
      v10 = 0;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v11 = [HDCloudSyncCachedZone alloc];
  v12 = [*(a1 + 32) configuration];
  v13 = [v12 repository];
  v14 = [*(a1 + 32) configuration];
  v15 = [v14 accessibilityAssertion];
  v10 = [(HDCloudSyncCachedZone *)v11 initForZoneIdentifier:v3 repository:v13 accessibilityAssertion:v15];

LABEL_7:

  return v10;
}

void __114__HDCloudSyncSynchronizeProfilesOperation__synchronizeProfilesForRegistryRecords_shares_container_database_error___block_invoke(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = a3;
  v6 = a2;
  v8 = [v6 recordID];
  v7 = [v8 zoneID];
  (a3)[2](v5, v7, v6);
}

@end