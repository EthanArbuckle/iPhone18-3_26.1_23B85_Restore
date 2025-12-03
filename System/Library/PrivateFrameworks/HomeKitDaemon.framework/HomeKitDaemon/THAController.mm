@interface THAController
+ (id)selectButtonConfiguration:(id)configuration supportsSiri:(BOOL)siri;
- (BOOL)dispatchButtonEvent:(id)event;
@end

@implementation THAController

- (BOOL)dispatchButtonEvent:(id)event
{
  button = [event button];
  v4 = [button type] != 12;

  return v4;
}

+ (id)selectButtonConfiguration:(id)configuration supportsSiri:(BOOL)siri
{
  siriCopy = siri;
  v24 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(configurationCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = configurationCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        type = [v12 type];
        if ((type - 1) < 0xB || (type == 12 ? (v14 = !siriCopy) : (v14 = 1), !v14))
        {
          [v6 addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v15 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v9 = v15;
    }

    while (v15);
  }

  v16 = [v6 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end