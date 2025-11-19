@interface NSString
@end

@implementation NSString

uint64_t __55__NSString_KSExtras___containsCJKSymbolsAndPunctuation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = [objc_opt_class() _characterSetWithPattern:@"[^[ [ [:East_Asian_Width=Wide:][:East_Asian_Width=Fullwidth:] ] & [:Punctuation:] ]]"];
  _containsCJKSymbolsAndPunctuation___nonCJKSymbolsSet = result;
  return result;
}

uint64_t __49__NSString_KSExtras___nonIdeographicCharacterSet__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _characterSetWithPattern:@"[:^Ideographic:]"];
  _nonIdeographicCharacterSet___nonIdeographicCharacterSet = result;
  return result;
}

uint64_t __55__NSString_KSExtras___nonHiraganaKatakanaOrBopomofoSet__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _characterSetWithPattern:@"[^[:Hiragana:][:Katakana:][:Katakana_Or_Hiragana:][:Bopomofo:][ー]]"];
  _nonHiraganaKatakanaOrBopomofoSet___nonHiraganaKatakanaOrBopomofoSet = result;
  return result;
}

@end