@interface DMTConfigurationPayloadBase
+ (NSDictionary)payloadSubclassesByPayloadType;
+ (id)concretePayloadWithDictionary:(id)a3 error:(id *)a4;
@end

@implementation DMTConfigurationPayloadBase

+ (id)concretePayloadWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v13 = &unk_285B5BE10;
    v14 = 70;
LABEL_8:
    DMTErrorWithCodeAndUserInfo(v14, v13);
    *a4 = v12 = 0;
    goto LABEL_9;
  }

  v8 = CFGetTypeID(v6);
  if (v8 != CFDictionaryGetTypeID())
  {
    v13 = &unk_285B5BE38;
    v14 = 71;
    goto LABEL_8;
  }

  v9 = DMTValidateProfileString(v7, @"PayloadType", 0, a4);
  v10 = [a1 payloadSubclassesByPayloadType];
  v11 = [v10 objectForKeyedSubscript:v9];
  if (!v11)
  {
    v11 = objc_opt_class();
  }

  v12 = [[v11 alloc] initWithDictionary:v7 error:a4];
LABEL_9:

  return v12;
}

+ (NSDictionary)payloadSubclassesByPayloadType
{
  if (payloadSubclassesByPayloadType_onceToken != -1)
  {
    +[DMTConfigurationPayloadBase payloadSubclassesByPayloadType];
  }

  v3 = payloadSubclassesByPayloadType_payloadClassesByPayloadType;

  return v3;
}

void __61__DMTConfigurationPayloadBase_payloadSubclassesByPayloadType__block_invoke()
{
  v36[5] = *MEMORY[0x277D85DE8];
  v36[0] = objc_opt_class();
  v36[1] = objc_opt_class();
  v36[2] = objc_opt_class();
  v36[3] = objc_opt_class();
  v36[4] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:5];
  v1 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v0;
  v18 = [obj countByEnumeratingWithState:&v24 objects:v35 count:16];
  if (v18)
  {
    v17 = *v25;
    do
    {
      v2 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = v2;
        v3 = *(*(&v24 + 1) + 8 * v2);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v4 = [v3 supportedPayloadTypes];
        v5 = [v4 countByEnumeratingWithState:&v20 objects:v34 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v21;
          do
          {
            v8 = 0;
            do
            {
              if (*v21 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v20 + 1) + 8 * v8);
              if ([v1 objectForKeyedSubscript:v9])
              {
                if (_DMTLogGeneral_onceToken_4 != -1)
                {
                  __61__DMTConfigurationPayloadBase_payloadSubclassesByPayloadType__block_invoke_cold_1();
                }

                v10 = _DMTLogGeneral_logObj_4;
                if (os_log_type_enabled(_DMTLogGeneral_logObj_4, OS_LOG_TYPE_ERROR))
                {
                  v11 = v10;
                  v12 = [v1 objectForKeyedSubscript:v9];
                  *buf = 138543874;
                  v29 = v9;
                  v30 = 2114;
                  v31 = v3;
                  v32 = 2114;
                  v33 = v12;
                  _os_log_error_impl(&dword_24891B000, v11, OS_LOG_TYPE_ERROR, "Multiple validators found for payload type “%{public}@”! (%{public}@ and %{public}@)", buf, 0x20u);
                }
              }

              else
              {
                [v1 setObject:v3 forKeyedSubscript:v9];
              }

              ++v8;
            }

            while (v6 != v8);
            v6 = [v4 countByEnumeratingWithState:&v20 objects:v34 count:16];
          }

          while (v6);
        }

        v2 = v19 + 1;
      }

      while (v19 + 1 != v18);
      v18 = [obj countByEnumeratingWithState:&v24 objects:v35 count:16];
    }

    while (v18);
  }

  v13 = [v1 copy];
  v14 = payloadSubclassesByPayloadType_payloadClassesByPayloadType;
  payloadSubclassesByPayloadType_payloadClassesByPayloadType = v13;

  v15 = *MEMORY[0x277D85DE8];
}

@end