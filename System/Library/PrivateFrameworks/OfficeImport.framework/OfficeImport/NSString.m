@interface NSString
@end

@implementation NSString

void __61__NSString_TSUNumberFormatStringUtilities__tsu_numberSymbols__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789#@"];
  v1 = tsu_numberSymbols_symbols;
  tsu_numberSymbols_symbols = v0;
}

void __47__NSString_TSUAdditions__tsu_escapeForIcuRegex__block_invoke()
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"*?+[(){}^$|\\./"];
  objc_storeStrong(&tsu_escapeForIcuRegex_icuRegexCharSet, v2);
  if (!tsu_escapeForIcuRegex_icuRegexCharSet)
  {
    v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUAdditions) tsu_escapeForIcuRegex]_block_invoke"];
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSString_TSUAdditions.m"];
    [OITSUAssertionHandler handleFailureInFunction:v0 file:v1 lineNumber:381 isFatal:0 description:"invalid nil value for '%{public}s'", "icuRegexCharSet"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }
}

CFStringTokenizerTokenType __80__NSString_TSUAdditions__tsu_setOfContainedWordsIncludingPunctuationAndSymbols___block_invoke(uint64_t a1, CFStringTokenizerRef tokenizer)
{
  do
  {
    while (1)
    {
      Token = CFStringTokenizerAdvanceToNextToken(tokenizer);
      v5 = Token;
      if (Token)
      {
        break;
      }

      if (CFStringTokenizerGetCurrentTokenRange(tokenizer).location == -1)
      {
        return v5;
      }
    }
  }

  while ((Token & 0x10) != 0 && (*(a1 + 32) & 1) == 0);
  return v5;
}

void __63__NSString_TSUAdditions__tsu_stringWithoutAttachmentCharacters__block_invoke()
{
  v2 = -4;
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v2 length:1];
  v1 = tsu_stringWithoutAttachmentCharacters_sAttachmentCharacter;
  tsu_stringWithoutAttachmentCharacters_sAttachmentCharacter = v0;
}

void __57__NSString_TSUAdditions__tsu_stringWithNormalizedHyphens__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ـ‑-‐–—"];
  v1 = tsu_stringWithNormalizedHyphens_hyphenSet;
  tsu_stringWithNormalizedHyphens_hyphenSet = v0;
}

void __64__NSString_TSUAdditions__tsu_stringWithNormalizedQuotationMarks__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"'’‘‚“”„«»‹›」「』『"];
  v1 = tsu_stringWithNormalizedQuotationMarks_quotationSet;
  tsu_stringWithNormalizedQuotationMarks_quotationSet = v0;
}

void __86__NSString_TSUPersonNameComponents__tsu_localizedDisplayNameWithPersonNameComponents___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __66__NSString_TSULogAdditions__tsu_initRedactedWithFormat_arguments___block_invoke()
{
  v3 = 0;
  v0 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"<REDACT .*? REDACT>" options:8 error:&v3];
  v1 = v3;
  v2 = tsu_initRedactedWithFormat_arguments__redactRegex;
  tsu_initRedactedWithFormat_arguments__redactRegex = v0;
}

void __59__NSString_SFUJsonAdditions__sfu_appendJsonStringToString___block_invoke()
{
  sfu_appendJsonStringToString__escapeCharacters = [MEMORY[0x277CCAB50] characterSetWithRange:{0, 32}];
  [sfu_appendJsonStringToString__escapeCharacters addCharactersInString:@"\"\\""];
  v1 = 539566120;
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&v1 length:2];
  [sfu_appendJsonStringToString__escapeCharacters addCharactersInString:v0];
}

void __86__NSString_TSWPAdditions__tswp_stringForValue_withListNumberFormat_includeFormatting___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAB50]);
  [v0 addCharactersInRange:{46, 1}];
  [v0 addCharactersInRange:{40, 1}];
  [v0 addCharactersInRange:{41, 1}];
  v1 = +[NSString(TSWPAdditions) tswp_stringForValue:withListNumberFormat:includeFormatting:]::_formattingCharacterSet;
  +[NSString(TSWPAdditions) tswp_stringForValue:withListNumberFormat:includeFormatting:]::_formattingCharacterSet = v0;
}

void __52__NSString_CSSEscaping__CM_stringByAddingCSSEscapes__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"\n\r\f"];
  v1 = _MergedGlobals_61;
  _MergedGlobals_61 = v0;
}

@end