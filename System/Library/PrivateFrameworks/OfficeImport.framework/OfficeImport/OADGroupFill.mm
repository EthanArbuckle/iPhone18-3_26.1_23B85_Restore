@interface OADGroupFill
+ (id)defaultProperties;
- (OADGroupFill)initWithDefaults;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation OADGroupFill

+ (id)defaultProperties
{
  if (+[OADGroupFill defaultProperties]::once != -1)
  {
    +[OADGroupFill defaultProperties];
  }

  v3 = +[OADGroupFill defaultProperties]::defaultProperties;

  return v3;
}

- (OADGroupFill)initWithDefaults
{
  v3.receiver = self;
  v3.super_class = OADGroupFill;
  return [(OADProperties *)&v3 initWithDefaults];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [OADGroupFill allocWithZone:zone];

  return [(OADGroupFill *)v3 initWithDefaults];
}

void __33__OADGroupFill_defaultProperties__block_invoke()
{
  v0 = [[OADGroupFill alloc] initWithDefaults];
  v1 = +[OADGroupFill defaultProperties]::defaultProperties;
  +[OADGroupFill defaultProperties]::defaultProperties = v0;
}

@end