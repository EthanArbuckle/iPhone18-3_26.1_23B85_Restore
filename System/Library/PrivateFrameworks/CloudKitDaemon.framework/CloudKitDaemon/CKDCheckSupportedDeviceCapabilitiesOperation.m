@interface CKDCheckSupportedDeviceCapabilitiesOperation
+ (id)nameForState:(unint64_t)a3;
- (BOOL)makeStateTransition;
- (CKDCheckSupportedDeviceCapabilitiesOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)activityCreate;
- (void)_handleContinuation:(id)a3;
- (void)_handleError:(id)a3 forZoneID:(id)a4 capabilitySet:(id)a5;
- (void)_handleSupportedDeviceCapabilitiesCheckedForZoneID:(id)a3 capabilitySet:(id)a4 result:(id)a5 responseCode:(id)a6;
- (void)checkSupportedCapabilitiesWithServer;
- (void)fetchServerConfigIfNecessary;
- (void)invokeCompletionHandlers;
- (void)reportClientValidationError:(id)a3;
- (void)validateShareParticipants;
- (void)validateSigningIdentities;
@end

@implementation CKDCheckSupportedDeviceCapabilitiesOperation

- (CKDCheckSupportedDeviceCapabilitiesOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v33.receiver = self;
  v33.super_class = CKDCheckSupportedDeviceCapabilitiesOperation;
  v9 = [(CKDDatabaseOperation *)&v33 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_zoneIDs(v6, v7, v8);
    zoneIDs = v9->_zoneIDs;
    v9->_zoneIDs = v10;

    v14 = objc_msgSend_desiredCapabilitySets(v6, v12, v13);
    desiredCapabilitySets = v9->_desiredCapabilitySets;
    v9->_desiredCapabilitySets = v14;

    v18 = objc_msgSend_options(v6, v16, v17);
    options = v9->_options;
    v9->_options = v18;

    v20 = objc_opt_new();
    continuations = v9->_continuations;
    v9->_continuations = v20;

    v22 = objc_alloc(MEMORY[0x277CBEB18]);
    v25 = objc_msgSend_count(v9->_zoneIDs, v23, v24);
    v28 = objc_msgSend_count(v9->_desiredCapabilitySets, v26, v27);
    v30 = objc_msgSend_initWithCapacity_(v22, v29, v28 * v25);
    results = v9->_results;
    v9->_results = v30;
  }

  return v9;
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 > 3)
  {
    switch(v4)
    {
      case 4:
        objc_msgSend_setState_(self, v5, 5);
        objc_msgSend_validateSigningIdentities(self, v21, v22);
        break;
      case 5:
        objc_msgSend_setState_(self, v5, 6);
        objc_msgSend_invokeCompletionHandlers(self, v23, v24);
        break;
      case 6:
        objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
        v17 = objc_msgSend_error(self, v15, v16);
        objc_msgSend_finishWithError_(self, v18, v17);

        break;
    }
  }

  else
  {
    switch(v4)
    {
      case 1:
        objc_msgSend_setState_(self, v5, 2);
        objc_msgSend_fetchServerConfigIfNecessary(self, v19, v20);
        return 1;
      case 2:
        objc_msgSend_setState_(self, v5, 3);
        goto LABEL_14;
      case 3:
        v7 = objc_msgSend_continuations(self, v5, v6);
        v10 = objc_msgSend_count(v7, v8, v9);

        if (!v10)
        {
          objc_msgSend_setState_(self, v11, 4);
          objc_msgSend_validateShareParticipants(self, v13, v14);
          return 1;
        }

LABEL_14:
        objc_msgSend_checkSupportedCapabilitiesWithServer(self, v11, v12);
        break;
    }
  }

  return 1;
}

+ (id)nameForState:(unint64_t)a3
{
  if (a3 - 2 >= 5)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CKDCheckSupportedDeviceCapabilitiesOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_27854ADE8[a3 - 2];
  }

  return v5;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/check-device-capabilities", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)fetchServerConfigIfNecessary
{
  v4 = objc_msgSend_container(self, a2, v2);
  v7 = objc_msgSend_serverConfig(v4, v5, v6);

  if (!v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      LOWORD(location[0]) = 0;
      _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "Server config is not fetched yet for determining device capabilities checking enablement. Fetching it now...", location, 2u);
    }

    v11 = objc_msgSend_stateTransitionGroup(self, v9, v10);
    dispatch_group_enter(v11);
    objc_initWeak(location, self);
    v14 = objc_msgSend_container(self, v12, v13);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_225240810;
    v17[3] = &unk_27854AD00;
    objc_copyWeak(&v19, location);
    v15 = v11;
    v18 = v15;
    objc_msgSend_fetchConfigurationForOperation_withCompletionHandler_(v14, v16, self, v17);

    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }
}

- (void)checkSupportedCapabilitiesWithServer
{
  v83 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_container(self, a2, v2);
  v7 = objc_msgSend_allowsDeviceCapabilitiesChecking(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_continuations(self, v8, v9);
    v13 = objc_msgSend_count(v10, v11, v12);

    v14 = *MEMORY[0x277CBC878];
    v15 = *MEMORY[0x277CBC880];
    v16 = MEMORY[0x277CBC830];
    if (v13)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v14);
      }

      v17 = *v16;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v53 = v17;
        v54 = objc_opt_class();
        v55 = NSStringFromClass(v54);
        v58 = objc_msgSend_ckShortDescription(self, v56, v57);
        *location = 138543874;
        *&location[4] = v55;
        v79 = 2048;
        v80 = self;
        v81 = 2114;
        v82 = v58;
        _os_log_debug_impl(&dword_22506F000, v53, OS_LOG_TYPE_DEBUG, "Continuing check supported device capabilities operation <%{public}@: %p; %{public}@>", location, 0x20u);
      }

      v20 = objc_msgSend_continuations(self, v18, v19);
      v21 = objc_opt_new();
      objc_msgSend_setContinuations_(self, v22, v21);

      v25 = 0;
      v26 = 0;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v14);
      }

      v30 = *v16;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v59 = v30;
        v60 = objc_opt_class();
        v61 = NSStringFromClass(v60);
        v64 = objc_msgSend_ckShortDescription(self, v62, v63);
        *location = 138543874;
        *&location[4] = v61;
        v79 = 2048;
        v80 = self;
        v81 = 2114;
        v82 = v64;
        _os_log_debug_impl(&dword_22506F000, v59, OS_LOG_TYPE_DEBUG, "Check supported device capabilities operation <%{public}@: %p; %{public}@> is starting", location, 0x20u);
      }

      v26 = objc_msgSend_zoneIDs(self, v31, v32);
      v25 = objc_msgSend_desiredCapabilitySets(self, v33, v34);
      v20 = 0;
    }

    v35 = objc_msgSend_stateTransitionGroup(self, v23, v24);
    dispatch_group_enter(v35);

    v36 = [CKDCheckSupportedDeviceCapabilitiesURLRequest alloc];
    v39 = objc_msgSend_options(self, v37, v38);
    v41 = objc_msgSend_initWithOperation_continuations_zoneIDs_desiredCapabilitySets_options_(v36, v40, self, v20, v26, v25, v39);

    objc_initWeak(location, self);
    objc_initWeak(&from, v41);
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = sub_225240FF4;
    v75[3] = &unk_27854AD28;
    objc_copyWeak(&v76, location);
    objc_msgSend_setSupportedDeviceCapabilitiesCheckedForZoneBlock_(v41, v42, v75);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = sub_22524109C;
    v73[3] = &unk_27854AD50;
    objc_copyWeak(&v74, location);
    objc_msgSend_setContinuationResponseBlock_(v41, v43, v73);
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = sub_2252410F8;
    v71[3] = &unk_27854AD78;
    objc_copyWeak(&v72, location);
    objc_msgSend_setErrorFromServerBlock_(v41, v44, v71);
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = sub_22524133C;
    v69[3] = &unk_27854ADA0;
    objc_copyWeak(&v70, location);
    objc_msgSend_setErrorFromClientValidationBlock_(v41, v45, v69);
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = sub_2252414DC;
    v66[3] = &unk_278548748;
    objc_copyWeak(&v67, location);
    objc_copyWeak(&v68, &from);
    objc_msgSend_setCompletionBlock_(v41, v46, v66);
    objc_msgSend_setRequest_(self, v47, v41);
    v50 = objc_msgSend_container(self, v48, v49);
    objc_msgSend_performRequest_(v50, v51, v41);

    objc_destroyWeak(&v68);
    objc_destroyWeak(&v67);
    objc_destroyWeak(&v70);
    objc_destroyWeak(&v72);
    objc_destroyWeak(&v74);
    objc_destroyWeak(&v76);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);

    v52 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v65 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 1017, @"Device capability checking is not enabled for this container");
    objc_msgSend_setState_(self, v27, 0xFFFFFFFFLL);
    objc_msgSend_finishWithError_(self, v28, v65);
    v29 = *MEMORY[0x277D85DE8];
  }
}

- (void)_handleContinuation:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_continuations(self, v5, v6);
  objc_msgSend_addObject_(v8, v7, v4);
}

- (void)_handleError:(id)a3 forZoneID:(id)a4 capabilitySet:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [CKDDeviceCapabilityCheckPerRequestResult alloc];
  v17 = objc_msgSend_initWithZoneID_capabilitySet_result_error_(v11, v12, v9, v8, 0, v10);

  v15 = objc_msgSend_results(self, v13, v14);
  objc_msgSend_addObject_(v15, v16, v17);
}

- (void)_handleSupportedDeviceCapabilitiesCheckedForZoneID:(id)a3 capabilitySet:(id)a4 result:(id)a5 responseCode:(id)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [CKDDeviceCapabilityCheckPerRequestResult alloc];
  v18 = objc_msgSend_initWithZoneID_capabilitySet_result_error_(v12, v13, v11, v10, v9, 0);

  v16 = objc_msgSend_results(self, v14, v15);
  objc_msgSend_addObject_(v16, v17, v18);
}

- (void)reportClientValidationError:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_225241910;
  v7[3] = &unk_2785487F8;
  v8 = v4;
  v5 = v4;
  objc_msgSend_updateCloudKitMetrics_(self, v6, v7);
}

- (void)validateShareParticipants
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v9 = objc_msgSend_results(self, v7, v8);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v50, v55, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v51;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v51 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v50 + 1) + 8 * i);
        v18 = objc_msgSend_error(v17, v12, v13);

        if (!v18)
        {
          v19 = objc_msgSend_result(v17, v12, v13);
          v22 = objc_msgSend_shareID(v19, v20, v21);

          if (v22)
          {
            objc_msgSend_addObject_(v5, v23, v22);
            objc_msgSend_addObject_(v6, v24, v17);
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v50, v55, 16);
    }

    while (v14);
  }

  if (objc_msgSend_count(v5, v25, v26))
  {
    v29 = objc_alloc_init(MEMORY[0x277CBC3F0]);
    v32 = objc_msgSend_allObjects(v5, v30, v31);
    objc_msgSend_setRecordIDs_(v29, v33, v32);

    v54 = *MEMORY[0x277CBC040];
    v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v34, &v54, 1);
    objc_msgSend_setDesiredKeys_(v29, v36, v35);

    v39 = objc_msgSend_stateTransitionGroup(self, v37, v38);
    dispatch_group_enter(v39);

    v40 = objc_opt_class();
    v44 = MEMORY[0x277D85DD0];
    v45 = 3221225472;
    v46 = sub_225241BD4;
    v47 = &unk_278548C48;
    v48 = v6;
    v49 = self;
    objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(self, v41, v40, v29, &v44);
  }

  v42 = objc_msgSend_stateTransitionGroup(self, v27, v28, v44, v45, v46, v47);
  dispatch_group_leave(v42);

  v43 = *MEMORY[0x277D85DE8];
}

- (void)validateSigningIdentities
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = objc_msgSend_results(self, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v39, v43, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v40;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v39 + 1) + 8 * i);
        objc_msgSend_setIsValidatedWithKT_(v14, v10, 0);
        v17 = objc_msgSend_error(v14, v15, v16);

        if (!v17)
        {
          v19 = objc_msgSend_result(v14, v10, v18);
          v22 = objc_msgSend_publicKeys(v19, v20, v21);

          if (objc_msgSend_count(v22, v23, v24))
          {
            v27 = objc_msgSend_result(v14, v25, v26);
            objc_msgSend_canValidateWithKT(v27, v28, v29);

            v32 = objc_msgSend_result(v14, v30, v31);
            objc_msgSend_shareID(v32, v33, v34);
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v39, v43, 16);
    }

    while (v11);
  }

  v37 = objc_msgSend_stateTransitionGroup(self, v35, v36);
  dispatch_group_leave(v37);

  v38 = *MEMORY[0x277D85DE8];
}

- (void)invokeCompletionHandlers
{
  v3 = self;
  v88 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  v5 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_results(v3, v6, v7);
  v11 = objc_msgSend_count(v8, v9, v10);
  v77 = objc_msgSend_initWithCapacity_(v5, v12, v11);

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = objc_msgSend_results(v3, v13, v14);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v83, v87, 16);
  if (v16)
  {
    v19 = v16;
    v20 = *v84;
    v75 = *v84;
    v76 = v3;
    do
    {
      v21 = 0;
      v78 = v19;
      do
      {
        if (*v84 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v83 + 1) + 8 * v21);
        v23 = objc_msgSend_result(v22, v17, v18);
        v26 = objc_msgSend_checkSupportedDeviceCapabilitiesProgressBlock(v3, v24, v25);

        if (v26)
        {
          v29 = objc_msgSend_checkSupportedDeviceCapabilitiesProgressBlock(v3, v27, v28);
          v32 = objc_msgSend_zoneID(v22, v30, v31);
          v35 = objc_msgSend_capabilitySet(v22, v33, v34);
          v38 = objc_msgSend_error(v22, v36, v37);
          (v29)[2](v29, v32, v35, v23, v38);
        }

        v39 = objc_msgSend_error(v22, v27, v28);

        if (!v39)
        {
          isSupported = objc_msgSend_isSupported(v23, v40, v41);
          if (isSupported)
          {
            IsManateeSigned = 0;
            v45 = 0;
            v46 = 0;
            v47 = 0;
            v48 = 0;
          }

          else
          {
            v49 = objc_msgSend_shareID(v23, v42, v43);
            v46 = v49 == 0;

            v52 = objc_msgSend_publicKeys(v23, v50, v51);
            v48 = objc_msgSend_count(v52, v53, v54);

            if (v48)
            {
              v45 = objc_msgSend_usageIsManateeSigned(v23, v42, v43) ^ 1;
              v47 = objc_msgSend_capabilitiesIsManateeSigned(v23, v55, v56) ^ 1;
              IsManateeSigned = objc_msgSend_usageIsManateeSigned(v23, v57, v58);
              v48 = objc_msgSend_capabilitiesIsManateeSigned(v23, v59, v60);
            }

            else
            {
              IsManateeSigned = 0;
              v45 = 0;
              v47 = 0;
            }
          }

          v61 = MEMORY[0x277CCABB0];
          LOBYTE(v74) = objc_msgSend_isValidatedWithKT(v22, v42, v43);
          v63 = objc_msgSend_makeAdopterCapabilityCheckResultWithIsSupported_isOwner_isUsageStingraySigned_isCapabilitiesStingraySigned_isUsageManateeSigned_isCapabilitiesManateeSigned_isKTValidated_(CKDOperationMetrics, v62, isSupported, v46, v45, v47, IsManateeSigned, v48, v74);
          v65 = objc_msgSend_numberWithUnsignedInteger_(v61, v64, v63);
          objc_msgSend_addObject_(v77, v66, v65);

          v20 = v75;
          v3 = v76;
          v19 = v78;
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v83, v87, 16);
    }

    while (v19);
  }

  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = sub_225242B5C;
  v81[3] = &unk_2785487F8;
  v82 = v77;
  objc_msgSend_updateCloudKitMetrics_(v3, v67, v81);
  v68 = objc_autoreleasePoolPush();
  objc_msgSend_setResults_(v3, v69, 0);
  objc_autoreleasePoolPop(v68);
  v72 = objc_msgSend_stateTransitionGroup(v3, v70, v71);
  dispatch_group_leave(v72);

  v73 = *MEMORY[0x277D85DE8];
}

@end