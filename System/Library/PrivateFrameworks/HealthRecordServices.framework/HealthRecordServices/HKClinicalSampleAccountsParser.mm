@interface HKClinicalSampleAccountsParser
+ (id)_jsonDictionaryFromJSONObject:(id)object subElement:(id)element error:(id *)error;
+ (id)_stringOnlyDictionaryFromJSONDictionary:(id)dictionary;
- (id)_parseAccountsFromJSONData:(id)data error:(id *)error;
- (id)_parseBatchesFromSampleAccountJSONDict:(id)dict error:(id *)error;
- (id)_parseGatewayFromProviderJSONDict:(id)dict error:(id *)error;
- (id)_parseProviderFromSampleAccountJSONDict:(id)dict error:(id *)error;
- (id)parseAccountsFromFile:(id)file error:(id *)error;
@end

@implementation HKClinicalSampleAccountsParser

- (id)parseAccountsFromFile:(id)file error:(id *)error
{
  fileCopy = file;
  if (fileCopy && ([MEMORY[0x277CBEA90] dataWithContentsOfURL:fileCopy], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    absoluteString = v7;
    v9 = [(HKClinicalSampleAccountsParser *)self _parseAccountsFromJSONData:v7 error:error];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    absoluteString = [fileCopy absoluteString];
    [v12 hk_assignError:error code:3 format:{@"Unable to read sample account from «%@»", absoluteString}];
    v10 = 0;
  }

  return v10;
}

- (id)_parseAccountsFromJSONData:(id)data error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (!dataCopy)
  {
    [HKClinicalSampleAccountsParser _parseAccountsFromJSONData:a2 error:self];
  }

  v8 = [MEMORY[0x277CCAAA0] hk_JSONObjectFromFHIRData:dataCopy options:0 error:error];
  if (v8)
  {
    v9 = [objc_opt_class() _jsonDictionaryFromJSONObject:v8 subElement:0 error:error];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectForKeyedSubscript:@"providers"];
      objc_opt_class();
      v12 = HKSafeObject();

      if (v12)
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        obj = v12;
        v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v32;
          v28 = v10;
          v29 = v8;
          v27 = v12;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v32 != v16)
              {
                objc_enumerationMutation(obj);
              }

              v18 = *(*(&v31 + 1) + 8 * i);
              v19 = [(HKClinicalSampleAccountsParser *)self _parseProviderFromSampleAccountJSONDict:v18 error:error, v27, v28, v29];
              if (!v19)
              {
                goto LABEL_20;
              }

              v20 = v19;
              v21 = [(HKClinicalSampleAccountsParser *)self _parseBatchesFromSampleAccountJSONDict:v18 error:error];
              if (!v21)
              {

LABEL_20:
                v24 = 0;
                v10 = v28;
                v8 = v29;
                v12 = v27;
                goto LABEL_21;
              }

              v22 = v21;
              v23 = objc_alloc_init(HKClinicalSampleAccount);
              [(HKClinicalSampleAccount *)v23 setProvider:v20];
              [(HKClinicalSampleAccount *)v23 setBatches:v22];
              [v13 addObject:v23];
            }

            v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
            v10 = v28;
            v8 = v29;
            v12 = v27;
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v24 = v13;
LABEL_21:
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_parseProviderFromSampleAccountJSONDict:(id)dict error:(id *)error
{
  v7 = [dict objectForKeyedSubscript:@"provider"];
  objc_opt_class();
  v8 = HKSafeObject();

  if (dict)
  {
    v9 = [objc_opt_class() _stringOnlyDictionaryFromJSONDictionary:v8];
    v10 = [v9 objectForKeyedSubscript:@"identifier"];
    if ([v10 length])
    {
      v11 = [v9 objectForKeyedSubscript:@"title"];
      if ([v11 length])
      {
        v12 = [v8 objectForKeyedSubscript:@"minCompatibleAPIVersion"];
        v13 = objc_alloc_init(HKClinicalSampleAccountProvider);
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"SIMULATOR_SAMPLE_PROVIDER_BATCH_PREFIX", v10];
        [(HKClinicalSampleAccountProvider *)v13 setIdentifier:v14];

        [(HKClinicalSampleAccountProvider *)v13 setTitle:v11];
        [(HKClinicalSampleAccountProvider *)v13 setProperties:v9];
        -[HKClinicalSampleAccountProvider setMinCompatibleAPIVersion:](v13, "setMinCompatibleAPIVersion:", [v12 integerValue]);
        v15 = [(HKClinicalSampleAccountsParser *)self _parseGatewayFromProviderJSONDict:v8 error:error];
        if (v15)
        {
          [(HKClinicalSampleAccountProvider *)v13 setGateway:v15];
          v16 = v13;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_parseGatewayFromProviderJSONDict:(id)dict error:(id *)error
{
  dictCopy = dict;
  v6 = [objc_opt_class() _jsonDictionaryFromJSONObject:dictCopy subElement:@"gateway" error:error];

  if (v6)
  {
    v7 = [objc_opt_class() _stringOnlyDictionaryFromJSONDictionary:v6];
    v8 = [v7 objectForKeyedSubscript:@"identifier"];
    if ([v8 length])
    {
      v9 = [v7 objectForKeyedSubscript:@"title"];
      if ([v9 length])
      {
        v10 = [v7 objectForKeyedSubscript:@"fhirVersion"];
        if ([v10 length])
        {
          v11 = [MEMORY[0x277CCD3D0] versionFromVersionString:v10 error:error];
          if (v11)
          {
            v12 = objc_alloc_init(HKClinicalSampleAccountProviderGateway);
            v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"SIMULATOR_SAMPLE_GATEWAY_PREFIX", v8];
            [(HKClinicalSampleAccountProviderGateway *)v12 setIdentifier:v13];

            [(HKClinicalSampleAccountProviderGateway *)v12 setTitle:v9];
            [(HKClinicalSampleAccountProviderGateway *)v12 setProperties:v7];
            [(HKClinicalSampleAccountProviderGateway *)v12 setFHIRVersion:v11];
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_parseBatchesFromSampleAccountJSONDict:(id)dict error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [dict objectForKeyedSubscript:@"batches"];
  objc_opt_class();
  v6 = HKSafeObject();

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = v6;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

          v13 = [objc_opt_class() _jsonDictionaryFromJSONObject:*(*(&v20 + 1) + 8 * i) subElement:@"resources" error:error];
          if (!v13)
          {

            v16 = 0;
            goto LABEL_12;
          }

          v14 = v13;
          v15 = objc_alloc_init(HKClinicalSampleAccountDataBatch);
          [(HKClinicalSampleAccountDataBatch *)v15 setResourceObjectsByResourceType:v14];
          [v7 addObject:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v16 = v7;
LABEL_12:

    v6 = v19;
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_jsonDictionaryFromJSONObject:(id)object subElement:(id)element error:(id *)error
{
  elementCopy = element;
  objectCopy = object;
  objc_opt_class();
  v8 = HKSafeObject();

  if (v8 && elementCopy)
  {
    v9 = [v8 objectForKeyedSubscript:elementCopy];
    objc_opt_class();
    v10 = HKSafeObject();

    v8 = v10;
  }

  return v8;
}

+ (id)_stringOnlyDictionaryFromJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy hk_filterKeysWithBlock:&__block_literal_global];
  allObjects = [v4 allObjects];
  v6 = [dictionaryCopy dictionaryWithValuesForKeys:allObjects];

  return v6;
}

uint64_t __74__HKClinicalSampleAccountsParser__stringOnlyDictionaryFromJSONDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_parseAccountsFromJSONData:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKClinicalSampleAccount.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"jsonData"}];
}

@end