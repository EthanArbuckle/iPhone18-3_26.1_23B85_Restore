@interface HMDCoreDataTransformerHAPPairingIdentitySet
+ (id)OPACKFromValue:(id)a3 error:(id *)a4;
+ (id)valueFromOPACK:(id)a3 error:(id *)a4;
@end

@implementation HMDCoreDataTransformerHAPPairingIdentitySet

+ (id)valueFromOPACK:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__170269;
    v22 = __Block_byref_object_dispose__170270;
    v23 = 0;
    v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v7, "count")}];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__HMDCoreDataTransformerHAPPairingIdentitySet_valueFromOPACK_error___block_invoke;
    v14[3] = &unk_27867CC40;
    v16 = &v18;
    v17 = &v24;
    v9 = v8;
    v15 = v9;
    [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v14];
    if (*(v25 + 24) == 1)
    {
      v10 = 0;
      if (a4)
      {
        *a4 = v19[5];
      }
    }

    else
    {
      v10 = [v9 copy];
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    if (a4)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected NSArray value to create NSSet<HAPPairingIdentity>: %@", v5];
      *a4 = [v11 hmfErrorWithCode:3 reason:v12];
    }

    v10 = 0;
  }

  return v10;
}

void __68__HMDCoreDataTransformerHAPPairingIdentitySet_valueFromOPACK_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = [HMDCoreDataTransformerHAPPairingIdentity valueFromOPACK:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    [*(a1 + 32) addObject:v7];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

+ (id)OPACKFromValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__170269;
  v18 = __Block_byref_object_dispose__170270;
  v19 = 0;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__HMDCoreDataTransformerHAPPairingIdentitySet_OPACKFromValue_error___block_invoke;
  v10[3] = &unk_27867CC18;
  v12 = &v14;
  v13 = &v20;
  v7 = v6;
  v11 = v7;
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v10];
  if (*(v21 + 24) == 1)
  {
    v8 = 0;
    if (a4)
    {
      *a4 = v15[5];
    }
  }

  else
  {
    v8 = [v7 copy];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

void __68__HMDCoreDataTransformerHAPPairingIdentitySet_OPACKFromValue_error___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(*(a1 + 40) + 8);
  obj = *(v5 + 40);
  v6 = [HMDCoreDataTransformerHAPPairingIdentity OPACKFromValue:a2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    [*(a1 + 32) addObject:v6];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
  }
}

@end