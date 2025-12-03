@interface BKMatchEvent
+ (id)matchEventWithDictionary:(id)dictionary device:(id)device error:(id *)error;
@end

@implementation BKMatchEvent

+ (id)matchEventWithDictionary:(id)dictionary device:(id)device error:(id *)error
{
  dictionaryCopy = dictionary;
  deviceCopy = device;
  if (!dictionaryCopy)
  {
    [BKMatchEvent matchEventWithDictionary:error device:? error:?];
    v9 = 0;
LABEL_13:
    v15 = 0;
    goto LABEL_7;
  }

  v9 = objc_alloc_init(BKMatchEvent);
  if (!v9)
  {
    [BKMatchEvent matchEventWithDictionary:error device:? error:?];
    goto LABEL_13;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"BKMatchEventTimeStamp"];
  -[BKMatchEvent setTimeStamp:](v9, "setTimeStamp:", [v10 unsignedLongValue]);

  if (![(BKMatchEvent *)v9 timeStamp])
  {
    setError(2, error);
    goto LABEL_13;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"BKMatchEventResult"];
  -[BKMatchEvent setResult:](v9, "setResult:", [v11 BOOLValue]);

  if ([(BKMatchEvent *)v9 result])
  {
    v12 = [BKIdentity alloc];
    v13 = [dictionaryCopy objectForKeyedSubscript:@"BKMatchEventMatchedIdentity"];
    v14 = [(BKIdentity *)v12 initWithServerIdentity:v13 device:deviceCopy];
    [(BKMatchEvent *)v9 setMatchedIdentity:v14];
  }

  v9 = v9;
  v15 = v9;
LABEL_7:

  return v15;
}

+ (id)matchEventWithDictionary:(void *)a1 device:error:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v10);
  }

  result = setError(1, a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)matchEventWithDictionary:(void *)a1 device:error:.cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v10);
  }

  result = setError(1, a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

@end