@interface HMDCameraSignificantEventBulletinParamsDictionaryTransformer
+ (id)reverseTransformedValue:(id)a3 error:(id *)a4;
+ (id)transformedValue:(id)a3 error:(id *)a4;
@end

@implementation HMDCameraSignificantEventBulletinParamsDictionaryTransformer

+ (id)reverseTransformedValue:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hmf_UUIDForKey:@"HMDCSEBP.ck.UUID"];
    if (v7)
    {
      v8 = [v6 valueForKey:@"HMDCSEBP.ck.reason"];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 unsignedIntegerValue];
        v11 = [v6 valueForKey:@"HMDCSEBP.ck.date"];
        if (v11)
        {
          v12 = [v6 valueForKey:@"HMDCSEBP.ck.confidenceLevel"];
          v13 = v12;
          if (v12)
          {
            v14 = [v12 unsignedIntegerValue];
            v15 = [v6 hmf_UUIDForKey:@"HMDCSEBP.ck.cameraProfileUUID"];
            if (v15)
            {
              v16 = [v6 valueForKey:@"HMDCSEBP.ck.faceClassifications"];
              v34 = v16;
              if (v16)
              {
                v17 = v16;
                v29 = v14;
                v30 = v15;
                v31 = v10;
                v32 = v13;
                v33 = v9;
                v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v35 = 0u;
                v36 = 0u;
                v37 = 0u;
                v38 = 0u;
                v19 = v17;
                v20 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
                if (v20)
                {
                  v21 = v20;
                  v22 = *v36;
                  do
                  {
                    for (i = 0; i != v21; ++i)
                    {
                      if (*v36 != v22)
                      {
                        objc_enumerationMutation(v19);
                      }

                      v24 = [HMDCameraSignificantEventFaceClassificationDictionaryTransformer reverseTransformedValue:*(*(&v35 + 1) + 8 * i) error:a4];
                      [v18 addObject:v24];
                    }

                    v21 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
                  }

                  while (v21);
                }

                v9 = v33;
                v10 = v31;
                v13 = v32;
                v25 = v29;
                v15 = v30;
              }

              else
              {
                v25 = v14;
                v18 = 0;
              }

              v26 = [[HMDCameraSignificantEventBulletinParams alloc] initWithUUID:v7 reason:v10 dateOfOccurrence:v11 confidenceLevel:v25 faceClassifications:v18 cameraProfileUUID:v15];
            }

            else
            {
              v26 = 0;
            }
          }

          else
          {
            v26 = 0;
          }
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)transformedValue:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v7 = [v5 UUID];
    v8 = [v7 UUIDString];
    [v6 setValue:v8 forKey:@"HMDCSEBP.ck.UUID"];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "reason")}];
    [v6 setValue:v9 forKey:@"HMDCSEBP.ck.reason"];

    v10 = [v5 dateOfOccurrence];
    [v6 setValue:v10 forKey:@"HMDCSEBP.ck.date"];

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "confidenceLevel")}];
    [v6 setValue:v11 forKey:@"HMDCSEBP.ck.confidenceLevel"];

    v12 = [v5 cameraProfileUUID];
    v13 = [v12 UUIDString];
    [v6 setValue:v13 forKey:@"HMDCSEBP.ck.cameraProfileUUID"];

    v14 = [MEMORY[0x277CBEB18] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = [v5 faceClassifications];
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [HMDCameraSignificantEventFaceClassificationDictionaryTransformer transformedValue:*(*(&v25 + 1) + 8 * i) error:a4];
          [v14 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }

    v21 = [v14 copy];
    [v6 setValue:v21 forKey:@"HMDCSEBP.ck.faceClassifications"];

    v22 = [v6 copy];
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

@end