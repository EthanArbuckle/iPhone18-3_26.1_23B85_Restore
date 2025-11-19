@interface OADTableProperties
+ (id)defaultProperties;
- (BOOL)hasBandsNormalToDir:(int)a3;
- (BOOL)hasVectorNormalToDir:(int)a3 atExtremePos:(int)a4;
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
  v2 = [(OADDrawableProperties *)&v5 initWithDefaults];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA60] array];
    [(OADTableProperties *)v2 setEffects:v3];
  }

  return v2;
}

- (BOOL)hasBandsNormalToDir:(int)a3
{
  if (a3)
  {
    return [(OADTableProperties *)self bandColumn];
  }

  else
  {
    return [(OADTableProperties *)self bandRow];
  }
}

- (BOOL)hasVectorNormalToDir:(int)a3 atExtremePos:(int)a4
{
  if (a3)
  {
    if (a4)
    {
      return [(OADTableProperties *)self lastColumn];
    }

    else
    {
      return [(OADTableProperties *)self firstColumn];
    }
  }

  else if (a4)
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