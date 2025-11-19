@interface HFPersonItemUpdateRequest
- (HFPersonItemUpdateRequest)initWithPerson:(id)a3 personManager:(id)a4 home:(id)a5;
- (id)updateWithOptions:(id)a3;
@end

@implementation HFPersonItemUpdateRequest

- (HFPersonItemUpdateRequest)initWithPerson:(id)a3 personManager:(id)a4 home:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HFPersonItemUpdateRequest;
  v12 = [(HFPersonItemUpdateRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_person, a3);
    objc_storeStrong(&v13->_personManager, a4);
    objc_storeStrong(&v13->_home, a5);
  }

  return v13;
}

- (id)updateWithOptions:(id)a3
{
  v40[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFPersonItemUpdateRequest *)self home];
  v6 = [v5 personManagerSettings];
  v7 = [v6 isFaceClassificationEnabled];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = [(HFPersonItemUpdateRequest *)self person];
    v10 = [v9 name];
    [v8 na_safeSetObject:v10 forKey:@"title"];

    v11 = [(HFPersonItemUpdateRequest *)self person];
    v12 = [v11 UUID];
    [v8 na_safeSetObject:v12 forKey:@"personIdentifier"];

    v13 = MEMORY[0x277CCABB0];
    v14 = [(HFPersonItemUpdateRequest *)self personManager];
    objc_opt_class();
    v15 = [v13 numberWithBool:objc_opt_isKindOfClass() & 1];
    [v8 setObject:v15 forKeyedSubscript:@"HFPersonResultIsHomeOriginatedKey"];

    v16 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    [v8 setObject:v16 forKeyedSubscript:@"dependentHomeKitClasses"];

    v17 = MEMORY[0x277CBEB58];
    v18 = [(HFPersonItemUpdateRequest *)self person];
    v19 = [v17 na_setWithSafeObject:v18];

    [v8 setObject:v19 forKeyedSubscript:@"dependentHomeKitObjects"];
    [v8 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"shouldDisableForNonAdminUsers"];
    v20 = [v4 objectForKeyedSubscript:HFPersonItemUpdateOptionSkipFaceCrop];
    v21 = [v20 BOOLValue];

    if (v21)
    {
      v22 = MEMORY[0x277D2C900];
      v23 = [HFItemUpdateOutcome outcomeWithResults:v8];
      v24 = [v22 futureWithResult:v23];
    }

    else
    {
      v23 = [(HFPersonItemUpdateRequest *)self personManager];
      v26 = [(HFPersonItemUpdateRequest *)self person];
      v27 = [v26 UUID];
      v28 = [v23 hf_faceCropsForPersonWithIdentifier:v27];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __47__HFPersonItemUpdateRequest_updateWithOptions___block_invoke;
      v35[3] = &unk_277DF43F0;
      v29 = v8;
      v36 = v29;
      v19 = v19;
      v37 = v19;
      v38 = self;
      v30 = [v28 flatMap:v35];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __47__HFPersonItemUpdateRequest_updateWithOptions___block_invoke_105;
      v33[3] = &unk_277DF2D30;
      v33[4] = self;
      v8 = v29;
      v34 = v8;
      v24 = [v30 recover:v33];
    }
  }

  else
  {
    v25 = MEMORY[0x277D2C900];
    v39 = @"hidden";
    v40[0] = MEMORY[0x277CBEC38];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v19 = [HFItemUpdateOutcome outcomeWithResults:v8];
    v24 = [v25 futureWithResult:v19];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v24;
}

id __47__HFPersonItemUpdateRequest_updateWithOptions___block_invoke(id *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  v4 = a2;
  v5 = [v3 setWithArray:v4];
  v6 = [v5 na_map:&__block_literal_global_20];

  v7 = [v4 lastObject];

  v8 = a1[4];
  v9 = [v7 hf_imageRepresentation];
  [v8 na_safeSetObject:v9 forKey:@"HFPersonResultFaceCropImageKey"];

  v10 = a1[4];
  v11 = [v7 dateCreated];
  [v10 na_safeSetObject:v11 forKey:@"HFPersonResultFaceCropDateKey"];

  [a1[4] na_safeSetObject:v6 forKey:@"HFPersonResultFaceCropIdentifiersKey"];
  [a1[5] na_safeAddObject:v7];
  [a1[4] setObject:a1[5] forKeyedSubscript:@"dependentHomeKitObjects"];
  v12 = HFLogForCategory(0x13uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v18 = [a1[6] person];
    v19 = 138412546;
    v20 = v18;
    v21 = 2112;
    v22 = v7;
    _os_log_debug_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEBUG, "Person %@ using face crop %@", &v19, 0x16u);
  }

  v13 = MEMORY[0x277D2C900];
  v14 = [HFItemUpdateOutcome outcomeWithResults:a1[4]];
  v15 = [v13 futureWithResult:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

id __47__HFPersonItemUpdateRequest_updateWithOptions___block_invoke_105(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x13uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "%@: Face crop update failed with error %@. Recovering and hiding face crop result.", &v11, 0x16u);
  }

  v5 = MEMORY[0x277D2C900];
  v6 = [HFItemUpdateOutcome outcomeWithResults:*(a1 + 40)];
  v7 = [v5 futureWithResult:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end