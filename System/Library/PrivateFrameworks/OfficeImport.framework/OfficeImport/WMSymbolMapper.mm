@interface WMSymbolMapper
+ (BOOL)isSymbolFontName:(id)name;
+ (unsigned)mapCharacter:(unsigned __int16)character withFontName:(id)name;
+ (unsigned)mapWindingsCharacter:(unsigned __int16)character;
+ (unsigned)mapZapfDingbatsCharacter:(unsigned __int16)character;
- (WMSymbolMapper)initWithWDSymbol:(id)symbol parent:(id)parent;
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation WMSymbolMapper

+ (unsigned)mapWindingsCharacter:(unsigned __int16)character
{
  if (character == 216)
  {
    v3 = 10146;
  }

  else
  {
    v3 = 0;
  }

  if ((character - 162) >= 0x14)
  {
    v4 = v3;
  }

  else
  {
    v4 = 9679;
  }

  if ((character - 108) >= 0x14)
  {
    v5 = v4;
  }

  else
  {
    v5 = 9679;
  }

  if (character == 232)
  {
    return 8594;
  }

  else
  {
    return v5;
  }
}

+ (unsigned)mapZapfDingbatsCharacter:(unsigned __int16)character
{
  if (character == 52)
  {
    return 10004;
  }

  else
  {
    return 0;
  }
}

+ (unsigned)mapCharacter:(unsigned __int16)character withFontName:(id)name
{
  characterCopy = character;
  nameCopy = name;
  if (![nameCopy compare:@"Wingdings"])
  {
    v7 = [WMSymbolMapper mapWindingsCharacter:characterCopy];
LABEL_6:
    v6 = v7;
    goto LABEL_7;
  }

  if (![nameCopy compare:@"Zapf Dingbats"])
  {
    v7 = [WMSymbolMapper mapZapfDingbatsCharacter:characterCopy];
    goto LABEL_6;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (BOOL)isSymbolFontName:(id)name
{
  nameCopy = name;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__WMSymbolMapper_isSymbolFontName___block_invoke;
  v7[3] = &unk_2799CDCB8;
  v8 = nameCopy;
  v4 = nameCopy;
  v5 = [&unk_286F6D6E0 indexOfObjectPassingTest:v7] != 0x7FFFFFFFFFFFFFFFLL;

  return v5;
}

uint64_t __35__WMSymbolMapper_isSymbolFontName___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqualToString:*(a1 + 32)];
  *a4 = result;
  return result;
}

- (WMSymbolMapper)initWithWDSymbol:(id)symbol parent:(id)parent
{
  symbolCopy = symbol;
  parentCopy = parent;
  v13.receiver = self;
  v13.super_class = WMSymbolMapper;
  v8 = [(CMMapper *)&v13 initWithParent:parentCopy];
  if (v8)
  {
    v8->mCharacter = [symbolCopy character] & 0xFFF;
    font = [symbolCopy font];
    name = [font name];
    mFontName = v8->mFontName;
    v8->mFontName = name;
  }

  return v8;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  v5 = [OIXMLElement elementWithType:16];
  [atCopy addChild:v5];
  v6 = [WMSymbolMapper mapCharacter:self->mCharacter withFontName:self->mFontName];
  if (v6)
  {
    self->mCharacter = v6;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithCharacters:&self->mCharacter length:1];
  v8 = [OIXMLTextNode textNodeWithStringValue:v7];
  [v5 addChild:v8];
  v9 = objc_alloc_init(WMStyle);
  [(CMStyle *)v9 appendPropertyForName:0x286EF73B0 stringWithColons:@":Symbol;"];
  [(CMMapper *)self addStyleUsingGlobalCacheTo:v5 style:v9];
}

@end