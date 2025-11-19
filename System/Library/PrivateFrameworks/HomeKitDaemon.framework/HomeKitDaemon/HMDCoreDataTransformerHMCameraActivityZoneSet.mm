@interface HMDCoreDataTransformerHMCameraActivityZoneSet
+ (id)OPACKFromValue:(id)a3 error:(id *)a4;
+ (id)valueFromOPACK:(id)a3 error:(id *)a4;
@end

@implementation HMDCoreDataTransformerHMCameraActivityZoneSet

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
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__54800;
    v22 = __Block_byref_object_dispose__54801;
    v23 = 0;
    v8 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v7, "count")}];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __70__HMDCoreDataTransformerHMCameraActivityZoneSet_valueFromOPACK_error___block_invoke;
    v15[3] = &unk_278674318;
    v17 = &v18;
    v9 = v8;
    v16 = v9;
    [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v15];
    v10 = v19[5];
    if (v10)
    {
      v11 = 0;
      if (a4)
      {
        *a4 = v10;
      }
    }

    else
    {
      v11 = [v9 copy];
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    if (a4)
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected NSArray value to create NSSet<HMCameraActivityZone>: %@", v5];
      *a4 = [v12 hmfErrorWithCode:3 reason:v13];
    }

    v11 = 0;
  }

  return v11;
}

void __70__HMDCoreDataTransformerHMCameraActivityZoneSet_valueFromOPACK_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  v8 = [HMDCoreDataTransformerHMCameraActivityZone valueFromOPACK:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    [*(a1 + 32) addObject:v8];
  }

  else
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create HMCameraActivityZone: %@", v6];
      v11 = [v9 hmfErrorWithCode:15 reason:v10];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    *a4 = 1;
  }
}

+ (id)OPACKFromValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__54800;
  v21 = __Block_byref_object_dispose__54801;
  v22 = 0;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __70__HMDCoreDataTransformerHMCameraActivityZoneSet_OPACKFromValue_error___block_invoke;
  v14 = &unk_2786742F0;
  v16 = &v17;
  v7 = v6;
  v15 = v7;
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:&v11];
  v8 = v18[5];
  if (v8)
  {
    v9 = 0;
    if (a4)
    {
      *a4 = v8;
    }
  }

  else
  {
    v9 = [v7 copy];
  }

  _Block_object_dispose(&v17, 8);

  return v9;
}

void __70__HMDCoreDataTransformerHMCameraActivityZoneSet_OPACKFromValue_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = [HMDCoreDataTransformerHMCameraActivityZone OPACKFromValue:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    [*(a1 + 32) addObject:v7];
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to opack HMCameraActivityZone: %@", v5];
    v10 = [v8 hmfErrorWithCode:15 reason:v9];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a3 = 1;
  }
}

@end