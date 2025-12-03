@interface OADPatternFill
+ (id)defaultProperties;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)equal;
- (OADPatternFill)initWithDefaults;
- (id)bgColor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fgColor;
- (id)namedImageDataWithBlipCollection:(id)collection;
- (id)pattern;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values;
- (void)removeUnnecessaryOverrides;
- (void)setParent:(id)parent;
- (void)setStyleColor:(id)color;
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
  initWithDefaults = [(OADProperties *)&v8 initWithDefaults];
  if (initWithDefaults)
  {
    v3 = +[OADPresetPattern defaultProperties];
    v4 = [v3 copy];
    [(OADPatternFill *)initWithDefaults setPattern:v4];

    v5 = +[OADRgbColor black];
    [(OADPatternFill *)initWithDefaults setFgColor:v5];

    v6 = +[OADRgbColor white];
    [(OADPatternFill *)initWithDefaults setBgColor:v6];
  }

  return initWithDefaults;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = *&self->super.mDefinedByStyle;
  if (v6)
  {
    v7 = [v6 copyWithZone:zone];
    [v5 setFgColor:v7];
  }

  mFgColor = self->mFgColor;
  if (mFgColor)
  {
    v9 = [(OADColor *)mFgColor copyWithZone:zone];
    [v5 setBgColor:v9];
  }

  mBgColor = self->mBgColor;
  if (mBgColor)
  {
    v11 = [(OADColor *)mBgColor copyWithZone:zone];
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

- (void)setParent:(id)parent
{
  parentCopy = parent;
  v6.receiver = self;
  v6.super_class = OADPatternFill;
  [(OADProperties *)&v6 setParent:parentCopy];
  if (self->mBgColor)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      pattern = [parentCopy pattern];
      if ([pattern isMemberOfClass:objc_opt_class()])
      {
        [(OADColor *)self->mBgColor setParent:pattern];
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

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  v27.receiver = self;
  v27.super_class = OADPatternFill;
  [(OADProperties *)&v27 fixPropertiesForChangingParentPreservingEffectiveValues:valuesCopy];
  if ([(OADPatternFill *)self isFgColorOverridden]|| ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != valuesCopy))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_isFgColorOverridden];

    if (v6)
    {
      fgColor = [(OADPatternFill *)self fgColor];
    }

    else
    {
      fgColor = 0;
    }

    v8 = [valuesCopy possiblyInexistentOverrideForSelector:sel_isFgColorOverridden];

    if (v8)
    {
      fgColor2 = [valuesCopy fgColor];
    }

    else
    {
      fgColor2 = 0;
    }

    v10 = TCObjectEqual(fgColor, fgColor2);
    v11 = *&self->super.mDefinedByStyle;
    if (v10)
    {
      *&self->super.mDefinedByStyle = 0;
    }

    else if (!v11 && v6)
    {
      [(OADPatternFill *)self setFgColor:fgColor];
    }
  }

  if ([(OADPatternFill *)self isBgColorOverridden]|| ([(OADProperties *)self parent], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 != valuesCopy))
  {
    v13 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_isBgColorOverridden];

    if (v13)
    {
      bgColor = [(OADPatternFill *)self bgColor];
    }

    else
    {
      bgColor = 0;
    }

    v15 = [valuesCopy possiblyInexistentOverrideForSelector:sel_isBgColorOverridden];

    if (v15)
    {
      bgColor2 = [valuesCopy bgColor];
    }

    else
    {
      bgColor2 = 0;
    }

    v17 = TCObjectEqual(bgColor, bgColor2);
    mFgColor = self->mFgColor;
    if (v17)
    {
      self->mFgColor = 0;
    }

    else if (!mFgColor && v13)
    {
      [(OADPatternFill *)self setBgColor:bgColor];
    }
  }

  if (self->mBgColor || ([(OADProperties *)self parent], v19 = objc_claimAutoreleasedReturnValue(), v19, v19 != valuesCopy))
  {
    pattern = [(OADPatternFill *)self pattern];
    v21 = objc_alloc_init(objc_opt_class());

    pattern2 = [(OADPatternFill *)self pattern];
    [v21 setParent:pattern2];

    objc_storeStrong(&self->mBgColor, v21);
    pattern3 = [valuesCopy possiblyInexistentOverrideForSelector:sel_isPatternOverridden];

    if (pattern3)
    {
      pattern3 = [valuesCopy pattern];
    }

    mBgColor = self->mBgColor;
    if (mBgColor != pattern3)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        defaultProperties = [objc_opt_class() defaultProperties];

        pattern3 = defaultProperties;
      }

      [(OADColor *)self->mBgColor changeParentPreservingEffectiveValues:pattern3];
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
  parent = [(OADProperties *)self parent];

  if (parent)
  {
    isMerged = [(OADProperties *)self isMerged];
    isMergedWithParent = [(OADProperties *)self isMergedWithParent];
    [(OADProperties *)self setMerged:0];
    [(OADProperties *)self setMergedWithParent:0];
    if (![(OADPatternFill *)self isFgColorOverridden])
    {
      goto LABEL_10;
    }

    parent2 = [(OADProperties *)self parent];
    fgColor = [(OADPatternFill *)self fgColor];
    fgColor2 = [parent2 fgColor];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)fgColor removeUnnecessaryOverrides];
      v9 = objc_opt_class();
      if (v9 != objc_opt_class())
      {
        goto LABEL_9;
      }

      isMergedWithParent2 = [(objc_object *)fgColor isMergedWithParent];
      [(objc_object *)fgColor setMergedWithParent:0];
      isAnythingOverridden = [(objc_object *)fgColor isAnythingOverridden];
      [(objc_object *)fgColor setMergedWithParent:isMergedWithParent2];
      if (isAnythingOverridden)
      {
        goto LABEL_9;
      }
    }

    else if (!TCObjectEqual(fgColor, fgColor2))
    {
LABEL_9:

LABEL_10:
      if (![(OADPatternFill *)self isBgColorOverridden])
      {
        goto LABEL_18;
      }

      parent3 = [(OADProperties *)self parent];
      bgColor = [(OADPatternFill *)self bgColor];
      bgColor2 = [parent3 bgColor];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(objc_object *)bgColor removeUnnecessaryOverrides];
        v16 = objc_opt_class();
        if (v16 != objc_opt_class())
        {
          goto LABEL_17;
        }

        isMergedWithParent3 = [(objc_object *)bgColor isMergedWithParent];
        [(objc_object *)bgColor setMergedWithParent:0];
        isAnythingOverridden2 = [(objc_object *)bgColor isAnythingOverridden];
        [(objc_object *)bgColor setMergedWithParent:isMergedWithParent3];
        if (isAnythingOverridden2)
        {
          goto LABEL_17;
        }
      }

      else if (!TCObjectEqual(bgColor, bgColor2))
      {
LABEL_17:

LABEL_18:
        if (![(OADPatternFill *)self isPatternOverridden])
        {
LABEL_26:
          [(OADProperties *)self setMerged:isMerged];
          [(OADProperties *)self setMergedWithParent:isMergedWithParent];
          v27.receiver = self;
          v27.super_class = OADPatternFill;
          [(OADProperties *)&v27 removeUnnecessaryOverrides];
          return;
        }

        parent4 = [(OADProperties *)self parent];
        pattern = [(OADPatternFill *)self pattern];
        pattern2 = [parent4 pattern];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(objc_object *)pattern removeUnnecessaryOverrides];
          v23 = objc_opt_class();
          if (v23 != objc_opt_class())
          {
            goto LABEL_25;
          }

          isMergedWithParent4 = [(objc_object *)pattern isMergedWithParent];
          [(objc_object *)pattern setMergedWithParent:0];
          isAnythingOverridden3 = [(objc_object *)pattern isAnythingOverridden];
          [(objc_object *)pattern setMergedWithParent:isMergedWithParent4];
          if (isAnythingOverridden3)
          {
            goto LABEL_25;
          }
        }

        else if (!TCObjectEqual(pattern, pattern2))
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

- (void)setStyleColor:(id)color
{
  colorCopy = color;
  v4 = [*&self->super.mDefinedByStyle colorForStyleColor:?];
  [(OADPatternFill *)self setFgColor:v4];

  v5 = [(OADColor *)self->mFgColor colorForStyleColor:colorCopy];
  [(OADPatternFill *)self setBgColor:v5];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = OADPatternFill;
  if ([(OADFill *)&v8 isEqual:equalCopy])
  {
    v5 = equalCopy;
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

- (id)namedImageDataWithBlipCollection:(id)collection
{
  collectionCopy = collection;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [OADPresetPattern namedBitmapDataForPresetPatternType:[(OADColor *)self->mBgColor type]];
    goto LABEL_13;
  }

  blipRef = [(OADColor *)self->mBgColor blipRef];
  blip = [blipRef blip];
  if (!blip)
  {
    blip = [collectionCopy blipAtIndex:{objc_msgSend(blipRef, "index")}];
  }

  mainSubBlip = [blip mainSubBlip];
  if (([mainSubBlip isLoaded] & 1) == 0)
  {
    [mainSubBlip load];
  }

  data = [mainSubBlip data];
  name = [blipRef name];
  if (![(__CFString *)name length])
  {

    name = @"pattern";
    if (mainSubBlip)
    {
      goto LABEL_8;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  if (!mainSubBlip)
  {
    goto LABEL_11;
  }

LABEL_8:
  v10 = +[OADBlip pathExtensionForBlipType:](OADBlip, "pathExtensionForBlipType:", [mainSubBlip type]);
  v11 = [(__CFString *)name stringByAppendingPathExtension:v10];

  v12 = [TCNamedData namedDataWithData:data named:v11];

  name = v11;
LABEL_12:

LABEL_13:

  return v12;
}

@end