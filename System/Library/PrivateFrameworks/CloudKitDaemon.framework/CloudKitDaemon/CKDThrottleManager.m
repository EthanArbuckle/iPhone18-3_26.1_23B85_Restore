@interface CKDThrottleManager
+ (id)throttleFromPThrottlingConfig:(id)a3;
+ (id)throttleFromServerJSONDictionary:(id)a3;
- (BOOL)addThrottle:(id)a3;
- (CKDLogicalDeviceContext)deviceContext;
- (CKDThrottleManager)initWithDeviceContext:(id)a3;
- (void)invalidateAdopterThrottles;
- (void)loadThrottlesFromDatabase;
- (void)noteDataChangeForThrottle:(id)a3;
- (void)throttleListBecameEmpty;
- (void)throttleWasAdded:(id)a3;
- (void)throttleWillBeRemoved:(id)a3;
@end

@implementation CKDThrottleManager

- (CKDThrottleManager)initWithDeviceContext:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CKDThrottleManager;
  v5 = [(CKThrottleManager *)&v10 initInternal];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(v5 + 13, v4);
    objc_msgSend_loadThrottlesFromDatabase(v6, v7, v8);
  }

  return v6;
}

- (void)loadThrottlesFromDatabase
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_throttleTable_(self, a2, 0);
  v40 = 0;
  v5 = objc_msgSend_fetchAllEntries_(v3, v4, &v40);
  v6 = v40;
  v7 = MEMORY[0x277CBC880];
  if (v6)
  {
    v8 = v6;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      v10 = 0;
      goto LABEL_28;
    }

    *buf = 138543362;
    v43 = v8;
    _os_log_fault_impl(&dword_22506F000, v9, OS_LOG_TYPE_FAULT, "Failed to fetch the throttle list: %{public}@", buf, 0xCu);
    v10 = 0;
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = v5;
    v11 = v5;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v36, v41, 16);
    if (v13)
    {
      v16 = v13;
      v8 = 0;
      v17 = *v37;
      do
      {
        v18 = 0;
        do
        {
          if (*v37 != v17)
          {
            objc_enumerationMutation(v11);
          }

          v19 = *(*(&v36 + 1) + 8 * v18);
          v20 = objc_msgSend_expirationDate(v19, v14, v15);
          if ((objc_msgSend_isExpired(v19, v21, v22) & 1) != 0 || (objc_msgSend_timeIntervalSinceNow(v20, v23, v24), v25 > 172800.0))
          {
            v26 = objc_msgSend_deleteObject_(v3, v23, v19);

            if (v26)
            {
              if (*v7 != -1)
              {
                dispatch_once(v7, *MEMORY[0x277CBC878]);
              }

              v27 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
              {
                *buf = 138543362;
                v43 = v26;
                _os_log_fault_impl(&dword_22506F000, v27, OS_LOG_TYPE_FAULT, "Failed to delete throttle: %{public}@", buf, 0xCu);
              }

              v8 = v26;
            }

            else
            {
              v8 = 0;
            }
          }

          else
          {
            objc_msgSend_addThrottle_(self, v23, v19);
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v36, v41, 16);
      }

      while (v16);
    }

    else
    {
      v8 = 0;
    }

    v30 = objc_msgSend_allThrottles(self, v28, v29);
    v10 = objc_msgSend_count(v30, v31, v32);

    v5 = v35;
  }

  if (*v7 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

LABEL_28:
  v33 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v43 = v10;
    _os_log_impl(&dword_22506F000, v33, OS_LOG_TYPE_INFO, "CKThrottle count at startup: %lu", buf, 0xCu);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAdopterThrottles
{
  v4 = objc_msgSend_sharedConnectionManager(CKDXPCConnectionManager, a2, v2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_225272280;
  v6[3] = &unk_27854B678;
  v6[4] = self;
  objc_msgSend_enumerateConnections_(v4, v5, v6);
}

- (BOOL)addThrottle:(id)a3
{
  v8.receiver = self;
  v8.super_class = CKDThrottleManager;
  v6 = [(CKThrottleManager *)&v8 addThrottle:a3];
  if (v6)
  {
    objc_msgSend_invalidateAdopterThrottles(self, v4, v5);
  }

  return v6;
}

- (void)throttleWasAdded:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((objc_msgSend_isExpired(v4, v5, v6) & 1) == 0)
  {
    v9 = objc_msgSend_throttleID(v4, v7, v8);

    if (!v9)
    {
      v11 = objc_msgSend_throttleTable_(self, v10, 1);
      v13 = objc_msgSend_insertObject_(v11, v12, v4);

      if (v13)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v14 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
        {
          v16 = 138543362;
          v17 = v13;
          _os_log_fault_impl(&dword_22506F000, v14, OS_LOG_TYPE_FAULT, "Failed to save new throttle: %{public}@", &v16, 0xCu);
        }
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)throttleWillBeRemoved:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6 = objc_msgSend_throttleTable_(self, v5, 1);
  v8 = objc_msgSend_deleteObject_(v6, v7, v4);

  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      v13 = 138543362;
      v14 = v8;
      _os_log_fault_impl(&dword_22506F000, v11, OS_LOG_TYPE_FAULT, "Failed to delete throttle: %{public}@", &v13, 0xCu);
    }
  }

  objc_msgSend_invalidateAdopterThrottles(self, v9, v10);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)throttleListBecameEmpty
{
  throttleTable = self->_throttleTable;
  self->_throttleTable = 0;

  throttleTableGroup = self->_throttleTableGroup;
  self->_throttleTableGroup = 0;

  v7 = objc_msgSend_deviceContext(self, v5, v6);
  v14 = objc_msgSend_deviceScopedDatabase(v7, v8, v9);

  v12 = objc_msgSend_groupName(CKDThrottleTableGroup, v10, v11);
  objc_msgSend_purgeGroupWithName_inDatabase_(MEMORY[0x277CBC660], v13, v12, v14);
}

- (void)noteDataChangeForThrottle:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6 = objc_msgSend_throttleTable_(self, v5, 1);
  v8 = objc_msgSend_updateRequestCount_(v6, v7, v4);

  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      v11 = 138543362;
      v12 = v8;
      _os_log_fault_impl(&dword_22506F000, v9, OS_LOG_TYPE_FAULT, "Failed to save throttle changes: %{public}@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)throttleFromServerJSONDictionary:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_objectForKey_(v4, v5, @"label");
  v8 = objc_msgSend_objectForKey_(v4, v7, @"criteria");
  v10 = objc_msgSend_objectForKey_(v4, v9, @"rateLimit");
  v12 = objc_msgSend_objectForKey_(v8, v11, @"containerName");
  v13 = v12;
  if (v8 | v10)
  {
    v14 = 1;
  }

  else
  {
    v14 = v6 == 0;
  }

  v15 = v14;
  if (v8)
  {
    v16 = v12 == 0;
  }

  else
  {
    v16 = 1;
  }

  v18 = !v16 && v10 != 0;
  if (v15 != 1 || (v18 & 1) != 0)
  {
    v191 = v15;
    v21 = objc_alloc_init(MEMORY[0x277CBC788]);
    v23 = v21;
    if (v6)
    {
      objc_msgSend_setLabel_(v21, v22, v6);
    }

    v193 = v6;
    v24 = objc_msgSend_objectForKey_(v8, v22, @"containerName");
    objc_msgSend_setContainerIdentifier_(v23, v25, v24);

    v27 = objc_msgSend_objectForKey_(v8, v26, @"databaseType");
    v29 = v27;
    if (v27)
    {
      v30 = v27;
      if (objc_msgSend_isEqualToString_(v30, v31, @"privateDB"))
      {
        v33 = 2;
      }

      else if (objc_msgSend_isEqualToString_(v30, v32, @"publicDB"))
      {
        v33 = 1;
      }

      else if (objc_msgSend_isEqualToString_(v30, v34, @"sharedDB"))
      {
        v33 = 3;
      }

      else if (objc_msgSend_isEqualToString_(v30, v35, @"orgDB"))
      {
        v33 = 4;
      }

      else
      {
        v33 = 2;
      }

      v37 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v36, v33);
      objc_msgSend_setDatabaseScope_(v23, v38, v37);
    }

    v192 = v29;
    v39 = objc_msgSend_objectForKey_(v8, v28, @"zoneName");
    objc_msgSend_setZoneName_(v23, v40, v39);

    v42 = objc_msgSend_objectForKey_(v8, v41, @"operationType");
    v44 = v42;
    if (v42)
    {
      v188 = MEMORY[0x277CCABB0];
      v45 = v42;
      if (objc_msgSend_isEqualToString_(v45, v46, @"noneType"))
      {
        v48 = 0;
      }

      else if (objc_msgSend_isEqualToString_(v45, v47, @"zoneSaveType"))
      {
        v48 = 200;
      }

      else if (objc_msgSend_isEqualToString_(v45, v49, @"zoneRetrieveType"))
      {
        v48 = 201;
      }

      else if (objc_msgSend_isEqualToString_(v45, v50, @"zoneDeleteType"))
      {
        v48 = 202;
      }

      else if (objc_msgSend_isEqualToString_(v45, v51, @"zoneRetrieveChangesType"))
      {
        v48 = 203;
      }

      else if (objc_msgSend_isEqualToString_(v45, v52, @"zoneRetrieveAncestors"))
      {
        v48 = 206;
      }

      else if (objc_msgSend_isEqualToString_(v45, v53, @"recordSaveType"))
      {
        v48 = 210;
      }

      else if (objc_msgSend_isEqualToString_(v45, v54, @"recordRetrieveType"))
      {
        v48 = 211;
      }

      else if (objc_msgSend_isEqualToString_(v45, v55, @"recordRetrieveVersionsType"))
      {
        v48 = 212;
      }

      else if (objc_msgSend_isEqualToString_(v45, v56, @"recordRetrieveChangesType"))
      {
        v48 = 213;
      }

      else if (objc_msgSend_isEqualToString_(v45, v57, @"recordDeleteType"))
      {
        v48 = 214;
      }

      else if (objc_msgSend_isEqualToString_(v45, v58, @"recordResolveTokenType"))
      {
        v48 = 216;
      }

      else if (objc_msgSend_isEqualToString_(v45, v59, @"fetchArchivedRecordsType"))
      {
        v48 = 217;
      }

      else if (objc_msgSend_isEqualToString_(v45, v60, @"recordMoveType"))
      {
        v48 = 218;
      }

      else if (objc_msgSend_isEqualToString_(v45, v61, @"shareAccessType"))
      {
        v48 = 219;
      }

      else if (objc_msgSend_isEqualToString_(v45, v62, @"queryRetrieveType"))
      {
        v48 = 220;
      }

      else if (objc_msgSend_isEqualToString_(v45, v63, @"shareDeclineType"))
      {
        v48 = 221;
      }

      else if (objc_msgSend_isEqualToString_(v45, v64, @"assetUploadTokenRetrieveType"))
      {
        v48 = 230;
      }

      else if (objc_msgSend_isEqualToString_(v45, v65, @"containerDeleteType"))
      {
        v48 = 240;
      }

      else if (objc_msgSend_isEqualToString_(v45, v66, @"userAvailableQuotaType"))
      {
        v48 = 243;
      }

      else if (objc_msgSend_isEqualToString_(v45, v67, @"containerGetBundlesType"))
      {
        v48 = 244;
      }

      else if (objc_msgSend_isEqualToString_(v45, v68, @"webAuthTokenRetrieveType"))
      {
        v48 = 250;
      }

      else if (objc_msgSend_isEqualToString_(v45, v69, @"dataRepairUpdateMissingAssetStatusType"))
      {
        v48 = 260;
      }

      else if (objc_msgSend_isEqualToString_(v45, v70, @"addAnonymousShareType"))
      {
        v48 = 270;
      }

      else if (objc_msgSend_isEqualToString_(v45, v71, @"removeAnonymousShareType"))
      {
        v48 = 271;
      }

      else if (objc_msgSend_isEqualToString_(v45, v72, @"zoneChildrenRetrieveType"))
      {
        v48 = 272;
      }

      else if (objc_msgSend_isEqualToString_(v45, v73, @"subscriptionCreateType"))
      {
        v48 = 300;
      }

      else if (objc_msgSend_isEqualToString_(v45, v74, @"subscriptionRetrieveType"))
      {
        v48 = 301;
      }

      else if (objc_msgSend_isEqualToString_(v45, v75, @"subscriptionDeleteType"))
      {
        v48 = 302;
      }

      else if (objc_msgSend_isEqualToString_(v45, v76, @"mergeableDeltaSaveType"))
      {
        v48 = 311;
      }

      else if (objc_msgSend_isEqualToString_(v45, v77, @"mergeableDeltaMetadataRetrieveType"))
      {
        v48 = 312;
      }

      else if (objc_msgSend_isEqualToString_(v45, v78, @"mergeableDeltaReplaceType"))
      {
        v48 = 313;
      }

      else if (objc_msgSend_isEqualToString_(v45, v79, @"mergeableDeltaRetrieveType"))
      {
        v48 = 314;
      }

      else if (objc_msgSend_isEqualToString_(v45, v80, @"privateSearchSetType"))
      {
        v48 = 320;
      }

      else if (objc_msgSend_isEqualToString_(v45, v81, @"privateSearchGetType"))
      {
        v48 = 321;
      }

      else if (objc_msgSend_isEqualToString_(v45, v82, @"privateSearchDeleteType"))
      {
        v48 = 322;
      }

      else if (objc_msgSend_isEqualToString_(v45, v83, @"userRetrieveType"))
      {
        v48 = 400;
      }

      else if (objc_msgSend_isEqualToString_(v45, v84, @"userQueryType"))
      {
        v48 = 401;
      }

      else if (objc_msgSend_isEqualToString_(v45, v85, @"userPrivacySettingsRetrieveType"))
      {
        v48 = 402;
      }

      else if (objc_msgSend_isEqualToString_(v45, v86, @"userPrivacySettingsUpdateType"))
      {
        v48 = 403;
      }

      else if (objc_msgSend_isEqualToString_(v45, v87, @"userPrivacySettingsResetType"))
      {
        v48 = 404;
      }

      else if (objc_msgSend_isEqualToString_(v45, v88, @"userPrivacySettingsBatchLookup"))
      {
        v48 = 405;
      }

      else if (objc_msgSend_isEqualToString_(v45, v89, @"sharePermissionSettingsUpdateType"))
      {
        v48 = 406;
      }

      else if (objc_msgSend_isEqualToString_(v45, v90, @"adopterCapabilitiesSaveType"))
      {
        v48 = 407;
      }

      else if (objc_msgSend_isEqualToString_(v45, v91, @"adopterCapabilitiesCheckType"))
      {
        v48 = 408;
      }

      else if (objc_msgSend_isEqualToString_(v45, v92, @"zoneUsageSaveType"))
      {
        v48 = 409;
      }

      else if (objc_msgSend_isEqualToString_(v45, v93, @"shareUsageSaveType"))
      {
        v48 = 410;
      }

      else if (objc_msgSend_isEqualToString_(v45, v94, @"shareAcceptType"))
      {
        v48 = 503;
      }

      else if (objc_msgSend_isEqualToString_(v45, v95, @"shareVettingInitiateType"))
      {
        v48 = 513;
      }

      else if (objc_msgSend_isEqualToString_(v45, v96, @"pushRegisterType"))
      {
        v48 = 800;
      }

      else if (objc_msgSend_isEqualToString_(v45, v97, @"pushUnregisterType"))
      {
        v48 = 801;
      }

      else if (objc_msgSend_isEqualToString_(v45, v98, @"pushBadgeType"))
      {
        v48 = 802;
      }

      else if (objc_msgSend_isEqualToString_(v45, v99, @"pushSyncType"))
      {
        v48 = 803;
      }

      else if (objc_msgSend_isEqualToString_(v45, v100, @"pushReadType"))
      {
        v48 = 804;
      }

      else if (objc_msgSend_isEqualToString_(v45, v101, @"archiveRecordsType"))
      {
        v48 = 900;
      }

      else if (objc_msgSend_isEqualToString_(v45, v102, @"datarepairMarkAssetBrokenType"))
      {
        v48 = 901;
      }

      else if (objc_msgSend_isEqualToString_(v45, v103, @"functionInvokeType"))
      {
        v48 = 1101;
      }

      else
      {
        v48 = 0;
      }

      v105 = objc_msgSend_numberWithInt_(v188, v104, v48);
      objc_msgSend_setOperationType_(v23, v106, v105);
    }

    v190 = v44;
    v107 = objc_msgSend_objectForKey_(v8, v43, @"invernessServiceName");
    objc_msgSend_setServiceName_(v23, v108, v107);

    v110 = objc_msgSend_objectForKey_(v8, v109, @"invernessFunctionName");
    objc_msgSend_setFunctionName_(v23, v111, v110);

    v113 = objc_msgSend_objectForKey_(v8, v112, @"bundleID");
    objc_msgSend_setBundleID_(v23, v114, v113);

    v116 = objc_msgSend_objectForKey_(v8, v115, @"operationGroupName");
    objc_msgSend_setOperationGroupNamePrefix_(v23, v117, v116);

    v118 = MEMORY[0x277CCABB0];
    v120 = objc_msgSend_objectForKey_(v10, v119, @"intervalLengthSec");
    v123 = objc_msgSend_integerValue(v120, v121, v122);
    v125 = objc_msgSend_numberWithInteger_(v118, v124, v123);
    objc_msgSend_setIntervalLengthSeconds_(v23, v126, v125);

    v127 = MEMORY[0x277CCABB0];
    v129 = objc_msgSend_objectForKey_(v10, v128, @"allowedRequestCount");
    v132 = objc_msgSend_integerValue(v129, v130, v131);
    v134 = objc_msgSend_numberWithInteger_(v127, v133, v132);
    objc_msgSend_setAllowedRequestCount_(v23, v135, v134);

    v136 = MEMORY[0x277CCABB0];
    v138 = objc_msgSend_objectForKey_(v10, v137, @"repeatEverySec");
    v141 = objc_msgSend_integerValue(v138, v139, v140);
    v143 = objc_msgSend_numberWithInteger_(v136, v142, v141);
    objc_msgSend_setRepeatEverySeconds_(v23, v144, v143);

    v146 = objc_msgSend_objectForKey_(v10, v145, @"startTimeSecondsAfterUnixEpoch");
    v149 = v146;
    if (v146)
    {
      v150 = objc_msgSend_integerValue(v146, v147, v148);
      v153 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x277CBEAA8], v151, v152, v150);
      objc_msgSend_setThrottleStartDate_(v23, v154, v153);
    }

    v155 = objc_msgSend_objectForKey_(v10, v147, @"startTimeSecondsAfterLocalMidnight");
    v158 = v155;
    if (v155)
    {
      v159 = objc_msgSend_integerValue(v155, v156, v157);
      objc_msgSend_currentCalendar(MEMORY[0x277CBEA80], v160, v161);
      v187 = v149;
      v163 = v162 = v23;
      objc_msgSend_date(MEMORY[0x277CBEAA8], v164, v165);
      v189 = v8;
      v166 = a1;
      v167 = v10;
      v168 = v4;
      v170 = v169 = v13;
      v172 = objc_msgSend_startOfDayForDate_(v163, v171, v170);

      v175 = objc_msgSend_dateByAddingTimeInterval_(v172, v173, v174, v159);
      objc_msgSend_setThrottleStartDate_(v162, v176, v175);

      v13 = v169;
      v4 = v168;
      v10 = v167;
      a1 = v166;
      v8 = v189;

      v23 = v162;
      v149 = v187;
    }

    v177 = objc_msgSend_objectForKey_(v4, v156, @"ttlSec");
    v180 = v177;
    if (v177)
    {
      v181 = v191;
    }

    else
    {
      v181 = 0;
    }

    if (v181 == 1)
    {
      v182 = objc_msgSend_integerValue(v177, v178, v179);
      v184 = objc_msgSend__expirationDateForTTLSeconds_(a1, v183, v182);
      objc_msgSend_setExpirationDate_(v23, v185, v184);
    }

    objc_msgSend_setFlag_(v23, v178, 1);
    v20 = v23;

    v6 = v193;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v19, OS_LOG_TYPE_ERROR, "Received malformed throttling config. Discarding.", buf, 2u);
    }

    v20 = 0;
  }

  return v20;
}

+ (id)throttleFromPThrottlingConfig:(id)a3
{
  v121 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_hasLabel(v4, v5, v6))
  {
    v9 = objc_msgSend_label(v4, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  if (objc_msgSend_hasCriteria(v4, v7, v8))
  {
    v12 = objc_msgSend_criteria(v4, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  if (objc_msgSend_hasRateLimit(v4, v10, v11))
  {
    v15 = objc_msgSend_rateLimit(v4, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  if (v12 | v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = v9 == 0;
  }

  LODWORD(v17) = !v16;
  if (v12)
  {
    hasContainerName = objc_msgSend_hasContainerName(v12, v13, v14);
    if (v15)
    {
      v19 = hasContainerName;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  if ((v17 | v19))
  {
    v20 = objc_alloc_init(MEMORY[0x277CBC788]);
    v23 = v20;
    if (v9)
    {
      objc_msgSend_setLabel_(v20, v21, v9);
    }

    if (objc_msgSend_hasContainerName(v12, v21, v22))
    {
      v26 = objc_msgSend_containerName(v12, v24, v25);
      objc_msgSend_setContainerIdentifier_(v23, v27, v26);
    }

    if (objc_msgSend_hasDatabaseType(v12, v24, v25))
    {
      v31 = objc_msgSend_databaseType(v12, v28, v29) - 1;
      if (v31 >= 4)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v112 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          v115 = v112;
          *buf = 67109120;
          v120 = objc_msgSend_databaseType(v12, v116, v117);
          _os_log_error_impl(&dword_22506F000, v115, OS_LOG_TYPE_ERROR, "Received throttle with unknown database type: %d. Discarding.", buf, 8u);
        }

        v110 = 0;
        goto LABEL_65;
      }

      v32 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v30, qword_225447DA0[v31]);
      objc_msgSend_setDatabaseScope_(v23, v33, v32);
    }

    if (objc_msgSend_hasZoneName(v12, v28, v29))
    {
      v36 = objc_msgSend_zoneName(v12, v34, v35);
      objc_msgSend_setZoneName_(v23, v37, v36);
    }

    if (objc_msgSend_hasOperationType(v12, v34, v35))
    {
      v40 = MEMORY[0x277CCABB0];
      v41 = objc_msgSend_operationType(v12, v38, v39);
      v43 = objc_msgSend_numberWithInt_(v40, v42, v41);
      objc_msgSend_setOperationType_(v23, v44, v43);
    }

    if (objc_msgSend_hasInvernessServiceName(v12, v38, v39))
    {
      v47 = objc_msgSend_invernessServiceName(v12, v45, v46);
      objc_msgSend_setServiceName_(v23, v48, v47);
    }

    if (objc_msgSend_hasInvernessFunctionName(v12, v45, v46))
    {
      v51 = objc_msgSend_invernessFunctionName(v12, v49, v50);
      objc_msgSend_setFunctionName_(v23, v52, v51);
    }

    if (objc_msgSend_hasBundleID(v12, v49, v50))
    {
      v55 = objc_msgSend_bundleID(v12, v53, v54);
      objc_msgSend_setBundleID_(v23, v56, v55);
    }

    if (objc_msgSend_hasOperationGroupName(v12, v53, v54))
    {
      v59 = objc_msgSend_operationGroupName(v12, v57, v58);
      objc_msgSend_setOperationGroupNamePrefix_(v23, v60, v59);
    }

    if (objc_msgSend_hasIntervalLengthSec(v15, v57, v58))
    {
      v63 = MEMORY[0x277CCABB0];
      v64 = objc_msgSend_intervalLengthSec(v15, v61, v62);
      v66 = objc_msgSend_numberWithInt_(v63, v65, v64);
      objc_msgSend_setIntervalLengthSeconds_(v23, v67, v66);
    }

    if (objc_msgSend_hasAllowedRequestCount(v15, v61, v62))
    {
      v70 = MEMORY[0x277CCABB0];
      v71 = objc_msgSend_allowedRequestCount(v15, v68, v69);
      v73 = objc_msgSend_numberWithInt_(v70, v72, v71);
      objc_msgSend_setAllowedRequestCount_(v23, v74, v73);
    }

    if (objc_msgSend_hasRepeatEverySec(v15, v68, v69))
    {
      v77 = MEMORY[0x277CCABB0];
      v78 = objc_msgSend_repeatEverySec(v15, v75, v76);
      v80 = objc_msgSend_numberWithInt_(v77, v79, v78);
      objc_msgSend_setRepeatEverySeconds_(v23, v81, v80);
    }

    if (objc_msgSend_hasStartTimeSecondsAfterUnixEpoch(v15, v75, v76))
    {
      started = objc_msgSend_startTimeSecondsAfterUnixEpoch(v15, v82, v83);
      v87 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x277CBEAA8], v85, v86, started);
      objc_msgSend_setThrottleStartDate_(v23, v88, v87);
    }

    if (objc_msgSend_hasStartTimeSecondsAfterLocalMidnight(v15, v82, v83))
    {
      v91 = objc_msgSend_startTimeSecondsAfterLocalMidnight(v15, v89, v90);
      v94 = objc_msgSend_currentCalendar(MEMORY[0x277CBEA80], v92, v93);
      v97 = objc_msgSend_date(MEMORY[0x277CBEAA8], v95, v96);
      objc_msgSend_startOfDayForDate_(v94, v98, v97);
      v118 = v9;
      v99 = v17;
      v100 = v17 = a1;

      v103 = objc_msgSend_dateByAddingTimeInterval_(v100, v101, v102, v91);
      objc_msgSend_setThrottleStartDate_(v23, v104, v103);

      a1 = v17;
      LOBYTE(v17) = v99;
      v9 = v118;
    }

    if ((v17 & 1) == 0 && objc_msgSend_hasTtlSec(v4, v89, v90))
    {
      v106 = objc_msgSend_ttlSec(v4, v89, v105);
      v108 = objc_msgSend__expirationDateForTTLSeconds_(a1, v107, v106);
      objc_msgSend_setExpirationDate_(v23, v109, v108);
    }

    objc_msgSend_setFlag_(v23, v89, 2);
    v110 = v23;
LABEL_65:

    goto LABEL_66;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v111 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22506F000, v111, OS_LOG_TYPE_ERROR, "Received malformed throttling config. Discarding.", buf, 2u);
  }

  v110 = 0;
LABEL_66:

  v113 = *MEMORY[0x277D85DE8];

  return v110;
}

- (CKDLogicalDeviceContext)deviceContext
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceContext);

  return WeakRetained;
}

@end