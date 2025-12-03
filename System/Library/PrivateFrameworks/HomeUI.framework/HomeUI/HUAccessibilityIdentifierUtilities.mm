@interface HUAccessibilityIdentifierUtilities
+ (void)setAccessibilityIDForViews:(id)views withIDDictionary:(id)dictionary;
@end

@implementation HUAccessibilityIdentifierUtilities

+ (void)setAccessibilityIDForViews:(id)views withIDDictionary:(id)dictionary
{
  v30 = *MEMORY[0x277D85DE8];
  obj = views;
  dictionaryCopy = dictionary;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = dictionaryCopy;
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v20 + 1) + 8 * j);
              v16 = objc_opt_class();
              if ([v16 isEqual:NSClassFromString(v15)])
              {
                v17 = [v10 objectForKeyedSubscript:v15];
                [v9 setAccessibilityIdentifier:v17];

                goto LABEL_16;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }
}

@end