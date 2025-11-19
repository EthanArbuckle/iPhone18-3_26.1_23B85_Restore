@interface NSRegularExpression(ECMessageBodyParser)
+ (uint64_t)ec_attributionExpression;
+ (uint64_t)ec_attributionPrefixExpression;
+ (uint64_t)ec_copyAttributionRegularExpressionForType:()ECMessageBodyParser;
+ (uint64_t)ec_forwardSeparatorExpression;
+ (uint64_t)ec_signatureExpression;
@end

@implementation NSRegularExpression(ECMessageBodyParser)

+ (uint64_t)ec_copyAttributionRegularExpressionForType:()ECMessageBodyParser
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "pathForResource:ofType:", @"AttributionPatterns", @"plist"}];
  v22 = a1;
  if (a3 > 3)
  {
    v20 = 0;
  }

  else
  {
    v20 = off_27874BC48[a3];
    v6 = off_27874BC68[a3];
  }

  v21 = v5;
  v7 = [v5 objectForKey:?];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [MEMORY[0x277CCAC68] escapedPatternForString:*(*(&v24 + 1) + 8 * i)];
        v14 = v13;
        if (a3 == 1)
        {
          v15 = [v13 rangeOfString:@"%@"];
          if (!v15)
          {
            v15 = [v14 rangeOfString:@"%@" options:0 range:{1, objc_msgSend(v14, "length") - 1}];
          }

          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v14 = [objc_msgSend(v14 "substringToIndex:{"stringByAppendingString:", @"%@"}")];
          }
        }

        [v8 addObject:{objc_msgSend(objc_msgSend(v14, "stringByReplacingOccurrencesOfString:withString:", @"%@", @".+", "stringByReplacingOccurrencesOfString:withString:", @" ", @"\\s"}];
      }

      v10 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v20, objc_msgSend(v8, "componentsJoinedByString:", @"|"];
  v23 = 0;
  v17 = [[v22 alloc] initWithPattern:v16 options:1 error:&v23];
  if (!v17)
  {
    +[NSRegularExpression(ECMessageBodyParser) ec_copyAttributionRegularExpressionForType:];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (uint64_t)ec_attributionExpression
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__NSRegularExpression_ECMessageBodyParser__ec_attributionExpression__block_invoke;
  block[3] = &unk_27874BC28;
  block[4] = a1;
  if (ec_attributionExpression_onceToken != -1)
  {
    dispatch_once(&ec_attributionExpression_onceToken, block);
  }

  return ec_attributionExpression_regex;
}

+ (uint64_t)ec_attributionPrefixExpression
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__NSRegularExpression_ECMessageBodyParser__ec_attributionPrefixExpression__block_invoke;
  block[3] = &unk_27874BC28;
  block[4] = a1;
  if (ec_attributionPrefixExpression_onceToken != -1)
  {
    dispatch_once(&ec_attributionPrefixExpression_onceToken, block);
  }

  return ec_attributionPrefixExpression_regex;
}

+ (uint64_t)ec_forwardSeparatorExpression
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__NSRegularExpression_ECMessageBodyParser__ec_forwardSeparatorExpression__block_invoke;
  block[3] = &unk_27874BC28;
  block[4] = a1;
  if (ec_forwardSeparatorExpression_onceToken != -1)
  {
    dispatch_once(&ec_forwardSeparatorExpression_onceToken, block);
  }

  return ec_forwardSeparatorExpression_regex;
}

+ (uint64_t)ec_signatureExpression
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__NSRegularExpression_ECMessageBodyParser__ec_signatureExpression__block_invoke;
  block[3] = &unk_27874BC28;
  block[4] = a1;
  if (ec_signatureExpression_onceToken != -1)
  {
    dispatch_once(&ec_signatureExpression_onceToken, block);
  }

  return ec_signatureExpression_regex;
}

@end