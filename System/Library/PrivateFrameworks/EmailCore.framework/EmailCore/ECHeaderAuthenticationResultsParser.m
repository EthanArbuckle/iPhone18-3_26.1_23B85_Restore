@interface ECHeaderAuthenticationResultsParser
@end

@implementation ECHeaderAuthenticationResultsParser

ECHeaderAuthenticationResults *__78___ECHeaderAuthenticationResultsParser__authenticationResultsForHeaderBodies___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v3];
  if ([*(a1 + 32) _skipCFWSWithScanner:v4])
  {
    v5 = *(a1 + 32);
    v17 = 0;
    v6 = [v5 _scanQuotedValueWithScanner:v4 intoString:&v17];
    v7 = v17;
    if (v6 && ([*(a1 + 32) _skipCFWSWithScanner:v4] & 1) != 0)
    {
      v8 = [*(a1 + 32) _versionWithScanner:v4];
      v9 = *(a1 + 32);
      v16 = 0;
      v10 = [v9 _statementsWithScanner:v4 intoArray:&v16];
      v11 = v16;
      if (v10)
      {
        v12 = [ECHeaderAuthenticationResults alloc];
        v13 = [v11 ef_notEmpty];
        v14 = [(ECHeaderAuthenticationResults *)v12 initWithAuthenticationServiceIdentifier:v7 version:v8 statements:v13];
      }

      else
      {
        v13 = _ef_log_ECHeaderAuthenticationResults();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __78___ECHeaderAuthenticationResultsParser__authenticationResultsForHeaderBodies___block_invoke_cold_2(v13);
        }

        v14 = 0;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = _ef_log_ECHeaderAuthenticationResults();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    __78___ECHeaderAuthenticationResultsParser__authenticationResultsForHeaderBodies___block_invoke_cold_1(v11);
  }

  v14 = 0;
LABEL_10:

  return v14;
}

uint64_t __61___ECHeaderAuthenticationResultsParser__skipCFWSWithScanner___block_invoke()
{
  _skipCFWSWithScanner__parentheses = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"()"];

  return MEMORY[0x2821F96F8]();
}

uint64_t __85___ECHeaderAuthenticationResultsParser__scanToCFWSOrSemicolonWithScanner_intoString___block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
  v1 = _scanToCFWSOrSemicolonWithScanner_intoString__whitespaceAndSemicolon;
  _scanToCFWSOrSemicolonWithScanner_intoString__whitespaceAndSemicolon = v0;

  v2 = _scanToCFWSOrSemicolonWithScanner_intoString__whitespaceAndSemicolon;

  return objc_msgSend(v2, "addCharactersInString:", @"(;");
}

uint64_t __79___ECHeaderAuthenticationResultsParser__scanQuotedValueWithScanner_intoString___block_invoke()
{
  _scanQuotedValueWithScanner_intoString__quotes = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@""];

  return MEMORY[0x2821F96F8]();
}

uint64_t __81___ECHeaderAuthenticationResultsParser__scanToCFWSOrEqualWithScanner_intoString___block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
  v1 = _scanToCFWSOrEqualWithScanner_intoString__whitespaceAndEqual;
  _scanToCFWSOrEqualWithScanner_intoString__whitespaceAndEqual = v0;

  v2 = _scanToCFWSOrEqualWithScanner_intoString__whitespaceAndEqual;

  return objc_msgSend(v2, "addCharactersInString:", @"(=");
}

uint64_t __93___ECHeaderAuthenticationResultsParser__scanToCFWSOrPeriodOrSemicolonWithScanner_intoString___block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
  v1 = _scanToCFWSOrPeriodOrSemicolonWithScanner_intoString__whitespacePeriodSemicolon;
  _scanToCFWSOrPeriodOrSemicolonWithScanner_intoString__whitespacePeriodSemicolon = v0;

  v2 = _scanToCFWSOrPeriodOrSemicolonWithScanner_intoString__whitespacePeriodSemicolon;

  return objc_msgSend(v2, "addCharactersInString:", @"(.;");
}

@end