@interface NSArray(NSEmailAddressArray)
- (id)mf_uncommentedAddressList;
@end

@implementation NSArray(NSEmailAddressArray)

- (id)mf_uncommentedAddressList
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [a1 count];
  if (v2)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v2];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(a1);
          }

          [v2 addObject:{objc_msgSend(*(*(&v9 + 1) + 8 * v6++), "mf_uncommentedAddress")}];
        }

        while (v4 != v6);
        v4 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }

  result = v2;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

@end