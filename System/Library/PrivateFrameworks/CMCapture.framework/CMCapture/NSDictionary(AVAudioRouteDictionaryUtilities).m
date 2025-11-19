@interface NSDictionary(AVAudioRouteDictionaryUtilities)
- (uint64_t)bw_containsBuiltInMicAsAnInput;
- (void)bw_dataSourceDictionaryForDesiredMicOrientation:()AVAudioRouteDictionaryUtilities;
@end

@implementation NSDictionary(AVAudioRouteDictionaryUtilities)

- (uint64_t)bw_containsBuiltInMicAsAnInput
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 objectForKeyedSubscript:*MEMORY[0x1E69B0618]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (![v2 count])
  {
    return 0;
  }

  v3 = [v2 objectAtIndexedSubscript:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69B0648]];
  if (!v4)
  {
    return 0;
  }

  return [v4 isEqualToString:@"MicrophoneBuiltIn"];
}

- (void)bw_dataSourceDictionaryForDesiredMicOrientation:()AVAudioRouteDictionaryUtilities
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [a1 objectForKeyedSubscript:*MEMORY[0x1E69B05F0]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v16;
  v9 = *MEMORY[0x1E69B0568];
LABEL_5:
  v10 = 0;
  while (1)
  {
    if (*v16 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v11 = *(*(&v15 + 1) + 8 * v10);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 objectForKeyedSubscript:v9];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 intValue] == a3)
      {
        return v11;
      }
    }

    if (v7 == ++v10)
    {
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
      v11 = 0;
      if (v7)
      {
        goto LABEL_5;
      }

      return v11;
    }
  }
}

@end