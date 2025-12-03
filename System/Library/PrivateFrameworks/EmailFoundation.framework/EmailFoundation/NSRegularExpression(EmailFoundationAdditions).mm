@interface NSRegularExpression(EmailFoundationAdditions)
+ (id)ef_regularExpressionForQuotedStringsInLocales:()EmailFoundationAdditions;
- (id)ef_stringByRemovingTokensFromString:()EmailFoundationAdditions matchingOptions:tokenizationOptions:tokenizationHandler:;
- (id)ef_stringByRemovingTokensFromString:()EmailFoundationAdditions tokenizationHandler:;
- (void)ef_enumerateTokensInString:()EmailFoundationAdditions options:usingBlock:;
@end

@implementation NSRegularExpression(EmailFoundationAdditions)

- (void)ef_enumerateTokensInString:()EmailFoundationAdditions options:usingBlock:
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 length];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3010000000;
  v25 = &unk_1C61D722D;
  v26 = 0;
  v27 = v10;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __95__NSRegularExpression_EmailFoundationAdditions__ef_enumerateTokensInString_options_usingBlock___block_invoke;
  v17 = &unk_1E8249358;
  v20 = &v22;
  v11 = v9;
  v19 = v11;
  v12 = v8;
  v18 = v12;
  v21 = v10;
  [self enumerateMatchesInString:v12 options:a4 range:v26 usingBlock:{v27, &v14}];
  if (v23[5])
  {
    v13 = [v12 substringWithRange:{v23[4], v14, v15, v16, v17}];
    (*(v11 + 2))(v11, v13, 0, v23[4], v23[5]);
  }

  _Block_object_dispose(&v22, 8);
}

- (id)ef_stringByRemovingTokensFromString:()EmailFoundationAdditions matchingOptions:tokenizationOptions:tokenizationHandler:
{
  v10 = a3;
  v11 = a6;
  v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __141__NSRegularExpression_EmailFoundationAdditions__ef_stringByRemovingTokensFromString_matchingOptions_tokenizationOptions_tokenizationHandler___block_invoke;
  v19[3] = &unk_1E8249380;
  v22 = a5 & 1;
  v13 = v11;
  v21 = v13;
  v14 = v12;
  v20 = v14;
  [self ef_enumerateTokensInString:v10 options:a4 usingBlock:v19];
  v15 = v14;
  v16 = v15;
  if ((a5 & 2) != 0)
  {
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v16 = [v15 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  }

  return v16;
}

- (id)ef_stringByRemovingTokensFromString:()EmailFoundationAdditions tokenizationHandler:
{
  v4 = [self ef_stringByRemovingTokensFromString:a3 matchingOptions:0 tokenizationOptions:0 tokenizationHandler:a4];

  return v4;
}

+ (id)ef_regularExpressionForQuotedStringsInLocales:()EmailFoundationAdditions
{
  v4 = [MEMORY[0x1E695DF58] ef_quotePairsForLocales:?];
  v5 = [v4 ef_map:&__block_literal_global_21];
  v6 = [v5 componentsJoinedByString:@"|"];
  v11 = 0;
  v7 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v6 options:0 error:&v11];
  v8 = v11;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EFNSRegularExpressionAdditions.m" lineNumber:96 description:{@"Failed to create regular expression. Error:", v8}];
  }

  return v7;
}

@end