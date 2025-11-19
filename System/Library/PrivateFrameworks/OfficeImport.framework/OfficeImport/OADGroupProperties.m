@interface OADGroupProperties
+ (id)defaultProperties;
- (NSString)description;
- (OADGroupProperties)initWithDefaults;
- (id)effects;
- (id)fill;
- (id)scene3D;
- (id)shape3D;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3;
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
  v2 = [(OADDrawableProperties *)&v8 initWithDefaults];
  if (v2)
  {
    v3 = +[OADNullFill nullFill];
    [(OADGroupProperties *)v2 setFill:v3];

    v4 = [MEMORY[0x277CBEA60] array];
    [(OADGroupProperties *)v2 setEffects:v4];

    v5 = +[OADScene3D nullScene3D];
    [(OADGroupProperties *)v2 setScene3D:v5];

    v6 = +[OADShape3D nullShape3D];
    [(OADGroupProperties *)v2 setShape3D:v6];
  }

  return v2;
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

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = OADGroupProperties;
  [(OADDrawableProperties *)&v34 fixPropertiesForChangingParentPreservingEffectiveValues:v4];
  if (self->mFill || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != v4))
  {
    v6 = [(OADGroupProperties *)self fill];
    v7 = objc_alloc_init(objc_opt_class());

    v8 = [(OADGroupProperties *)self fill];
    [v7 setParent:v8];

    objc_storeStrong(&self->mFill, v7);
    v9 = [v4 possiblyInexistentOverrideForSelector:sel_hasFill];

    if (v9)
    {
      v9 = [v4 fill];
    }

    mFill = self->mFill;
    if (mFill != v9)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v12 = [objc_opt_class() defaultProperties];

        v9 = v12;
      }

      [(OADProperties *)self->mFill changeParentPreservingEffectiveValues:v9];
      if ((isKindOfClass & 1) == 0 || [(OADProperties *)self->mFill isAnythingOverridden])
      {
        goto LABEL_12;
      }

      mFill = self->mFill;
    }

    self->mFill = 0;

LABEL_12:
  }

  if ([(OADGroupProperties *)self hasEffects]|| ([(OADProperties *)self parent], v13 = objc_claimAutoreleasedReturnValue(), v13, v13 != v4))
  {
    v14 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasEffects];

    if (v14)
    {
      v15 = [(OADGroupProperties *)self effects];
    }

    else
    {
      v15 = 0;
    }

    v16 = [v4 possiblyInexistentOverrideForSelector:sel_hasEffects];

    if (v16)
    {
      v17 = [v4 effects];
    }

    else
    {
      v17 = 0;
    }

    v18 = TCObjectEqual(v15, v17);
    mEffects = self->mEffects;
    if (v18)
    {
      self->mEffects = 0;
    }

    else if (!mEffects && v14)
    {
      [(OADGroupProperties *)self setEffects:v15];
    }
  }

  if ([(OADGroupProperties *)self hasScene3D]|| ([(OADProperties *)self parent], v20 = objc_claimAutoreleasedReturnValue(), v20, v20 != v4))
  {
    v21 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasScene3D];

    if (v21)
    {
      v22 = [(OADGroupProperties *)self scene3D];
    }

    else
    {
      v22 = 0;
    }

    v23 = [v4 possiblyInexistentOverrideForSelector:sel_hasScene3D];

    if (v23)
    {
      v24 = [v4 scene3D];
    }

    else
    {
      v24 = 0;
    }

    v25 = TCObjectEqual(v22, v24);
    mScene3D = self->mScene3D;
    if (v25)
    {
      self->mScene3D = 0;
    }

    else if (!mScene3D && v21)
    {
      [(OADGroupProperties *)self setScene3D:v22];
    }
  }

  if ([(OADGroupProperties *)self hasShape3D]|| ([(OADProperties *)self parent], v27 = objc_claimAutoreleasedReturnValue(), v27, v27 != v4))
  {
    v28 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_hasShape3D];

    if (v28)
    {
      v29 = [(OADGroupProperties *)self shape3D];
    }

    else
    {
      v29 = 0;
    }

    v30 = [v4 possiblyInexistentOverrideForSelector:sel_hasShape3D];

    if (v30)
    {
      v31 = [v4 shape3D];
    }

    else
    {
      v31 = 0;
    }

    v32 = TCObjectEqual(v29, v31);
    mShape3D = self->mShape3D;
    if (v32)
    {
      self->mShape3D = 0;
    }

    else if (!mShape3D && v28)
    {
      [(OADGroupProperties *)self setShape3D:v29];
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