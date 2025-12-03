@interface IMServiceImpl
+ (BOOL)hasAlias:(id)alias onAccountForService:(id)service;
+ (BOOL)iMessageEnabled;
+ (BOOL)iMessageEnabledForReachabilityContext:(id)context;
+ (BOOL)iMessageEnabledForSenderLastAddressedHandle:(id)handle simID:(id)d previousService:(id)service;
+ (BOOL)mmsEnabled;
+ (BOOL)smsEnabled;
+ (BOOL)systemSupportsSendingAttachmentsOfTypes:(id)types error:(int64_t *)error;
+ (Class)serviceClass;
+ (id)activeServices;
+ (id)allServices;
+ (id)allServicesNonBlocking;
+ (id)connectedServices;
+ (id)connectedServicesWithCapability:(unint64_t)capability;
+ (id)operationalServicesWithCapability:(unint64_t)capability;
+ (id)serviceWithInternalName:(id)name;
+ (id)serviceWithName:(id)name;
+ (id)servicesWithCapability:(unint64_t)capability;
+ (id)servicesWithCapabilityName:(id)name;
- (BOOL)equalID:(id)d andID:(id)iD;
- (BOOL)supportsCapability:(id)capability;
- (BOOL)supportsReplication;
- (BOOL)supportsReplicationCapability:(id)capability;
- (IMServiceImpl)initWithName:(id)name;
- (NSArray)accountIDs;
- (NSArray)siblingServices;
- (id)_sorting;
- (id)description;
- (id)infoForAllScreenNames;
- (id)infoForScreenName:(id)name;
- (id)myScreenNames;
- (int64_t)chatResolutionPriority;
- (int64_t)compareNames:(id)names;
- (int64_t)maxAttachmentSize;
- (int64_t)maxChatParticipantsForHandle:(id)handle simID:(id)d;
- (int64_t)serviceForSendingPriority;
- (unint64_t)status;
- (void)_calculateBestAccount;
- (void)_loadPropertiesIfNeeded;
- (void)activeAccountsChanged:(id)changed;
- (void)dealloc;
- (void)defaultsChanged:(id)changed;
- (void)disconnect;
- (void)doneSetup;
- (void)setServiceProperties:(id)properties;
- (void)statusChangedForAccount:(id)account from:(unint64_t)from to:(unint64_t)to;
@end

@implementation IMServiceImpl

+ (Class)serviceClass
{
  if (qword_1EB2EA178)
  {
    v2 = qword_1EB2EA178;
  }

  else
  {
    v2 = objc_opt_class();
  }

  return v2;
}

- (void)_loadPropertiesIfNeeded
{
  if (!self->_hasLoadedServiceProperties)
  {
    self->_hasLoadedServiceProperties = 1;
    v4 = objc_msgSend_objectForKey_(self->_serviceProps, a2, *MEMORY[0x1E69A5E70]);
    self->_handlesChatInvites = objc_msgSend_intValue(v4, v5, v6) > 0;

    v8 = objc_msgSend_objectForKey_(self->_serviceProps, v7, *MEMORY[0x1E69A5E18]);
    self->_isPersistent = objc_msgSend_intValue(v8, v9, v10) > 0;

    v12 = objc_msgSend_objectForKey_(self->_serviceProps, v11, *MEMORY[0x1E69A5E88]);
    self->_isPlugInService = objc_msgSend_intValue(v12, v13, v14) > 0;

    v16 = objc_msgSend_objectForKey_(self->_serviceProps, v15, *MEMORY[0x1E69A5E10]);
    self->_allowsMultipleConnections = objc_msgSend_intValue(v16, v17, v18) > 0;

    v20 = objc_msgSend_objectForKey_(self->_serviceProps, v19, *MEMORY[0x1E69A5EE8]);
    self->_shouldInternationalizeNumbers = objc_msgSend_intValue(v20, v21, v22) > 0;

    v24 = objc_msgSend_objectForKey_(self->_serviceProps, v23, *MEMORY[0x1E69A5E60]);
    self->_shouldDisableDeactivation = objc_msgSend_intValue(v24, v25, v26) > 0;

    v28 = objc_msgSend_objectForKey_(self->_serviceProps, v27, *MEMORY[0x1E69A5E80]);
    self->_ignoresNetworkConnectivity = objc_msgSend_intValue(v28, v29, v30) > 0;

    v32 = objc_msgSend_objectForKey_(self->_serviceProps, v31, *MEMORY[0x1E69A7B08]);
    self->_isDiscontinued = objc_msgSend_intValue(v32, v33, v34) > 0;

    v38 = objc_msgSend_objectForKey_(self->_serviceProps, v35, *MEMORY[0x1E69A7B48]);
    self->_shouldReuseTypingIndicatorGUID = objc_msgSend_intValue(v38, v36, v37) > 0;
  }
}

- (void)_calculateBestAccount
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_sharedInstance(IMAccountController, a2, v2);
  v6 = objc_msgSend_activeAccountsForService_(v4, v5, self);

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      selfCopy = v6;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Accounts: %@", &v14, 0xCu);
    }
  }

  v9 = objc_msgSend_bestAccountFromAccounts_(IMAccountController, v7, v6);
  bestAccount = self->_bestAccount;
  self->_bestAccount = v9;

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = self->_bestAccount;
      v14 = 138412546;
      selfCopy = self;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Recalculated best account for %@: %@", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)allServices
{
  v3 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  objc_msgSend_blockUntilConnected(v3, v4, v5);

  v8 = objc_msgSend_sharedController(IMDaemonController, v6, v7);
  v11 = objc_msgSend_listener(v8, v9, v10);
  v14 = objc_msgSend_allServices(v11, v12, v13);

  return v14;
}

- (int64_t)chatResolutionPriority
{
  v3 = objc_msgSend__sorting(self, a2, v2);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, *MEMORY[0x1E69A7B58]);

  v8 = objc_msgSend_integerValue(v5, v6, v7);
  return v8;
}

- (id)_sorting
{
  v3 = objc_msgSend_serviceProps(self, a2, v2);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, *MEMORY[0x1E69A7B50]);

  return v5;
}

+ (id)allServicesNonBlocking
{
  v3 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  objc_msgSend_connectToDaemonWithLaunch_(v3, v4, 0);

  v7 = objc_msgSend_sharedController(IMDaemonController, v5, v6);
  v10 = objc_msgSend_listener(v7, v8, v9);
  v13 = objc_msgSend_allServices(v10, v11, v12);

  return v13;
}

+ (BOOL)smsEnabled
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E699BE70], a2, v2);
  v6 = objc_msgSend_supportsSMS(v3, v4, v5);

  if (v6)
  {
    return 1;
  }

  v10 = qword_1ED767640;
  if (!qword_1ED767640)
  {
    v11 = objc_msgSend_sharedInstance(IMAccountController, v7, v8);
    v14 = objc_msgSend_smsService(IMServiceImpl, v12, v13);
    v16 = objc_msgSend_bestAccountForService_(v11, v15, v14);
    v17 = qword_1ED767640;
    qword_1ED767640 = v16;

    v10 = qword_1ED767640;
  }

  return objc_msgSend_allowsSMSRelay(v10, v7, v8);
}

+ (BOOL)iMessageEnabled
{
  v34 = *MEMORY[0x1E69E9840];
  if (IMIsRunningInIDSAccountCapableClient())
  {
    if (qword_1ED767698 != -1)
    {
      sub_1A84DF12C();
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v4 = objc_msgSend_accounts(qword_1ED7676A0, v2, v3);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v28, v33, 16);
    if (v8)
    {
      v9 = *v29;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(v4);
          }

          if (objc_msgSend_canSend(*(*(&v28 + 1) + 8 * i), v6, v7))
          {
            LOBYTE(v8) = 1;
            goto LABEL_25;
          }
        }

        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v28, v33, 16);
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v11 = objc_msgSend_sharedInstance(IMAccountController, v2, v3);
    v14 = objc_msgSend_iMessageService(IMServiceImpl, v12, v13);
    v16 = objc_msgSend_accountsForService_(v11, v15, v14);

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = v16;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v17, &v24, v32, 16);
    if (v8)
    {
      v20 = *v25;
      while (2)
      {
        for (j = 0; j != v8; ++j)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v4);
          }

          if (objc_msgSend__isUsableForSending(*(*(&v24 + 1) + 8 * j), v18, v19, v24))
          {
            LOBYTE(v8) = 1;
            goto LABEL_24;
          }
        }

        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v18, &v24, v32, 16);
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_24:
  }

LABEL_25:

  v22 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E695DEC8];
  v4 = objc_msgSend_internalName(self, a2, v2);
  v6 = objc_msgSend_arrayWithObjects_(v3, v5, @"IMService[", v4, @"]", 0);
  v7 = IMCreateSimpleComponentString();

  return v7;
}

+ (id)serviceWithName:(id)name
{
  nameCopy = name;
  if (objc_msgSend_length(nameCopy, v4, v5))
  {
    v8 = objc_msgSend_sharedController(IMDaemonController, v6, v7);
    objc_msgSend_blockUntilConnected(v8, v9, v10);

    v13 = objc_msgSend_sharedController(IMDaemonController, v11, v12);
    v16 = objc_msgSend_listener(v13, v14, v15);
    v18 = objc_msgSend_serviceWithName_(v16, v17, nameCopy);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)serviceWithInternalName:(id)name
{
  nameCopy = name;
  if (!objc_msgSend_length(nameCopy, v5, v6))
  {
    v12 = 0;
    goto LABEL_24;
  }

  if (!qword_1ED767828)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = qword_1ED767828;
    qword_1ED767828 = v9;

    objc_sync_exit(selfCopy);
  }

  if (qword_1ED767808 && objc_msgSend_isEqualToString_(nameCopy, v7, *MEMORY[0x1E69A7AF0]))
  {
    v11 = qword_1ED767808;
LABEL_23:
    v12 = v11;
    goto LABEL_24;
  }

  if (qword_1ED767720 && objc_msgSend_isEqualToString_(nameCopy, v7, *MEMORY[0x1E69A7AF8]))
  {
    v11 = qword_1ED767720;
    goto LABEL_23;
  }

  if (qword_1ED767748 && objc_msgSend_isEqualToString_(nameCopy, v7, *MEMORY[0x1E69A7AE8]))
  {
    v11 = qword_1ED767748;
    goto LABEL_23;
  }

  if (qword_1ED767830 && objc_msgSend_isEqualToString_(nameCopy, v7, *MEMORY[0x1E69A7AE0]))
  {
    v11 = qword_1ED767830;
    goto LABEL_23;
  }

  if (qword_1ED767810 && objc_msgSend_isEqualToString_(nameCopy, v7, *MEMORY[0x1E69A7AD0]))
  {
    v11 = qword_1ED767810;
    goto LABEL_23;
  }

  if (qword_1ED767750 && objc_msgSend_isEqualToString_(nameCopy, v7, *MEMORY[0x1E69A7AD8]))
  {
    v11 = qword_1ED767750;
    goto LABEL_23;
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v16 = objc_msgSend_objectForKey_(qword_1ED767828, v15, nameCopy);
  objc_sync_exit(selfCopy2);

  if (!v16)
  {
    v19 = objc_alloc(objc_msgSend_serviceClass(selfCopy2, v17, v18));
    v16 = objc_msgSend_initWithName_(v19, v20, nameCopy);
    if (objc_msgSend_isEqualToString_(nameCopy, v21, *MEMORY[0x1E69A7AD0]))
    {
      v23 = &qword_1ED767810;
    }

    else if (objc_msgSend_isEqualToString_(nameCopy, v22, *MEMORY[0x1E69A7AF0]))
    {
      v23 = &qword_1ED767808;
    }

    else if (objc_msgSend_isEqualToString_(nameCopy, v24, *MEMORY[0x1E69A7AF8]))
    {
      v23 = &qword_1ED767720;
    }

    else if (objc_msgSend_isEqualToString_(nameCopy, v25, *MEMORY[0x1E69A7AE8]))
    {
      v23 = &qword_1ED767748;
    }

    else if (objc_msgSend_isEqualToString_(nameCopy, v26, *MEMORY[0x1E69A7AE0]))
    {
      v23 = &qword_1ED767830;
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(nameCopy, v27, *MEMORY[0x1E69A7AD8]))
      {
        goto LABEL_41;
      }

      v23 = &qword_1ED767750;
    }

    objc_storeStrong(v23, v16);
LABEL_41:
    if (v16)
    {
      v28 = selfCopy2;
      objc_sync_enter(v28);
      objc_msgSend_setObject_forKey_(qword_1ED767828, v29, v16, nameCopy);
      objc_sync_exit(v28);
    }
  }

  v12 = v16;

LABEL_24:

  return v12;
}

+ (id)activeServices
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = objc_msgSend_allServicesNonBlocking(self, v4, v5, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v26, v30, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = objc_msgSend_sharedInstance(IMAccountController, v9, v10);
        v17 = objc_msgSend_activeAccountsForService_(v15, v16, v14);
        v20 = objc_msgSend_count(v17, v18, v19);

        if (v20)
        {
          objc_msgSend_addObject_(v3, v9, v14);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v26, v30, 16);
    }

    while (v11);
  }

  v23 = objc_msgSend_allObjects(v3, v21, v22);

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

+ (id)connectedServices
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = objc_msgSend_allServicesNonBlocking(self, v4, v5, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v26, v30, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = objc_msgSend_sharedInstance(IMAccountController, v9, v10);
        v17 = objc_msgSend_connectedAccountsForService_(v15, v16, v14);
        v20 = objc_msgSend_count(v17, v18, v19);

        if (v20)
        {
          objc_msgSend_addObject_(v3, v9, v14);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v26, v30, 16);
    }

    while (v11);
  }

  v23 = objc_msgSend_allObjects(v3, v21, v22);

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

+ (id)servicesWithCapability:(unint64_t)capability
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = objc_msgSend_sharedInstance(IMAccountController, v5, v6, 0);
  v9 = objc_msgSend_accountsWithCapability_(v7, v8, capability);

  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v28, v32, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v20 = objc_msgSend_service(v17, v12, v13);
        if (v20)
        {
          v21 = objc_msgSend_service(v17, v18, v19);
          objc_msgSend_addObject_(v4, v22, v21);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v28, v32, 16);
    }

    while (v14);
  }

  v25 = objc_msgSend_allObjects(v4, v23, v24);

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)connectedServicesWithCapability:(unint64_t)capability
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = objc_msgSend_sharedInstance(IMAccountController, v5, v6, 0);
  v9 = objc_msgSend_connectedAccountsWithCapability_(v7, v8, capability);

  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v28, v32, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v20 = objc_msgSend_service(v17, v12, v13);
        if (v20)
        {
          v21 = objc_msgSend_service(v17, v18, v19);
          objc_msgSend_addObject_(v4, v22, v21);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v28, v32, 16);
    }

    while (v14);
  }

  v25 = objc_msgSend_allObjects(v4, v23, v24);

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)operationalServicesWithCapability:(unint64_t)capability
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = objc_msgSend_sharedInstance(IMAccountController, v5, v6, 0);
  v9 = objc_msgSend_operationalAccountsWithCapability_(v7, v8, capability);

  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v28, v32, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v20 = objc_msgSend_service(v17, v12, v13);
        if (v20)
        {
          v21 = objc_msgSend_service(v17, v18, v19);
          objc_msgSend_addObject_(v4, v22, v21);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v28, v32, 16);
    }

    while (v14);
  }

  v25 = objc_msgSend_allObjects(v4, v23, v24);

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)servicesWithCapabilityName:(id)name
{
  nameCopy = name;
  v7 = objc_msgSend_allServices(self, v5, v6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A827CFB4;
  v12[3] = &unk_1E7810338;
  v13 = nameCopy;
  v8 = nameCopy;
  v10 = objc_msgSend___imArrayByFilteringWithBlock_(v7, v9, v12);

  return v10;
}

- (IMServiceImpl)initWithName:(id)name
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = IMServiceImpl;
  v7 = [(IMServiceImpl *)&v15 init];
  if (v7)
  {
    if (objc_msgSend_isEqualToString_(nameCopy, v6, *MEMORY[0x1E69A7AD0]))
    {
      v9 = &qword_1ED767810;
    }

    else if (objc_msgSend_isEqualToString_(nameCopy, v8, *MEMORY[0x1E69A7AF0]))
    {
      v9 = &qword_1ED767808;
    }

    else if (objc_msgSend_isEqualToString_(nameCopy, v10, *MEMORY[0x1E69A7AF8]))
    {
      v9 = &qword_1ED767720;
    }

    else if (objc_msgSend_isEqualToString_(nameCopy, v11, *MEMORY[0x1E69A7AE8]))
    {
      v9 = &qword_1ED767748;
    }

    else if (objc_msgSend_isEqualToString_(nameCopy, v12, *MEMORY[0x1E69A7AE0]))
    {
      v9 = &qword_1ED767830;
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(nameCopy, v13, *MEMORY[0x1E69A7AD8]))
      {
LABEL_15:
        objc_storeStrong(&v7->_name, name);
        goto LABEL_16;
      }

      v9 = &qword_1ED767750;
    }

    objc_storeStrong(v9, v7);
    goto LABEL_15;
  }

LABEL_16:

  return v7;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend_removeObserver_name_object_(v4, v5, self, 0, 0);

  v6.receiver = self;
  v6.super_class = IMServiceImpl;
  [(IMServiceImpl *)&v6 dealloc];
}

- (void)doneSetup
{
  objc_msgSend_activeAccountsChanged_(self, a2, 0);
  objc_msgSend__syncWithRemoteBuddies(self, v3, v4);
  v8 = objc_msgSend_notificationCenter(IMServiceAgent, v5, v6);
  objc_msgSend___mainThreadPostNotificationName_object_(v8, v7, @"__kIMServiceStatusChangedNotification", self);
}

- (void)disconnect
{
  v34 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_internalName(self, v6, v7);
      *buf = 138412290;
      v33 = v8;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Service(%@): Disconnecting from agent", buf, 0xCu);
    }
  }

  if (objc_msgSend_status(self, v3, v4) >= 3)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = objc_msgSend_sharedInstance(IMAccountController, v9, v10, 0);
    v13 = objc_msgSend_accountsForService_(v11, v12, self);

    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v27, v31, 16);
    if (v16)
    {
      v17 = *v28;
      do
      {
        v18 = 0;
        do
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v13);
          }

          objc_msgSend_setIMAccountLoginStatus_(*(*(&v27 + 1) + 8 * v18++), v15, 2);
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v27, v31, 16);
      }

      while (v16);
    }
  }

  v19 = objc_msgSend_status(self, v9, v10);
  bestAccount = self->_bestAccount;
  self->_bestAccount = 0;

  objc_msgSend_statusChangedForAccount_from_to_(self, v21, 0, v19, 1);
  v24 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v22, v23);
  objc_msgSend___mainThreadPostNotificationName_object_(v24, v25, @"ServiceDidDisconnect", self);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)statusChangedForAccount:(id)account from:(unint64_t)from to:(unint64_t)to
{
  toCopy = to;
  fromCopy = from;
  v23 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v17 = 138412802;
      v18 = accountCopy;
      v19 = 1024;
      v20 = fromCopy;
      v21 = 1024;
      v22 = toCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Status changed for account: %@             from: %d to: %d", &v17, 0x18u);
    }
  }

  objc_msgSend__calculateBestAccount(self, v9, v10);
  v14 = objc_msgSend_notificationCenter(IMServiceAgent, v12, v13);
  objc_msgSend___mainThreadPostNotificationName_object_(v14, v15, @"__kIMServiceStatusChangedNotification", self);

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)equalID:(id)d andID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v9 = iDCopy;
  if (dCopy == iDCopy)
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = 0;
    if (dCopy && iDCopy)
    {
      v11 = objc_msgSend_canonicalFormOfID_(self, v8, dCopy);
      v13 = objc_msgSend_canonicalFormOfID_(self, v12, v9);
      isEqualToString = objc_msgSend_isEqualToString_(v11, v14, v13);
    }
  }

  return isEqualToString;
}

- (int64_t)compareNames:(id)names
{
  namesCopy = names;
  v7 = objc_msgSend_name(self, v5, v6);
  v10 = objc_msgSend_name(namesCopy, v8, v9);

  v12 = objc_msgSend_localizedCompareToString_(v7, v11, v10);
  return v12;
}

- (unint64_t)status
{
  bestAccount = self->_bestAccount;
  if (bestAccount)
  {
    return objc_msgSend_loginStatus(bestAccount, a2, v2);
  }

  else
  {
    return 1;
  }
}

- (id)infoForScreenName:(id)name
{
  v29 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  objc_msgSend__blockUntilInitialSyncPerformed(self, v5, v6);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = objc_msgSend_sharedInstance(IMAccountController, v7, v8, 0);
  v11 = objc_msgSend_accountsForService_(v9, v10, self);

  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v24, v28, 16);
  if (v14)
  {
    v15 = *v25;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = objc_msgSend_existingIMHandleWithID_(*(*(&v24 + 1) + 8 * i), v13, nameCopy);
        v20 = objc_msgSend_bestAccountSibling(v17, v18, v19);

        if (v20)
        {
          v14 = objc_msgSend_publicAPIPropertiesDictionary(v20, v13, v21);

          goto LABEL_11;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v24, v28, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v22 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)infoForAllScreenNames
{
  v37 = *MEMORY[0x1E69E9840];
  objc_msgSend__blockUntilInitialSyncPerformed(self, a2, v2);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = objc_msgSend_sharedInstance(IMAccountController, v5, v6, 0);
  v9 = objc_msgSend_accountsForService_(v7, v8, self);

  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v32, v36, 16);
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = objc_alloc(MEMORY[0x1E695DEC8]);
        v19 = objc_msgSend_arrayOfAllIMHandles(v15, v17, v18);
        v21 = objc_msgSend_initWithArray_(v16, v20, v19);

        if (objc_msgSend_count(v21, v22, v23))
        {
          objc_msgSend_addObjectsFromArray_(v4, v24, v21);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v25, &v32, v36, 16);
    }

    while (v12);
  }

  v27 = objc_msgSend_filterIMHandlesForBestAccountSiblings_(IMHandle, v26, v4);
  v29 = objc_msgSend_arrayByApplyingSelector_(v27, v28, sel_publicAPIPropertiesDictionary);

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (id)myScreenNames
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_sharedInstance(IMAccountController, a2, v2);
  v6 = objc_msgSend_activeAccountsForService_(v4, v5, self);

  v7 = MEMORY[0x1E695DF70];
  v10 = objc_msgSend_count(v6, v8, v9);
  v12 = objc_msgSend_arrayWithCapacity_(v7, v11, v10);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v6;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v25, v29, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v26;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v22 = objc_msgSend_login(*(*(&v25 + 1) + 8 * i), v16, v17, v25);
        if (v22)
        {
          objc_msgSend_addObject_(v12, v21, v22);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v25, v29, 16);
    }

    while (v18);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)supportsCapability:(id)capability
{
  serviceProps = self->_serviceProps;
  v4 = *MEMORY[0x1E69A7B00];
  capabilityCopy = capability;
  v7 = objc_msgSend_objectForKey_(serviceProps, v6, v4);
  v9 = objc_msgSend_objectForKey_(v7, v8, capabilityCopy);

  LOBYTE(capabilityCopy) = objc_msgSend_intValue(v9, v10, v11) > 0;
  return capabilityCopy;
}

- (BOOL)supportsReplicationCapability:(id)capability
{
  serviceProps = self->_serviceProps;
  v4 = *MEMORY[0x1E69A7B20];
  capabilityCopy = capability;
  v7 = objc_msgSend_objectForKey_(serviceProps, v6, v4);
  v9 = objc_msgSend_objectForKey_(v7, v8, capabilityCopy);

  LOBYTE(capabilityCopy) = objc_msgSend_intValue(v9, v10, v11) > 0;
  return capabilityCopy;
}

- (BOOL)supportsReplication
{
  v2 = objc_msgSend_objectForKeyedSubscript_(self->_serviceProps, a2, *MEMORY[0x1E69A7B40]);
  v3 = v2 != 0;

  return v3;
}

- (int64_t)serviceForSendingPriority
{
  v3 = objc_msgSend__sorting(self, a2, v2);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, *MEMORY[0x1E69A7B60]);

  v8 = objc_msgSend_integerValue(v5, v6, v7);
  return v8;
}

- (void)setServiceProperties:(id)properties
{
  v51 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  serviceProps = self->_serviceProps;
  if (serviceProps != propertiesCopy && objc_msgSend_count(serviceProps, v5, v6) <= 2)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v47 = 138412546;
        selfCopy = self;
        v49 = 2112;
        v50 = propertiesCopy;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Service: %@  set properties: %@", &v47, 0x16u);
      }
    }

    objc_storeStrong(&self->_serviceProps, properties);
    v11 = objc_msgSend_objectForKey_(propertiesCopy, v10, *MEMORY[0x1E69A5EB0]);
    localizedName = self->_localizedName;
    self->_localizedName = v11;

    v14 = objc_msgSend_objectForKey_(propertiesCopy, v13, *MEMORY[0x1E69A5ED0]);
    localizedShortName = self->_localizedShortName;
    self->_localizedShortName = v14;

    v17 = objc_msgSend_objectForKey_(propertiesCopy, v16, *MEMORY[0x1E69A5ED8]);
    siblingServiceNames = self->_siblingServiceNames;
    self->_siblingServiceNames = v17;

    v20 = objc_msgSend_objectForKey_(propertiesCopy, v19, *MEMORY[0x1E69A5E68]);
    emailDomains = self->_emailDomains;
    self->_emailDomains = v20;

    v23 = objc_msgSend_objectForKey_(propertiesCopy, v22, *MEMORY[0x1E69A5E78]);
    self->_screenNameSensitivity = objc_msgSend_intValue(v23, v24, v25);

    v27 = objc_msgSend_objectForKey_(propertiesCopy, v26, *MEMORY[0x1E69A7B18]);
    self->_handleIDInsensitivityIsCarrierBased = objc_msgSend_BOOLValue(v27, v28, v29);

    v31 = objc_msgSend_objectForKey_(propertiesCopy, v30, *MEMORY[0x1E69A7B10]);
    self->_caseInsensitivityByHandleType = objc_msgSend_intValue(v31, v32, v33);

    objc_msgSend__loadPropertiesIfNeeded(self, v34, v35);
    if (objc_msgSend_supportsCapability_(self, v36, *MEMORY[0x1E69A79E8]) && !self->_countryCode)
    {
      v39 = objc_msgSend_currentLocale(MEMORY[0x1E695DF58], v37, v38);
      v41 = objc_msgSend_objectForKey_(v39, v40, *MEMORY[0x1E695D978]);
      v44 = objc_msgSend_lowercaseString(v41, v42, v43);
      countryCode = self->_countryCode;
      self->_countryCode = v44;
    }
  }

  v46 = *MEMORY[0x1E69E9840];
}

+ (BOOL)hasAlias:(id)alias onAccountForService:(id)service
{
  v39 = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  serviceCopy = service;
  v9 = objc_msgSend_sharedInstance(IMAccountController, v7, v8);
  v11 = objc_msgSend_accountsForService_(v9, v10, serviceCopy);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = v11;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v34, v38, 16);
  if (v14)
  {
    v15 = *v35;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        if (MEMORY[0x1AC56C3C0](aliasCopy))
        {
          v20 = IMCanonicalizeFormattedString();
        }

        else
        {
          v20 = 0;
        }

        v21 = objc_msgSend_aliases(v17, v18, v19, v34);
        if (objc_msgSend_containsObject_(v21, v22, v20))
        {
          isUsableForSending = objc_msgSend__isUsableForSending(v17, v23, v24);

          if (isUsableForSending)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v27 = objc_msgSend_aliases(v17, v23, v24);
          if (objc_msgSend_containsObject_(v27, v28, aliasCopy))
          {
            v31 = objc_msgSend__isUsableForSending(v17, v29, v30);

            if (v31)
            {

LABEL_20:
              LOBYTE(v14) = 1;
              goto LABEL_21;
            }
          }

          else
          {
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v26, &v34, v38, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v32 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (BOOL)iMessageEnabledForSenderLastAddressedHandle:(id)handle simID:(id)d previousService:(id)service
{
  v8 = MEMORY[0x1E69A8240];
  serviceCopy = service;
  dCopy = d;
  handleCopy = handle;
  v12 = objc_alloc_init(v8);
  objc_msgSend_setSenderLastAddressedHandle_(v12, v13, handleCopy);

  objc_msgSend_setSenderLastAddressedSIMID_(v12, v14, dCopy);
  v17 = objc_msgSend_name(serviceCopy, v15, v16);

  objc_msgSend_setLastUsedServiceName_(v12, v18, v17);
  LOBYTE(self) = objc_msgSend_iMessageEnabledForReachabilityContext_(self, v19, v12);

  return self;
}

+ (BOOL)mmsEnabled
{
  v4 = objc_msgSend_sharedInstance(MEMORY[0x1E699BE70], a2, v2);
  v7 = objc_msgSend_supportsMMS(v4, v5, v6);

  v10 = objc_msgSend_sharedInstance(MEMORY[0x1E699BE70], v8, v9);
  v13 = objc_msgSend_mmsConfigured(v10, v11, v12);

  MMSUserOverride = objc_msgSend__readMMSUserOverride(self, v14, v15);
  if (v7)
  {
    v19 = v13 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19 && (MMSUserOverride & 1) != 0)
  {
    return 1;
  }

  v21 = qword_1EB2EA180;
  if (!qword_1EB2EA180)
  {
    v22 = objc_msgSend_sharedInstance(IMAccountController, v17, v18);
    v25 = objc_msgSend_smsService(IMServiceImpl, v23, v24);
    v27 = objc_msgSend_bestAccountForService_(v22, v26, v25);
    v28 = qword_1EB2EA180;
    qword_1EB2EA180 = v27;

    v21 = qword_1EB2EA180;
  }

  return objc_msgSend_allowsMMSRelay(v21, v17, v18);
}

- (int64_t)maxChatParticipantsForHandle:(id)handle simID:(id)d
{
  handleCopy = handle;
  dCopy = d;
  if (qword_1ED767808 == self)
  {
    if (qword_1EB2EA190 != -1)
    {
      sub_1A84DF140();
    }

    v13 = objc_msgSend_sharedInstanceForBagType_(qword_1EB2EA188, v7, 1);
    v10 = objc_msgSend_objectForKey_(v13, v14, @"md-max-chat-participants");

    if (v10 && objc_msgSend_integerValue(v10, v15, v16) > 10)
    {
      v12 = objc_msgSend_integerValue(v10, v17, v18);
      goto LABEL_10;
    }

LABEL_12:
    v19 = -1;
    goto LABEL_14;
  }

  if (qword_1ED767830 == self)
  {
    v19 = objc_msgSend_IMMMSMaxRecipientsForPhoneNumber_simID_(MEMORY[0x1E69A7F58], v7, handleCopy, dCopy);
    goto LABEL_14;
  }

  if (qword_1ED767750 != self)
  {
    goto LABEL_12;
  }

  v10 = objc_msgSend_sharedManager(MEMORY[0x1E69A7F50], v7, v8);
  v12 = objc_msgSend_groupMessagingMaxGroupSizeForPhoneNumber_simID_(v10, v11, handleCopy, dCopy);
LABEL_10:
  v19 = v12;

LABEL_14:
  return v19;
}

- (int64_t)maxAttachmentSize
{
  v2 = objc_msgSend_objectForKey_(self->_serviceProps, a2, *MEMORY[0x1E69A5EA8]);
  v5 = v2;
  if (v2)
  {
    v6 = objc_msgSend_integerValue(v2, v3, v4);
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (NSArray)siblingServices
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = objc_msgSend_count(self->_siblingServiceNames, v4, v5);
  v8 = objc_msgSend_initWithCapacity_(v3, v7, v6 + 1);
  objc_msgSend_addObject_(v8, v9, self);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = self->_siblingServiceNames;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v21, v25, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v13, *(*(&v21 + 1) + 8 * i), v21);
        v18 = v17;
        if (v8 && v17)
        {
          CFArrayAppendValue(v8, v17);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v21, v25, 16);
    }

    while (v14);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v8;
}

- (NSArray)accountIDs
{
  v4 = objc_msgSend_sharedInstance(IMAccountController, a2, v2);
  v6 = objc_msgSend_activeAccountsForService_(v4, v5, self);
  v8 = objc_msgSend_arrayByApplyingSelector_(v6, v7, sel_uniqueID);

  return v8;
}

- (void)defaultsChanged:(id)changed
{
  changedCopy = changed;
  if (self->_serviceDefaults != changedCopy)
  {
    objc_storeStrong(&self->_serviceDefaults, changed);
  }

  v7 = objc_msgSend_notificationCenter(IMServiceAgent, v5, v6);
  objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v7, v8, @"__kIMServiceDefaultsChangedNotification", self, 0);
}

- (void)activeAccountsChanged:(id)changed
{
  objc_msgSend__calculateBestAccount(self, a2, changed);
  v7 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v4, v5);
  objc_msgSend___mainThreadPostNotificationName_object_(v7, v6, @"NotificationActiveAccountChanged", self);
}

+ (BOOL)systemSupportsSendingAttachmentsOfTypes:(id)types error:(int64_t *)error
{
  typesCopy = types;
  if (objc_opt_class() == self)
  {
    CanBeSent = IMMMSPartCombinationCanBeSent();
  }

  else
  {
    CanBeSent = 1;
  }

  return CanBeSent;
}

+ (BOOL)iMessageEnabledForReachabilityContext:(id)context
{
  v4 = sub_1A84E570C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_1EB2E5A18;
  contextCopy = context;
  if (v9 != -1)
  {
    swift_once();
  }

  sub_1A84E56FC();
  sub_1A84E56EC();
  (*(v5 + 8))(v8, v4);
  v11 = sub_1A84E5B5C();

  return v11 & 1;
}

@end