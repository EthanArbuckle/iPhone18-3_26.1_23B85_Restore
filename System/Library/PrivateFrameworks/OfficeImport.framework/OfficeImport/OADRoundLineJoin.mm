@interface OADRoundLineJoin
+ (id)defaultProperties;
- (BOOL)isEqual:(id)equal;
- (OADRoundLineJoin)initWithDefaults;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 initWithDefaults];
}

void __37__OADRoundLineJoin_defaultProperties__block_invoke()
{
  v0 = [[OADRoundLineJoin alloc] initWithDefaults];
  v1 = +[OADRoundLineJoin defaultProperties]::defaultProperties;
  +[OADRoundLineJoin defaultProperties]::defaultProperties = v0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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