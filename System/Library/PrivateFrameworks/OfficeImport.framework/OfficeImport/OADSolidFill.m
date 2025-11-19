@interface OADSolidFill
+ (id)blackFill;
+ (id)defaultProperties;
+ (id)whiteFill;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)a3;
- (BOOL)usesPlaceholderColor;
- (OADSolidFill)initWithDefaults;
- (id)color;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3;
- (void)removeUnnecessaryOverrides;
- (void)setStyleColor:(id)a3;
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
  v2 = [(OADProperties *)&v5 initWithDefaults];
  if (v2)
  {
    v3 = +[OADRgbColor black];
    [(OADSolidFill *)v2 setColor:v3];
  }

  return v2;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (LOBYTE(self->mColor) == 1)
  {
    v6 = [*&self->super.mDefinedByStyle copyWithZone:a3];
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

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = OADSolidFill;
  [(OADProperties *)&v11 fixPropertiesForChangingParentPreservingEffectiveValues:v4];
  if ((self->mColor & 1) != 0 || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != v4))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_isColorOverridden];

    if (v6)
    {
      v7 = [(OADSolidFill *)self color];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v4 possiblyInexistentOverrideForSelector:sel_isColorOverridden];

    if (v8)
    {
      v9 = [v4 color];
    }

    else
    {
      v9 = 0;
    }

    if (TCObjectEqual(v7, v9))
    {
      v10 = *&self->super.mDefinedByStyle;
      *&self->super.mDefinedByStyle = 0;

      LOBYTE(self->mColor) = 0;
    }

    else if ((self->mColor & 1) == 0 && v6)
    {
      [(OADSolidFill *)self setColor:v7];
    }
  }
}

- (void)setStyleColor:(id)a3
{
  v4 = [*&self->super.mDefinedByStyle colorForStyleColor:a3];
  [(OADSolidFill *)self setColor:?];
}

- (BOOL)usesPlaceholderColor
{
  v2 = [(OADSolidFill *)self color];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = OADSolidFill;
  if ([(OADFill *)&v8 isEqual:v4])
  {
    v5 = v4;
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
  v3 = [(OADProperties *)self parent];

  if (v3)
  {
    v4 = [(OADProperties *)self isMerged];
    v5 = [(OADProperties *)self isMergedWithParent];
    [(OADProperties *)self setMerged:0];
    [(OADProperties *)self setMergedWithParent:0];
    if (![(OADSolidFill *)self isColorOverridden])
    {
LABEL_10:
      [(OADProperties *)self setMerged:v4];
      [(OADProperties *)self setMergedWithParent:v5];
      v13.receiver = self;
      v13.super_class = OADSolidFill;
      [(OADProperties *)&v13 removeUnnecessaryOverrides];
      return;
    }

    v6 = [(OADProperties *)self parent];
    v7 = [(OADSolidFill *)self color];
    v8 = [v6 color];
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

      goto LABEL_10;
    }

    v12 = *&self->super.mDefinedByStyle;
    *&self->super.mDefinedByStyle = 0;

    LOBYTE(self->mColor) = 0;
    goto LABEL_9;
  }
}

@end