@interface NMSObfuscatableDescription
- (NMSObfuscatableDescription)init;
- (id)_descriptionObfuscated:(BOOL)a3;
- (void)addDescription:(id)a3 value:(id)a4;
- (void)addObfuscatedDescription:(id)a3 value:(id)a4;
@end

@implementation NMSObfuscatableDescription

- (NMSObfuscatableDescription)init
{
  v6.receiver = self;
  v6.super_class = NMSObfuscatableDescription;
  v2 = [(NMSObfuscatableDescription *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    items = v2->_items;
    v2->_items = v3;
  }

  return v2;
}

- (void)addDescription:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(NMSObfuscatableDescription *)self items];
  v8 = [[NMSObfuscatableDescriptionItem alloc] initWithPrefix:v7 value:v6 obfuscated:0];

  [v9 addObject:v8];
}

- (void)addObfuscatedDescription:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(NMSObfuscatableDescription *)self items];
  v8 = [[NMSObfuscatableDescriptionItem alloc] initWithPrefix:v7 value:v6 obfuscated:1];

  [v9 addObject:v8];
}

- (id)_descriptionObfuscated:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v6 = [(NMSObfuscatableDescription *)self prefixString];

  if (v6)
  {
    v7 = [(NMSObfuscatableDescription *)self prefixString];
    [v5 appendFormat:@"%@\n", v7];
  }

  [v5 appendString:@"{\n"];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(NMSObfuscatableDescription *)self items];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        [v5 appendString:@"    "];
        v14 = [v13 prefix];
        [v5 appendString:v14];

        LODWORD(v14) = [v13 obfuscated];
        v15 = [v13 value];
        v16 = v15;
        if (v14)
        {
          v17 = !v3;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          [v5 appendFormat:@": %@\n", v15];
        }

        else
        {
          v18 = _SYObfuscate(v15);
          [v5 appendFormat:@": %@\n", v18];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  [v5 appendString:@"}"];
  v19 = *MEMORY[0x1E69E9840];

  return v5;
}

@end