@interface OADBackgroundFill
+ (id)defaultProperties;
- (OADBackgroundFill)initWithDefaults;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation OADBackgroundFill

+ (id)defaultProperties
{
  if (+[OADBackgroundFill defaultProperties]::once != -1)
  {
    +[OADBackgroundFill defaultProperties];
  }

  v3 = +[OADBackgroundFill defaultProperties]::defaultProperties;

  return v3;
}

- (OADBackgroundFill)initWithDefaults
{
  v3.receiver = self;
  v3.super_class = OADBackgroundFill;
  result = [(OADProperties *)&v3 initWithDefaults];
  if (result)
  {
    *(&result->super.super + 17) = 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [OADBackgroundFill allocWithZone:a3];

  return [(OADBackgroundFill *)v3 initWithDefaults];
}

void __38__OADBackgroundFill_defaultProperties__block_invoke()
{
  v0 = [[OADBackgroundFill alloc] initWithDefaults];
  v1 = +[OADBackgroundFill defaultProperties]::defaultProperties;
  +[OADBackgroundFill defaultProperties]::defaultProperties = v0;
}

@end