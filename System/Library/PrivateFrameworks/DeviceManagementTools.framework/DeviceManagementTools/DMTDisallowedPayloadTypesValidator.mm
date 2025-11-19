@interface DMTDisallowedPayloadTypesValidator
- (BOOL)validateProfile:(id)a3 error:(id *)a4;
@end

@implementation DMTDisallowedPayloadTypesValidator

- (BOOL)validateProfile:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(DMTDisallowedPayloadTypesValidator *)self disallowedPayloadTypes];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v6 payloads];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 type];
        v15 = [v7 containsObject:v14];

        if (v15)
        {
          if (a4)
          {
            v25[0] = @"PayloadContent";
            v24[0] = @"kDMTInvalidConfigurationProfileValueErrorKey";
            v24[1] = @"PayloadType";
            v16 = [v13 type];
            v25[1] = v16;
            v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
            *a4 = DMTErrorWithCodeAndUserInfo(77, v17);

            LOBYTE(a4) = 0;
          }

          goto LABEL_12;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(a4) = 1;
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
  return a4;
}

@end