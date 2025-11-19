@interface NSString
@end

@implementation NSString

uint64_t __43__NSString_FormatExtras___navigation_isCJK__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v1 = _navigation_isCJK_CJKSet;
  _navigation_isCJK_CJKSet = v0;

  [_navigation_isCJK_CJKSet addCharactersInRange:{4352, 256}];
  [_navigation_isCJK_CJKSet addCharactersInRange:{11904, 352}];
  [_navigation_isCJK_CJKSet addCharactersInRange:{12272, 464}];
  [_navigation_isCJK_CJKSet addCharactersInRange:{12800, 29392}];
  [_navigation_isCJK_CJKSet addCharactersInRange:{44032, 11183}];
  [_navigation_isCJK_CJKSet addCharactersInRange:{63744, 352}];
  [_navigation_isCJK_CJKSet addCharactersInRange:{65072, 32}];
  [_navigation_isCJK_CJKSet addCharactersInRange:{65280, 240}];
  [_navigation_isCJK_CJKSet addCharactersInRange:{0x20000, 42711}];
  v2 = _navigation_isCJK_CJKSet;

  return [v2 addCharactersInRange:{194560, 542}];
}

void __58__NSString_FormatExtras___navigation_stringForPower_unit___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD30]);
  v1 = _navigation_stringForPower_unit__formatter;
  _navigation_stringForPower_unit__formatter = v0;
}

uint64_t __100__NSString_FormatExtras___navigation_replacementForFormatToken_options_overrideVariables_useMetric___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _navigation_replacementForFormatToken_options_overrideVariables_useMetric___numberFormatter;
  _navigation_replacementForFormatToken_options_overrideVariables_useMetric___numberFormatter = v0;

  v2 = _navigation_replacementForFormatToken_options_overrideVariables_useMetric___numberFormatter;

  return [v2 setNumberStyle:3];
}

uint64_t __64__NSString_FormatExtras___navigation_formattedStringForInteger___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _navigation_formattedStringForInteger__numberFormatter;
  _navigation_formattedStringForInteger__numberFormatter = v0;

  v2 = _navigation_formattedStringForInteger__numberFormatter;
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:v3];

  [_navigation_formattedStringForInteger__numberFormatter setNumberStyle:1];
  v4 = _navigation_formattedStringForInteger__numberFormatter;

  return [v4 setMinimumIntegerDigits:1];
}

@end