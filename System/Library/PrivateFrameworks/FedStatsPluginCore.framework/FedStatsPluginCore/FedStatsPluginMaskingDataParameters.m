@interface FedStatsPluginMaskingDataParameters
+ (id)parametersWithConfiguration:(id)a3 error:(id *)a4;
- (FedStatsPluginMaskingDataParameters)initWithResultCap:(unint64_t)a3 fieldValueSets:(id)a4;
- (id)maskedResultsFrom:(id)a3;
- (id)maskingData;
- (void)maskingData;
@end

@implementation FedStatsPluginMaskingDataParameters

- (FedStatsPluginMaskingDataParameters)initWithResultCap:(unint64_t)a3 fieldValueSets:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FedStatsPluginMaskingDataParameters;
  v8 = [(FedStatsPluginMaskingDataParameters *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fieldValueSets, a4);
    v9->_resultCap = a3;
  }

  return v9;
}

+ (id)parametersWithConfiguration:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (a4)
    {
      *a4 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_19;
  }

  v6 = [v5 objectForKey:@"resultCap"];
  if (!v6)
  {
    if (a4)
    {
      goto LABEL_16;
    }

LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if ([v6 integerValue] < 0 || (objc_msgSend(v6, "doubleValue"), v7 != objc_msgSend(v6, "unsignedIntegerValue")))
  {
    if (a4)
    {
      v9 = LABEL_16:;
      *a4 = [FedStatsPluginError errorWithCode:300 description:v9];

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v12 = [v6 unsignedIntegerValue];
  v13 = [v5 objectForKey:@"fieldValueSets"];
  if (!v13)
  {
    if (!a4)
    {
      goto LABEL_43;
    }

    v21 = LABEL_42:;
    *a4 = [FedStatsPluginError errorWithCode:300 description:v21];

    goto LABEL_43;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (![v13 count])
  {
    if (a4)
    {
      goto LABEL_42;
    }

LABEL_43:
    v8 = 0;
    goto LABEL_44;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v15)
  {
    goto LABEL_35;
  }

  v16 = v15;
  v17 = *v26;
  v24 = v12;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v26 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v25 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
LABEL_53:

          goto LABEL_43;
        }
        v20 = ;
        *a4 = [FedStatsPluginError errorWithCode:300 description:v20];
        goto LABEL_52;
      }

      v20 = [v14 objectForKey:v19];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
LABEL_51:
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:v22, @"fieldValueSets", v19];
          *a4 = [FedStatsPluginError errorWithCode:300 description:v23];
        }

LABEL_52:

        goto LABEL_53;
      }

      if (![v20 count])
      {
        if (a4)
        {
          goto LABEL_51;
        }

        goto LABEL_52;
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    v12 = v24;
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_35:

  v8 = [[FedStatsPluginMaskingDataParameters alloc] initWithResultCap:v12 fieldValueSets:v14];
LABEL_44:

LABEL_18:
LABEL_19:

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)maskingData
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v4 = [(FedStatsPluginMaskingDataParameters *)self fieldValueSets];
  v5 = [v3 dictionaryWithCapacity:{objc_msgSend(v4, "count")}];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(FedStatsPluginMaskingDataParameters *)self fieldValueSets];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [(FedStatsPluginMaskingDataParameters *)self fieldValueSets];
        v13 = [v12 objectForKey:v11];

        v14 = [v13 objectAtIndex:{arc4random_uniform(objc_msgSend(v13, "count"))}];
        [v5 setObject:v14 forKey:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  [v5 setObject:MEMORY[0x277CBEC38] forKey:@"%%FedStatsMaskingData%%"];
  v15 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [(FedStatsPluginMaskingDataParameters *)v5 maskingData];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)maskedResultsFrom:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D08458] samplerWithCount:{-[FedStatsPluginMaskingDataParameters resultCap](self, "resultCap")}];
  [v5 addItems:v4];
  v6 = [(FedStatsPluginMaskingDataParameters *)self resultCap];
  if (v6 > [v4 count])
  {
    v7 = [(FedStatsPluginMaskingDataParameters *)self resultCap];
    if (v7 != [v4 count])
    {
      v8 = 0;
      do
      {
        v9 = [(FedStatsPluginMaskingDataParameters *)self maskingData];
        [v5 addItem:v9];

        ++v8;
        v10 = [(FedStatsPluginMaskingDataParameters *)self resultCap];
      }

      while (v8 < v10 - [v4 count]);
    }
  }

  v11 = [v5 getResults];

  return v11;
}

- (void)maskingData
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_24AB24000, a2, OS_LOG_TYPE_DEBUG, "Masking data = %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end