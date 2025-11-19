@interface CKDMMCSRequestOptions
- (BOOL)usesBackgroundSession;
- (CKDMMCSRequestOptions)initWithOperation:(id)a3;
- (id)CKPropertiesDescription;
- (id)MMCSOptions;
@end

@implementation CKDMMCSRequestOptions

- (CKDMMCSRequestOptions)initWithOperation:(id)a3
{
  v4 = a3;
  v99.receiver = self;
  v99.super_class = CKDMMCSRequestOptions;
  v7 = [(CKDMMCSRequestOptions *)&v99 init];
  if (v7)
  {
    v8 = objc_msgSend_container(v4, v5, v6);
    v7->_databaseScope = objc_msgSend_databaseScope(v4, v9, v10);
    v13 = objc_msgSend_containerID(v8, v11, v12);
    containerID = v7->_containerID;
    v7->_containerID = v13;

    v17 = objc_msgSend_topmostParentOperation(v4, v15, v16);
    v20 = objc_msgSend_operationInfo(v17, v18, v19);
    v23 = objc_msgSend_group(v20, v21, v22);
    v26 = objc_msgSend_operationGroupID(v23, v24, v25);
    topmostParentOperationGroupID = v7->_topmostParentOperationGroupID;
    v7->_topmostParentOperationGroupID = v26;

    v30 = objc_msgSend_operationInfo(v17, v28, v29);
    v33 = objc_msgSend_group(v30, v31, v32);
    v36 = objc_msgSend_name(v33, v34, v35);
    topmostParentOperationGroupName = v7->_topmostParentOperationGroupName;
    v7->_topmostParentOperationGroupName = v36;

    v40 = objc_msgSend_operationID(v17, v38, v39);
    topmostParentOperationID = v7->_topmostParentOperationID;
    v7->_topmostParentOperationID = v40;

    v44 = objc_msgSend_applicationBundleIdentifierForContainerAccess(v4, v42, v43);
    applicationBundleIdentifierForContainerAccess = v7->_applicationBundleIdentifierForContainerAccess;
    v7->_applicationBundleIdentifierForContainerAccess = v44;

    v48 = objc_msgSend_applicationBundleIdentifierForNetworkAttribution(v4, v46, v47);
    applicationBundleIdentifierForNetworkAttribution = v7->_applicationBundleIdentifierForNetworkAttribution;
    v7->_applicationBundleIdentifierForNetworkAttribution = v48;

    v52 = objc_msgSend_sourceApplicationSecondaryIdentifier(v4, v50, v51);
    applicationSecondaryID = v7->_applicationSecondaryID;
    v7->_applicationSecondaryID = v52;

    v7->_allowsCellularAccess = objc_msgSend_allowsCellularAccess(v4, v54, v55);
    v7->_allowsExpensiveNetworkAccess = objc_msgSend_allowsExpensiveNetworkAccess(v4, v56, v57);
    v60 = objc_msgSend_entitlements(v8, v58, v59);
    v7->_allowsPowerNapScheduling = objc_msgSend_hasDarkWakeNetworkReachabilityEnabledEntitlement(v60, v61, v62);

    v7->_qualityOfService = objc_msgSend_qualityOfService(v4, v63, v64);
    v7->_clientQueuePriority = objc_msgSend_clientQueuePriority(v4, v65, v66);
    v7->_resolvedAutomaticallyRetryNetworkFailures = objc_msgSend_resolvedAutomaticallyRetryNetworkFailures(v4, v67, v68);
    v7->_resolvedDiscretionaryNetworkBehavior = objc_msgSend_resolvedDiscretionaryNetworkBehavior(v4, v69, v70);
    v7->_duetPreClearedMode = objc_msgSend_duetPreClearedMode(v4, v71, v72);
    v74 = objc_msgSend_metricOptionsForNetworkOperation_(MEMORY[0x277CF36B8], v73, v4);
    metricOptions = v7->_metricOptions;
    v7->_metricOptions = v74;

    v78 = objc_msgSend_deviceContext(v4, v76, v77);
    v81 = objc_msgSend_testServer(v78, v79, v80);

    if (v81 && (objc_msgSend_useLiveServer(v81, v82, v83) & 1) == 0)
    {
      v84 = objc_msgSend_networkingDelegate(v81, v82, v83);
      networkingDelegate = v7->_networkingDelegate;
      v7->_networkingDelegate = v84;
    }

    v7->_networkServiceType = objc_msgSend_networkServiceType(v4, v82, v83);
    v88 = objc_msgSend_cacheDeleteAvailableSpaceClass(v4, v86, v87);
    cacheDeleteAvailableSpaceClass = v7->_cacheDeleteAvailableSpaceClass;
    v7->_cacheDeleteAvailableSpaceClass = v88;

    if ((objc_msgSend_preferAnonymousRequests(v4, v90, v91) & 1) == 0)
    {
      v94 = objc_msgSend_hardwareID(v8, v92, v93);
      deviceHardwareID = v7->_deviceHardwareID;
      v7->_deviceHardwareID = v94;
    }

    v96 = objc_msgSend_MMCSRequestOptions(v4, v92, v93);
    MMCSRequestOptions = v7->_MMCSRequestOptions;
    v7->_MMCSRequestOptions = v96;
  }

  return v7;
}

- (id)CKPropertiesDescription
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, 3);
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_containerID(self, v5, v6);
  v10 = objc_msgSend_ckShortDescription(v7, v8, v9);
  v13 = objc_msgSend_applicationBundleIdentifierForNetworkAttribution(self, v11, v12);
  v15 = objc_msgSend_stringWithFormat_(v4, v14, @"containerID=%@, applicationBundleIdentifierForNetworkAttribution=%@", v10, v13);
  objc_msgSend_addObject_(v3, v16, v15);

  v19 = objc_msgSend_applicationSecondaryID(self, v17, v18);

  if (v19)
  {
    v22 = MEMORY[0x277CCACA8];
    v23 = objc_msgSend_applicationSecondaryID(self, v20, v21);
    v25 = objc_msgSend_stringWithFormat_(v22, v24, @"applicationSecondaryID=%@", v23);
    objc_msgSend_addObject_(v3, v26, v25);
  }

  v27 = MEMORY[0x277CCACA8];
  objc_msgSend_resolvedDiscretionaryNetworkBehavior(self, v20, v21);
  v28 = CKStringForDiscretionaryNetworkBehavior();
  v30 = objc_msgSend_stringWithFormat_(v27, v29, @"discretionary=%@", v28);
  objc_msgSend_addObject_(v3, v31, v30);

  v32 = MEMORY[0x277CCACA8];
  objc_msgSend_duetPreClearedMode(self, v33, v34);
  v35 = CKStringForDuetPreClearedMode();
  v37 = objc_msgSend_stringWithFormat_(v32, v36, @"duetPreClearedMode=%@", v35);
  objc_msgSend_addObject_(v3, v38, v37);

  v40 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v39, 4);
  if (objc_msgSend_resolvedAutomaticallyRetryNetworkFailures(self, v41, v42))
  {
    objc_msgSend_addObject_(v40, v43, @"automatically-retry-network-failures");
  }

  if (objc_msgSend_allowsCellularAccess(self, v43, v44))
  {
    objc_msgSend_addObject_(v40, v45, @"allows-cellular");
  }

  if (objc_msgSend_allowsExpensiveNetworkAccess(self, v45, v46))
  {
    objc_msgSend_addObject_(v40, v47, @"allows-expensive");
  }

  if (objc_msgSend_allowsPowerNapScheduling(self, v47, v48))
  {
    objc_msgSend_addObject_(v40, v49, @"allows-power-nap-scheduling");
  }

  v51 = objc_msgSend_MMCSRequestOptions(self, v49, v50);
  v54 = objc_msgSend_resumableContainerLimpMode(v51, v52, v53);

  if (v54)
  {
    objc_msgSend_addObject_(v40, v55, @"resumable-container-limp-mode");
  }

  v57 = objc_msgSend_MMCSRequestOptions(self, v55, v56);
  v60 = objc_msgSend_chunkingLibraryCorruptionMode(v57, v58, v59);

  if (v60)
  {
    objc_msgSend_addObject_(v40, v61, @"chunking-library-corruption-mode");
  }

  if (objc_msgSend_count(v40, v61, v62))
  {
    v64 = MEMORY[0x277CCACA8];
    v65 = objc_msgSend_componentsJoinedByString_(v40, v63, @"|");
    v67 = objc_msgSend_stringWithFormat_(v64, v66, @"flags=%@", v65);
    objc_msgSend_addObject_(v3, v68, v67);
  }

  v69 = objc_msgSend_componentsJoinedByString_(v3, v63, @", ");

  return v69;
}

- (BOOL)usesBackgroundSession
{
  v4 = objc_msgSend_resolvedAutomaticallyRetryNetworkFailures(self, a2, v2);
  v7 = objc_msgSend_resolvedDiscretionaryNetworkBehavior(self, v5, v6);
  return ((objc_msgSend_duetPreClearedMode(self, v8, v9) | v7) != 0) | v4 & 1;
}

- (id)MMCSOptions
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v7 = objc_msgSend_applicationBundleIdentifierForNetworkAttribution(self, v5, v6);
  v10 = objc_msgSend_length(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_applicationBundleIdentifierForNetworkAttribution(self, v11, v12);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v14, v13, *MEMORY[0x277D25600]);
  }

  v15 = objc_msgSend_applicationSecondaryID(self, v11, v12);
  v18 = objc_msgSend_length(v15, v16, v17);

  if (v18)
  {
    v21 = objc_msgSend_applicationSecondaryID(self, v19, v20);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v22, v21, *MEMORY[0x277D25608]);
  }

  v23 = objc_opt_new();
  v26 = objc_msgSend_containerID(self, v24, v25);
  v29 = objc_msgSend_containerIdentifier(v26, v27, v28);
  v32 = objc_msgSend_length(v29, v30, v31);

  if (v32)
  {
    v35 = objc_msgSend_containerID(self, v33, v34);
    v38 = objc_msgSend_containerIdentifier(v35, v36, v37);
    objc_msgSend_setObject_forKeyedSubscript_(v23, v39, v38, @"X-CloudKit-Container");
  }

  v40 = objc_msgSend_containerID(self, v33, v34);
  if (objc_msgSend_environment(v40, v41, v42) == 1)
  {
    v44 = @"production";
    objc_msgSend_setObject_forKeyedSubscript_(v23, v43, @"production", 0x28387C700);
  }

  else
  {
    v44 = @"sandbox";
    objc_msgSend_setObject_forKeyedSubscript_(v23, v43, @"sandbox", 0x28387C700);
  }

  objc_msgSend_databaseScope(self, v45, v46);
  v47 = CKDatabaseScopeString();
  objc_msgSend_setObject_forKeyedSubscript_(v23, v48, v47, 0x28387C720);

  objc_msgSend_duetPreClearedMode(self, v49, v50);
  v51 = CKStringForDuetPreClearedMode();
  objc_msgSend_setObject_forKeyedSubscript_(v23, v52, v51, 0x28387C740);

  v55 = objc_msgSend_topmostParentOperationID(self, v53, v54);
  v58 = objc_msgSend_length(v55, v56, v57);

  if (v58)
  {
    v61 = objc_msgSend_topmostParentOperationID(self, v59, v60);
    objc_msgSend_setObject_forKeyedSubscript_(v23, v62, v61, 0x28387C560);
  }

  v63 = objc_msgSend_topmostParentOperationGroupID(self, v59, v60);
  v66 = objc_msgSend_length(v63, v64, v65);

  if (v66)
  {
    v69 = objc_msgSend_topmostParentOperationGroupID(self, v67, v68);
    objc_msgSend_setObject_forKeyedSubscript_(v23, v70, v69, 0x28387C580);
  }

  v71 = objc_msgSend_applicationBundleIdentifierForContainerAccess(self, v67, v68);
  v74 = objc_msgSend_length(v71, v72, v73);

  if (v74)
  {
    v77 = objc_msgSend_applicationBundleIdentifierForContainerAccess(self, v75, v76);
    objc_msgSend_setObject_forKeyedSubscript_(v23, v78, v77, @"X-CloudKit-App-BundleID");
  }

  v79 = objc_msgSend_topmostParentOperationGroupName(self, v75, v76);
  v82 = objc_msgSend_length(v79, v80, v81);

  if (v82)
  {
    v85 = objc_msgSend_containerID(self, v83, v84);
    v88 = objc_msgSend_specialContainerType(v85, v86, v87);

    if (v88 == 5)
    {
      v91 = objc_msgSend_topmostParentOperationGroupName(self, v89, v90);
      v94 = objc_msgSend_CKProbablySafeHeaderValue(v91, v92, v93);
      objc_msgSend_setObject_forKeyedSubscript_(v23, v95, v94, 0x28387C5A0);
    }

    v96 = objc_msgSend_topmostParentOperationGroupName(self, v89, v90);
    v99 = objc_msgSend_CKBase64EncodedStructuredHeaderValueByteSequence(v96, v97, v98);
    objc_msgSend_setObject_forKeyedSubscript_(v23, v100, v99, 0x28387C5C0);
  }

  v101 = objc_msgSend_zoneNames(self, v83, v84);
  v104 = objc_msgSend_count(v101, v102, v103);

  if (v104)
  {
    v107 = objc_msgSend_zoneNames(self, v105, v106);
    v109 = objc_msgSend_componentsJoinedByString_(v107, v108, @",");
    objc_msgSend_setObject_forKeyedSubscript_(v23, v110, v109, @"X-CloudKit-Zones");
  }

  v111 = objc_msgSend_deviceHardwareID(self, v105, v106);
  if (v111)
  {
    v114 = v111;
    v115 = objc_msgSend_deviceHardwareID(self, v112, v113);
    v118 = objc_msgSend_length(v115, v116, v117);

    if (v118)
    {
      v120 = objc_msgSend_deviceHardwareID(self, v112, v119);
      objc_msgSend_setObject_forKeyedSubscript_(v23, v121, v120, @"X-CloudKit-DeviceID");
    }
  }

  objc_msgSend_setObject_forKeyedSubscript_(v4, v112, v23, *MEMORY[0x277D25588]);
  v122 = MEMORY[0x277CCABB0];
  v125 = objc_msgSend_containerID(self, v123, v124);
  v128 = objc_msgSend_c2ContainerType(v125, v126, v127);
  v130 = objc_msgSend_numberWithLong_(v122, v129, v128);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v131, v130, *MEMORY[0x277D25568]);

  v134 = objc_msgSend_allowsCellularAccess(self, v132, v133);
  v136 = *MEMORY[0x277CBED28];
  v137 = *MEMORY[0x277CBED10];
  if (v134)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v135, *MEMORY[0x277CBED28], *MEMORY[0x277D25510]);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v135, *MEMORY[0x277CBED10], *MEMORY[0x277D25510]);
  }

  if (objc_msgSend_allowsExpensiveNetworkAccess(self, v138, v139))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v140, v136, *MEMORY[0x277D25518]);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v140, v137, *MEMORY[0x277D25518]);
  }

  if (objc_msgSend_allowsPowerNapScheduling(self, v141, v142))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v143, v136, *MEMORY[0x277D25520]);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v143, v137, *MEMORY[0x277D25520]);
  }

  v146 = objc_msgSend_networkingDelegate(self, v144, v145);

  if (v146)
  {
    v149 = objc_msgSend_networkingDelegate(self, v147, v148);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v150, v149, *MEMORY[0x277D255B0]);
  }

  v152 = objc_msgSend_networkServiceType(self, v147, v148);
  if (!v152)
  {
    if (!objc_msgSend_resolvedDiscretionaryNetworkBehavior(self, v151, 0))
    {
      objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v151, 0);
      goto LABEL_41;
    }

    v152 = 3;
  }

  objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v151, v152);
  v153 = LABEL_41:;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v154, v153, *MEMORY[0x277D255A8]);

  v155 = MEMORY[0x277CCABB0];
  v158 = objc_msgSend_qualityOfService(self, v156, v157);
  v160 = objc_msgSend_numberWithInteger_(v155, v159, v158);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v161, v160, *MEMORY[0x277D255C8]);

  v164 = objc_msgSend_resolvedDiscretionaryNetworkBehavior(self, v162, v163);
  if (v164 == 2)
  {
    objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v165, 2);
  }

  else
  {
    objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v165, v164 == 1);
  }
  v166 = ;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v167, v166, *MEMORY[0x277D25570]);

  v170 = objc_msgSend_duetPreClearedMode(self, v168, v169);
  if (v170 == 2)
  {
    objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v171, 2);
  }

  else
  {
    objc_msgSend_numberWithLong_(MEMORY[0x277CCABB0], v171, v170 == 1);
  }
  v172 = ;
  objc_msgSend_setObject_forKeyedSubscript_(v4, v173, v172, *MEMORY[0x277D25578]);

  if (objc_msgSend_resolvedAutomaticallyRetryNetworkFailures(self, v174, v175))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v176, v136, *MEMORY[0x277D25528]);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v176, v137, *MEMORY[0x277D25528]);
  }

  metricOptions = self->_metricOptions;
  if (metricOptions)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v177, metricOptions, *MEMORY[0x277D255A0]);
  }

  if (objc_msgSend_usesBackgroundSession(self, v177, metricOptions))
  {
    v181 = objc_msgSend_sharedURLSessionPool(CKDURLSessionPool, v179, v180);
    v184 = objc_msgSend_backgroundSessionConnectionPoolLimit(v181, v182, v183);

    if (v184)
    {
      v185 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v179, v184);
      objc_msgSend_setObject_forKeyedSubscript_(v4, v186, v185, *MEMORY[0x277D25548]);

      v189 = objc_msgSend_backgroundSessionConnectionPoolName(CKDURLSessionPool, v187, v188);
      objc_msgSend_setObject_forKeyedSubscript_(v4, v190, v189, *MEMORY[0x277D25540]);
    }
  }

  objc_msgSend_setObject_forKeyedSubscript_(v3, v179, v4, *MEMORY[0x277D25610]);
  v193 = objc_msgSend_authPutResponse(self, v191, v192);
  if (v193)
  {
    v196 = v193;
    v197 = objc_msgSend_authPutResponse(self, v194, v195);
    v200 = objc_msgSend_length(v197, v198, v199);

    if (v200)
    {
      v201 = objc_msgSend_authPutResponse(self, v194, v195);
      objc_msgSend_setObject_forKeyedSubscript_(v3, v202, v201, *MEMORY[0x277D255B8]);
    }
  }

  v203 = objc_msgSend_authPutResponseHeaders(self, v194, v195);

  if (v203)
  {
    v206 = objc_msgSend_authPutResponseHeaders(self, v204, v205);
    v208 = objc_msgSend_CKObjectForKeyCaseInsensitive_(v206, v207, @"x-apple-mmcs-proto-version");

    if (v208)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3, v209, v208, *MEMORY[0x277D255F8]);
    }
  }

  v210 = objc_msgSend_cacheDeleteAvailableSpaceClass(self, v204, v205);

  if (v210)
  {
    v213 = objc_msgSend_cacheDeleteAvailableSpaceClass(self, v211, v212);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v214, v213, *MEMORY[0x277D25550]);

    objc_msgSend_setObject_forKeyedSubscript_(v3, v215, MEMORY[0x277CBEC38], *MEMORY[0x277D25580]);
  }

  v216 = objc_msgSend_MMCSRequestOptions(self, v211, v212);
  v219 = objc_msgSend_resumableContainerLimpMode(v216, v217, v218);

  if (v219)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v220, MEMORY[0x277CBEC38], *MEMORY[0x277D255D8]);
  }

  v222 = objc_msgSend_MMCSRequestOptions(self, v220, v221);
  v225 = objc_msgSend_chunkingLibraryCorruptionMode(v222, v223, v224);

  if (v225)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v226, MEMORY[0x277CBEC38], *MEMORY[0x277D25558]);
  }

  v228 = objc_msgSend_MMCSRequestOptions(self, v226, v227);
  v231 = objc_msgSend_insufficientDiskSpaceMode(v228, v229, v230);

  if (v231)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v232, MEMORY[0x277CBEC38], *MEMORY[0x277D25590]);
  }

  v233 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v232, self->_clientQueuePriority);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v234, v233, *MEMORY[0x277D255C0]);

  if (objc_msgSend_useFORD(self, v235, v236))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3, v237, MEMORY[0x277CBEC38], *MEMORY[0x277D25618]);
  }

  return v3;
}

@end