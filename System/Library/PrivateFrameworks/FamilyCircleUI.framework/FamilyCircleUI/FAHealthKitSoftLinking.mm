@interface FAHealthKitSoftLinking
+ (BOOL)isMedicalIDViewControllerSupportedOnDevice;
- (FAHealthKitSoftLinking)initWithFamilyCircle:(id)circle;
- (void)_startEmergencyContactsChangeObserver;
- (void)_stopEmergencyContactsChangeObserver;
- (void)dealloc;
- (void)dismissMedicalID;
- (void)emergencyContactFlow:(id)flow didSelectContact:(id)contact;
- (void)fetchLastModifiedDate:(id)date completionHandler:(id)handler;
- (void)fetchMedicalIDData:(id)data completionHandler:(id)handler;
- (void)presentMedicalIDViewController:(id)controller;
@end

@implementation FAHealthKitSoftLinking

- (FAHealthKitSoftLinking)initWithFamilyCircle:(id)circle
{
  circleCopy = circle;
  v21.receiver = self;
  v21.super_class = FAHealthKitSoftLinking;
  v6 = [(FAHealthKitSoftLinking *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_familyCircle, circle);
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v8 = getHKHealthStoreClass_softClass_0;
    v30 = getHKHealthStoreClass_softClass_0;
    if (!getHKHealthStoreClass_softClass_0)
    {
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __getHKHealthStoreClass_block_invoke_0;
      v25 = &unk_2782F2988;
      v26 = &v27;
      __getHKHealthStoreClass_block_invoke_0(&v22);
      v8 = v28[3];
    }

    v9 = v8;
    _Block_object_dispose(&v27, 8);
    v10 = objc_alloc_init(v8);
    healthStore = v7->_healthStore;
    v7->_healthStore = v10;

    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v12 = getHKMedicalIDStoreClass_softClass_0;
    v30 = getHKMedicalIDStoreClass_softClass_0;
    if (!getHKMedicalIDStoreClass_softClass_0)
    {
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __getHKMedicalIDStoreClass_block_invoke_0;
      v25 = &unk_2782F2988;
      v26 = &v27;
      __getHKMedicalIDStoreClass_block_invoke_0(&v22);
      v12 = v28[3];
    }

    v13 = v12;
    _Block_object_dispose(&v27, 8);
    v14 = [[v12 alloc] initWithHealthStore:v7->_healthStore];
    medicalIDStore = v7->_medicalIDStore;
    v7->_medicalIDStore = v14;

    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v16 = get_HKMedicalIDDataClass_softClass;
    v30 = get_HKMedicalIDDataClass_softClass;
    if (!get_HKMedicalIDDataClass_softClass)
    {
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __get_HKMedicalIDDataClass_block_invoke;
      v25 = &unk_2782F2988;
      v26 = &v27;
      __get_HKMedicalIDDataClass_block_invoke(&v22);
      v16 = v28[3];
    }

    v17 = v16;
    _Block_object_dispose(&v27, 8);
    v18 = objc_alloc_init(v16);
    medicalIDData = v7->_medicalIDData;
    v7->_medicalIDData = v18;

    [(FAHealthKitSoftLinking *)v7 _startEmergencyContactsChangeObserver];
  }

  return v7;
}

- (void)dealloc
{
  [(FAHealthKitSoftLinking *)self _stopEmergencyContactsChangeObserver];
  v3.receiver = self;
  v3.super_class = FAHealthKitSoftLinking;
  [(FAHealthKitSoftLinking *)&v3 dealloc];
}

- (void)presentMedicalIDViewController:(id)controller
{
  controllerCopy = controller;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v5 = getMIUIDisplayConfigurationClass_softClass;
  v23 = getMIUIDisplayConfigurationClass_softClass;
  if (!getMIUIDisplayConfigurationClass_softClass)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getMIUIDisplayConfigurationClass_block_invoke;
    v18 = &unk_2782F2988;
    v19 = &v20;
    __getMIUIDisplayConfigurationClass_block_invoke(&v15);
    v5 = v21[3];
  }

  v6 = v5;
  _Block_object_dispose(&v20, 8);
  standardConfiguration = [v5 standardConfiguration];
  [standardConfiguration setEntryPoint:1];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v8 = getMIUIMedicalIDViewControllerClass_softClass;
  v23 = getMIUIMedicalIDViewControllerClass_softClass;
  if (!getMIUIMedicalIDViewControllerClass_softClass)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getMIUIMedicalIDViewControllerClass_block_invoke;
    v18 = &unk_2782F2988;
    v19 = &v20;
    __getMIUIMedicalIDViewControllerClass_block_invoke(&v15);
    v8 = v21[3];
  }

  v9 = v8;
  _Block_object_dispose(&v20, 8);
  v10 = [[v8 alloc] initWithHealthStore:self->_healthStore medicalIDData:0 displayConfiguration:standardConfiguration];
  medicalIDViewController = self->_medicalIDViewController;
  self->_medicalIDViewController = v10;

  v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:self->_medicalIDViewController];
  [v12 setModalInPresentation:1];
  v13 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_dismissMedicalID];
  navigationItem = [(MIUIMedicalIDViewController *)self->_medicalIDViewController navigationItem];
  [navigationItem setRightBarButtonItem:v13];

  [controllerCopy presentViewController:v12 animated:1 completion:0];
}

- (void)dismissMedicalID
{
  navigationController = [(MIUIMedicalIDViewController *)self->_medicalIDViewController navigationController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__FAHealthKitSoftLinking_dismissMedicalID__block_invoke;
  v4[3] = &unk_2782F29E8;
  v4[4] = self;
  [navigationController dismissViewControllerAnimated:1 completion:v4];
}

uint64_t __42__FAHealthKitSoftLinking_dismissMedicalID__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1 + 32);
  v7 = v6[4];

  return [v6 fetchMedicalIDData:v7 completionHandler:&__block_literal_global_6];
}

void __42__FAHealthKitSoftLinking_dismissMedicalID__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = _FALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__FAHealthKitSoftLinking_dismissMedicalID__block_invoke_2_cold_1(v3, v4);
    }
  }

  else
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:*MEMORY[0x277D08118] object:0];
  }
}

- (void)fetchMedicalIDData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  objc_storeStrong(&self->_familyCircle, data);
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__0;
  v38[4] = __Block_byref_object_dispose__0;
  v39 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__0;
  v32 = __Block_byref_object_dispose__0;
  v33 = 0;
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  medicalIDStore = self->_medicalIDStore;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __63__FAHealthKitSoftLinking_fetchMedicalIDData_completionHandler___block_invoke;
  v21 = &unk_2782F30D0;
  v25 = v38;
  selfCopy = self;
  v11 = dataCopy;
  v23 = v11;
  v26 = &v34;
  v27 = &v28;
  v12 = v9;
  v24 = v12;
  [(HKMedicalIDStore *)medicalIDStore fetchMedicalIDDataWithCompletion:&v18];
  v13 = dispatch_time(0, 1000000000);
  if (dispatch_group_wait(v12, v13))
  {
    v14 = _FALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [FAHealthKitSoftLinking fetchMedicalIDData:v14 completionHandler:?];
    }

    v35[3] = 0;
    v15 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = [v15 initWithDomain:@"com.apple.FAHealthKitSoftLinking" code:-1001 userInfo:{&unk_282DC0718, v18, v19, v20, v21, selfCopy, v23}];
    v17 = v29[5];
    v29[5] = v16;
  }

  handlerCopy[2](handlerCopy, v35[3], v29[5]);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(v38, 8);
}

void __63__FAHealthKitSoftLinking_fetchMedicalIDData_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v6 && ([v6 isEmpty] & 1) == 0)
  {
    v33 = v7;
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    objc_storeStrong((*(a1 + 32) + 24), a2);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v34 = v6;
    v10 = [v6 emergencyContacts];
    v11 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = v11;
    v13 = *v41;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        v16 = [v15 nameContactIdentifier];
        if ([v16 length])
        {
          v17 = [v15 name];
          v18 = [v17 length];

          if (!v18)
          {
            continue;
          }

          v19 = [v15 nameContactIdentifier];
          [v8 addObject:v19];

          v16 = [v15 name];
          [v35 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (!v12)
      {
LABEL_18:

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v32 = a1;
        v20 = [*(a1 + 40) members];
        v21 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (!v21)
        {
          v23 = 0;
          goto LABEL_32;
        }

        v22 = v21;
        v23 = 0;
        v24 = *v37;
        while (1)
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v37 != v24)
            {
              objc_enumerationMutation(v20);
            }

            v26 = *(*(&v36 + 1) + 8 * j);
            if (([v26 isMe] & 1) == 0)
            {
              v27 = [v26 contact];
              v28 = [v27 identifier];
              if ([v8 containsObject:v28])
              {
              }

              else
              {
                v29 = [v26 fullName];
                v30 = [v35 containsObject:v29];

                if (!v30)
                {
                  continue;
                }
              }

              ++v23;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (!v22)
          {
LABEL_32:

            a1 = v32;
            *(*(*(v32 + 64) + 8) + 24) = v23;
            v7 = v33;
            v6 = v34;
            goto LABEL_33;
          }
        }
      }
    }
  }

  if (v7)
  {
    v9 = _FALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __63__FAHealthKitSoftLinking_fetchMedicalIDData_completionHandler___block_invoke_cold_1(v7, v9);
    }

    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  }

LABEL_33:
  dispatch_group_leave(*(a1 + 48));

  v31 = *MEMORY[0x277D85DE8];
}

- (void)emergencyContactFlow:(id)flow didSelectContact:(id)contact
{
  v10[1] = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  if (([getSOSUtilitiesClass() isAllowedToMessageSOSContacts] & 1) == 0)
  {
    [getSOSUtilitiesClass() setAllowedToMessageSOSContacts:1];
  }

  emergencyContacts = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts];
  if (emergencyContacts)
  {
    emergencyContacts2 = [(_HKMedicalIDData *)self->_medicalIDData emergencyContacts];
    v8 = [emergencyContacts2 arrayByAddingObject:contactCopy];
  }

  else
  {
    v10[0] = contactCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  [(_HKMedicalIDData *)self->_medicalIDData setEmergencyContacts:v8];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)fetchLastModifiedDate:(id)date completionHandler:(id)handler
{
  handlerCopy = handler;
  familyCircle = self->_familyCircle;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__FAHealthKitSoftLinking_fetchLastModifiedDate_completionHandler___block_invoke;
  v8[3] = &unk_2782F30F8;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(FAHealthKitSoftLinking *)self fetchMedicalIDData:familyCircle completionHandler:v8];
}

void __66__FAHealthKitSoftLinking_fetchLastModifiedDate_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(*(a1 + 32) + 24) dateSaved];
  if (v4)
  {
    v6 = _FALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __42__FAHealthKitSoftLinking_dismissMedicalID__block_invoke_2_cold_1(v4, v6);
    }
  }

  else
  {
    v7 = [*(*(a1 + 32) + 24) emergencyContactsModifiedDate];

    if (v7)
    {
      v8 = [*(*(a1 + 32) + 24) emergencyContactsModifiedDate];

      v5 = v8;
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_startEmergencyContactsChangeObserver
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = getkHKMedicalIDEmergencyContactsDidChangeNotification();
  v5 = CFStringCreateWithCString(0, v4, 0x8000100u);

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _EmergencyContactsDidChangeNotification, v5, 0, 0);
}

- (void)_stopEmergencyContactsChangeObserver
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = getkHKMedicalIDEmergencyContactsDidChangeNotification();
  v5 = CFStringCreateWithCString(0, v4, 0x8000100u);

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v5, 0);
}

+ (BOOL)isMedicalIDViewControllerSupportedOnDevice
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getHKHealthChecklistUtilitiesClass_softClass;
  v11 = getHKHealthChecklistUtilitiesClass_softClass;
  if (!getHKHealthChecklistUtilitiesClass_softClass)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getHKHealthChecklistUtilitiesClass_block_invoke;
    v7[3] = &unk_2782F2988;
    v7[4] = &v8;
    __getHKHealthChecklistUtilitiesClass_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  shared = [v2 shared];
  isMedicalIDAvailable = [shared isMedicalIDAvailable];

  return isMedicalIDAvailable;
}

void __42__FAHealthKitSoftLinking_dismissMedicalID__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_21BB35000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch medical data %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __63__FAHealthKitSoftLinking_fetchMedicalIDData_completionHandler___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_21BB35000, a2, OS_LOG_TYPE_ERROR, "fetchMedicalIDData failed with error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end