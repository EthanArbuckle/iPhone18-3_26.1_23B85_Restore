@interface OADTableProperties
+ (id)defaultProperties;
- (BOOL)hasBandsNormalToDir:(int)dir;
- (BOOL)hasVectorNormalToDir:(int)dir atExtremePos:(int)pos;
- (NSString)description;
- (OADTableProperties)initWithDefaults;
- (id)effects;
@end

@implementation OADTableProperties

+ (id)defaultProperties
{
  if (+[OADTableProperties defaultProperties]::once != -1)
  {
    +[OADTableProperties defaultProperties];
  }

  v3 = +[OADTableProperties defaultProperties]::defaultProperties;

  return v3;
}

- (OADTableProperties)initWithDefaults
{
  v5.receiver = self;
  v5.super_class = OADTableProperties;
  initWithDefaults = [(OADDrawableProperties *)&v5 initWithDefaults];
  if (initWithDefaults)
  {
    array = [MEMORY[0x277CBEA60] array];
    [(OADTableProperties *)initWithDefaults setEffects:array];
  }

  return initWithDefaults;
}

- (BOOL)hasBandsNormalToDir:(int)dir
{
  if (dir)
  {
    return [(OADTableProperties *)self bandColumn];
  }

  else
  {
    return [(OADTableProperties *)self bandRow];
  }
}

- (BOOL)hasVectorNormalToDir:(int)dir atExtremePos:(int)pos
{
  if (dir)
  {
    if (pos)
    {
      return [(OADTableProperties *)self lastColumn];
    }

    else
    {
      return [(OADTableProperties *)self firstColumn];
    }
  }

  else if (pos)
  {
    return [(OADTableProperties *)self lastRow];
  }

  else
  {
    return [(OADTableProperties *)self firstRow];
  }
}

- (id)effects
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasEffects];
  v3 = v2[11];
  v4 = v3;

  return v3;
}

void __39__OADTableProperties_defaultProperties__block_invoke()
{
  v0 = [[OADTableProperties alloc] initWithDefaults];
  v1 = +[OADTableProperties defaultProperties]::defaultProperties;
  +[OADTableProperties defaultProperties]::defaultProperties = v0;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = OADTableProperties;
  v2 = [(OADDrawableProperties *)&v4 description];

  return v2;
}

@end