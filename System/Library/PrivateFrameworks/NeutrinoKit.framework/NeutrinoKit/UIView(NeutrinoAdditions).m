@interface UIView(NeutrinoAdditions)
+ (void)_recurseView:()NeutrinoAdditions filter:;
@end

@implementation UIView(NeutrinoAdditions)

+ (void)_recurseView:()NeutrinoAdditions filter:
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [a3 subviews];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v14 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v13 + 1) + 8 * v11);
      if (v6[2](v6, v12))
      {
        break;
      }

      [a1 _recurseView:v12 filter:{v6, v13}];
      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end