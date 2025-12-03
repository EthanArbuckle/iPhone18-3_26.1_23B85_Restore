@interface OADCustomDash
+ (id)defaultProperties;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)equal;
- (OADCustomDash)initWithDefaults;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stops;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values;
- (void)setStops:(id)stops;
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
  initWithDefaults = [(OADProperties *)&v5 initWithDefaults];
  if (initWithDefaults)
  {
    array = [MEMORY[0x277CBEA60] array];
    [(OADCustomDash *)initWithDefaults setStops:array];
  }

  return initWithDefaults;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  v12.receiver = self;
  v12.super_class = OADCustomDash;
  [(OADProperties *)&v12 fixPropertiesForChangingParentPreservingEffectiveValues:valuesCopy];
  if ([(OADCustomDash *)self areStopsOverridden]|| ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != valuesCopy))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_areStopsOverridden];

    if (v6)
    {
      stops = [(OADCustomDash *)self stops];
    }

    else
    {
      stops = 0;
    }

    v8 = [valuesCopy possiblyInexistentOverrideForSelector:sel_areStopsOverridden];

    if (v8)
    {
      stops2 = [valuesCopy stops];
    }

    else
    {
      stops2 = 0;
    }

    v10 = TCObjectEqual(stops, stops2);
    mStops = self->mStops;
    if (v10)
    {
      self->mStops = 0;
    }

    else if (!mStops && v6)
    {
      [(OADCustomDash *)self setStops:stops];
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

- (void)setStops:(id)stops
{
  v4 = [stops copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = OADCustomDash;
  if ([(OADDash *)&v7 isEqual:equalCopy])
  {
    v5 = TCObjectEqual(self->mStops, equalCopy[3]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end