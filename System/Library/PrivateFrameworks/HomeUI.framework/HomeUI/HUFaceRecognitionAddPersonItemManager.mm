@interface HUFaceRecognitionAddPersonItemManager
- (HMFaceClassification)faceClassification;
- (HUFaceRecognitionAddPersonItemManager)initWithDelegate:(id)a3;
- (HUFaceRecognitionAddPersonItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (HUFaceRecognitionAddPersonItemManager)initWithSignificantEvent:(id)a3 home:(id)a4 delegate:(id)a5;
- (NAFuture)faceCropImageFuture;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_homeFuture;
- (id)associateFaceClassificationWithExistingPerson:(id)a3;
- (id)associateFaceClassificationWithNewPersonNamed:(id)a3;
@end

@implementation HUFaceRecognitionAddPersonItemManager

- (HUFaceRecognitionAddPersonItemManager)initWithSignificantEvent:(id)a3 home:(id)a4 delegate:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(HUFaceRecognitionAddPersonItemManager *)v9 faceClassification];

  if (!v10 || !v12)
  {
    NSLog(&cfstr_FaceClassifica_0.isa, v9, v10);
  }

  v30.receiver = self;
  v30.super_class = HUFaceRecognitionAddPersonItemManager;
  v13 = [(HFItemManager *)&v30 initWithDelegate:v11 sourceItem:0];
  if (v13)
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v32 = v13;
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@: Initialized with significant event:%@", buf, 0x16u);
    }

    objc_storeStrong(&v13->_significantEvent, a3);
    v15 = [v10 hf_cameraProfileForSignificantEvent:v9];
    cameraProfile = v13->_cameraProfile;
    v13->_cameraProfile = v15;

    v17 = [(HUFaceRecognitionAddPersonItemManager *)v9 faceClassification];

    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x277D14700]) initWithHome:v10];
      homePersonItemProvider = v13->_homePersonItemProvider;
      v13->_homePersonItemProvider = v18;

      [(HFHomePersonItemProvider *)v13->_homePersonItemProvider setFilter:&__block_literal_global_266];
      v20 = objc_alloc(MEMORY[0x277D14910]);
      v21 = [v10 currentUser];
      v22 = [v20 initWithHome:v10 forUser:v21];
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
        v32 = v9;
        _os_log_error_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_ERROR, "Face classification is nil on significant event %@", buf, 0xCu);
      }
    }

    v25 = [(HUFaceRecognitionAddPersonItemManager *)v13 faceClassification];
    v26 = [v25 personManagerUUID];
    v27 = [v10 hf_personManagerWithIdentifier:v26];
    personManager = v13->_personManager;
    v13->_personManager = v27;

    objc_storeStrong(&v13->_overrideHome, a4);
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

- (HUFaceRecognitionAddPersonItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithSignificantEvent_home_delegate_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionAddPersonItemManager.m" lineNumber:69 description:{@"%s is unavailable; use %@ instead", "-[HUFaceRecognitionAddPersonItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUFaceRecognitionAddPersonItemManager)initWithDelegate:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithSignificantEvent_home_delegate_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionAddPersonItemManager.m" lineNumber:74 description:{@"%s is unavailable; use %@ instead", "-[HUFaceRecognitionAddPersonItemManager initWithDelegate:]", v6}];

  return 0;
}

- (HMFaceClassification)faceClassification
{
  v2 = [(HUFaceRecognitionAddPersonItemManager *)self significantEvent];
  v3 = [v2 faceClassification];

  return v3;
}

- (NAFuture)faceCropImageFuture
{
  v3 = [(HUFaceRecognitionAddPersonItemManager *)self cameraProfile];
  v4 = [(HUFaceRecognitionAddPersonItemManager *)self significantEvent];
  v5 = [v3 hf_faceCropImageForSignificantEvent:v4];

  return v5;
}

- (id)associateFaceClassificationWithNewPersonNamed:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HUFaceRecognitionAddPersonItemManager *)self faceClassification];
    *buf = 138412802;
    v15 = self;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: Associating %@ with new person named %@", buf, 0x20u);
  }

  v7 = [(HUFaceRecognitionAddPersonItemManager *)self personManager];
  v8 = [(HUFaceRecognitionAddPersonItemManager *)self faceClassification];
  v9 = [v8 person];
  v10 = [v7 hf_namePerson:v9 name:v4];
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

- (id)associateFaceClassificationWithExistingPerson:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HUFaceRecognitionAddPersonItemManager *)self faceClassification];
    *buf = 138412802;
    v41 = self;
    v42 = 2112;
    v43 = v6;
    v44 = 2112;
    v45 = v4;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: Associating %@ with existing person %@", buf, 0x20u);
  }

  v7 = [v4 person];
  v8 = [v4 latestResults];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D13CF8]];
  v10 = [v9 BOOLValue];

  v11 = [(HUFaceRecognitionAddPersonItemManager *)self faceClassification];
  v12 = [v11 person];

  if (v12)
  {
    v13 = [(HUFaceRecognitionAddPersonItemManager *)self personManager];
    v14 = [(HUFaceRecognitionAddPersonItemManager *)self faceClassification];
    v15 = [v14 person];
    v16 = v15;
    if (!v10)
    {
      v23 = [v7 name];
      v24 = [v13 hf_namePerson:v16 name:v23];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __87__HUFaceRecognitionAddPersonItemManager_associateFaceClassificationWithExistingPerson___block_invoke;
      v37[3] = &unk_277DC3D68;
      v37[4] = self;
      v38 = v7;
      v39 = v4;
      v22 = [v24 addCompletionBlock:v37];

      goto LABEL_14;
    }

    v17 = [v15 UUID];
    v18 = [v7 UUID];
    v19 = [v13 hf_reassociateFaceCropsFromPersonWithUUID:v17 toPersonWithUUID:v18 removePerson:1];
  }

  else
  {
    v20 = [(HUFaceRecognitionAddPersonItemManager *)self faceClassification];
    v13 = [v20 faceCrop];

    if (!v10)
    {
      v25 = HFLogForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v7 name];
        *buf = 138412546;
        v41 = v26;
        v42 = 2112;
        v43 = v13;
        _os_log_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEFAULT, "Creating a new person with name %@ face crop %@", buf, 0x16u);
      }

      v27 = [(HUFaceRecognitionAddPersonItemManager *)self personManager];
      v28 = [v7 name];
      v29 = [v27 hf_namePerson:0 name:v28];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __87__HUFaceRecognitionAddPersonItemManager_associateFaceClassificationWithExistingPerson___block_invoke_26;
      v33[3] = &unk_277DC3D90;
      v33[4] = self;
      v34 = v7;
      v35 = v4;
      v36 = v13;
      v22 = [v29 flatMap:v33];

      goto LABEL_13;
    }

    v14 = [(HUFaceRecognitionAddPersonItemManager *)self personManager];
    v21 = MEMORY[0x277CBEB98];
    v16 = [v13 UUID];
    v17 = [v21 na_setWithSafeObject:v16];
    v18 = [v7 UUID];
    v19 = [v14 hf_associateFaceCropsWithUUIDs:v17 toPersonWithUUID:v18];
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

- (id)_buildItemProvidersForHome:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = [(HUFaceRecognitionAddPersonItemManager *)self homePersonItemProvider];
  v8[0] = v4;
  v5 = [(HUFaceRecognitionAddPersonItemManager *)self photosPersonItemProvider];
  v8[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v24 = a3;
  v5 = [v4 array];
  v6 = [(HUFaceRecognitionAddPersonItemManager *)self homePersonItemProvider];
  v7 = [v6 items];
  v8 = [v7 mutableCopy];

  v25 = [v8 na_flatMap:&__block_literal_global_31_0];
  v9 = [v25 na_map:&__block_literal_global_34];
  v10 = [(HUFaceRecognitionAddPersonItemManager *)self photosPersonItemProvider];
  v11 = [v10 items];

  v12 = [(HUFaceRecognitionAddPersonItemManager *)self homePersonItemProvider];
  v13 = [v12 items];
  v14 = [v13 na_map:&__block_literal_global_37];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __74__HUFaceRecognitionAddPersonItemManager__buildSectionsWithDisplayedItems___block_invoke_4;
  v26[3] = &unk_277DC3DF8;
  v27 = v9;
  v28 = v14;
  v23 = v14;
  v15 = v9;
  v16 = [v11 na_filter:v26];
  [v8 unionSet:v16];
  v17 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUFaceRecognitionHomePersonsSection"];
  v18 = [v8 allObjects];
  v19 = [MEMORY[0x277D14778] defaultItemComparator];
  v20 = [v18 sortedArrayUsingComparator:v19];
  [v17 setItems:v20];

  [v5 addObject:v17];
  v21 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:v24];

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
  v3 = [(HUFaceRecognitionAddPersonItemManager *)self overrideHome];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

@end