@interface HFFaceClassificationSignificantEventItem
+ (id)dateFormatter;
- (HFFaceClassificationSignificantEventItem)initWithSignificantEvent:(id)a3 home:(id)a4;
- (HMFaceClassification)faceClassification;
- (HMPerson)person;
- (HMPersonManager)personManager;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HFFaceClassificationSignificantEventItem

+ (id)dateFormatter
{
  if (qword_280E03118 != -1)
  {
    dispatch_once(&qword_280E03118, &__block_literal_global_129);
  }

  v3 = _MergedGlobals_271;

  return v3;
}

uint64_t __57__HFFaceClassificationSignificantEventItem_dateFormatter__block_invoke()
{
  v0 = +[HFFormatterManager sharedInstance];
  v1 = [v0 relativeDateFormatter];
  v2 = _MergedGlobals_271;
  _MergedGlobals_271 = v1;

  v3 = _MergedGlobals_271;

  return [v3 setTimeStyle:0];
}

- (HFFaceClassificationSignificantEventItem)initWithSignificantEvent:(id)a3 home:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 faceClassification];

  if (!v8)
  {
    NSLog(&cfstr_EventIsMissing.isa, v6);
  }

  v9 = [v6 faceClassification];

  if (!v9)
  {
    v10 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "Event %@ is missing a face classification", buf, 0xCu);
    }
  }

  v14.receiver = self;
  v14.super_class = HFFaceClassificationSignificantEventItem;
  v11 = [(HFCameraClipSignificantEventItem *)&v14 initWithSignificantEvent:v6 home:v7];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HFFaceClassificationSignificantEventItem alloc];
  v5 = [(HFCameraClipSignificantEventItem *)self event];
  v6 = [(HFCameraClipSignificantEventItem *)self home];
  v7 = [(HFFaceClassificationSignificantEventItem *)v4 initWithSignificantEvent:v5 home:v6];

  v8 = [(HFFaceClassificationSignificantEventItem *)self faceCropImage];
  [(HFFaceClassificationSignificantEventItem *)v7 setFaceCropImage:v8];

  return v7;
}

- (HMFaceClassification)faceClassification
{
  v2 = [(HFCameraClipSignificantEventItem *)self event];
  v3 = [v2 faceClassification];

  return v3;
}

- (HMPerson)person
{
  v2 = [(HFCameraClipSignificantEventItem *)self event];
  v3 = [v2 faceClassification];
  v4 = [v3 person];

  return v4;
}

- (HMPersonManager)personManager
{
  v3 = [(HFCameraClipSignificantEventItem *)self home];
  v4 = [(HFFaceClassificationSignificantEventItem *)self faceClassification];
  v5 = [v4 personManagerUUID];
  v6 = [v3 hf_personManagerWithIdentifier:v5];

  return v6;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFCameraClipSignificantEventItem *)self home];
  v6 = [v5 personManagerSettings];
  v7 = [v6 isFaceClassificationEnabled];

  if (v7)
  {
    v8 = [v4 objectForKeyedSubscript:HFItemUpdateOptionLogger];
    objc_initWeak(&location, self);
    v20.receiver = self;
    v20.super_class = HFFaceClassificationSignificantEventItem;
    v9 = [(HFCameraClipSignificantEventItem *)&v20 _subclass_updateWithOptions:v4];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke;
    v16[3] = &unk_277DFCAB0;
    objc_copyWeak(&v19, &location);
    v17 = v4;
    v10 = v8;
    v18 = v10;
    v11 = [v9 flatMap:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = MEMORY[0x277D2C900];
    v22 = @"hidden";
    v23[0] = MEMORY[0x277CBEC38];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v13 = [HFItemUpdateOutcome outcomeWithResults:v10];
    v11 = [v12 futureWithResult:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

id __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_2;
  v8[3] = &unk_277DFCA88;
  objc_copyWeak(&v12, a1 + 6);
  v5 = v3;
  v9 = v5;
  v10 = a1[4];
  v11 = a1[5];
  v6 = [v4 futureWithBlock:v8];

  objc_destroyWeak(&v12);

  return v6;
}

void __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_2(id *a1, void *a2)
{
  v74[2] = *MEMORY[0x277D85DE8];
  v49 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v50 = [a1[4] mutableCopy];
  v4 = [WeakRetained faceClassification];

  if (!v4)
  {
    v13 = v50;
    [v50 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    [v49 finishWithResult:v50];
    goto LABEL_20;
  }

  v5 = [v50 objectForKeyedSubscript:@"dependentHomeKitObjects"];
  v6 = [v5 mutableCopy];

  v7 = objc_alloc_init(MEMORY[0x277D2C900]);
  v8 = [a1[5] objectForKeyedSubscript:HFItemUpdateOptionFullUpdateIndicated];
  if (![v8 BOOLValue])
  {
    v14 = [WeakRetained faceCropImage];
    if (v14)
    {
    }

    else
    {
      v16 = [a1[5] objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
      v17 = [v16 BOOLValue];

      if ((v17 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v18 = [WeakRetained faceCropImage];
    [v7 finishWithResult:v18];

    v15 = 0;
    v12 = 0;
    v48 = v7;
    goto LABEL_13;
  }

LABEL_4:
  v9 = [WeakRetained cameraProfile];
  v10 = [WeakRetained event];
  v48 = [v9 hf_faceCropImageForSignificantEvent:v10];

  if (a1[6])
  {
    v11 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_3;
    v71[3] = &unk_277DF3370;
    v72 = a1[6];
    v73 = WeakRetained;
    v12 = [v11 afterDelay:v71 performBlock:10.0];
  }

  else
  {
    v12 = 0;
  }

  v15 = 1;
LABEL_13:
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_9;
  v66[3] = &unk_277DFCA10;
  objc_copyWeak(&v69, a1 + 7);
  v70 = v15;
  v19 = v50;
  v67 = v19;
  v46 = v6;
  v68 = v46;
  v20 = [v48 addCompletionBlock:v66];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_12;
  v64[3] = &unk_277DF70B0;
  v45 = v12;
  v65 = v45;
  v21 = [v48 addCompletionBlock:v64];
  v22 = [WeakRetained home];
  v23 = [WeakRetained faceClassification];
  v24 = [v23 personManagerUUID];
  v47 = [v22 hf_personManagerWithIdentifier:v24];

  v25 = MEMORY[0x277CCABB0];
  objc_opt_class();
  v26 = [v25 numberWithBool:objc_opt_isKindOfClass() & 1];
  [v19 setObject:v26 forKeyedSubscript:@"HFPersonResultIsHomeOriginatedKey"];

  v27 = [WeakRetained faceClassification];
  v28 = [v27 person];

  v29 = [MEMORY[0x277D2C900] futureWithNoResult];
  if (v28)
  {
    v30 = [HFPersonItemUpdateRequest alloc];
    v31 = [WeakRetained home];
    v32 = [(HFPersonItemUpdateRequest *)v30 initWithPerson:v28 personManager:v47 home:v31];

    v33 = [a1[5] mutableCopy];
    [v33 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:HFPersonItemUpdateOptionSkipFaceCrop];
    if (a1[6])
    {
      v34 = [MEMORY[0x277D2C938] mainThreadScheduler];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_2_17;
      v61[3] = &unk_277DF3370;
      v62 = a1[6];
      v63 = WeakRetained;
      v35 = [v34 afterDelay:v61 performBlock:10.0];
    }

    else
    {
      v35 = 0;
    }

    v37 = [(HFPersonItemUpdateRequest *)v32 updateWithOptions:v33];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_18;
    v57[3] = &unk_277DFCA38;
    v36 = v35;
    v58 = v36;
    v59 = v19;
    v60 = v46;
    v38 = [v37 addCompletionBlock:v57];

    v29 = v38;
  }

  else
  {
    v36 = 0;
  }

  v39 = MEMORY[0x277D2C900];
  v74[0] = v48;
  v74[1] = v29;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
  v41 = [v39 chainFutures:v40];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_2_21;
  v51[3] = &unk_277DFCA60;
  v52 = v19;
  v42 = v46;
  v53 = v42;
  v54 = v49;
  v55 = a1[6];
  v56 = WeakRetained;
  v43 = [v41 addCompletionBlock:v51];

  objc_destroyWeak(&v69);
  v13 = v50;
LABEL_20:

  v44 = *MEMORY[0x277D85DE8];
}

void __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v3 = [v2 loggerActivity];
    os_activity_scope_enter(v3, &state);

    v4 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Face crop update is taking more than 10 seconds: %@", &v9, 0xCu);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v7 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      LODWORD(state.opaque[0]) = 138412290;
      *(state.opaque + 4) = v8;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Face crop update is taking more than 10 seconds: %@", &state, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (*(a1 + 56) == 1)
  {
    [WeakRetained setFaceCropImage:v5];
  }

  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:@"HFPersonResultFaceCropImageKey"];
    v9 = [v8 event];
    v10 = [v9 dateOfOccurrence];

    [*(a1 + 32) setObject:v10 forKeyedSubscript:@"HFPersonResultFaceCropDateKey"];
    v11 = MEMORY[0x277CBEB98];
    v12 = [v8 event];
    v13 = [v12 faceClassification];
    v14 = [v13 faceCrop];
    v15 = [v14 UUID];
    v16 = [v11 na_setWithSafeObject:v15];
    [*(a1 + 32) setObject:v16 forKeyedSubscript:@"HFPersonResultFaceCropIdentifiersKey"];

    v17 = [objc_opt_class() dateFormatter];
    v18 = [v17 stringFromDate:v10];
    [*(a1 + 32) setObject:v18 forKeyedSubscript:@"description"];

    v19 = *(a1 + 40);
    v20 = [v8 event];
    v21 = [v20 faceClassification];
    v22 = [v21 faceCrop];
    [v19 na_safeAddObject:v22];
  }

  else if (*(a1 + 56) == 1)
  {
    v23 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = 138412546;
      v26 = v8;
      v27 = 2112;
      v28 = v6;
      _os_log_error_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_ERROR, "%@: Unable to process face crop from significant event (error: %@)", &v25, 0x16u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_2_17(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v3 = [v2 loggerActivity];
    os_activity_scope_enter(v3, &state);

    v4 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Person update is taking more than 10 seconds: %@", &v9, 0xCu);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v7 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      LODWORD(state.opaque[0]) = 138412290;
      *(state.opaque + 4) = v8;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Person update is taking more than 10 seconds: %@", &state, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_18(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) cancel];
  if (v5)
  {
    [*(a1 + 40) addResultsFromOutcome:v5];
    v3 = *(a1 + 48);
    v4 = [v5 objectForKeyedSubscript:@"dependentHomeKitObjects"];
    [v3 unionSet:v4];
  }
}

uint64_t __72__HFFaceClassificationSignificantEventItem__subclass_updateWithOptions___block_invoke_2_21(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"dependentHomeKitObjects"];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"HFPersonResultFaceCropImageKey"];

  v3 = [*(a1 + 32) objectForKeyedSubscript:@"title"];
  v4 = [v3 length];

  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    v10 = *(a1 + 56);
    if (v10)
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v11 = [v10 loggerActivity];
      os_activity_scope_enter(v11, &state);

      v12 = HFLogForCategory(0x13uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 64);
        v17 = 138412290;
        v18 = v13;
        _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "Unable to display face crop or person: %@", &v17, 0xCu);
      }

      os_activity_scope_leave(&state);
    }

    else
    {
      v15 = HFLogForCategory(0x13uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 64);
        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = v16;
        _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_ERROR, "Unable to display face crop or person: %@", &state, 0xCu);
      }
    }

    [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    result = [*(a1 + 48) finishWithResult:*(a1 + 32)];
    v14 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = *MEMORY[0x277D85DE8];

    return [v6 finishWithResult:v7];
  }

  return result;
}

@end