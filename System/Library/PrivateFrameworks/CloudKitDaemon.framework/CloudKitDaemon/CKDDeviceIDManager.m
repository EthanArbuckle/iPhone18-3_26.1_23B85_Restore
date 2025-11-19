@interface CKDDeviceIDManager
+ (id)currentPersonaID;
+ (id)sharedManager;
- (__CFDictionary)createQueryForService:(id)a3 lookupKey:(id)a4 sysBound:(BOOL)a5;
- (id)_fetchDeviceIDForService:(id)a3 lookupKey:(id)a4 keychainSuccess:(BOOL *)a5;
- (id)_fetchDeviceIdentifierFromDefaultsForService:(id)a3 lookupKey:(id)a4;
- (id)_perServiceLookupKeyForContainer:(id)a3;
- (id)_serviceForContainer:(id)a3;
- (id)deviceIDsByContainerIdentifierInContainerEnvironment:(int64_t)a3;
- (id)deviceIdentifierForContainer:(id)a3 skipInMemoryCache:(BOOL)a4 createIfNecessary:(BOOL)a5;
- (id)globalDeviceID;
- (id)initInternal;
- (void)_deleteDeviceIdentifierForContainer:(id)a3;
- (void)_saveDeviceIdentifier:(id)a3 forContainer:(id)a4;
- (void)_saveDeviceIdentifierToDefaults:(id)a3 forService:(id)a4 lookupKey:(id)a5;
- (void)setGlobalDeviceID:(id)a3;
@end

@implementation CKDDeviceIDManager

+ (id)sharedManager
{
  if (qword_280D58660 != -1)
  {
    dispatch_once(&qword_280D58660, &unk_28385EA00);
  }

  v3 = qword_280D58658;

  return v3;
}

+ (id)currentPersonaID
{
  if (objc_msgSend_isSupported(MEMORY[0x277CBC558], a2, v2))
  {
    v5 = objc_msgSend_currentPersona(MEMORY[0x277CBC558], v3, v4);
    v8 = objc_msgSend_identifier(v5, v6, v7);
    v9 = v8;
    v10 = @"(nil)";
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;
  }

  else
  {
    v11 = @"(n/a)";
  }

  return v11;
}

- (id)initInternal
{
  v16.receiver = self;
  v16.super_class = CKDDeviceIDManager;
  v2 = [(CKDDeviceIDManager *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v7 = objc_msgSend_UTF8String(v4, v5, v6);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(v7, v8);
    queue = v2->_queue;
    v2->_queue = v9;

    v11 = objc_opt_new();
    deviceIDsByContainerIdentifierByContainerEnvironmentByPersona = v2->_deviceIDsByContainerIdentifierByContainerEnvironmentByPersona;
    v2->_deviceIDsByContainerIdentifierByContainerEnvironmentByPersona = v11;

    v13 = objc_opt_new();
    globalDeviceIDsPerPersona = v2->_globalDeviceIDsPerPersona;
    v2->_globalDeviceIDsPerPersona = v13;
  }

  return v2;
}

- (id)globalDeviceID
{
  v4 = objc_msgSend_queue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  v7 = objc_msgSend_currentPersonaID(CKDDeviceIDManager, v5, v6);
  v10 = objc_msgSend_globalDeviceIDsPerPersona(self, v8, v9);
  v12 = objc_msgSend_objectForKey_(v10, v11, v7);

  return v12;
}

- (void)setGlobalDeviceID:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_queue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  v14 = objc_msgSend_currentPersonaID(CKDDeviceIDManager, v8, v9);
  v12 = objc_msgSend_globalDeviceIDsPerPersona(self, v10, v11);
  objc_msgSend_setObject_forKey_(v12, v13, v4, v14);
}

- (id)deviceIDsByContainerIdentifierInContainerEnvironment:(int64_t)a3
{
  v5 = objc_msgSend_queue(self, a2, a3);
  dispatch_assert_queue_V2(v5);

  v8 = objc_msgSend_currentPersonaID(CKDDeviceIDManager, v6, v7);
  v11 = objc_msgSend_deviceIDsByContainerIdentifierByContainerEnvironmentByPersona(self, v9, v10);
  v13 = objc_msgSend_objectForKey_(v11, v12, v8);

  if (!v13)
  {
    v13 = objc_opt_new();
    v17 = objc_msgSend_deviceIDsByContainerIdentifierByContainerEnvironmentByPersona(self, v15, v16);
    objc_msgSend_setObject_forKey_(v17, v18, v13, v8);
  }

  v19 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v14, a3);
  v21 = objc_msgSend_objectForKeyedSubscript_(v13, v20, v19);

  if (!v21)
  {
    v21 = objc_opt_new();
    v23 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v22, a3);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v24, v21, v23);
  }

  return v21;
}

- (id)_serviceForContainer:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = *MEMORY[0x277CBC918];
  v5 = objc_msgSend_containerID(a3, a2, a3);
  objc_msgSend_environment(v5, v6, v7);
  v8 = CKContainerEnvironmentString();
  v10 = objc_msgSend_stringWithFormat_(v3, v9, @"%@.%@.%@", v4, @"deviceIdentifier", v8);

  return v10;
}

- (id)_perServiceLookupKeyForContainer:(id)a3
{
  v3 = objc_msgSend_containerID(a3, a2, a3);
  v6 = objc_msgSend_containerIdentifier(v3, v4, v5);

  return v6;
}

- (id)_fetchDeviceIDForService:(id)a3 lookupKey:(id)a4 keychainSuccess:(BOOL *)a5
{
  v61 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_currentProcess(CKDDaemonProcess, v10, v11);
  isSystemInstalledBinary = objc_msgSend_isSystemInstalledBinary(v12, v13, v14);

  if ((isSystemInstalledBinary & 1) == 0)
  {
    v17 = objc_msgSend__fetchDeviceIdentifierFromDefaultsForService_lookupKey_(self, v16, v8, v9);
    if (v17)
    {
      v18 = v17;
      v19 = 1;
      if (!a5)
      {
        goto LABEL_29;
      }

LABEL_28:
      *a5 = v19;
      goto LABEL_29;
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], *MEMORY[0x277CBC918]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], v8);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], v9);
  v21 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC558], *MEMORY[0x277CBED28]);
  if (*MEMORY[0x277CBC810] != 1 || (objc_msgSend_useLegacyKeychain(self, v22, v23) & 1) == 0)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5C8], v21);
  }

  result = 0;
  v24 = SecItemCopyMatching(Mutable, &result);
  if (v24 == -25300)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC830];
    v19 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v27 = v26;
      v30 = objc_msgSend_currentPersonaID(CKDDeviceIDManager, v28, v29);
      *buf = 138412802;
      v54 = v8;
      v55 = 2112;
      v56 = v9;
      v57 = 2112;
      v58 = v30;
      _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "No deviceID found in keychain (service: %@, lookupKey: %@, persona: %@)", buf, 0x20u);
    }
  }

  else
  {
    v25 = v24;
    if (v24)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v31 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v48 = v31;
        v51 = objc_msgSend_currentPersonaID(CKDDeviceIDManager, v49, v50);
        *buf = 138413058;
        v54 = v8;
        v55 = 2112;
        v56 = v9;
        v57 = 2112;
        v58 = v51;
        v59 = 2048;
        v60 = v25;
        _os_log_error_impl(&dword_22506F000, v48, OS_LOG_TYPE_ERROR, "Failed to retrieve deviceID from keychain (service: %@, lookupKey: %@, persona: %@). SecItemCopyMatching() failed: %ld", buf, 0x2Au);
      }

      v19 = 0;
    }

    else
    {
      v19 = 1;
    }
  }

  CFRelease(Mutable);
  if (result)
  {
    v32 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = objc_msgSend_initWithData_encoding_(v32, v33, result, 4);
    CFRelease(result);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v34 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v37 = v34;
      v40 = objc_msgSend_currentPersonaID(CKDDeviceIDManager, v38, v39);
      *buf = 138544130;
      v54 = v18;
      v55 = 2112;
      v56 = v8;
      v57 = 2112;
      v58 = v9;
      v59 = 2112;
      v60 = v40;
      _os_log_impl(&dword_22506F000, v37, OS_LOG_TYPE_INFO, "Successfully retrieved deviceID %{public}@ from keychain (service: %@, lookupKey: %@, persona: %@)", buf, 0x2Au);
    }

    v41 = objc_msgSend_currentProcess(CKDDaemonProcess, v35, v36);
    v44 = objc_msgSend_isSystemInstalledBinary(v41, v42, v43);

    if ((v44 & 1) == 0)
    {
      objc_msgSend__saveDeviceIdentifierToDefaults_forService_lookupKey_(self, v45, v18, v8, v9);
    }

    if (a5)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v18 = 0;
    if (a5)
    {
      goto LABEL_28;
    }
  }

LABEL_29:

  v46 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)_saveDeviceIdentifierToDefaults:(id)a3 forService:(id)a4 lookupKey:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v12 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v10, v11);
  v14 = objc_msgSend_dictionaryForKey_(v12, v13, v8);

  v17 = objc_msgSend_mutableCopy(v14, v15, v16);
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = objc_opt_new();
  }

  v20 = v19;

  objc_msgSend_setObject_forKeyedSubscript_(v20, v21, v7, v9);
  v24 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v22, v23);
  objc_msgSend_setObject_forKey_(v24, v25, v20, v8);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v26 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v28 = v26;
    v31 = objc_msgSend_currentPersonaID(CKDDeviceIDManager, v29, v30);
    v32 = 138413058;
    v33 = v7;
    v34 = 2112;
    v35 = v8;
    v36 = 2112;
    v37 = v9;
    v38 = 2112;
    v39 = v31;
    _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "Saved deviceID %@ to standardUserDefaults (service: %@, lookupKey: %@, persona: %@)", &v32, 0x2Au);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)_fetchDeviceIdentifierFromDefaultsForService:(id)a3 lookupKey:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v7, v8);
  v11 = objc_msgSend_dictionaryForKey_(v9, v10, v5);
  v13 = objc_msgSend_objectForKey_(v11, v12, v6);

  if (v13)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v17 = v14;
      v20 = objc_msgSend_currentPersonaID(CKDDeviceIDManager, v18, v19);
      v21 = 138413058;
      v22 = v13;
      v23 = 2112;
      v24 = v5;
      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = v20;
      _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Retrieved deviceID %@ from standardUserDefaults (service: %@, lookupKey: %@, persona: %@)", &v21, 0x2Au);
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (__CFDictionary)createQueryForService:(id)a3 lookupKey:(id)a4 sysBound:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], *MEMORY[0x277CBC918]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], v9);

  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], v8);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBED8], *MEMORY[0x277CDBF00]);
  if (v5)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC150], &unk_2838C8BE0);
  }

  if (*MEMORY[0x277CBC810] != 1 || (objc_msgSend_useLegacyKeychain(self, v11, v12) & 1) == 0)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5C8], *MEMORY[0x277CBED28]);
  }

  return Mutable;
}

- (void)_saveDeviceIdentifier:(id)a3 forContainer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = objc_msgSend__serviceForContainer_(self, v8, v6);
  v10 = objc_msgSend__perServiceLookupKeyForContainer_(self, v9, v6);

  objc_msgSend__saveDeviceIdentifier_forService_lookupKey_sysBound_success_(self, v11, v7, v12, v10, 0, 0);
}

- (void)_deleteDeviceIdentifierForContainer:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6 = objc_msgSend__serviceForContainer_(self, v5, v4);
  v8 = objc_msgSend__perServiceLookupKeyForContainer_(self, v7, v4);

  QueryForService_lookupKey_sysBound = objc_msgSend_createQueryForService_lookupKey_sysBound_(self, v9, v6, v8, 0);
  v11 = SecItemDelete(QueryForService_lookupKey_sysBound);
  if (v11)
  {
    v12 = v11;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v15 = 134217984;
      v16 = v12;
      _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "SecItemDelete() for device identifier failed: %ld", &v15, 0xCu);
    }
  }

  CFRelease(QueryForService_lookupKey_sysBound);

  v14 = *MEMORY[0x277D85DE8];
}

- (id)deviceIdentifierForContainer:(id)a3 skipInMemoryCache:(BOOL)a4 createIfNecessary:(BOOL)a5
{
  v8 = a3;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_22507421C;
  v37 = sub_22507368C;
  v38 = 0;
  v11 = objc_msgSend_currentProcess(CKDDaemonProcess, v9, v10);
  v14 = objc_msgSend_processType(v11, v12, v13);

  if (v14 == 1)
  {
    v16 = 0;
  }

  else
  {
    v17 = objc_msgSend__serviceForContainer_(self, v15, v8);
    v19 = objc_msgSend__perServiceLookupKeyForContainer_(self, v18, v8);
    v22 = objc_msgSend_queue(self, v20, v21);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_225407D60;
    v26[3] = &unk_27854E110;
    v26[4] = self;
    v31 = a4;
    v27 = v8;
    v28 = v17;
    v29 = v19;
    v30 = &v33;
    v32 = a5;
    v23 = v19;
    v24 = v17;
    dispatch_sync(v22, v26);

    v16 = v34[5];
  }

  _Block_object_dispose(&v33, 8);

  return v16;
}

@end