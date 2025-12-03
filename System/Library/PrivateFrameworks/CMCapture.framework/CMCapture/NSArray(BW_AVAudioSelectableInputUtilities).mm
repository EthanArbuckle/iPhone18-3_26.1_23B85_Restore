@interface NSArray(BW_AVAudioSelectableInputUtilities)
+ (uint64_t)bw_selectedInputsArrayForBuiltInMicRouteDictionary:()BW_AVAudioSelectableInputUtilities dataSource:polarPattern:;
- (void)bw_builtInMicRouteDictionary;
@end

@implementation NSArray(BW_AVAudioSelectableInputUtilities)

- (void)bw_builtInMicRouteDictionary
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [self countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *v12;
  v5 = *MEMORY[0x1E69B0648];
LABEL_4:
  v6 = 0;
  while (1)
  {
    if (*v12 != v4)
    {
      objc_enumerationMutation(self);
    }

    v7 = *(*(&v11 + 1) + 8 * v6);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 objectForKeyedSubscript:v5];
      if (v8)
      {
        if ([v8 isEqualToString:@"MicrophoneBuiltIn"])
        {
          return v7;
        }
      }
    }

    if (v3 == ++v6)
    {
      v3 = [self countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v3)
      {
        goto LABEL_4;
      }

      return 0;
    }
  }
}

+ (uint64_t)bw_selectedInputsArrayForBuiltInMicRouteDictionary:()BW_AVAudioSelectableInputUtilities dataSource:polarPattern:
{
  if (!a3)
  {
    +[NSArray(BW_AVAudioSelectableInputUtilities) bw_selectedInputsArrayForBuiltInMicRouteDictionary:dataSource:polarPattern:];
    return 0;
  }

  if (!a4)
  {
    +[NSArray(BW_AVAudioSelectableInputUtilities) bw_selectedInputsArrayForBuiltInMicRouteDictionary:dataSource:polarPattern:];
    return 0;
  }

  v7 = [a3 objectForKeyedSubscript:*MEMORY[0x1E69B0610]];
  if (!v7)
  {
    +[NSArray(BW_AVAudioSelectableInputUtilities) bw_selectedInputsArrayForBuiltInMicRouteDictionary:dataSource:polarPattern:];
    return 0;
  }

  v8 = v7;
  v9 = [a4 objectForKeyedSubscript:*MEMORY[0x1E69B0560]];
  if (!v9)
  {
    +[NSArray(BW_AVAudioSelectableInputUtilities) bw_selectedInputsArrayForBuiltInMicRouteDictionary:dataSource:polarPattern:];
    return 0;
  }

  v10 = v9;
  v11 = *MEMORY[0x1E69B06A8];
  v12 = *MEMORY[0x1E69B0698];
  v18[0] = *MEMORY[0x1E69B06A8];
  v18[1] = v12;
  v19[0] = v8;
  v19[1] = v9;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  if (a5)
  {
    v16[0] = v11;
    v16[1] = v12;
    v17[0] = v8;
    v17[1] = v10;
    v16[2] = *MEMORY[0x1E69B06A0];
    v17[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a5];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  }

  else
  {
    v14 = 0;
  }

  return [MEMORY[0x1E695DEC8] arrayWithObjects:{v13, v14, 0}];
}

+ (uint64_t)bw_selectedInputsArrayForBuiltInMicRouteDictionary:()BW_AVAudioSelectableInputUtilities dataSource:polarPattern:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

+ (uint64_t)bw_selectedInputsArrayForBuiltInMicRouteDictionary:()BW_AVAudioSelectableInputUtilities dataSource:polarPattern:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

+ (uint64_t)bw_selectedInputsArrayForBuiltInMicRouteDictionary:()BW_AVAudioSelectableInputUtilities dataSource:polarPattern:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

+ (uint64_t)bw_selectedInputsArrayForBuiltInMicRouteDictionary:()BW_AVAudioSelectableInputUtilities dataSource:polarPattern:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end