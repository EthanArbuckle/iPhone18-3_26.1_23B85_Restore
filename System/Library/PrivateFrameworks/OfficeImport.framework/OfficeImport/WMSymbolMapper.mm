@interface WMSymbolMapper
+ (BOOL)isSymbolFontName:(id)a3;
+ (unsigned)mapCharacter:(unsigned __int16)a3 withFontName:(id)a4;
+ (unsigned)mapWindingsCharacter:(unsigned __int16)a3;
+ (unsigned)mapZapfDingbatsCharacter:(unsigned __int16)a3;
- (WMSymbolMapper)initWithWDSymbol:(id)a3 parent:(id)a4;
- (void)mapAt:(id)a3 withState:(id)a4;
@end

@implementation WMSymbolMapper

+ (unsigned)mapWindingsCharacter:(unsigned __int16)a3
{
  if (a3 == 216)
  {
    v3 = 10146;
  }

  else
  {
    v3 = 0;
  }

  if ((a3 - 162) >= 0x14)
  {
    v4 = v3;
  }

  else
  {
    v4 = 9679;
  }

  if ((a3 - 108) >= 0x14)
  {
    v5 = v4;
  }

  else
  {
    v5 = 9679;
  }

  if (a3 == 232)
  {
    return 8594;
  }

  else
  {
    return v5;
  }
}

+ (unsigned)mapZapfDingbatsCharacter:(unsigned __int16)a3
{
  if (a3 == 52)
  {
    return 10004;
  }

  else
  {
    return 0;
  }
}

+ (unsigned)mapCharacter:(unsigned __int16)a3 withFontName:(id)a4
{
  v4 = a3;
  v5 = a4;
  if (![v5 compare:@"Wingdings"])
  {
    v7 = [WMSymbolMapper mapWindingsCharacter:v4];
LABEL_6:
    v6 = v7;
    goto LABEL_7;
  }

  if (![v5 compare:@"Zapf Dingbats"])
  {
    v7 = [WMSymbolMapper mapZapfDingbatsCharacter:v4];
    goto LABEL_6;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (BOOL)isSymbolFontName:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__WMSymbolMapper_isSymbolFontName___block_invoke;
  v7[3] = &unk_2799CDCB8;
  v8 = v3;
  v4 = v3;
  v5 = [&unk_286F6D6E0 indexOfObjectPassingTest:v7] != 0x7FFFFFFFFFFFFFFFLL;

  return v5;
}

uint64_t __35__WMSymbolMapper_isSymbolFontName___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqualToString:*(a1 + 32)];
  *a4 = result;
  return result;
}

- (WMSymbolMapper)initWithWDSymbol:(id)a3 parent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = WMSymbolMapper;
  v8 = [(CMMapper *)&v13 initWithParent:v7];
  if (v8)
  {
    v8->mCharacter = [v6 character] & 0xFFF;
    v9 = [v6 font];
    v10 = [v9 name];
    mFontName = v8->mFontName;
    v8->mFontName = v10;
  }

  return v8;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v10 = a3;
  v5 = [OIXMLElement elementWithType:16];
  [v10 addChild:v5];
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