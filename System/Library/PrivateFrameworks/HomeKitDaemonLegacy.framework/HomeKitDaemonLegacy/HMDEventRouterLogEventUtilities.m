@interface HMDEventRouterLogEventUtilities
+ (id)sanitizedTopicFromTopic:(id)a3;
@end

@implementation HMDEventRouterLogEventUtilities

+ (id)sanitizedTopicFromTopic:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 componentsSeparatedByString:@"."];
  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{objc_msgSend(v3, "length")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = objc_alloc(MEMORY[0x277CCAD78]);
        v13 = [v12 initWithUUIDString:{v11, v17}];

        if (!v13)
        {
          if ([v5 length])
          {
            [v5 appendString:@"."];
          }

          [v5 appendString:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end