@interface CAFControlParameter
+ (id)parseParameters:(id)a3;
- (CAFControlParameter)initWithConfig:(id)a3;
- (NSString)formatString;
- (id)currentDescriptionForCache:(id)a3;
@end

@implementation CAFControlParameter

- (NSString)formatString
{
  v2 = [(CAFControlParameter *)self format];

  return NSStringFromCharacteristicMetadataFormat(v2);
}

- (CAFControlParameter)initWithConfig:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CAFControlParameter;
  v5 = [(CAFControlParameter *)&v24 init];
  if (!v5)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  v6 = [v4 objectForKeyedSubscript:@"name"];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v5 + 2);
  *(v5 + 2) = v7;

  if (!*(v5 + 2))
  {
    v14 = CAFCharacteristicLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(CAFControlParameter *)v14 initWithConfig:v15, v16, v17, v18, v19, v20, v21];
    }

    goto LABEL_20;
  }

  objc_opt_class();
  v9 = [v4 objectForKeyedSubscript:@"format"];
  if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v22 = CAFCharacteristicLogging();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(CAFControlParameter *)v5 + 2 initWithConfig:v22];
    }

LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  *(v5 + 3) = [v10 unsignedIntegerValue];
  *(v5 + 8) = [CAFCarConfiguration getBoolean:v4 key:@"supportsInvalid"];
  v11 = [[CAFCachedDescription alloc] initWithCacheable:v5];
  v12 = *(v5 + 4);
  *(v5 + 4) = v11;

LABEL_13:
  v13 = v5;
LABEL_21:

  return v13;
}

+ (id)parseParameters:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__1;
    v11 = __Block_byref_object_dispose__1;
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__CAFControlParameter_parseParameters___block_invoke;
    v6[3] = &unk_27890EFD0;
    v6[4] = &v7;
    [v3 enumerateObjectsUsingBlock:v6];
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __39__CAFControlParameter_parseParameters___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  v7 = v6;
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = [[CAFControlParameter alloc] initWithConfig:v7];
    if (v8)
    {
      [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
    }

    else
    {
      v19 = CAFServiceLogging();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __39__CAFControlParameter_parseParameters___block_invoke_cold_1(v19, v20, v21, v22, v23, v24, v25, v26);
      }

      v27 = *(*(a1 + 32) + 8);
      v28 = *(v27 + 40);
      *(v27 + 40) = 0;

      *a4 = 1;
    }
  }

  else
  {

    v9 = CAFServiceLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __39__CAFControlParameter_parseParameters___block_invoke_cold_2(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    v17 = *(*(a1 + 32) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = 0;

    *a4 = 1;
  }
}

- (id)currentDescriptionForCache:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [(CAFControlParameter *)self name];
  v7 = [(CAFControlParameter *)self formatString];
  v8 = [(CAFControlParameter *)self supportsInvalid];
  v9 = &stru_284626CA8;
  if (v8)
  {
    v9 = @"?";
  }

  v10 = [v4 stringWithFormat:@"<%@: %p %@ %@%@>", v5, self, v6, v7, v9];

  return v10;
}

- (void)initWithConfig:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_231618000, a2, OS_LOG_TYPE_ERROR, "Parsing control parameter: %@ failed for format", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end