@interface CCRepeatedInt64
- (void)enumerateInt64ValuesWithBlock:(id)block;
@end

@implementation CCRepeatedInt64

- (void)enumerateInt64ValuesWithBlock:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  values = [(CCRepeatedFieldValue *)self values];
  v6 = [values countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(values);
        }

        blockCopy[2](blockCopy, [*(*(&v11 + 1) + 8 * v9++) longLongValue]);
      }

      while (v7 != v9);
      v7 = [values countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end