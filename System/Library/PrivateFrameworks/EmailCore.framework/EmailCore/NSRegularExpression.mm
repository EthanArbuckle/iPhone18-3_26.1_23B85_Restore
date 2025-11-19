@interface NSRegularExpression
@end

@implementation NSRegularExpression

uint64_t __68__NSRegularExpression_ECMessageBodyParser__ec_attributionExpression__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) ec_copyAttributionRegularExpressionForType:0];
  ec_attributionExpression_regex = result;
  return result;
}

uint64_t __74__NSRegularExpression_ECMessageBodyParser__ec_attributionPrefixExpression__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) ec_copyAttributionRegularExpressionForType:1];
  ec_attributionPrefixExpression_regex = result;
  return result;
}

uint64_t __73__NSRegularExpression_ECMessageBodyParser__ec_forwardSeparatorExpression__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) ec_copyAttributionRegularExpressionForType:2];
  ec_forwardSeparatorExpression_regex = result;
  return result;
}

uint64_t __66__NSRegularExpression_ECMessageBodyParser__ec_signatureExpression__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) ec_copyAttributionRegularExpressionForType:3];
  ec_signatureExpression_regex = result;
  return result;
}

uint64_t __87__NSRegularExpression_ECMessageBodyParserPriceExpressions__ec_priceBeginningExpression__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) ec_copyCurrencyRegularExpressionForType:0];
  ec_priceBeginningExpression_regex = result;
  return result;
}

uint64_t __81__NSRegularExpression_ECMessageBodyParserPriceExpressions__ec_priceEndExpression__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) ec_copyCurrencyRegularExpressionForType:1];
  ec_priceEndExpression_regex = result;
  return result;
}

void __65__NSRegularExpression_SubjectParser__ec_regularExpressionForList__block_invoke()
{
  v7 = 0;
  v0 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"^\\[.*?\\][[:space:]]" options:1 error:&v7];
  v1 = v7;
  v2 = ec_regularExpressionForList_listRegex;
  ec_regularExpressionForList_listRegex = v0;

  if (!ec_regularExpressionForList_listRegex)
  {
    v3 = MEMORY[0x277CBEAD8];
    v4 = [v1 description];
    v5 = [v3 exceptionWithName:*MEMORY[0x277CBE658] reason:v4 userInfo:0];
    v6 = v5;

    objc_exception_throw(v5);
  }
}

@end