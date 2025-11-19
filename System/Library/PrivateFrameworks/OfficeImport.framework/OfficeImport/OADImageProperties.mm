@interface OADImageProperties
+ (id)defaultProperties;
- (BOOL)hasImageFill;
- (id)description;
- (id)imageFill;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3;
@end

@implementation OADImageProperties

+ (id)defaultProperties
{
  if (+[OADImageProperties defaultProperties]::once != -1)
  {
    +[OADImageProperties defaultProperties];
  }

  v3 = +[OADImageProperties defaultProperties]::defaultProperties;

  return v3;
}

- (BOOL)hasImageFill
{
  v4 = [(OADProperties *)self parent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  mImageFill = self->mImageFill;
  if ((isKindOfClass & 1) == 0)
  {
    return mImageFill != 0;
  }

  if (mImageFill)
  {
    return 1;
  }

  return [(OADProperties *)self isMergedPropertyForSelector:a2];
}

- (id)imageFill
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasImageFill];
  v3 = v2[16];
  v4 = v3;

  return v3;
}

void __39__OADImageProperties_defaultProperties__block_invoke()
{
  v0 = [(OADGraphicProperties *)[OADImageProperties alloc] initWithDefaults];
  v1 = +[OADImageProperties defaultProperties]::defaultProperties;
  +[OADImageProperties defaultProperties]::defaultProperties = v0;
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = OADImageProperties;
  [(OADGraphicProperties *)&v13 fixPropertiesForChangingParentPreservingEffectiveValues:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->mImageFill || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != v4))
    {
      v6 = [(OADImageProperties *)self imageFill];
      v7 = objc_alloc_init(objc_opt_class());

      v8 = [(OADImageProperties *)self imageFill];
      [v7 setParent:v8];

      objc_storeStrong(&self->mImageFill, v7);
      v9 = [v4 possiblyInexistentOverrideForSelector:sel_hasImageFill];

      if (v9)
      {
        v9 = [v4 imageFill];
      }

      mImageFill = self->mImageFill;
      if (mImageFill != v9)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0)
        {
          v12 = [objc_opt_class() defaultProperties];

          v9 = v12;
        }

        [(OADProperties *)self->mImageFill changeParentPreservingEffectiveValues:v9];
        if ((isKindOfClass & 1) == 0 || [(OADImageFill *)self->mImageFill isAnythingOverridden])
        {
          goto LABEL_13;
        }

        mImageFill = self->mImageFill;
      }

      self->mImageFill = 0;

LABEL_13:
    }
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADImageProperties;
  v2 = [(OADGraphicProperties *)&v4 description];

  return v2;
}

@end