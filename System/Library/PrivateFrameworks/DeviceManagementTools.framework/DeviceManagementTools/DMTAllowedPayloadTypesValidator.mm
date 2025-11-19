@interface DMTAllowedPayloadTypesValidator
- (BOOL)validateProfile:(id)a3 error:(id *)a4;
@end

@implementation DMTAllowedPayloadTypesValidator

- (BOOL)validateProfile:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(DMTAllowedPayloadTypesValidator *)self allowedPayloadTypes];
  v8 = [(DMTAllowedPayloadTypesValidator *)self requireAllPayloadTypes];
  v9 = [v8 mutableCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [v6 payloads];
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v21 + 1) + 8 * i) type];
        if (([v7 containsObject:v15] & 1) == 0 && (objc_msgSend(v8, "containsObject:", v15) & 1) == 0)
        {
          if (a4)
          {
            v27[0] = @"kDMTInvalidConfigurationProfileValueErrorKey";
            v27[1] = @"PayloadType";
            v28[0] = @"PayloadContent";
            v28[1] = v15;
            v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
            *a4 = DMTErrorWithCodeAndUserInfo(77, v18);
          }

          v17 = 0;
          goto LABEL_16;
        }

        [v9 removeObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = [v9 count];
  v17 = 1;
  if (a4 && v16)
  {
    v26[0] = @"PayloadContent";
    v25[0] = @"kDMTInvalidConfigurationProfileValueErrorKey";
    v25[1] = @"PayloadType";
    v10 = [v9 anyObject];
    v26[1] = v10;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    *a4 = DMTErrorWithCodeAndUserInfo(76, v15);
LABEL_16:
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

@end