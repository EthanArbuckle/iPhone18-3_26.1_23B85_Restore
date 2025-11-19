@interface HMDCoreDataTransformerHMCameraActivityZone
+ (id)OPACKFromValue:(id)a3 error:(id *)a4;
+ (id)valueFromOPACK:(id)a3 error:(id *)a4;
@end

@implementation HMDCoreDataTransformerHMCameraActivityZone

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
  v8 = v7;
  if (v7)
  {
    if ([v7 count] > 5)
    {
      if (([v8 count] & 1) == 0)
      {
        v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count") >> 1}];
        if ([v8 count])
        {
          v11 = 0;
          do
          {
            v12 = [v8 objectAtIndexedSubscript:v11];
            [v12 floatValue];
            v14 = v13;
            v15 = [v8 objectAtIndexedSubscript:v11 + 1];
            [v15 floatValue];
            v17 = v16;

            v18 = [objc_alloc(MEMORY[0x277CD1D10]) initWithPoint:{v14, v17}];
            [v10 addObject:v18];

            v11 += 2;
          }

          while (v11 < [v8 count]);
        }

        v19 = [objc_alloc(MEMORY[0x277CD18B0]) initWithPoints:v10];
        goto LABEL_18;
      }

      if (a4)
      {
        v9 = MEMORY[0x277CCA9B8];
        [MEMORY[0x277CCACA8] stringWithFormat:@"Expected NSArray of even length to create HMCameraActivityZone: %@", v5];
        goto LABEL_17;
      }
    }

    else if (a4)
    {
      v9 = MEMORY[0x277CCA9B8];
      [MEMORY[0x277CCACA8] stringWithFormat:@"Expected NSArray of at least 6 elements to create HMCameraActivityZone: %@", v5];
      v10 = LABEL_17:;
      [v9 hmfErrorWithCode:3 reason:v10];
      *a4 = v19 = 0;
LABEL_18:

      goto LABEL_20;
    }
  }

  else if (a4)
  {
    v9 = MEMORY[0x277CCA9B8];
    [MEMORY[0x277CCACA8] stringWithFormat:@"Expected NSArray value to create HMCameraActivityZone: %@", v5];
    goto LABEL_17;
  }

  v19 = 0;
LABEL_20:

  return v19;
}

+ (id)OPACKFromValue:(id)a3 error:(id *)a4
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 points];
  v8 = [v6 initWithCapacity:{2 * objc_msgSend(v7, "count")}];

  v9 = [v5 points];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__HMDCoreDataTransformerHMCameraActivityZone_OPACKFromValue_error___block_invoke;
  v13[3] = &unk_2786742C8;
  v14 = v8;
  v10 = v8;
  [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v13];

  v11 = [v10 copy];

  return v11;
}

void __67__HMDCoreDataTransformerHMCameraActivityZone_OPACKFromValue_error___block_invoke(uint64_t a1, void *a2)
{
  [a2 point];
  v4 = v3;
  v5 = *(a1 + 32);
  *&v6 = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  [v5 addObject:v7];

  v8 = *(a1 + 32);
  *&v9 = v4;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  [v8 addObject:v10];
}

@end