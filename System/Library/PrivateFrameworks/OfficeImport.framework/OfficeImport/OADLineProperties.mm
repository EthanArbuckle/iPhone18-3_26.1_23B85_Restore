@interface OADLineProperties
+ (id)defaultProperties;
@end

@implementation OADLineProperties

+ (id)defaultProperties
{
  if (+[OADLineProperties defaultProperties]::once != -1)
  {
    +[OADLineProperties defaultProperties];
  }

  v3 = +[OADLineProperties defaultProperties]::defaultProperties;

  return v3;
}

void __38__OADLineProperties_defaultProperties__block_invoke()
{
  v0 = [(OADGraphicProperties *)[OADLineProperties alloc] initWithDefaults];
  v1 = +[OADLineProperties defaultProperties]::defaultProperties;
  +[OADLineProperties defaultProperties]::defaultProperties = v0;
}

@end