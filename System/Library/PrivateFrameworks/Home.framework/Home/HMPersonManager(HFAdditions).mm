@interface HMPersonManager(HFAdditions)
- (id)hf_associateFaceCropsWithUUIDs:()HFAdditions toPersonWithUUID:;
- (id)hf_faceCropsForPersonWithIdentifier:()HFAdditions;
- (id)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:()HFAdditions;
- (id)hf_linkFromPerson:()HFAdditions toPerson:toPersonManagerUUID:;
- (id)hf_namePerson:()HFAdditions name:;
- (id)hf_personWithIdentifier:()HFAdditions;
- (id)hf_reassociateFaceCropsFromPersonWithUUID:()HFAdditions toPersonWithUUID:removePerson:;
- (id)hf_removeFaceCropsWithUUIDs:()HFAdditions;
- (id)hf_removePersonWithUUID:()HFAdditions;
@end

@implementation HMPersonManager(HFAdditions)

- (id)hf_personWithIdentifier:()HFAdditions
{
  v4 = a3;
  v5 = MEMORY[0x277D2C900];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HMPersonManager_HFAdditions__hf_personWithIdentifier___block_invoke;
  v9[3] = &unk_277DF28D8;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 futureWithBlock:v9];

  return v7;
}

- (id)hf_faceCropsForPersonWithIdentifier:()HFAdditions
{
  v4 = a3;
  v5 = MEMORY[0x277D2C900];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__HMPersonManager_HFAdditions__hf_faceCropsForPersonWithIdentifier___block_invoke;
  v13[3] = &unk_277DF61F0;
  v13[4] = self;
  v6 = v4;
  v14 = v6;
  v7 = [v5 futureWithCompletionHandlerAdapterBlock:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HMPersonManager_HFAdditions__hf_faceCropsForPersonWithIdentifier___block_invoke_2;
  v11[3] = &unk_277DFC8B0;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = [v7 flatMap:v11];

  return v9;
}

- (id)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:()HFAdditions
{
  v1 = [self hf_faceCropsForPersonWithIdentifier:?];
  v2 = [v1 flatMap:&__block_literal_global_11_6];

  return v2;
}

- (id)hf_namePerson:()HFAdditions name:
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D2C900];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__HMPersonManager_HFAdditions__hf_namePerson_name___block_invoke;
  v13[3] = &unk_277DFCDA8;
  objc_copyWeak(&v16, &location);
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v11 = [v8 futureWithBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11;
}

- (id)hf_removePersonWithUUID:()HFAdditions
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D2C900];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HMPersonManager_HFAdditions__hf_removePersonWithUUID___block_invoke;
  v9[3] = &unk_277DFD108;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  objc_copyWeak(&v11, &location);
  v7 = [v5 futureWithBlock:v9];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);

  return v7;
}

- (id)hf_removeFaceCropsWithUUIDs:()HFAdditions
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D2C900];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HMPersonManager_HFAdditions__hf_removeFaceCropsWithUUIDs___block_invoke;
  v9[3] = &unk_277DFD108;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  objc_copyWeak(&v11, &location);
  v7 = [v5 futureWithBlock:v9];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);

  return v7;
}

- (id)hf_associateFaceCropsWithUUIDs:()HFAdditions toPersonWithUUID:
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D2C900];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__HMPersonManager_HFAdditions__hf_associateFaceCropsWithUUIDs_toPersonWithUUID___block_invoke;
  v13[3] = &unk_277DFCDA8;
  objc_copyWeak(&v16, &location);
  v9 = v6;
  v14 = v9;
  v10 = v7;
  v15 = v10;
  v11 = [v8 futureWithBlock:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11;
}

- (id)hf_reassociateFaceCropsFromPersonWithUUID:()HFAdditions toPersonWithUUID:removePerson:
{
  v8 = a3;
  v9 = a4;
  if ([v8 isEqual:v9])
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v11 = MEMORY[0x277D2C900];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __104__HMPersonManager_HFAdditions__hf_reassociateFaceCropsFromPersonWithUUID_toPersonWithUUID_removePerson___block_invoke;
    v13[3] = &unk_277DFD1D0;
    v13[4] = self;
    v14 = v8;
    v15 = v9;
    v16 = a5;
    futureWithNoResult = [v11 futureWithBlock:v13];
  }

  return futureWithNoResult;
}

- (id)hf_linkFromPerson:()HFAdditions toPerson:toPersonManagerUUID:
{
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CD1CE0];
  v11 = a5;
  v12 = [v10 alloc];
  uUID = [v9 UUID];
  v14 = [v12 initWithPersonUUID:uUID personManagerUUID:v11];

  v15 = [v8 mutableCopy];
  personLinks = [v15 personLinks];
  v17 = [personLinks mutableCopy];

  [v17 addObject:v14];
  [v15 setPersonLinks:v17];
  v18 = MEMORY[0x277D2C900];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79__HMPersonManager_HFAdditions__hf_linkFromPerson_toPerson_toPersonManagerUUID___block_invoke;
  v24[3] = &unk_277DFD1F8;
  v24[4] = self;
  v25 = v15;
  v26 = v8;
  v27 = v9;
  v19 = v9;
  v20 = v8;
  v21 = v15;
  v22 = [v18 futureWithBlock:v24];

  return v22;
}

@end