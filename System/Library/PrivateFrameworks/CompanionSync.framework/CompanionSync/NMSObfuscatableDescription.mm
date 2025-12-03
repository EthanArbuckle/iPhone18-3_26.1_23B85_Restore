@interface NMSObfuscatableDescription
- (NMSObfuscatableDescription)init;
- (id)_descriptionObfuscated:(BOOL)obfuscated;
- (void)addDescription:(id)description value:(id)value;
- (void)addObfuscatedDescription:(id)description value:(id)value;
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

- (void)addDescription:(id)description value:(id)value
{
  valueCopy = value;
  descriptionCopy = description;
  items = [(NMSObfuscatableDescription *)self items];
  v8 = [[NMSObfuscatableDescriptionItem alloc] initWithPrefix:descriptionCopy value:valueCopy obfuscated:0];

  [items addObject:v8];
}

- (void)addObfuscatedDescription:(id)description value:(id)value
{
  valueCopy = value;
  descriptionCopy = description;
  items = [(NMSObfuscatableDescription *)self items];
  v8 = [[NMSObfuscatableDescriptionItem alloc] initWithPrefix:descriptionCopy value:valueCopy obfuscated:1];

  [items addObject:v8];
}

- (id)_descriptionObfuscated:(BOOL)obfuscated
{
  obfuscatedCopy = obfuscated;
  v26 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  prefixString = [(NMSObfuscatableDescription *)self prefixString];

  if (prefixString)
  {
    prefixString2 = [(NMSObfuscatableDescription *)self prefixString];
    [v5 appendFormat:@"%@\n", prefixString2];
  }

  [v5 appendString:@"{\n"];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  items = [(NMSObfuscatableDescription *)self items];
  v9 = [items countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(items);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        [v5 appendString:@"    "];
        prefix = [v13 prefix];
        [v5 appendString:prefix];

        LODWORD(prefix) = [v13 obfuscated];
        value = [v13 value];
        v16 = value;
        if (prefix)
        {
          v17 = !obfuscatedCopy;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          [v5 appendFormat:@": %@\n", value];
        }

        else
        {
          v18 = _SYObfuscate(value);
          [v5 appendFormat:@": %@\n", v18];
        }
      }

      v10 = [items countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  [v5 appendString:@"}"];
  v19 = *MEMORY[0x1E69E9840];

  return v5;
}

@end