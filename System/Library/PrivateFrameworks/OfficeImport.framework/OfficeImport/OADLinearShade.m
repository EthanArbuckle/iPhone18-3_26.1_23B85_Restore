@interface OADLinearShade
+ (id)defaultProperties;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)a3;
- (BOOL)scaled;
- (OADLinearShade)initWithDefaults;
- (float)angle;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3;
- (void)removeUnnecessaryOverrides;
@end

@implementation OADLinearShade

+ (id)defaultProperties
{
  if (+[OADLinearShade defaultProperties]::once != -1)
  {
    +[OADLinearShade defaultProperties];
  }

  v3 = +[OADLinearShade defaultProperties]::defaultProperties;

  return v3;
}

- (OADLinearShade)initWithDefaults
{
  v5.receiver = self;
  v5.super_class = OADLinearShade;
  v2 = [(OADProperties *)&v5 initWithDefaults];
  v3 = v2;
  if (v2)
  {
    [(OADLinearShade *)v2 setAngle:0.0];
    [(OADLinearShade *)v3 setScaled:0];
  }

  return v3;
}

- (unint64_t)hash
{
  if (LOBYTE(self->mAngle) == 1)
  {
    v2 = *(&self->super.super + 5);
  }

  else
  {
    v2 = 0;
  }

  if (BYTE2(self->mAngle) == 1)
  {
    v2 ^= BYTE1(self->mAngle);
  }

  return v2;
}

- (float)angle
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isAngleOverridden];
  v3 = v2[5];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v4;
  if (LOBYTE(self->mAngle) == 1)
  {
    LODWORD(v5) = *(&self->super.super + 5);
    [v4 setAngle:v5];
  }

  if (BYTE2(self->mAngle) == 1)
  {
    [v6 setScaled:BYTE1(self->mAngle)];
  }

  return v6;
}

void __35__OADLinearShade_defaultProperties__block_invoke()
{
  v0 = [[OADLinearShade alloc] initWithDefaults];
  v1 = +[OADLinearShade defaultProperties]::defaultProperties;
  +[OADLinearShade defaultProperties]::defaultProperties = v0;
}

- (BOOL)isAnythingOverridden
{
  v4.receiver = self;
  v4.super_class = OADLinearShade;
  return [(OADProperties *)&v4 isAnythingOverridden]|| [(OADLinearShade *)self isAngleOverridden]|| [(OADLinearShade *)self isScaledOverridden];
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = OADLinearShade;
  [(OADProperties *)&v11 fixPropertiesForChangingParentPreservingEffectiveValues:v4];
  if ((LOBYTE(self->mAngle) & 1) != 0 || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != v4))
  {
    [(OADLinearShade *)self angle];
    v7 = v6;
    [v4 angle];
    if (v7 == v8)
    {
      LOBYTE(self->mAngle) = 0;
    }

    else if ((LOBYTE(self->mAngle) & 1) == 0)
    {
      [(OADLinearShade *)self angle];
      [(OADLinearShade *)self setAngle:?];
    }
  }

  if ((BYTE2(self->mAngle) & 1) != 0 || ([(OADProperties *)self parent], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 != v4))
  {
    v10 = [(OADLinearShade *)self scaled];
    if (v10 == [v4 scaled])
    {
      BYTE2(self->mAngle) = 0;
    }

    else if ((BYTE2(self->mAngle) & 1) == 0)
    {
      [(OADLinearShade *)self setScaled:[(OADLinearShade *)self scaled]];
    }
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
    if ([(OADLinearShade *)self isAngleOverridden])
    {
      v6 = [(OADProperties *)self parent];
      [(OADLinearShade *)self angle];
      v8 = v7;
      [v6 angle];
      if (v8 == v9)
      {
        [(OADLinearShade *)self setAngle:0.0];
        LOBYTE(self->mAngle) = 0;
      }
    }

    if ([(OADLinearShade *)self isScaledOverridden])
    {
      v10 = [(OADProperties *)self parent];
      v11 = [(OADLinearShade *)self scaled];
      if (v11 == [v10 scaled])
      {
        [(OADLinearShade *)self setScaled:0];
        BYTE2(self->mAngle) = 0;
      }
    }

    [(OADProperties *)self setMerged:v4];
    [(OADProperties *)self setMergedWithParent:v5];
    v12.receiver = self;
    v12.super_class = OADLinearShade;
    [(OADProperties *)&v12 removeUnnecessaryOverrides];
  }
}

- (BOOL)scaled
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isScaledOverridden];
  v3 = v2[25];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = OADLinearShade;
  if ([(OADShade *)&v8 isEqual:v4])
  {
    v5 = v4;
    if (LOBYTE(self->mAngle) == *(v5 + 24) && (!LOBYTE(self->mAngle) || *(&self->super.super + 5) == v5[5]) && BYTE2(self->mAngle) == *(v5 + 26))
    {
      if (BYTE2(self->mAngle))
      {
        v6 = BYTE1(self->mAngle) == *(v5 + 25);
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

@end