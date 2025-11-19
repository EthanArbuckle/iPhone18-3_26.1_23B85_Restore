@interface OADPresetPattern
+ (id)defaultProperties;
+ (id)nameForPresetPatternType:(int)a3;
+ (id)namedBitmapDataForPresetPatternType:(int)a3;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)a3;
- (OADPresetPattern)initWithDefaults;
- (id)copyWithZone:(_NSZone *)a3;
- (int)type;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3;
@end

@implementation OADPresetPattern

+ (id)defaultProperties
{
  if (+[OADPresetPattern defaultProperties]::once != -1)
  {
    +[OADPresetPattern defaultProperties];
  }

  v3 = +[OADPresetPattern defaultProperties]::defaultProperties;

  return v3;
}

- (OADPresetPattern)initWithDefaults
{
  v5.receiver = self;
  v5.super_class = OADPresetPattern;
  v2 = [(OADProperties *)&v5 initWithDefaults];
  v3 = v2;
  if (v2)
  {
    [(OADPresetPattern *)v2 setType:1];
  }

  return v3;
}

- (unint64_t)hash
{
  if (LOBYTE(self->mType) == 1)
  {
    v2 = *(&self->super.super + 5);
  }

  else
  {
    v2 = 0;
  }

  v4.receiver = self;
  v4.super_class = OADPresetPattern;
  return [(OADPattern *)&v4 hash]^ v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (LOBYTE(self->mType) == 1)
  {
    [v4 setType:*(&self->super.super + 5)];
  }

  return v5;
}

void __37__OADPresetPattern_defaultProperties__block_invoke()
{
  v0 = [[OADPresetPattern alloc] initWithDefaults];
  v1 = +[OADPresetPattern defaultProperties]::defaultProperties;
  +[OADPresetPattern defaultProperties]::defaultProperties = v0;
}

- (int)type
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isTypeOverridden];
  v3 = v2[5];

  return v3;
}

- (BOOL)isAnythingOverridden
{
  v4.receiver = self;
  v4.super_class = OADPresetPattern;
  return [(OADProperties *)&v4 isAnythingOverridden]|| [(OADPresetPattern *)self isTypeOverridden];
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = OADPresetPattern;
  [(OADProperties *)&v7 fixPropertiesForChangingParentPreservingEffectiveValues:v4];
  if ((self->mType & 1) != 0 || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != v4))
  {
    v6 = [(OADPresetPattern *)self type];
    if (v6 == [v4 type])
    {
      LOBYTE(self->mType) = 0;
    }

    else if ((self->mType & 1) == 0)
    {
      [(OADPresetPattern *)self setType:[(OADPresetPattern *)self type]];
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = OADPresetPattern;
  if ([(OADPattern *)&v8 isEqual:v4])
  {
    v5 = v4;
    if (LOBYTE(self->mType) == *(v5 + 24))
    {
      if (LOBYTE(self->mType))
      {
        v6 = *(&self->super.super + 5) == v5[5];
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)nameForPresetPatternType:(int)a3
{
  if ((a3 - 1) > 0x35)
  {
    return 0;
  }

  else
  {
    return off_2799C7CF0[a3 - 1];
  }
}

+ (id)namedBitmapDataForPresetPatternType:(int)a3
{
  v3 = [a1 nameForPresetPatternType:*&a3];
  if (v3)
  {
    v4 = [OCPattern blackAndWhiteImageDataWithPatternName:v3];
    v5 = [v3 stringByAppendingPathExtension:@"bmp"];
    v6 = [TCNamedData namedDataWithData:v4 named:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end