@interface NSRegularExpression(ECMessageBodyParserPriceExpressions)
+ (uint64_t)ec_copyCurrencyRegularExpressionForType:()ECMessageBodyParserPriceExpressions;
+ (uint64_t)ec_priceBeginningExpression;
+ (uint64_t)ec_priceEndExpression;
@end

@implementation NSRegularExpression(ECMessageBodyParserPriceExpressions)

+ (uint64_t)ec_copyCurrencyRegularExpressionForType:()ECMessageBodyParserPriceExpressions
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "pathForResource:ofType:", @"CurrencyPatterns", @"plist"}];
  v6 = v5;
  v7 = @"Currency Symbols";
  v8 = @"(?:%@) *(?:\\d{1,3}(?:(?: *\\d{3})*|(?:, *\\d{3})*|(?:\\. *\\d{3})*))?$";
  if (a3)
  {
    v8 = 0;
    v7 = 0;
  }

  if (a3 == 1)
  {
    v9 = @"^[0-9]{2}$";
  }

  else
  {
    v9 = v8;
  }

  if (a3 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  v11 = [v5 objectForKey:v10];
  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v11, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v11);
        }

        [v12 addObject:{objc_msgSend(MEMORY[0x277CCAC68], "escapedPatternForString:", *(*(&v22 + 1) + 8 * i))}];
      }

      v14 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v9, objc_msgSend(v12, "componentsJoinedByString:", @"|"];
  v21 = 0;
  v18 = [[a1 alloc] initWithPattern:v17 options:1 error:&v21];
  if (!v18)
  {
    +[NSRegularExpression(ECMessageBodyParserPriceExpressions) ec_copyCurrencyRegularExpressionForType:];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (uint64_t)ec_priceBeginningExpression
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__NSRegularExpression_ECMessageBodyParserPriceExpressions__ec_priceBeginningExpression__block_invoke;
  block[3] = &unk_27874BC28;
  block[4] = a1;
  if (ec_priceBeginningExpression_onceToken != -1)
  {
    dispatch_once(&ec_priceBeginningExpression_onceToken, block);
  }

  return ec_priceBeginningExpression_regex;
}

+ (uint64_t)ec_priceEndExpression
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__NSRegularExpression_ECMessageBodyParserPriceExpressions__ec_priceEndExpression__block_invoke;
  block[3] = &unk_27874BC28;
  block[4] = a1;
  if (ec_priceEndExpression_onceToken != -1)
  {
    dispatch_once(&ec_priceEndExpression_onceToken, block);
  }

  return ec_priceEndExpression_regex;
}

@end