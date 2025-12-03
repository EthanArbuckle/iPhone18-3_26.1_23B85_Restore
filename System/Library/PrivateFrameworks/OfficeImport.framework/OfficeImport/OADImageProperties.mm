@interface OADImageProperties
+ (id)defaultProperties;
- (BOOL)hasImageFill;
- (id)description;
- (id)imageFill;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values;
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
  parent = [(OADProperties *)self parent];
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

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  v13.receiver = self;
  v13.super_class = OADImageProperties;
  [(OADGraphicProperties *)&v13 fixPropertiesForChangingParentPreservingEffectiveValues:valuesCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->mImageFill || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != valuesCopy))
    {
      imageFill = [(OADImageProperties *)self imageFill];
      v7 = objc_alloc_init(objc_opt_class());

      imageFill2 = [(OADImageProperties *)self imageFill];
      [v7 setParent:imageFill2];

      objc_storeStrong(&self->mImageFill, v7);
      imageFill3 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasImageFill];

      if (imageFill3)
      {
        imageFill3 = [valuesCopy imageFill];
      }

      mImageFill = self->mImageFill;
      if (mImageFill != imageFill3)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0)
        {
          defaultProperties = [objc_opt_class() defaultProperties];

          imageFill3 = defaultProperties;
        }

        [(OADProperties *)self->mImageFill changeParentPreservingEffectiveValues:imageFill3];
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