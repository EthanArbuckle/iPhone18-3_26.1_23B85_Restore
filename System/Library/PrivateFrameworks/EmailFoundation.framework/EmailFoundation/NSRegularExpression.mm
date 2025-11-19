@interface NSRegularExpression
@end

@implementation NSRegularExpression

void __95__NSRegularExpression_EmailFoundationAdditions__ef_enumerateTokensInString_options_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 range];
  v4 = v3;
  v6 = v5;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 32);
  if (v3 > v8)
  {
    *(v7 + 40) = v3 - v8;
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) substringWithRange:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40)}];
    (*(v9 + 16))(v9, v10, 0, *(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40));
  }

  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) substringWithRange:{v4, v6}];
  (*(v11 + 16))(v11, v12, 1, v4, v6);

  *(*(*(a1 + 48) + 8) + 32) = v4 + v6;
  *(*(*(a1 + 48) + 8) + 40) = *(a1 + 56) - *(*(*(a1 + 48) + 8) + 32);
}

void __141__NSRegularExpression_EmailFoundationAdditions__ef_stringByRemovingTokensFromString_matchingOptions_tokenizationOptions_tokenizationHandler___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    if (*(a1 + 48) == 1)
    {
      v9 = v5;
      v7 = [v5 substringToIndex:{objc_msgSend(v5, "rangeOfComposedCharacterSequenceAtIndex:", objc_msgSend(v5, "length") - 1)}];

      v8 = [v7 substringFromIndex:{objc_msgSend(v7, "rangeOfComposedCharacterSequenceAtIndex:", 0) + 1}];

      v6 = v8;
    }

    v10 = v6;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = v5;
    [*(a1 + 32) appendString:v5];
  }
}

id __95__NSRegularExpression_EmailFoundationAdditions__ef_regularExpressionForQuotedStringsInLocales___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 first];
  v4 = [v2 second];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"((%@[^%@]+?%@)+)", v3, v4, v4];

  return v5;
}

@end