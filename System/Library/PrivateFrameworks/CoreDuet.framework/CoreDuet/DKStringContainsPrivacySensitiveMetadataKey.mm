@interface DKStringContainsPrivacySensitiveMetadataKey
@end

@implementation DKStringContainsPrivacySensitiveMetadataKey

void ___DKStringContainsPrivacySensitiveMetadataKey_block_invoke()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = _DKPrivacySensitiveMetadataKeys();
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      v5 = 0;
      do
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v12 + 1) + 8 * v5);
        v7 = +[_DKMetadataPersistenceLookupTable keyToAttribute];
        v8 = [v7 objectForKeyedSubscript:{v6, v12}];

        if (v8)
        {
          [v0 addObject:v8];
        }

        [v0 addObject:v6];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  v9 = [v0 copy];
  v10 = _DKStringContainsPrivacySensitiveMetadataKey_sensitiveKeyPathStrings;
  _DKStringContainsPrivacySensitiveMetadataKey_sensitiveKeyPathStrings = v9;

  v11 = *MEMORY[0x1E69E9840];
}

@end