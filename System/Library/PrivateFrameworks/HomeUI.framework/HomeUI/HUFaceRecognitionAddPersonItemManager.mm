@interface HUFaceRecognitionAddPersonItemManager
- (HMFaceClassification)faceClassification;
- (HUFaceRecognitionAddPersonItemManager)initWithDelegate:(id)delegate;
- (HUFaceRecognitionAddPersonItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HUFaceRecognitionAddPersonItemManager)initWithSignificantEvent:(id)event home:(id)home delegate:(id)delegate;
- (NAFuture)faceCropImageFuture;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_homeFuture;
- (id)associateFaceClassificationWithExistingPerson:(id)person;
- (id)associateFaceClassificationWithNewPersonNamed:(id)named;
@end

@implementation HUFaceRecognitionAddPersonItemManager

- (HUFaceRecognitionAddPersonItemManager)initWithSignificantEvent:(id)event home:(id)home delegate:(id)delegate
{
  v35 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  homeCopy = home;
  delegateCopy = delegate;
  faceClassification = [(HUFaceRecognitionAddPersonItemManager *)eventCopy faceClassification];

  if (!homeCopy || !faceClassification)
  {
    NSLog(&cfstr_FaceClassifica_0.isa, eventCopy, homeCopy);
  }

  v30.receiver = self;
  v30.super_class = HUFaceRecognitionAddPersonItemManager;
  v13 = [(HFItemManager *)&v30 initWithDelegate:delegateCopy sourceItem:0];
  if (v13)
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v32 = v13;
      v33 = 2112;
      v34 = eventCopy;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@: Initialized with significant event:%@", buf, 0x16u);
    }

    objc_storeStrong(&v13->_significantEvent, event);
    v15 = [homeCopy hf_cameraProfileForSignificantEvent:eventCopy];
    cameraProfile = v13->_cameraProfile;
    v13->_cameraProfile = v15;

    faceClassification2 = [(HUFaceRecognitionAddPersonItemManager *)eventCopy faceClassification];

    if (faceClassification2)
    {
      v18 = [objc_alloc(MEMORY[0x277D14700]) initWithHome:homeCopy];
      homePersonItemProvider = v13->_homePersonItemProvider;
      v13->_homePersonItemProvider = v18;

      [(HFHomePersonItemProvider *)v13->_homePersonItemProvider setFilter:&__block_literal_global_266];
      v20 = objc_alloc(MEMORY[0x277D14910]);
      currentUser = [homeCopy currentUser];
      v22 = [v20 initWithHome:homeCopy forUser:currentUser];
      photosPersonItemProvider = v13->_photosPersonItemProvider;
      v13->_photosPersonItemProvider = v22;

      [(HFPhotosPersonItemProvider *)v13->_photosPersonItemProvider setFilter:&__block_literal_global_8_3];
    }

    else
    {
      v24 = HFLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = eventCopy;
        _os_log_error_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_ERROR, "Face classification is nil on significant event %@", buf, 0xCu);
      }
    }

    faceClassification3 = [(HUFaceRecognitionAddPersonItemManager *)v13 faceClassification];
    personManagerUUID = [faceClassification3 personManagerUUID];
    v27 = [homeCopy hf_personManagerWithIdentifier:personManagerUUID];
    personManager = v13->_personManager;
    v13->_personManager = v27;

    objc_storeStrong(&v13->_overrideHome, home);
  }

  return v13;
}

BOOL __80__HUFaceRecognitionAddPersonItemManager_initWithSignificantEvent_home_delegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 name];
  v7 = [v6 length] != 0;

  return v7;
}

BOOL __80__HUFaceRecognitionAddPersonItemManager_initWithSignificantEvent_home_delegate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 name];
  v7 = [v6 length] != 0;

  return v7;
}

- (HUFaceRecognitionAddPersonItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithSignificantEvent_home_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionAddPersonItemManager.m" lineNumber:69 description:{@"%s is unavailable; use %@ instead", "-[HUFaceRecognitionAddPersonItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUFaceRecognitionAddPersonItemManager)initWithDelegate:(id)delegate
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithSignificantEvent_home_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionAddPersonItemManager.m" lineNumber:74 description:{@"%s is unavailable; use %@ instead", "-[HUFaceRecognitionAddPersonItemManager initWithDelegate:]", v6}];

  return 0;
}

- (HMFaceClassification)faceClassification
{
  significantEvent = [(HUFaceRecognitionAddPersonItemManager *)self significantEvent];
  faceClassification = [significantEvent faceClassification];

  return faceClassification;
}

- (NAFuture)faceCropImageFuture
{
  cameraProfile = [(HUFaceRecognitionAddPersonItemManager *)self cameraProfile];
  significantEvent = [(HUFaceRecognitionAddPersonItemManager *)self significantEvent];
  v5 = [cameraProfile hf_faceCropImageForSignificantEvent:significantEvent];

  return v5;
}

- (id)associateFaceClassificationWithNewPersonNamed:(id)named
{
  v20 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    faceClassification = [(HUFaceRecognitionAddPersonItemManager *)self faceClassification];
    *buf = 138412802;
    selfCopy = self;
    v16 = 2112;
    v17 = faceClassification;
    v18 = 2112;
    v19 = namedCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: Associating %@ with new person named %@", buf, 0x20u);
  }

  personManager = [(HUFaceRecognitionAddPersonItemManager *)self personManager];
  faceClassification2 = [(HUFaceRecognitionAddPersonItemManager *)self faceClassification];
  person = [faceClassification2 person];
  v10 = [personManager hf_namePerson:person name:namedCopy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__HUFaceRecognitionAddPersonItemManager_associateFaceClassificationWithNewPersonNamed___block_invoke;
  v13[3] = &unk_277DC3D40;
  v13[4] = self;
  v11 = [v10 flatMap:v13];

  return v11;
}

id __87__HUFaceRecognitionAddPersonItemManager_associateFaceClassificationWithNewPersonNamed___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 personManager];
  v6 = MEMORY[0x277CBEB98];
  v7 = [*(a1 + 32) faceClassification];
  v8 = [v7 faceCrop];
  v9 = [v8 UUID];
  v10 = [v6 na_setWithSafeObject:v9];
  v11 = [v4 UUID];

  v12 = [v5 hf_associateFaceCropsWithUUIDs:v10 toPersonWithUUID:v11];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__HUFaceRecognitionAddPersonItemManager_associateFaceClassificationWithNewPersonNamed___block_invoke_2;
  v15[3] = &unk_277DBA338;
  v15[4] = *(a1 + 32);
  v13 = [v12 addSuccessBlock:v15];

  return v12;
}

void __87__HUFaceRecognitionAddPersonItemManager_associateFaceClassificationWithNewPersonNamed___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D146E8] sharedDispatcher];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__HUFaceRecognitionAddPersonItemManager_associateFaceClassificationWithNewPersonNamed___block_invoke_3;
  v3[3] = &unk_277DBF4B0;
  v3[4] = *(a1 + 32);
  [v2 dispatchCameraObserverMessage:v3 sender:0];
}

void __87__HUFaceRecognitionAddPersonItemManager_associateFaceClassificationWithNewPersonNamed___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) cameraProfile];
    v4 = [v3 clipManager];
    v5 = MEMORY[0x277CBEB98];
    v6 = [*(a1 + 32) significantEvent];
    v7 = [v5 setWithObject:v6];
    [v8 clipManager:v4 didUpdateSignificantEvents:v7];
  }
}

- (id)associateFaceClassificationWithExistingPerson:(id)person
{
  v46 = *MEMORY[0x277D85DE8];
  personCopy = person;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    faceClassification = [(HUFaceRecognitionAddPersonItemManager *)self faceClassification];
    *buf = 138412802;
    selfCopy = self;
    v42 = 2112;
    v43 = faceClassification;
    v44 = 2112;
    v45 = personCopy;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: Associating %@ with existing person %@", buf, 0x20u);
  }

  person = [personCopy person];
  latestResults = [personCopy latestResults];
  v9 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13CF8]];
  bOOLValue = [v9 BOOLValue];

  faceClassification2 = [(HUFaceRecognitionAddPersonItemManager *)self faceClassification];
  person2 = [faceClassification2 person];

  if (person2)
  {
    personManager = [(HUFaceRecognitionAddPersonItemManager *)self personManager];
    faceClassification3 = [(HUFaceRecognitionAddPersonItemManager *)self faceClassification];
    person3 = [faceClassification3 person];
    uUID3 = person3;
    if (!bOOLValue)
    {
      name = [person name];
      v24 = [personManager hf_namePerson:uUID3 name:name];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __87__HUFaceRecognitionAddPersonItemManager_associateFaceClassificationWithExistingPerson___block_invoke;
      v37[3] = &unk_277DC3D68;
      v37[4] = self;
      v38 = person;
      v39 = personCopy;
      v22 = [v24 addCompletionBlock:v37];

      goto LABEL_14;
    }

    uUID = [person3 UUID];
    uUID2 = [person UUID];
    v19 = [personManager hf_reassociateFaceCropsFromPersonWithUUID:uUID toPersonWithUUID:uUID2 removePerson:1];
  }

  else
  {
    faceClassification4 = [(HUFaceRecognitionAddPersonItemManager *)self faceClassification];
    personManager = [faceClassification4 faceCrop];

    if (!bOOLValue)
    {
      v25 = HFLogForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [person name];
        *buf = 138412546;
        selfCopy = name2;
        v42 = 2112;
        v43 = personManager;
        _os_log_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEFAULT, "Creating a new person with name %@ face crop %@", buf, 0x16u);
      }

      personManager2 = [(HUFaceRecognitionAddPersonItemManager *)self personManager];
      name3 = [person name];
      v29 = [personManager2 hf_namePerson:0 name:name3];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __87__HUFaceRecognitionAddPersonItemManager_associateFaceClassificationWithExistingPerson___block_invoke_26;
      v33[3] = &unk_277DC3D90;
      v33[4] = self;
      v34 = person;
      v35 = personCopy;
      v36 = personManager;
      v22 = [v29 flatMap:v33];

      goto LABEL_13;
    }

    faceClassification3 = [(HUFaceRecognitionAddPersonItemManager *)self personManager];
    v21 = MEMORY[0x277CBEB98];
    uUID3 = [personManager UUID];
    uUID = [v21 na_setWithSafeObject:uUID3];
    uUID2 = [person UUID];
    v19 = [faceClassification3 hf_associateFaceCropsWithUUIDs:uUID toPersonWithUUID:uUID2];
  }

  v22 = v19;

LABEL_13:
LABEL_14:
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __87__HUFaceRecognitionAddPersonItemManager_associateFaceClassificationWithExistingPerson___block_invoke_2;
  v32[3] = &unk_277DBA338;
  v32[4] = self;
  v30 = [v22 addSuccessBlock:v32];

  return v22;
}

void __87__HUFaceRecognitionAddPersonItemManager_associateFaceClassificationWithExistingPerson___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) personManager];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) personManager];
  v6 = [v5 UUID];
  v7 = [v3 hf_linkFromPerson:v8 toPerson:v4 toPersonManagerUUID:v6];
}

id __87__HUFaceRecognitionAddPersonItemManager_associateFaceClassificationWithExistingPerson___block_invoke_26(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 personManager];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) personManager];
  v8 = [v7 UUID];
  v9 = [v5 hf_linkFromPerson:v4 toPerson:v6 toPersonManagerUUID:v8];

  v10 = [*(a1 + 32) personManager];
  v11 = MEMORY[0x277CBEB98];
  v12 = [*(a1 + 56) UUID];
  v13 = [v11 setWithObject:v12];
  v14 = [v4 UUID];

  v15 = [v10 hf_associateFaceCropsWithUUIDs:v13 toPersonWithUUID:v14];

  return v15;
}

void __87__HUFaceRecognitionAddPersonItemManager_associateFaceClassificationWithExistingPerson___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D146E8] sharedDispatcher];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__HUFaceRecognitionAddPersonItemManager_associateFaceClassificationWithExistingPerson___block_invoke_3;
  v3[3] = &unk_277DBF4B0;
  v3[4] = *(a1 + 32);
  [v2 dispatchCameraObserverMessage:v3 sender:0];
}

void __87__HUFaceRecognitionAddPersonItemManager_associateFaceClassificationWithExistingPerson___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) cameraProfile];
    v4 = [v3 clipManager];
    v5 = MEMORY[0x277CBEB98];
    v6 = [*(a1 + 32) significantEvent];
    v7 = [v5 setWithObject:v6];
    [v8 clipManager:v4 didUpdateSignificantEvents:v7];
  }
}

- (id)_buildItemProvidersForHome:(id)home
{
  v8[2] = *MEMORY[0x277D85DE8];
  homePersonItemProvider = [(HUFaceRecognitionAddPersonItemManager *)self homePersonItemProvider];
  v8[0] = homePersonItemProvider;
  photosPersonItemProvider = [(HUFaceRecognitionAddPersonItemManager *)self photosPersonItemProvider];
  v8[1] = photosPersonItemProvider;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v4 = MEMORY[0x277CBEB18];
  itemsCopy = items;
  array = [v4 array];
  homePersonItemProvider = [(HUFaceRecognitionAddPersonItemManager *)self homePersonItemProvider];
  items = [homePersonItemProvider items];
  v8 = [items mutableCopy];

  v25 = [v8 na_flatMap:&__block_literal_global_31_0];
  v9 = [v25 na_map:&__block_literal_global_34];
  photosPersonItemProvider = [(HUFaceRecognitionAddPersonItemManager *)self photosPersonItemProvider];
  items2 = [photosPersonItemProvider items];

  homePersonItemProvider2 = [(HUFaceRecognitionAddPersonItemManager *)self homePersonItemProvider];
  items3 = [homePersonItemProvider2 items];
  v14 = [items3 na_map:&__block_literal_global_37];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __74__HUFaceRecognitionAddPersonItemManager__buildSectionsWithDisplayedItems___block_invoke_4;
  v26[3] = &unk_277DC3DF8;
  v27 = v9;
  v28 = v14;
  v23 = v14;
  v15 = v9;
  v16 = [items2 na_filter:v26];
  [v8 unionSet:v16];
  v17 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUFaceRecognitionHomePersonsSection"];
  allObjects = [v8 allObjects];
  defaultItemComparator = [MEMORY[0x277D14778] defaultItemComparator];
  v20 = [allObjects sortedArrayUsingComparator:defaultItemComparator];
  [v17 setItems:v20];

  [array addObject:v17];
  v21 = [MEMORY[0x277D14778] filterSections:array toDisplayedItems:itemsCopy];

  return v21;
}

id __74__HUFaceRecognitionAddPersonItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 person];
  v3 = [v2 personLinks];

  return v3;
}

id __74__HUFaceRecognitionAddPersonItemManager__buildSectionsWithDisplayedItems___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  return v3;
}

BOOL __74__HUFaceRecognitionAddPersonItemManager__buildSectionsWithDisplayedItems___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 person];
  v6 = [v5 UUID];
  LOBYTE(v4) = [v4 containsObject:v6];

  v7 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HUFaceRecognitionAddPersonItemManager__buildSectionsWithDisplayedItems___block_invoke_5;
  v10[3] = &unk_277DB8B00;
  v11 = v3;
  v8 = v3;
  LOBYTE(v7) = v4 | [v7 na_any:v10];

  return (v7 & 1) == 0;
}

uint64_t __74__HUFaceRecognitionAddPersonItemManager__buildSectionsWithDisplayedItems___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 latestResults];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

- (id)_homeFuture
{
  v2 = MEMORY[0x277D2C900];
  overrideHome = [(HUFaceRecognitionAddPersonItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:overrideHome];

  return v4;
}

@end