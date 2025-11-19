@interface OADPatternFill
+ (id)defaultProperties;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)a3;
- (OADPatternFill)initWithDefaults;
- (id)bgColor;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fgColor;
- (id)namedImageDataWithBlipCollection:(id)a3;
- (id)pattern;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3;
- (void)removeUnnecessaryOverrides;
- (void)setParent:(id)a3;
- (void)setStyleColor:(id)a3;
@end

@implementation OADPatternFill

+ (id)defaultProperties
{
  if (+[OADPatternFill defaultProperties]::once != -1)
  {
    +[OADPatternFill defaultProperties];
  }

  v3 = +[OADPatternFill defaultProperties]::defaultProperties;

  return v3;
}

- (OADPatternFill)initWithDefaults
{
  v8.receiver = self;
  v8.super_class = OADPatternFill;
  v2 = [(OADProperties *)&v8 initWithDefaults];
  if (v2)
  {
    v3 = +[OADPresetPattern defaultProperties];
    v4 = [v3 copy];
    [(OADPatternFill *)v2 setPattern:v4];

    v5 = +[OADRgbColor black];
    [(OADPatternFill *)v2 setFgColor:v5];

    v6 = +[OADRgbColor white];
    [(OADPatternFill *)v2 setBgColor:v6];
  }

  return v2;
}

- (unint64_t)hash
{
  v3 = *&self->super.mDefinedByStyle;
  if (v3)
  {
    v4 = [v3 hash];
  }

  else
  {
    v4 = 0;
  }

  mFgColor = self->mFgColor;
  if (mFgColor)
  {
    v4 ^= [(OADColor *)mFgColor hash];
  }

  mBgColor = self->mBgColor;
  if (mBgColor)
  {
    v4 ^= [(OADColor *)mBgColor hash];
  }

  v8.receiver = self;
  v8.super_class = OADPatternFill;
  return [(OADFill *)&v8 hash]^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = *&self->super.mDefinedByStyle;
  if (v6)
  {
    v7 = [v6 copyWithZone:a3];
    [v5 setFgColor:v7];
  }

  mFgColor = self->mFgColor;
  if (mFgColor)
  {
    v9 = [(OADColor *)mFgColor copyWithZone:a3];
    [v5 setBgColor:v9];
  }

  mBgColor = self->mBgColor;
  if (mBgColor)
  {
    v11 = [(OADColor *)mBgColor copyWithZone:a3];
    [v5 setPattern:v11];
  }

  return v5;
}

void __35__OADPatternFill_defaultProperties__block_invoke()
{
  v0 = [[OADPatternFill alloc] initWithDefaults];
  v1 = +[OADPatternFill defaultProperties]::defaultProperties;
  +[OADPatternFill defaultProperties]::defaultProperties = v0;
}

- (void)setParent:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = OADPatternFill;
  [(OADProperties *)&v6 setParent:v4];
  if (self->mBgColor)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 pattern];
      if ([v5 isMemberOfClass:objc_opt_class()])
      {
        [(OADColor *)self->mBgColor setParent:v5];
      }
    }
  }
}

- (BOOL)isAnythingOverridden
{
  v4.receiver = self;
  v4.super_class = OADPatternFill;
  return [(OADProperties *)&v4 isAnythingOverridden]|| [(OADPatternFill *)self isFgColorOverridden]|| [(OADPatternFill *)self isBgColorOverridden]|| [(OADPatternFill *)self isPatternOverridden];
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = OADPatternFill;
  [(OADProperties *)&v27 fixPropertiesForChangingParentPreservingEffectiveValues:v4];
  if ([(OADPatternFill *)self isFgColorOverridden]|| ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != v4))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_isFgColorOverridden];

    if (v6)
    {
      v7 = [(OADPatternFill *)self fgColor];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v4 possiblyInexistentOverrideForSelector:sel_isFgColorOverridden];

    if (v8)
    {
      v9 = [v4 fgColor];
    }

    else
    {
      v9 = 0;
    }

    v10 = TCObjectEqual(v7, v9);
    v11 = *&self->super.mDefinedByStyle;
    if (v10)
    {
      *&self->super.mDefinedByStyle = 0;
    }

    else if (!v11 && v6)
    {
      [(OADPatternFill *)self setFgColor:v7];
    }
  }

  if ([(OADPatternFill *)self isBgColorOverridden]|| ([(OADProperties *)self parent], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 != v4))
  {
    v13 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_isBgColorOverridden];

    if (v13)
    {
      v14 = [(OADPatternFill *)self bgColor];
    }

    else
    {
      v14 = 0;
    }

    v15 = [v4 possiblyInexistentOverrideForSelector:sel_isBgColorOverridden];

    if (v15)
    {
      v16 = [v4 bgColor];
    }

    else
    {
      v16 = 0;
    }

    v17 = TCObjectEqual(v14, v16);
    mFgColor = self->mFgColor;
    if (v17)
    {
      self->mFgColor = 0;
    }

    else if (!mFgColor && v13)
    {
      [(OADPatternFill *)self setBgColor:v14];
    }
  }

  if (self->mBgColor || ([(OADProperties *)self parent], v19 = objc_claimAutoreleasedReturnValue(), v19, v19 != v4))
  {
    v20 = [(OADPatternFill *)self pattern];
    v21 = objc_alloc_init(objc_opt_class());

    v22 = [(OADPatternFill *)self pattern];
    [v21 setParent:v22];

    objc_storeStrong(&self->mBgColor, v21);
    v23 = [v4 possiblyInexistentOverrideForSelector:sel_isPatternOverridden];

    if (v23)
    {
      v23 = [v4 pattern];
    }

    mBgColor = self->mBgColor;
    if (mBgColor != v23)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v26 = [objc_opt_class() defaultProperties];

        v23 = v26;
      }

      [(OADColor *)self->mBgColor changeParentPreservingEffectiveValues:v23];
      if ((isKindOfClass & 1) == 0 || ([(OADColor *)self->mBgColor isAnythingOverridden]& 1) != 0)
      {
        goto LABEL_40;
      }

      mBgColor = self->mBgColor;
    }

    self->mBgColor = 0;

LABEL_40:
  }
}

- (void)removeUnnecessaryOverrides
{
  v3 = [(OADProperties *)self parent];

  if (v3)
  {
    v4 = [(OADProperties *)self isMerged];
    v5 = [(OADProperties *)self isMergedWithParent];
    [(OADProperties *)self setMerged:0];
    [(OADProperties *)self setMergedWithParent:0];
    if (![(OADPatternFill *)self isFgColorOverridden])
    {
      goto LABEL_10;
    }

    v6 = [(OADProperties *)self parent];
    v7 = [(OADPatternFill *)self fgColor];
    v8 = [v6 fgColor];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)v7 removeUnnecessaryOverrides];
      v9 = objc_opt_class();
      if (v9 != objc_opt_class())
      {
        goto LABEL_9;
      }

      v10 = [(objc_object *)v7 isMergedWithParent];
      [(objc_object *)v7 setMergedWithParent:0];
      v11 = [(objc_object *)v7 isAnythingOverridden];
      [(objc_object *)v7 setMergedWithParent:v10];
      if (v11)
      {
        goto LABEL_9;
      }
    }

    else if (!TCObjectEqual(v7, v8))
    {
LABEL_9:

LABEL_10:
      if (![(OADPatternFill *)self isBgColorOverridden])
      {
        goto LABEL_18;
      }

      v13 = [(OADProperties *)self parent];
      v14 = [(OADPatternFill *)self bgColor];
      v15 = [v13 bgColor];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(objc_object *)v14 removeUnnecessaryOverrides];
        v16 = objc_opt_class();
        if (v16 != objc_opt_class())
        {
          goto LABEL_17;
        }

        v17 = [(objc_object *)v14 isMergedWithParent];
        [(objc_object *)v14 setMergedWithParent:0];
        v18 = [(objc_object *)v14 isAnythingOverridden];
        [(objc_object *)v14 setMergedWithParent:v17];
        if (v18)
        {
          goto LABEL_17;
        }
      }

      else if (!TCObjectEqual(v14, v15))
      {
LABEL_17:

LABEL_18:
        if (![(OADPatternFill *)self isPatternOverridden])
        {
LABEL_26:
          [(OADProperties *)self setMerged:v4];
          [(OADProperties *)self setMergedWithParent:v5];
          v27.receiver = self;
          v27.super_class = OADPatternFill;
          [(OADProperties *)&v27 removeUnnecessaryOverrides];
          return;
        }

        v20 = [(OADProperties *)self parent];
        v21 = [(OADPatternFill *)self pattern];
        v22 = [v20 pattern];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(objc_object *)v21 removeUnnecessaryOverrides];
          v23 = objc_opt_class();
          if (v23 != objc_opt_class())
          {
            goto LABEL_25;
          }

          v24 = [(objc_object *)v21 isMergedWithParent];
          [(objc_object *)v21 setMergedWithParent:0];
          v25 = [(objc_object *)v21 isAnythingOverridden];
          [(objc_object *)v21 setMergedWithParent:v24];
          if (v25)
          {
            goto LABEL_25;
          }
        }

        else if (!TCObjectEqual(v21, v22))
        {
LABEL_25:

          goto LABEL_26;
        }

        mBgColor = self->mBgColor;
        self->mBgColor = 0;

        goto LABEL_25;
      }

      mFgColor = self->mFgColor;
      self->mFgColor = 0;

      goto LABEL_17;
    }

    v12 = *&self->super.mDefinedByStyle;
    *&self->super.mDefinedByStyle = 0;

    goto LABEL_9;
  }
}

- (id)fgColor
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isFgColorOverridden];
  v3 = v2[3];
  v4 = v3;

  return v3;
}

- (id)bgColor
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isBgColorOverridden];
  v3 = v2[4];
  v4 = v3;

  return v3;
}

- (id)pattern
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isPatternOverridden];
  v3 = v2[5];
  v4 = v3;

  return v3;
}

- (void)setStyleColor:(id)a3
{
  v6 = a3;
  v4 = [*&self->super.mDefinedByStyle colorForStyleColor:?];
  [(OADPatternFill *)self setFgColor:v4];

  v5 = [(OADColor *)self->mFgColor colorForStyleColor:v6];
  [(OADPatternFill *)self setBgColor:v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = OADPatternFill;
  if ([(OADFill *)&v8 isEqual:v4])
  {
    v5 = v4;
    if (TCObjectEqual(*&self->super.mDefinedByStyle, v5[3]) && TCObjectEqual(self->mFgColor, v5[4]))
    {
      v6 = TCObjectEqual(self->mBgColor, v5[5]);
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

- (id)namedImageDataWithBlipCollection:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [OADPresetPattern namedBitmapDataForPresetPatternType:[(OADColor *)self->mBgColor type]];
    goto LABEL_13;
  }

  v5 = [(OADColor *)self->mBgColor blipRef];
  v6 = [v5 blip];
  if (!v6)
  {
    v6 = [v4 blipAtIndex:{objc_msgSend(v5, "index")}];
  }

  v7 = [v6 mainSubBlip];
  if (([v7 isLoaded] & 1) == 0)
  {
    [v7 load];
  }

  v8 = [v7 data];
  v9 = [v5 name];
  if (![(__CFString *)v9 length])
  {

    v9 = @"pattern";
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_8:
  v10 = +[OADBlip pathExtensionForBlipType:](OADBlip, "pathExtensionForBlipType:", [v7 type]);
  v11 = [(__CFString *)v9 stringByAppendingPathExtension:v10];

  v12 = [TCNamedData namedDataWithData:v8 named:v11];

  v9 = v11;
LABEL_12:

LABEL_13:

  return v12;
}

@end