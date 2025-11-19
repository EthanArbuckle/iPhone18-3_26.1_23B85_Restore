@interface NSDictionary(xpcdictConv)
+ (NSObject)dictionaryFromJsonData:()xpcdictConv;
+ (id)dictionaryFromXPCDictionary:()xpcdictConv withDataFromKey:;
+ (id)dictionaryWithXPCDictionary:()xpcdictConv;
- (NSObject)convertToNSData;
- (id)createXPCDictionary;
- (id)initWithXPCDictionary:()xpcdictConv;
- (id)objectForKey:()xpcdictConv ofType:;
- (uint64_t)saveAsDataInXPCDictionary:()xpcdictConv forKey:;
- (void)convertToNSData;
- (void)createXPCDictionary;
@end

@implementation NSDictionary(xpcdictConv)

+ (id)dictionaryWithXPCDictionary:()xpcdictConv
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [[v3 alloc] initWithXPCDictionary:v4];

  return v5;
}

- (id)initWithXPCDictionary:()xpcdictConv
{
  v4 = a3;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__3;
  v16[3] = __Block_byref_object_dispose__3;
  v17 = [MEMORY[0x277CBEB38] dictionary];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __51__NSDictionary_xpcdictConv__initWithXPCDictionary___block_invoke;
  v12 = &unk_2798EF8B0;
  v14 = &v15;
  v5 = a1;
  v13 = v5;
  if (xpc_dictionary_apply(v4, &v9))
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(NSDictionary(xpcdictConv) *)v16 initWithXPCDictionary:v6];
    }

    v5 = [v5 initWithDictionary:{*(v16[0] + 40), v9, v10, v11, v12}];
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v15, 8);
  return v7;
}

- (id)createXPCDictionary
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v9 = [v3 objectForKey:{v8, v27}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          xpc_dictionary_set_string(v2, [v8 UTF8String], objc_msgSend(v9, "UTF8String"));
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            xpc_dictionary_set_data(v2, [v8 UTF8String], objc_msgSend(v9, "bytes"), objc_msgSend(v9, "length"));
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = v9;
              v11 = [v10 objCType];
              if (*v11 == 105 && !v11[1] || (v12 = [v10 objCType], *v12 == 115) && !v12[1] || (v13 = [v10 objCType], *v13 == 113) && !v13[1] || (v14 = [v10 objCType], *v14 == 113) && !v14[1])
              {
                xpc_dictionary_set_int64(v2, [v8 UTF8String], -[NSObject longLongValue](v10, "longLongValue"));
              }

              else
              {
                v15 = [v10 objCType];
                if (*v15 == 102 && !v15[1] || (v16 = [v10 objCType], *v16 == 100) && !v16[1])
                {
                  v21 = [v8 UTF8String];
                  [v10 doubleValue];
                  xpc_dictionary_set_double(v2, v21, v22);
                }

                else
                {
                  v17 = [v10 objCType];
                  if (*v17 != 66 || v17[1])
                  {
                    v18 = [v10 objCType];
                    if (*v18 != 99 || v18[1])
                    {
                      v24 = defaultLogHandle();
                      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                      {
                        [(NSDictionary(xpcdictConv) *)v10 createXPCDictionary];
                      }

LABEL_41:
                      v23 = 0;
                      goto LABEL_42;
                    }
                  }

                  xpc_dictionary_set_BOOL(v2, [v8 UTF8String], -[NSObject BOOLValue](v10, "BOOLValue"));
                }
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v10 = defaultLogHandle();
                if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
                {
                  [NSDictionary(xpcdictConv) createXPCDictionary];
                }

                goto LABEL_41;
              }

              v19 = [v8 UTF8String];
              [v9 timeIntervalSince1970];
              xpc_dictionary_set_date(v2, v19, v20);
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v23 = v2;
LABEL_42:

  v25 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (NSObject)dictionaryFromJsonData:()xpcdictConv
{
  v3 = a3;
  if (!v3)
  {
    v6 = defaultLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[NSDictionary(xpcdictConv) dictionaryFromJsonData:];
    }

    goto LABEL_11;
  }

  v9 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:0 error:&v9];
  v5 = v9;
  v6 = v5;
  if (!v4)
  {
    [NSDictionary(xpcdictConv) dictionaryFromJsonData:v5];
LABEL_11:
    v7 = 0;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v4;

    v6 = v7;
  }

  else
  {
    [(NSDictionary(xpcdictConv) *)v4 dictionaryFromJsonData:v6];
    v7 = 0;
    v6 = v4;
  }

LABEL_5:

  return v7;
}

- (NSObject)convertToNSData
{
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:a1])
  {
    v7 = 0;
    v2 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a1 options:0 error:&v7];
    v3 = v7;
    v4 = v3;
    if (v2)
    {
      v5 = v2;

      v4 = v5;
      goto LABEL_4;
    }

    [(NSDictionary(xpcdictConv) *)v3 convertToNSData];
  }

  else
  {
    v4 = defaultLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [NSDictionary(xpcdictConv) convertToNSData];
    }
  }

  v5 = 0;
LABEL_4:

  return v5;
}

+ (id)dictionaryFromXPCDictionary:()xpcdictConv withDataFromKey:
{
  v6 = a3;
  v7 = v6;
  if (a4 && (xpc_dictionary_get_value(v6, a4), v8 = objc_claimAutoreleasedReturnValue(), (a4 = v8) != 0) && MEMORY[0x259CB0BB0](v8) == MEMORY[0x277D86458])
  {
    bytes_ptr = xpc_data_get_bytes_ptr(a4);
    length = xpc_data_get_length(a4);
    v11 = dispatch_get_global_queue(9, 0);
    destructor[0] = MEMORY[0x277D85DD0];
    destructor[1] = 3221225472;
    destructor[2] = __73__NSDictionary_xpcdictConv__dictionaryFromXPCDictionary_withDataFromKey___block_invoke;
    destructor[3] = &unk_2798EF790;
    a4 = a4;
    v16 = a4;
    v12 = dispatch_data_create(bytes_ptr, length, v11, destructor);

    v13 = [a1 dictionaryFromJsonData:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (uint64_t)saveAsDataInXPCDictionary:()xpcdictConv forKey:
{
  v6 = a3;
  v7 = 0;
  if (v6)
  {
    if (a4)
    {
      v8 = [a1 convertToNSData];
      v7 = v8;
      if (v8)
      {
        v9 = [v8 _createDispatchData];
        v10 = xpc_data_create_with_dispatch_data(v9);

        xpc_dictionary_set_value(v6, a4, v10);
        v7 = 1;
      }
    }
  }

  return v7;
}

- (id)objectForKey:()xpcdictConv ofType:
{
  v1 = [a1 objectForKey:?];
  if (v1 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)initWithXPCDictionary:()xpcdictConv .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v4 = 138543362;
  v5 = v2;
  _os_log_debug_impl(&dword_259B7D000, a2, OS_LOG_TYPE_DEBUG, "Converted from xpc to NSDictionary: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)createXPCDictionary
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 objCType];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)dictionaryFromJsonData:()xpcdictConv .cold.1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 136315394;
    OUTLINED_FUNCTION_0_0();
    v7 = a1;
    _os_log_error_impl(&dword_259B7D000, v4, OS_LOG_TYPE_ERROR, "%s: format not correct: %{public}@", v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)dictionaryFromJsonData:()xpcdictConv .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = [a1 localizedDescription];
    [a1 code];
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

+ (void)dictionaryFromJsonData:()xpcdictConv .cold.3()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  v3 = 0;
  _os_log_error_impl(&dword_259B7D000, v0, OS_LOG_TYPE_ERROR, "%s: Cannot convert %{public}@ to dictionary", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)convertToNSData
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = [a1 localizedDescription];
    [a1 code];
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end