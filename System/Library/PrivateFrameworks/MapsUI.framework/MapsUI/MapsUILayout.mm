@interface MapsUILayout
+ (id)_buildAttributedDisplayStringForComponents:(id)a3 isRTL:(BOOL)a4;
+ (id)buildAttributedDisplayStringForComponents:(id)a3 forContainingView:(id)a4;
@end

@implementation MapsUILayout

+ (id)_buildAttributedDisplayStringForComponents:(id)a3 isRTL:(BOOL)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    [v5 reverseObjectEnumerator];
  }

  else
  {
    [v5 objectEnumerator];
  }
  v7 = ;
  v8 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 appendAttributedString:{*(*(&v17 + 1) + 8 * i), v17}];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v14 = [v8 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)buildAttributedDisplayStringForComponents:(id)a3 forContainingView:(id)a4
{
  v6 = a3;
  v7 = [a1 _buildAttributedDisplayStringForComponents:v6 isRTL:{objc_msgSend(a4, "effectiveUserInterfaceLayoutDirection") == 1}];

  return v7;
}

@end