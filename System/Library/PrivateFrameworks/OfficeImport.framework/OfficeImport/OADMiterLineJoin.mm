@interface OADMiterLineJoin
+ (id)defaultProperties;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)equal;
- (OADMiterLineJoin)initWithDefaults;
- (float)limit;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values;
- (void)removeUnnecessaryOverrides;
@end

@implementation OADMiterLineJoin

+ (id)defaultProperties
{
  if (+[OADMiterLineJoin defaultProperties]::once != -1)
  {
    +[OADMiterLineJoin defaultProperties];
  }

  v3 = +[OADMiterLineJoin defaultProperties]::defaultProperties;

  return v3;
}

- (OADMiterLineJoin)initWithDefaults
{
  v6.receiver = self;
  v6.super_class = OADMiterLineJoin;
  initWithDefaults = [(OADProperties *)&v6 initWithDefaults];
  v4 = initWithDefaults;
  if (initWithDefaults)
  {
    LODWORD(v3) = 8.0;
    [(OADMiterLineJoin *)initWithDefaults setLimit:v3];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v4;
  if (LOBYTE(self->mLimit))
  {
    LODWORD(v5) = *(&self->super.super + 5);
    [v4 setLimit:v5];
  }

  return v6;
}

void __37__OADMiterLineJoin_defaultProperties__block_invoke()
{
  v0 = [[OADMiterLineJoin alloc] initWithDefaults];
  v1 = +[OADMiterLineJoin defaultProperties]::defaultProperties;
  +[OADMiterLineJoin defaultProperties]::defaultProperties = v0;
}

- (BOOL)isAnythingOverridden
{
  v4.receiver = self;
  v4.super_class = OADMiterLineJoin;
  return [(OADProperties *)&v4 isAnythingOverridden]|| [(OADMiterLineJoin *)self isLimitOverridden];
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  v9.receiver = self;
  v9.super_class = OADMiterLineJoin;
  [(OADProperties *)&v9 fixPropertiesForChangingParentPreservingEffectiveValues:valuesCopy];
  if ((LOBYTE(self->mLimit) & 1) != 0 || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != valuesCopy))
  {
    [(OADMiterLineJoin *)self limit];
    v7 = v6;
    [valuesCopy limit];
    if (v7 == v8)
    {
      LOBYTE(self->mLimit) &= ~1u;
    }

    else if ((LOBYTE(self->mLimit) & 1) == 0)
    {
      [(OADMiterLineJoin *)self limit];
      [(OADMiterLineJoin *)self setLimit:?];
    }
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
    if ([(OADMiterLineJoin *)self isLimitOverridden])
    {
      parent2 = [(OADProperties *)self parent];
      [(OADMiterLineJoin *)self limit];
      v8 = v7;
      [parent2 limit];
      if (v8 == *&v9)
      {
        LODWORD(v9) = 8.0;
        [(OADMiterLineJoin *)self setLimit:v9];
        LOBYTE(self->mLimit) &= ~1u;
      }
    }

    [(OADProperties *)self setMerged:isMerged];
    [(OADProperties *)self setMergedWithParent:isMergedWithParent];
    v10.receiver = self;
    v10.super_class = OADMiterLineJoin;
    [(OADProperties *)&v10 removeUnnecessaryOverrides];
  }
}

- (float)limit
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isLimitOverridden];
  v3 = v2[5];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    mLimit_low = LOBYTE(self->mLimit);
    if ((*(v7 + 24) ^ mLimit_low))
    {
      v6 = *(v7 + 24) ^ mLimit_low ^ 1;
    }

    else
    {
      v6 = (LOBYTE(self->mLimit) & 1) == 0 || *(&self->super.super + 5) == v7[5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (unint64_t)hash
{
  v2 = *(&self->super.super + 5);
  v4.receiver = self;
  v4.super_class = OADMiterLineJoin;
  return ([(OADProperties *)&v4 hash]+ 256 * v2) ^ LOBYTE(self->mLimit) & 1;
}

@end