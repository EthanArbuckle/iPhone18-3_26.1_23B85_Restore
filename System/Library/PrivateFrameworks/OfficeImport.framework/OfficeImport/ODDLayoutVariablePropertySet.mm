@interface ODDLayoutVariablePropertySet
+ (id)defaultProperties;
- (ODDLayoutVariablePropertySet)initWithDefaults;
- (id)description;
- (int)direction;
@end

@implementation ODDLayoutVariablePropertySet

- (ODDLayoutVariablePropertySet)initWithDefaults
{
  v6.receiver = self;
  v6.super_class = ODDLayoutVariablePropertySet;
  initWithDefaults = [(OADProperties *)&v6 initWithDefaults];
  v3 = initWithDefaults;
  if (initWithDefaults)
  {
    [(ODDLayoutVariablePropertySet *)initWithDefaults setDirection:0];
    v4 = v3;
  }

  return v3;
}

- (int)direction
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasDirection];
  v3 = v2[5];

  return v3;
}

+ (id)defaultProperties
{
  if (+[ODDLayoutVariablePropertySet defaultProperties]::once != -1)
  {
    +[ODDLayoutVariablePropertySet defaultProperties];
  }

  v3 = +[ODDLayoutVariablePropertySet defaultProperties]::defaultProperties;

  return v3;
}

void __49__ODDLayoutVariablePropertySet_defaultProperties__block_invoke()
{
  v0 = [[ODDLayoutVariablePropertySet alloc] initWithDefaults];
  v1 = +[ODDLayoutVariablePropertySet defaultProperties]::defaultProperties;
  +[ODDLayoutVariablePropertySet defaultProperties]::defaultProperties = v0;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = ODDLayoutVariablePropertySet;
  v2 = [(OADProperties *)&v4 description];

  return v2;
}

@end