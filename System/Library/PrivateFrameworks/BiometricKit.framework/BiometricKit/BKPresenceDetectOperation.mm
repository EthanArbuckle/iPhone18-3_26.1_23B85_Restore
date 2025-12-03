@interface BKPresenceDetectOperation
- (id)optionsDictionaryWithError:(id *)error;
@end

@implementation BKPresenceDetectOperation

- (id)optionsDictionaryWithError:(id *)error
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_priority)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [dictionary setObject:v5 forKey:@"BKOptionPriority"];
  }

  return dictionary;
}

void __53__BKPresenceDetectOperation_startBioOperation_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [BKErrorHelper errorWithOSStatus:a2];
    (*(v2 + 16))(v2, 0, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 1, 0);
  }
}

- (uint64_t)startBioOperation:reply:.cold.1()
{
  OUTLINED_FUNCTION_13();
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v10);
  }

  v6 = OUTLINED_FUNCTION_2_4();
  result = v7(v6);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

@end