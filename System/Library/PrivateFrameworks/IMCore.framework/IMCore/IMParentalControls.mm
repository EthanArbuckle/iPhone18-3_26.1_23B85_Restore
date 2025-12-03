@interface IMParentalControls
+ (id)standardControls;
- (BOOL)accountHasAllowlist:(id)allowlist;
- (BOOL)accountIsEnabled:(id)enabled;
- (BOOL)disableAccount:(id)account;
- (BOOL)disableService:(id)service;
- (BOOL)forceAllowlistForAccount:(id)account;
- (BOOL)forceAllowlistForService:(id)service;
- (IMParentalControls)init;
- (id)_serviceWithName:(id)name;
- (id)allowlistForAccount:(id)account;
- (id)allowlistForService:(id)service;
- (void)_updateParentalSettings;
- (void)dealloc;
@end

@implementation IMParentalControls

+ (id)standardControls
{
  if (qword_1ED7677A8 != -1)
  {
    sub_1A824C8CC();
  }

  if (qword_1ED7677B8 != -1)
  {
    sub_1A824C8E0();
  }

  if (qword_1ED7677B0 != -1)
  {
    sub_1A824C8F4();
  }

  v2 = qword_1ED7677A0;

  return v2;
}

- (IMParentalControls)init
{
  v14.receiver = self;
  v14.super_class = IMParentalControls;
  v2 = [(IMParentalControls *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    parentalControls = v2->_parentalControls;
    v2->_parentalControls = v3;

    objc_msgSend_setShouldPostNotifications_(v2, v5, 0);
    objc_msgSend__updateParentalSettings(v2, v6, v7);
    v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9);
    objc_msgSend_addObserver_selector_name_object_(v10, v11, v2, sel__managedPrefsNotification_, *MEMORY[0x1E695E718], *MEMORY[0x1E695E720]);

    objc_msgSend_setShouldPostNotifications_(v2, v12, 1);
  }

  return v2;
}

- (void)_updateParentalSettings
{
  v115 = *MEMORY[0x1E69E9840];
  v104 = !self->_active;
  if (!self->_active)
  {
    self->_active = 1;
  }

  v2 = objc_msgSend__serviceWithName_(self, a2, *MEMORY[0x1E69A7AD0]);
  v5 = objc_msgSend_sharedConnection(MEMORY[0x1E69ADFB8], v3, v4);
  v7 = objc_msgSend_effectiveBoolValueForSetting_(v5, v6, *MEMORY[0x1E69ADF88]);
  if ((v7 == 2) != objc_msgSend_disableService(v2, v8, v9))
  {
    objc_msgSend_setDisableService_(v2, v10, v7 == 2);
    v104 = 1;
  }

  v12 = objc_msgSend__serviceWithName_(self, v11, @"Calling");

  v15 = objc_msgSend_sharedConnection(MEMORY[0x1E69ADFB8], v13, v14);
  v17 = objc_msgSend_effectiveBoolValueForSetting_(v15, v16, *MEMORY[0x1E69ADDD0]);
  if ((v17 == 2) != objc_msgSend_disableService(v12, v18, v19))
  {
    objc_msgSend_setDisableService_(v12, v20, v17 == 2);
    v104 = 1;
  }

  v103 = objc_msgSend__serviceWithName_(self, v21, *MEMORY[0x1E69A7AF0]);

  v24 = objc_msgSend_sharedConnection(MEMORY[0x1E69ADFB8], v22, v23);
  v26 = objc_msgSend_effectiveBoolValueForSetting_(v24, v25, *MEMORY[0x1E69ADE18]);
  if ((v26 == 2) != objc_msgSend_disableService(v103, v27, v28))
  {
    objc_msgSend_setDisableService_(v103, v29, v26 == 2);
    v104 = 1;
  }

  v32 = objc_msgSend_sharedManager(MEMORY[0x1E69ADFC8], v30, v31);
  objc_msgSend_invalidateRestrictions(v32, v33, v34);

  v37 = objc_msgSend_sharedManager(MEMORY[0x1E69ADFC8], v35, v36);
  objc_msgSend_invalidateSettings(v37, v38, v39);

  v41 = objc_msgSend_objectForKey_(IMParentalControls, v40, *MEMORY[0x1E69A6208]);
  v44 = v41;
  if (v41)
  {
    v45 = objc_msgSend_intValue(v41, v42, v43) != 0;
  }

  else
  {
    v45 = 0;
  }

  if (self->_forceChatLogging != v45)
  {
    self->_forceChatLogging = v45;
    v104 = 1;
  }

  v101 = objc_msgSend_objectForKey_(IMParentalControls, v42, *MEMORY[0x1E69A6200]);

  if (v101)
  {
    v48 = objc_msgSend_intValue(v101, v46, v47) != 0;
  }

  else
  {
    v48 = 0;
  }

  if (self->_disableAV != v48)
  {
    self->_disableAV = v48;
    v104 = 1;
  }

  if (IMOSLoggingEnabled())
  {
    v49 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      v52 = objc_msgSend_active(self, v50, v51);
      v53 = @"NO";
      if (v52)
      {
        v53 = @"YES";
      }

      *buf = 138412290;
      v111 = v53;
      _os_log_impl(&dword_1A823F000, v49, OS_LOG_TYPE_DEBUG, "Active: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v54 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      v57 = objc_msgSend_disableAV(self, v55, v56);
      v58 = @"NO";
      if (v57)
      {
        v58 = @"YES";
      }

      *buf = 138412290;
      v111 = v58;
      _os_log_impl(&dword_1A823F000, v54, OS_LOG_TYPE_DEBUG, "Disable AV: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v61 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      v64 = objc_msgSend_forceChatLogging(self, v62, v63);
      v65 = @"NO";
      if (v64)
      {
        v65 = @"YES";
      }

      *buf = 138412290;
      v111 = v65;
      _os_log_impl(&dword_1A823F000, v61, OS_LOG_TYPE_DEBUG, "Force Chat Logging: %@", buf, 0xCu);
    }
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v66 = objc_msgSend_allValues(self->_parentalControls, v59, v60, v101);
  v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, &v106, v114, 16);
  if (v68)
  {
    v69 = *v107;
    do
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v107 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v71 = *(*(&v106 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v72 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            v75 = objc_msgSend_name(v71, v73, v74);
            v78 = objc_msgSend_disableService(v71, v76, v77);
            *buf = 138412546;
            v79 = @"NO";
            if (v78)
            {
              v79 = @"YES";
            }

            v111 = v75;
            v112 = 2112;
            v113 = v79;
            _os_log_impl(&dword_1A823F000, v72, OS_LOG_TYPE_INFO, "%@ Disabled: %@", buf, 0x16u);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v80 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
          {
            v83 = objc_msgSend_name(v71, v81, v82);
            v86 = objc_msgSend_forceAllowlist(v71, v84, v85);
            *buf = 138412546;
            v87 = @"NO";
            if (v86)
            {
              v87 = @"YES";
            }

            v111 = v83;
            v112 = 2112;
            v113 = v87;
            _os_log_impl(&dword_1A823F000, v80, OS_LOG_TYPE_DEBUG, "%@ Force Allowlist: %@", buf, 0x16u);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v89 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
          {
            v92 = objc_msgSend_name(v71, v90, v91);
            v95 = objc_msgSend_allowlist(v71, v93, v94);
            *buf = 138412546;
            v111 = v92;
            v112 = 2112;
            v113 = v95;
            _os_log_impl(&dword_1A823F000, v89, OS_LOG_TYPE_DEBUG, "%@ Allowlist: %@", buf, 0x16u);
          }
        }
      }

      v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v88, &v106, v114, 16);
    }

    while (v68);
  }

  if (v104 && self->_shouldPostNotifications)
  {
    v98 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v96, v97);
    objc_msgSend___mainThreadPostNotificationName_object_(v98, v99, @"__kIMManagedPreferencesChangedNotification", self);
  }

  v100 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend_removeObserver_name_object_(v4, v5, self, 0, 0);

  v6.receiver = self;
  v6.super_class = IMParentalControls;
  [(IMParentalControls *)&v6 dealloc];
}

- (id)_serviceWithName:(id)name
{
  nameCopy = name;
  if (objc_msgSend_length(nameCopy, v5, v6))
  {
    v8 = objc_msgSend_objectForKey_(self->_parentalControls, v7, nameCopy);
    if (!v8)
    {
      v8 = objc_alloc_init(IMParentalControlsService);
      objc_msgSend_setName_(v8, v9, nameCopy);
      objc_msgSend_setObject_forKey_(self->_parentalControls, v10, v8, nameCopy);
    }

    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)disableService:(id)service
{
  serviceCopy = service;
  if (serviceCopy)
  {
    if (objc_msgSend_active(self, v4, v5))
    {
      v9 = objc_msgSend_internalName(serviceCopy, v7, v8);
      v11 = objc_msgSend__serviceWithName_(self, v10, v9);
      v14 = objc_msgSend_disableService(v11, v12, v13);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)disableAccount:(id)account
{
  v4 = objc_msgSend_service(account, a2, account);
  LOBYTE(self) = objc_msgSend_disableService_(self, v5, v4);

  return self;
}

- (id)allowlistForService:(id)service
{
  serviceCopy = service;
  if (serviceCopy && objc_msgSend_active(self, v4, v5))
  {
    v9 = objc_msgSend_internalName(serviceCopy, v7, v8);
    v11 = objc_msgSend__serviceWithName_(self, v10, v9);
    v14 = objc_msgSend_allowlist(v11, v12, v13);

    if (objc_msgSend_count(v14, v15, v16))
    {
      v17 = v14;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)forceAllowlistForService:(id)service
{
  serviceCopy = service;
  if (serviceCopy)
  {
    if (objc_msgSend_active(self, v4, v5))
    {
      v9 = objc_msgSend_internalName(serviceCopy, v7, v8);
      v11 = objc_msgSend__serviceWithName_(self, v10, v9);
      v14 = objc_msgSend_forceAllowlist(v11, v12, v13);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (id)allowlistForAccount:(id)account
{
  v4 = objc_msgSend_service(account, a2, account);
  v6 = objc_msgSend_allowlistForService_(self, v5, v4);

  return v6;
}

- (BOOL)forceAllowlistForAccount:(id)account
{
  v4 = objc_msgSend_service(account, a2, account);
  LOBYTE(self) = objc_msgSend_forceAllowlistForService_(self, v5, v4);

  return self;
}

- (BOOL)accountIsEnabled:(id)enabled
{
  v4 = objc_msgSend_service(enabled, a2, enabled);
  LOBYTE(self) = objc_msgSend_disableService_(self, v5, v4);

  return self ^ 1;
}

- (BOOL)accountHasAllowlist:(id)allowlist
{
  v4 = objc_msgSend_service(allowlist, a2, allowlist);
  LOBYTE(self) = objc_msgSend_forceAllowlistForService_(self, v5, v4);

  return self;
}

@end