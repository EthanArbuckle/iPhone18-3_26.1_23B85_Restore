@interface OADRoundLineJoin
+ (id)defaultProperties;
- (BOOL)isEqual:(id)a3;
- (OADRoundLineJoin)initWithDefaults;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation OADRoundLineJoin

+ (id)defaultProperties
{
  if (+[OADRoundLineJoin defaultProperties]::once != -1)
  {
    +[OADRoundLineJoin defaultProperties];
  }

  v3 = +[OADRoundLineJoin defaultProperties]::defaultProperties;

  return v3;
}

- (OADRoundLineJoin)initWithDefaults
{
  v3.receiver = self;
  v3.super_class = OADRoundLineJoin;
  return [(OADProperties *)&v3 initWithDefaults];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 initWithDefaults];
}

void __37__OADRoundLineJoin_defaultProperties__block_invoke()
{
  v0 = [[OADRoundLineJoin alloc] initWithDefaults];
  v1 = +[OADRoundLineJoin defaultProperties]::defaultProperties;
  +[OADRoundLineJoin defaultProperties]::defaultProperties = v0;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  LOBYTE(v4) = v4 == objc_opt_class();

  return v4;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = OADRoundLineJoin;
  return [(OADProperties *)&v3 hash];
}

@end