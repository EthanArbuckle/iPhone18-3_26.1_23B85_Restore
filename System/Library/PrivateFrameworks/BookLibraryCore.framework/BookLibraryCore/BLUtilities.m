@interface BLUtilities
+ (BOOL)isAudioBookFromBuyParameters:(id)a3;
+ (BOOL)isPreOrderFromBuyParameters:(id)a3;
+ (id)buyParametersValueForKey:(id)a3 fromBuyParams:(id)a4;
+ (id)storeIDFromBuyParameters:(id)a3;
@end

@implementation BLUtilities

+ (id)buyParametersValueForKey:(id)a3 fromBuyParams:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [a4 componentsSeparatedByString:@"&"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v21 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * i) componentsSeparatedByString:{@"=", v18}];
        if ([v11 count] == 2)
        {
          v12 = [v11 objectAtIndexedSubscript:0];
          v13 = [v12 isEqualToString:v5];

          if (v13)
          {
            v14 = [v11 objectAtIndexedSubscript:1];

            goto LABEL_12;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  v15 = [v14 stringByRemovingPercentEncoding];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)storeIDFromBuyParameters:(id)a3
{
  if (a3)
  {
    v3 = [BLUtilities buyParametersValueForKey:@"salableAdamId" fromBuyParams:a3];
  }

  else
  {
    v4 = BLUtilitiesLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_241D1F000, v4, OS_LOG_TYPE_ERROR, "storeIDFromBuyParameters: cannot retrieve storeID from nil buyParameters", v7, 2u);
    }

    v3 = 0;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "longLongValue")}];

  return v5;
}

+ (BOOL)isPreOrderFromBuyParameters:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [BLUtilities buyParametersValueForKey:@"isPreorder" fromBuyParams:v3];
    v5 = [BLUtilities buyParametersValueForKey:@"pricingParameters" fromBuyParams:v3];
    v6 = [v5 hasSuffix:@"PRE"];
    if (v4)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v8 = BLDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_ERROR, "isPreOrderFromBuyParameters: cannot retrieve isPreOrder key from nil buyParameters", v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

+ (BOOL)isAudioBookFromBuyParameters:(id)a3
{
  if (a3)
  {
    v3 = [BLUtilities buyParametersValueForKey:@"productType" fromBuyParams:a3];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 isEqualToString:@"P"];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = BLDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_241D1F000, v6, OS_LOG_TYPE_ERROR, "isAudioBookFromBuyParameters: cannot retrieve productType key from nil buyParameters", v8, 2u);
    }

    return 0;
  }

  return v5;
}

@end