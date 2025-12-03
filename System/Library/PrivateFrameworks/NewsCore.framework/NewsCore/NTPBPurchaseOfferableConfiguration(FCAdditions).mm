@interface NTPBPurchaseOfferableConfiguration(FCAdditions)
+ (id)purchaseOfferableConfigurationsFromJSON:()FCAdditions;
@end

@implementation NTPBPurchaseOfferableConfiguration(FCAdditions)

+ (id)purchaseOfferableConfigurationsFromJSON:()FCAdditions
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E695DF20] fc_dictionaryFromJSON:v3];
  if ([v4 count])
  {
    v18 = v3;
    v17 = v4;
    [v4 objectForKeyedSubscript:@"purchaseIDs"];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v25 = 0u;
    v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v20 = *v23;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v22 + 1) + 8 * i);
          v9 = objc_alloc_init(MEMORY[0x1E69B6F58]);
          v10 = [v8 objectForKey:@"purchaseID"];
          [v9 setPurchaseId:v10];

          v11 = [v8 objectForKey:@"allowsPubIPhoneApp"];
          [v9 setAllowsPublisherPhoneApp:{objc_msgSend(v11, "BOOLValue")}];

          v12 = [v8 objectForKey:@"allowsPubIPadApp"];
          [v9 setAllowsPublisherPadApp:{objc_msgSend(v12, "BOOLValue")}];

          v13 = [v8 objectForKey:@"allowsPubWebsite"];
          [v9 setAllowsPublisherWebSite:{objc_msgSend(v13, "BOOLValue")}];

          v14 = [v8 objectForKey:@"preferredOffer"];
          [v9 setPreferredOffer:{objc_msgSend(v14, "BOOLValue")}];

          [array addObject:v9];
        }

        v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v6);
    }

    v4 = v17;
    v3 = v18;
  }

  v15 = *MEMORY[0x1E69E9840];

  return array;
}

@end