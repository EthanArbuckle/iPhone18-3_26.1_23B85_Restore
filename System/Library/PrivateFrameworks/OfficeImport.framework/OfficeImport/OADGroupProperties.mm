@interface OADGroupProperties
+ (id)defaultProperties;
- (NSString)description;
- (OADGroupProperties)initWithDefaults;
- (id)effects;
- (id)fill;
- (id)scene3D;
- (id)shape3D;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values;
@end

@implementation OADGroupProperties

+ (id)defaultProperties
{
  if (+[OADGroupProperties defaultProperties]::once != -1)
  {
    +[OADGroupProperties defaultProperties];
  }

  v3 = +[OADGroupProperties defaultProperties]::defaultProperties;

  return v3;
}

- (OADGroupProperties)initWithDefaults
{
  v8.receiver = self;
  v8.super_class = OADGroupProperties;
  initWithDefaults = [(OADDrawableProperties *)&v8 initWithDefaults];
  if (initWithDefaults)
  {
    v3 = +[OADNullFill nullFill];
    [(OADGroupProperties *)initWithDefaults setFill:v3];

    array = [MEMORY[0x277CBEA60] array];
    [(OADGroupProperties *)initWithDefaults setEffects:array];

    v5 = +[OADScene3D nullScene3D];
    [(OADGroupProperties *)initWithDefaults setScene3D:v5];

    v6 = +[OADShape3D nullShape3D];
    [(OADGroupProperties *)initWithDefaults setShape3D:v6];
  }

  return initWithDefaults;
}

- (id)fill
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasFill];
  v3 = v2[9];
  v4 = v3;

  return v3;
}

- (id)effects
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasEffects];
  v3 = v2[10];
  v4 = v3;

  return v3;
}

- (id)scene3D
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasScene3D];
  v3 = v2[11];
  v4 = v3;

  return v3;
}

- (id)shape3D
{
  v2 = [(OADProperties *)self overrideForSelector:sel_hasShape3D];
  v3 = v2[12];
  v4 = v3;

  return v3;
}

void __39__OADGroupProperties_defaultProperties__block_invoke()
{
  v0 = [[OADGroupProperties alloc] initWithDefaults];
  v1 = +[OADGroupProperties defaultProperties]::defaultProperties;
  +[OADGroupProperties defaultProperties]::defaultProperties = v0;
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  v34.receiver = self;
  v34.super_class = OADGroupProperties;
  [(OADDrawableProperties *)&v34 fixPropertiesForChangingParentPreservingEffectiveValues:valuesCopy];
  if (self->mFill || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != valuesCopy))
  {
    fill = [(OADGroupProperties *)self fill];
    v7 = objc_alloc_init(objc_opt_class());

    fill2 = [(OADGroupProperties *)self fill];
    [v7 setParent:fill2];

    objc_storeStrong(&self->mFill, v7);
    fill3 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasFill];

    if (fill3)
    {
      fill3 = [valuesCopy fill];
    }

    mFill = self->mFill;
    if (mFill != fill3)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        defaultProperties = [objc_opt_class() defaultProperties];

        fill3 = defaultProperties;
      }

      [(OADProperties *)self->mFill changeParentPreservingEffectiveValues:fill3];
      if ((isKindOfClass & 1) == 0 || [(OADProperties *)self->mFill isAnythingOverridden])
      {
        goto LABEL_12;
      }

      mFill = self->mFill;
    }

    self->mFill = 0;

LABEL_12:
  }

  if ([(OADGroupProperties *)self hasEffects]|| ([(OADProperties *)self parent], v13 = objc_claimAutoreleasedReturnValue(), v13, v13 != valuesCopy))
  {
    v14 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasEffects];

    if (v14)
    {
      effects = [(OADGroupProperties *)self effects];
    }

    else
    {
      effects = 0;
    }

    v16 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasEffects];

    if (v16)
    {
      effects2 = [valuesCopy effects];
    }

    else
    {
      effects2 = 0;
    }

    v18 = TCObjectEqual(effects, effects2);
    mEffects = self->mEffects;
    if (v18)
    {
      self->mEffects = 0;
    }

    else if (!mEffects && v14)
    {
      [(OADGroupProperties *)self setEffects:effects];
    }
  }

  if ([(OADGroupProperties *)self hasScene3D]|| ([(OADProperties *)self parent], v20 = objc_claimAutoreleasedReturnValue(), v20, v20 != valuesCopy))
  {
    v21 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasScene3D];

    if (v21)
    {
      scene3D = [(OADGroupProperties *)self scene3D];
    }

    else
    {
      scene3D = 0;
    }

    v23 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasScene3D];

    if (v23)
    {
      scene3D2 = [valuesCopy scene3D];
    }

    else
    {
      scene3D2 = 0;
    }

    v25 = TCObjectEqual(scene3D, scene3D2);
    mScene3D = self->mScene3D;
    if (v25)
    {
      self->mScene3D = 0;
    }

    else if (!mScene3D && v21)
    {
      [(OADGroupProperties *)self setScene3D:scene3D];
    }
  }

  if ([(OADGroupProperties *)self hasShape3D]|| ([(OADProperties *)self parent], v27 = objc_claimAutoreleasedReturnValue(), v27, v27 != valuesCopy))
  {
    v28 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasShape3D];

    if (v28)
    {
      shape3D = [(OADGroupProperties *)self shape3D];
    }

    else
    {
      shape3D = 0;
    }

    v30 = [valuesCopy possiblyInexistentOverrideForSelector:sel_hasShape3D];

    if (v30)
    {
      shape3D2 = [valuesCopy shape3D];
    }

    else
    {
      shape3D2 = 0;
    }

    v32 = TCObjectEqual(shape3D, shape3D2);
    mShape3D = self->mShape3D;
    if (v32)
    {
      self->mShape3D = 0;
    }

    else if (!mShape3D && v28)
    {
      [(OADGroupProperties *)self setShape3D:shape3D];
    }
  }
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = OADGroupProperties;
  v2 = [(OADDrawableProperties *)&v4 description];

  return v2;
}

@end