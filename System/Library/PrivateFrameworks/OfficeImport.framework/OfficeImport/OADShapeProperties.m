@interface OADShapeProperties
+ (id)defaultProperties;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation OADShapeProperties

+ (id)defaultProperties
{
  if (+[OADShapeProperties defaultProperties]::once != -1)
  {
    +[OADShapeProperties defaultProperties];
  }

  v3 = +[OADShapeProperties defaultProperties]::defaultProperties;

  return v3;
}

- (unint64_t)hash
{
  v2 = *(&self->super + 121);
  v4.receiver = self;
  v4.super_class = OADShapeProperties;
  return [(OADGraphicProperties *)&v4 hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v4;
    v7 = [(OADShapeProperties *)self hash];
    if (v7 == [v6 hash])
    {
      v8 = [v6 isTextBox];
      if (v8 == [(OADShapeProperties *)self isTextBox])
      {
        v10.receiver = self;
        v10.super_class = OADShapeProperties;
        [(OADGraphicProperties *)&v10 isEqual:v6];
      }
    }
  }

  return isKindOfClass & 1;
}

void __39__OADShapeProperties_defaultProperties__block_invoke()
{
  v0 = [(OADGraphicProperties *)[OADShapeProperties alloc] initWithDefaults];
  v1 = +[OADShapeProperties defaultProperties]::defaultProperties;
  +[OADShapeProperties defaultProperties]::defaultProperties = v0;
}

@end