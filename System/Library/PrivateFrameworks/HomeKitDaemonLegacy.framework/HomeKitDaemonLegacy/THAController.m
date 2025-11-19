@interface THAController
+ (id)selectButtonConfiguration:(id)a3 supportsSiri:(BOOL)a4;
- (BOOL)dispatchButtonEvent:(id)a3;
@end

@implementation THAController

- (BOOL)dispatchButtonEvent:(id)a3
{
  v3 = [a3 button];
  v4 = [v3 type] != 12;

  return v4;
}

+ (id)selectButtonConfiguration:(id)a3 supportsSiri:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v5, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
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
        v13 = [v12 type];
        if ((v13 - 1) < 0xB || (v13 == 12 ? (v14 = !v4) : (v14 = 1), !v14))
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