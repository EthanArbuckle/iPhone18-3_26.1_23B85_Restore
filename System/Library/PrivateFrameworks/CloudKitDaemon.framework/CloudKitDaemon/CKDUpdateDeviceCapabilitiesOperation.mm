@interface CKDUpdateDeviceCapabilitiesOperation
+ (id)nameForState:(unint64_t)a3;
- (BOOL)makeStateTransition;
- (id)activityCreate;
- (id)errorForResult:(id)a3 fallbackDescription:(id)a4;
- (id)lastSentCapabilities;
- (id)operationGroupID;
- (id)operationGroupName;
- (id)operationGroupQuantityNumber;
- (id)payloadDescription;
- (id)shareUsages;
- (id)supportedCapabilities;
- (id)zoneUsages;
- (void)handleRequestCompleted:(id)a3;
- (void)invokeCompletionHandlers;
- (void)main;
- (void)sendSupportedCapabilitiesToServer;
- (void)synchronizeSigningIdentities;
@end

@implementation CKDUpdateDeviceCapabilitiesOperation

+ (id)nameForState:(unint64_t)a3
{
  if (a3 - 2 >= 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CKDUpdateDeviceCapabilitiesOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_27854B3B0[a3 - 2];
  }

  return v5;
}

- (id)supportedCapabilities
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_supportedCapabilities(v3, v4, v5);

  return v6;
}

- (id)lastSentCapabilities
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_lastSentCapabilities(v3, v4, v5);

  return v6;
}

- (id)zoneUsages
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_zoneUsages(v3, v4, v5);

  return v6;
}

- (id)shareUsages
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_shareUsages(v3, v4, v5);

  return v6;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/update-device-capabilities", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (id)operationGroupID
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_group(v3, v4, v5);
  v9 = objc_msgSend_operationGroupID(v6, v7, v8);

  return v9;
}

- (id)operationGroupName
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_group(v3, v4, v5);
  v9 = objc_msgSend_name(v6, v7, v8);

  return v9;
}

- (id)operationGroupQuantityNumber
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_group(v3, v4, v5);
  v9 = objc_msgSend_quantityNumber(v6, v7, v8);

  return v9;
}

- (void)main
{
  v27 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v6 = v3;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v10 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v9, 1, 0, 0);
    v13 = objc_msgSend_CKPropertiesStyleString(v10, v11, v12);
    v15 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v14, 0, 1, 0);
    v18 = objc_msgSend_CKPropertiesStyleString(v15, v16, v17);
    v19 = 138544130;
    v20 = v8;
    v21 = 2048;
    v22 = self;
    v23 = 2114;
    v24 = v13;
    v25 = 2112;
    v26 = v18;
    _os_log_debug_impl(&dword_22506F000, v6, OS_LOG_TYPE_DEBUG, "Starting  <%{public}@: %p; %{public}@, %@>", &v19, 0x2Au);
  }

  objc_msgSend_makeStateTransition_(self, v4, 0);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
        v13 = objc_msgSend_error(self, v11, v12);
        objc_msgSend_finishWithError_(self, v14, v13);
      }

      return 1;
    }

    if (!objc_msgSend_didSynchronizeSigningIdentities(self, v5, v6))
    {
      goto LABEL_14;
    }

    objc_msgSend_setState_(self, v7, 2);
    objc_msgSend_setError_(self, v17, 0);
    objc_msgSend_setNeedsSynchronizeSigningIdentities_(self, v18, 0);
LABEL_13:
    objc_msgSend_sendSupportedCapabilitiesToServer(self, v15, v16);
    return 1;
  }

  if (v4 == 1)
  {
    objc_msgSend_setState_(self, v5, 2);
    goto LABEL_13;
  }

  if (v4 == 2)
  {
    if (objc_msgSend_needsSynchronizeSigningIdentities(self, v5, v6) && (objc_msgSend_didSynchronizeSigningIdentities(self, v7, v8) & 1) == 0)
    {
      objc_msgSend_setState_(self, v7, 3);
      objc_msgSend_synchronizeSigningIdentities(self, v9, v10);
      return 1;
    }

LABEL_14:
    objc_msgSend_setState_(self, v7, 4);
    objc_msgSend_invokeCompletionHandlers(self, v19, v20);
  }

  return 1;
}

- (void)sendSupportedCapabilitiesToServer
{
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  v5 = [CKDUpdateDeviceCapabilitiesURLRequest alloc];
  v8 = objc_msgSend_supportedCapabilities(self, v6, v7);
  v11 = objc_msgSend_zoneUsages(self, v9, v10);
  v14 = objc_msgSend_shareUsages(self, v12, v13);
  v16 = objc_msgSend_initWithOperation_supportedCapabilities_zoneUsages_shareUsages_(v5, v15, self, v8, v11, v14);

  objc_initWeak(&location, v16);
  objc_initWeak(&from, self);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_22525E5BC;
  v33[3] = &unk_27854AB78;
  objc_copyWeak(&v34, &from);
  objc_msgSend_setDeviceCapabilitiesUpdatedBlock_(v16, v17, v33);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22525E620;
  v31[3] = &unk_27854B2C8;
  objc_copyWeak(&v32, &from);
  v31[4] = self;
  objc_msgSend_setZoneUsageUpdatedBlock_(v16, v18, v31);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_22525E6E8;
  v29[3] = &unk_27854B2F0;
  objc_copyWeak(&v30, &from);
  v29[4] = self;
  objc_msgSend_setShareUsageUpdatedBlock_(v16, v19, v29);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22525E7B0;
  v26[3] = &unk_278548748;
  objc_copyWeak(&v27, &from);
  objc_copyWeak(&v28, &location);
  objc_msgSend_setCompletionBlock_(v16, v20, v26);
  objc_msgSend_setRequest_(self, v21, v16);
  v24 = objc_msgSend_container(self, v22, v23);
  objc_msgSend_performRequest_(v24, v25, v16);

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (id)errorForResult:(id)a3 fallbackDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_code(v6, v8, v9) == 1)
  {
    v12 = 0;
    goto LABEL_10;
  }

  v13 = objc_msgSend_error(v6, v10, v11);
  v16 = objc_msgSend_clientError(v13, v14, v15);
  hasType = objc_msgSend_hasType(v16, v17, v18);

  if (hasType)
  {
    goto LABEL_9;
  }

  v22 = objc_msgSend_error(v6, v20, v21);
  if ((objc_msgSend_hasExtensionError(v22, v23, v24) & 1) == 0)
  {

LABEL_9:
    v39 = MEMORY[0x277CBC560];
    v40 = *MEMORY[0x277CBBF50];
    v41 = objc_msgSend_request(self, v20, v21);
    v42 = sub_225395734(v41, v6);
    v12 = objc_msgSend_errorWithDomain_code_userInfo_format_(v39, v43, v40, 1, v42, @"%@", v7);

    goto LABEL_10;
  }

  v27 = objc_msgSend_error(v6, v25, v26);
  v30 = objc_msgSend_extensionError(v27, v28, v29);
  hasTypeCode = objc_msgSend_hasTypeCode(v30, v31, v32);

  if (!hasTypeCode)
  {
    goto LABEL_9;
  }

  v34 = MEMORY[0x277CBC560];
  v35 = *MEMORY[0x277CBC120];
  v36 = objc_msgSend_request(self, v20, v21);
  v37 = sub_225395734(v36, v6);
  v12 = objc_msgSend_errorWithDomain_code_userInfo_format_(v34, v38, v35, 6000, v37, @"Plugin-Specific Error");

  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v12;
}

- (id)payloadDescription
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_supportedCapabilities(self, v4, v5);

  if (v6)
  {
    objc_msgSend_appendString_(v3, v7, @"supported device capabilities");
  }

  v9 = objc_msgSend_zoneUsages(self, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11);

  if (v12)
  {
    if (objc_msgSend_length(v3, v13, v14))
    {
      objc_msgSend_appendString_(v3, v15, @", ");
    }

    objc_msgSend_appendString_(v3, v15, @"zone usage");
  }

  v16 = objc_msgSend_shareUsages(self, v13, v14);
  v19 = objc_msgSend_count(v16, v17, v18);

  if (v19)
  {
    if (objc_msgSend_length(v3, v20, v21))
    {
      objc_msgSend_appendString_(v3, v22, @", ");
    }

    objc_msgSend_appendString_(v3, v22, @"share usage");
  }

  return v3;
}

- (void)handleRequestCompleted:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_error(a3, a2, a3);
  if (*MEMORY[0x277CBC810] == 1)
  {
    v7 = objc_msgSend_unitTestOverrides(self, v4, v5);
    v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"forceDeviceCapabilityUpdateFailure");

    if (v9)
    {
      v10 = MEMORY[0x277CBC560];
      v11 = *MEMORY[0x277CBBF50];
      v12 = objc_msgSend_operationID(self, v4, v5);
      v14 = objc_msgSend_errorWithDomain_code_format_(v10, v13, v11, 1, @"Forcing a failure for operation %@", v12);

      v6 = v14;
    }
  }

  if (v6)
  {
    if (objc_msgSend_needsSynchronizeSigningIdentities(self, v4, v5))
    {
LABEL_24:
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v50 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v51 = v50;
        v54 = objc_msgSend_payloadDescription(self, v52, v53);
        v57 = objc_msgSend_container(self, v55, v56);
        v60 = objc_msgSend_containerID(v57, v58, v59);
        *buf = 138412802;
        v63 = v54;
        v64 = 2112;
        v65 = v60;
        v66 = 2112;
        v67 = v6;
        _os_log_impl(&dword_22506F000, v51, OS_LOG_TYPE_INFO, "Warn: Failed to send %@ to the server for container ID %@: %@", buf, 0x20u);
      }

LABEL_28:
      objc_msgSend_setError_(self, v49, v6);
      goto LABEL_29;
    }

    v17 = objc_msgSend_domain(v6, v15, v16);
    v20 = v17;
    if (v17 != *MEMORY[0x277CBC120])
    {

      goto LABEL_24;
    }

    v45 = objc_msgSend_code(v6, v18, v19);

    if (v45 != 5023)
    {
      goto LABEL_24;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v46 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v63 = v6;
      _os_log_impl(&dword_22506F000, v46, OS_LOG_TYPE_INFO, "Signing identity missing: %@", buf, 0xCu);
    }

    if (objc_msgSend_didSynchronizeSigningIdentities(self, v47, v48))
    {
      goto LABEL_28;
    }

    objc_msgSend_setNeedsSynchronizeSigningIdentities_(self, v49, 1);
  }

  else
  {
    v21 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v22 = MEMORY[0x277CBC830];
    v23 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v26 = v23;
      v29 = objc_msgSend_payloadDescription(self, v27, v28);
      v32 = objc_msgSend_container(self, v30, v31);
      v35 = objc_msgSend_containerID(v32, v33, v34);
      *buf = 138412546;
      v63 = v29;
      v64 = 2112;
      v65 = v35;
      _os_log_impl(&dword_22506F000, v26, OS_LOG_TYPE_INFO, "Successfully sent %@ to the server for container ID %@", buf, 0x16u);
    }

    v36 = objc_msgSend_supportedCapabilities(self, v24, v25);

    if (v36)
    {
      if (*v21 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v37 = *v22;
      if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEBUG))
      {
        v38 = v37;
        v41 = objc_msgSend_supportedCapabilities(self, v39, v40);
        v44 = objc_msgSend_lastSentCapabilities(self, v42, v43);
        *buf = 138412546;
        v63 = v41;
        v64 = 2112;
        v65 = v44;
        _os_log_debug_impl(&dword_22506F000, v38, OS_LOG_TYPE_DEBUG, "\n\tSent: %@\n\tPrevious: %@\n", buf, 0x16u);
      }
    }
  }

LABEL_29:

  v61 = *MEMORY[0x277D85DE8];
}

- (void)synchronizeSigningIdentities
{
  v33 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend_needsSynchronizeSigningIdentities(self, a2, v2) || objc_msgSend_didSynchronizeSigningIdentities(self, v5, v6))
  {
    v26 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CKDUpdateDeviceCapabilitiesOperation.m", 311, @"User key sync for signing identities should not have been triggered");
  }

  v7 = objc_msgSend_topmostParentOperation(self, v5, v6);
  v10 = objc_msgSend_operationID(v7, v8, v9);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v32 = v10;
    _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Will attempt user key sync to update signing identities for operation %{public}@.", buf, 0xCu);
  }

  v14 = objc_msgSend_stateTransitionGroup(self, v12, v13);
  dispatch_group_enter(v14);

  objc_initWeak(buf, self);
  objc_msgSend_noteOperationWillWaitOnPCS(self, v15, v16);
  v19 = objc_msgSend_container(self, v17, v18);
  v22 = objc_msgSend_pcsManager(v19, v20, v21);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_22525F27C;
  v28[3] = &unk_27854ABF0;
  objc_copyWeak(&v30, buf);
  v23 = v10;
  v29 = v23;
  objc_msgSend_synchronizeUserKeyRegistryForSigningIdentitiesForRequestorOperationID_shouldThrottle_completionHandler_(v22, v24, v23, 1, v28);

  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);

  v25 = *MEMORY[0x277D85DE8];
}

- (void)invokeCompletionHandlers
{
  v4 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  dispatch_group_enter(v4);

  objc_initWeak(&location, self);
  v7 = objc_msgSend_callbackQueue(self, v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22525F520;
  block[3] = &unk_2785476F0;
  objc_copyWeak(&v9, &location);
  block[4] = self;
  dispatch_async(v7, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

@end