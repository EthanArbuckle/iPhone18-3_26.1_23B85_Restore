@interface CKDGlobalConfigurationOperation
- (id)activityCreate;
- (void)main;
@end

@implementation CKDGlobalConfigurationOperation

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/global-configuration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v3 = [CKDGlobalConfigurationURLRequest alloc];
  v5 = objc_msgSend_initWithOperation_(v3, v4, self);
  objc_initWeak(&location, self);
  objc_initWeak(&from, v5);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2251A4A6C;
  v17[3] = &unk_278548748;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, &from);
  objc_msgSend_setCompletionBlock_(v5, v6, v17);
  objc_msgSend_setRequest_(self, v7, v5);
  if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(self, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v10, v11, @"StallGlobalConfigOperation"), v12 = objc_claimAutoreleasedReturnValue(), v12, v10, v12))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Stalling Global Config Operation, you asked for it", v16, 2u);
    }
  }

  else
  {
    v14 = objc_msgSend_container(self, v8, v9);
    objc_msgSend_performRequest_(v14, v15, v5);
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

@end