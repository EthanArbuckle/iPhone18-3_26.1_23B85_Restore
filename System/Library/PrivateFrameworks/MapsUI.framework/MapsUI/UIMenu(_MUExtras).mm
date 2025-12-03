@interface UIMenu(_MUExtras)
- (id)_mapsui_allChildren;
@end

@implementation UIMenu(_MUExtras)

- (id)_mapsui_allChildren
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  children = [self children];
  v4 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(children);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [array addObject:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _mapsui_allChildren = [v8 _mapsui_allChildren];
          [array addObjectsFromArray:_mapsui_allChildren];
        }
      }

      v5 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];

  return array;
}

@end