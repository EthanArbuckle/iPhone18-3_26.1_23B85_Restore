@interface OADSolidFill
+ (id)blackFill;
+ (id)defaultProperties;
+ (id)whiteFill;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)equal;
- (BOOL)usesPlaceholderColor;
- (OADSolidFill)initWithDefaults;
- (id)color;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values;
- (void)removeUnnecessaryOverrides;
- (void)setStyleColor:(id)color;
@end

@implementation OADSolidFill

+ (id)defaultProperties
{
  if (+[OADSolidFill defaultProperties]::once != -1)
  {
    +[OADSolidFill defaultProperties];
  }

  v3 = +[OADSolidFill defaultProperties]::defaultProperties;

  return v3;
}

- (OADSolidFill)initWithDefaults
{
  v5.receiver = self;
  v5.super_class = OADSolidFill;
  initWithDefaults = [(OADProperties *)&v5 initWithDefaults];
  if (initWithDefaults)
  {
    v3 = +[OADRgbColor black];
    [(OADSolidFill *)initWithDefaults setColor:v3];
  }

  return initWithDefaults;
}

- (id)color
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isColorOverridden];
  v3 = v2[3];
  v4 = v3;

  return v3;
}

- (unint64_t)hash
{
  if (LOBYTE(self->mColor) == 1)
  {
    v3 = [*&self->super.mDefinedByStyle hash];
  }

  else
  {
    v3 = 0;
  }

  v5.receiver = self;
  v5.super_class = OADSolidFill;
  return [(OADFill *)&v5 hash]^ v3;
}

+ (id)blackFill
{
  v2 = objc_alloc_init(OADSolidFill);
  v3 = +[OADRgbColor black];
  [(OADSolidFill *)v2 setColor:v3];

  return v2;
}

+ (id)whiteFill
{
  v2 = objc_alloc_init(OADSolidFill);
  v3 = +[OADRgbColor white];
  [(OADSolidFill *)v2 setColor:v3];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (LOBYTE(self->mColor) == 1)
  {
    v6 = [*&self->super.mDefinedByStyle copyWithZone:zone];
    [v5 setColor:v6];
  }

  return v5;
}

void __33__OADSolidFill_defaultProperties__block_invoke()
{
  v0 = [[OADSolidFill alloc] initWithDefaults];
  v1 = +[OADSolidFill defaultProperties]::defaultProperties;
  +[OADSolidFill defaultProperties]::defaultProperties = v0;
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  v11.receiver = self;
  v11.super_class = OADSolidFill;
  [(OADProperties *)&v11 fixPropertiesForChangingParentPreservingEffectiveValues:valuesCopy];
  if ((self->mColor & 1) != 0 || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != valuesCopy))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_isColorOverridden];

    if (v6)
    {
      color = [(OADSolidFill *)self color];
    }

    else
    {
      color = 0;
    }

    v8 = [valuesCopy possiblyInexistentOverrideForSelector:sel_isColorOverridden];

    if (v8)
    {
      color2 = [valuesCopy color];
    }

    else
    {
      color2 = 0;
    }

    if (TCObjectEqual(color, color2))
    {
      v10 = *&self->super.mDefinedByStyle;
      *&self->super.mDefinedByStyle = 0;

      LOBYTE(self->mColor) = 0;
    }

    else if ((self->mColor & 1) == 0 && v6)
    {
      [(OADSolidFill *)self setColor:color];
    }
  }
}

- (void)setStyleColor:(id)color
{
  v4 = [*&self->super.mDefinedByStyle colorForStyleColor:color];
  [(OADSolidFill *)self setColor:?];
}

- (BOOL)usesPlaceholderColor
{
  color = [(OADSolidFill *)self color];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = OADSolidFill;
  if ([(OADFill *)&v8 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (LOBYTE(self->mColor) == *(v5 + 32))
    {
      if (LOBYTE(self->mColor))
      {
        v6 = [*&self->super.mDefinedByStyle isEqual:v5[3]];
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

- (BOOL)isAnythingOverridden
{
  v4.receiver = self;
  v4.super_class = OADSolidFill;
  return [(OADProperties *)&v4 isAnythingOverridden]|| [(OADSolidFill *)self isColorOverridden];
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
    if (![(OADSolidFill *)self isColorOverridden])
    {
LABEL_10:
      [(OADProperties *)self setMerged:isMerged];
      [(OADProperties *)self setMergedWithParent:isMergedWithParent];
      v13.receiver = self;
      v13.super_class = OADSolidFill;
      [(OADProperties *)&v13 removeUnnecessaryOverrides];
      return;
    }

    parent2 = [(OADProperties *)self parent];
    color = [(OADSolidFill *)self color];
    color2 = [parent2 color];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)color removeUnnecessaryOverrides];
      v9 = objc_opt_class();
      if (v9 != objc_opt_class())
      {
        goto LABEL_9;
      }

      isMergedWithParent2 = [(objc_object *)color isMergedWithParent];
      [(objc_object *)color setMergedWithParent:0];
      isAnythingOverridden = [(objc_object *)color isAnythingOverridden];
      [(objc_object *)color setMergedWithParent:isMergedWithParent2];
      if (isAnythingOverridden)
      {
        goto LABEL_9;
      }
    }

    else if (!TCObjectEqual(color, color2))
    {
LABEL_9:

      goto LABEL_10;
    }

    v12 = *&self->super.mDefinedByStyle;
    *&self->super.mDefinedByStyle = 0;

    LOBYTE(self->mColor) = 0;
    goto LABEL_9;
  }
}

@end