@interface OADCustomDash
+ (id)defaultProperties;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)a3;
- (OADCustomDash)initWithDefaults;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stops;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3;
- (void)setStops:(id)a3;
@end

@implementation OADCustomDash

+ (id)defaultProperties
{
  if (+[OADCustomDash defaultProperties]::once != -1)
  {
    +[OADCustomDash defaultProperties];
  }

  v3 = +[OADCustomDash defaultProperties]::defaultProperties;

  return v3;
}

- (OADCustomDash)initWithDefaults
{
  v5.receiver = self;
  v5.super_class = OADCustomDash;
  v2 = [(OADProperties *)&v5 initWithDefaults];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA60] array];
    [(OADCustomDash *)v2 setStops:v3];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setStops:self->mStops];
  return v4;
}

void __34__OADCustomDash_defaultProperties__block_invoke()
{
  v0 = [[OADCustomDash alloc] initWithDefaults];
  v1 = +[OADCustomDash defaultProperties]::defaultProperties;
  +[OADCustomDash defaultProperties]::defaultProperties = v0;
}

- (BOOL)isAnythingOverridden
{
  v4.receiver = self;
  v4.super_class = OADCustomDash;
  return [(OADProperties *)&v4 isAnythingOverridden]|| [(OADCustomDash *)self areStopsOverridden];
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = OADCustomDash;
  [(OADProperties *)&v12 fixPropertiesForChangingParentPreservingEffectiveValues:v4];
  if ([(OADCustomDash *)self areStopsOverridden]|| ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != v4))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_areStopsOverridden];

    if (v6)
    {
      v7 = [(OADCustomDash *)self stops];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v4 possiblyInexistentOverrideForSelector:sel_areStopsOverridden];

    if (v8)
    {
      v9 = [v4 stops];
    }

    else
    {
      v9 = 0;
    }

    v10 = TCObjectEqual(v7, v9);
    mStops = self->mStops;
    if (v10)
    {
      self->mStops = 0;
    }

    else if (!mStops && v6)
    {
      [(OADCustomDash *)self setStops:v7];
    }
  }
}

- (id)stops
{
  v2 = [(OADProperties *)self overrideForSelector:sel_areStopsOverridden];
  v3 = v2[3];
  v4 = v3;

  return v3;
}

- (void)setStops:(id)a3
{
  v4 = [a3 copy];
  mStops = self->mStops;
  self->mStops = v4;
}

- (unint64_t)hash
{
  result = self->mStops;
  if (result)
  {
    return [result count];
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = OADCustomDash;
  if ([(OADDash *)&v7 isEqual:v4])
  {
    v5 = TCObjectEqual(self->mStops, v4[3]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end