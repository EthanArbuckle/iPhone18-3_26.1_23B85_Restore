@interface OADBevelLineJoin
+ (id)defaultProperties;
- (BOOL)isEqual:(id)a3;
- (OADBevelLineJoin)initWithDefaults;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation OADBevelLineJoin

+ (id)defaultProperties
{
  if (+[OADBevelLineJoin defaultProperties]::once != -1)
  {
    +[OADBevelLineJoin defaultProperties];
  }

  v3 = +[OADBevelLineJoin defaultProperties]::defaultProperties;

  return v3;
}

- (OADBevelLineJoin)initWithDefaults
{
  v3.receiver = self;
  v3.super_class = OADBevelLineJoin;
  return [(OADProperties *)&v3 initWithDefaults];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [OADBevelLineJoin allocWithZone:a3];

  return [(OADBevelLineJoin *)v3 initWithDefaults];
}

void __37__OADBevelLineJoin_defaultProperties__block_invoke()
{
  v0 = [[OADBevelLineJoin alloc] initWithDefaults];
  v1 = +[OADBevelLineJoin defaultProperties]::defaultProperties;
  +[OADBevelLineJoin defaultProperties]::defaultProperties = v0;
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
  v3.super_class = OADBevelLineJoin;
  return [(OADProperties *)&v3 hash];
}

@end