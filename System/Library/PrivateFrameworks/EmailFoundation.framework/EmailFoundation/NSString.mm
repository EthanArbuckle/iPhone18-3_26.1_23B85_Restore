@interface NSString
- (id)_escapeForXML;
@end

@implementation NSString

void __88__NSString_EmailFoundationAdditions__ef_stringByRemovingUnbalancedOpenQuote_closeQuote___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = [a2 first];
  v3 = [v5 rangeValue];
  [v2 deleteCharactersInRange:{v3, v4}];
}

void __74__NSString_EmailFoundationAdditions__ef_quotedWordComponentsForLanguages___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v10 = v5;
  if (a3)
  {
    v6 = [v5 ef_stringByRemovingQuotesForLanguages:*(a1 + 32)];

    v10 = v6;
    [*(a1 + 40) addObject:v6];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) firstObject];
    v9 = [v10 ef_wordComponentsForLocale:v8];
    [v7 addObjectsFromArray:v9];
  }
}

void __100__NSString_EmailFoundationAdditions__ef_stringByEscapingSQLLikeSpecialCharactersWithEscapeCharater___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C%@", a3, v7];
  v6 = *(*(*(a1 + 32) + 8) + 40);
  [v6 replaceOccurrencesOfString:v7 withString:v5 options:0 range:{0, objc_msgSend(v6, "length")}];
}

void __62__NSString_EmailFoundationAdditions__ef_substringWithIndexes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) substringWithRange:{a2, a3}];
  [v3 appendString:?];
}

void __64__NSString_EmailFoundationAdditions__ef_isUnsignedIntegerString__block_invoke()
{
  v2 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v0 = [v2 invertedSet];
  v1 = ef_isUnsignedIntegerString_nonDigitCharacterSet;
  ef_isUnsignedIntegerString_nonDigitCharacterSet = v0;
}

- (id)_escapeForXML
{
  if (self)
  {
    v1 = [self mutableCopy];
    [v1 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:0 range:{0, objc_msgSend(v1, "length")}];
    [v1 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:0 range:{0, objc_msgSend(v1, "length")}];
    [v1 replaceOccurrencesOfString:@">" withString:@"&gt;" options:0 range:{0, objc_msgSend(v1, "length")}];
    [v1 replaceOccurrencesOfString:@"'" withString:@"&apos;" options:0 range:{0, objc_msgSend(v1, "length")}];
    [v1 replaceOccurrencesOfString:@" withString:@"&quot;" options:0 range:{0, objc_msgSend(v1, "length"")}];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void __58__NSString_EmailFoundationAdditions__ef_sanitizedFileName__block_invoke()
{
  v0 = objc_opt_new();
  v1 = [MEMORY[0x1E696AB08] controlCharacterSet];
  [v0 formUnionWithCharacterSet:v1];

  v2 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  [v0 formUnionWithCharacterSet:v2];

  [v0 addCharactersInString:@"\t"];
  v3 = ef_sanitizedFileName_shouldBeWhitespaceCharacterSet;
  ef_sanitizedFileName_shouldBeWhitespaceCharacterSet = v0;
}

void *__83__NSString_EmailFoundationAdditions__ef_pathByReplacingRelativePathWithFolderName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isEqualToString:@"."] & 1) != 0 || (v4 = v3, objc_msgSend(v3, "isEqualToString:", @"..")))
  {
    v4 = *(a1 + 32);
  }

  v5 = v4;

  return v4;
}

@end