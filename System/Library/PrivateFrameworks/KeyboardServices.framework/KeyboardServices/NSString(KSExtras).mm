@interface NSString(KSExtras)
+ (uint64_t)_characterSetWithPattern:()KSExtras;
+ (uint64_t)_nonHiraganaKatakanaOrBopomofoSet;
+ (uint64_t)_nonIdeographicCharacterSet;
- (BOOL)_contentsExclusivelyInCharacterSet:()KSExtras;
- (uint64_t)_containsCJKSymbolsAndPunctuation;
@end

@implementation NSString(KSExtras)

+ (uint64_t)_characterSetWithPattern:()KSExtras
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  HIDWORD(v10) = 0;
  v4 = [v3 length];
  if (v4 >= 0x7D0)
  {
    v5 = 2000;
  }

  else
  {
    v5 = v4;
  }

  if ([v3 _fastCharacterContents])
  {
    v6 = uset_openPattern();
  }

  else
  {
    MEMORY[0x28223BE20]();
    [v3 getCharacters:&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) range:{0, v5}];
    v6 = uset_openPattern();
  }

  if (SHIDWORD(v10) >= 1)
  {
    NSLog(&cfstr_CouldnTCreateU.isa, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_contentsExclusivelyInCharacterSet:()KSExtras
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [self length];
  if (v2 >= 0x7D0)
  {
    v3 = 2000;
  }

  else
  {
    v3 = v2;
  }

  if ([self _fastCharacterContents])
  {
    v4 = uset_containsAllCodePoints();
  }

  else
  {
    MEMORY[0x28223BE20]();
    [self getCharacters:v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) range:{0, v3}];
    v4 = uset_containsAllCodePoints();
  }

  result = v4 != 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)_containsCJKSymbolsAndPunctuation
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__NSString_KSExtras___containsCJKSymbolsAndPunctuation__block_invoke;
  block[3] = &unk_2797F6310;
  block[4] = self;
  if (_containsCJKSymbolsAndPunctuation___onceToken != -1)
  {
    dispatch_once(&_containsCJKSymbolsAndPunctuation___onceToken, block);
  }

  return [self _contentsExclusivelyInCharacterSet:_containsCJKSymbolsAndPunctuation___nonCJKSymbolsSet] ^ 1;
}

+ (uint64_t)_nonIdeographicCharacterSet
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__NSString_KSExtras___nonIdeographicCharacterSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_nonIdeographicCharacterSet___onceToken != -1)
  {
    dispatch_once(&_nonIdeographicCharacterSet___onceToken, block);
  }

  return _nonIdeographicCharacterSet___nonIdeographicCharacterSet;
}

+ (uint64_t)_nonHiraganaKatakanaOrBopomofoSet
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__NSString_KSExtras___nonHiraganaKatakanaOrBopomofoSet__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_nonHiraganaKatakanaOrBopomofoSet___onceToken != -1)
  {
    dispatch_once(&_nonHiraganaKatakanaOrBopomofoSet___onceToken, block);
  }

  return _nonHiraganaKatakanaOrBopomofoSet___nonHiraganaKatakanaOrBopomofoSet;
}

@end