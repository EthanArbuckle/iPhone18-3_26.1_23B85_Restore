@interface MapsUILayout
+ (id)_buildAttributedDisplayStringForComponents:(id)components isRTL:(BOOL)l;
+ (id)buildAttributedDisplayStringForComponents:(id)components forContainingView:(id)view;
@end

@implementation MapsUILayout

+ (id)_buildAttributedDisplayStringForComponents:(id)components isRTL:(BOOL)l
{
  v22 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  v6 = componentsCopy;
  if (l)
  {
    [componentsCopy reverseObjectEnumerator];
  }

  else
  {
    [componentsCopy objectEnumerator];
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

+ (id)buildAttributedDisplayStringForComponents:(id)components forContainingView:(id)view
{
  componentsCopy = components;
  v7 = [self _buildAttributedDisplayStringForComponents:componentsCopy isRTL:{objc_msgSend(view, "effectiveUserInterfaceLayoutDirection") == 1}];

  return v7;
}

@end