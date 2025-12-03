@interface OADCustomPattern
+ (id)defaultProperties;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)equal;
- (OADCustomPattern)initWithDefaults;
- (id)blipRef;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values;
- (void)setBlipRef:(id)ref;
@end

@implementation OADCustomPattern

+ (id)defaultProperties
{
  if (+[OADCustomPattern defaultProperties]::once != -1)
  {
    +[OADCustomPattern defaultProperties];
  }

  v3 = +[OADCustomPattern defaultProperties]::defaultProperties;

  return v3;
}

- (OADCustomPattern)initWithDefaults
{
  v5.receiver = self;
  v5.super_class = OADCustomPattern;
  initWithDefaults = [(OADProperties *)&v5 initWithDefaults];
  v3 = initWithDefaults;
  if (initWithDefaults)
  {
    [(OADCustomPattern *)initWithDefaults setBlipRef:0];
  }

  return v3;
}

- (unint64_t)hash
{
  if (self->mIsBlipRefOverridden)
  {
    v3 = [(OADBlipRef *)self->mBlipRef hash];
  }

  else
  {
    v3 = 0;
  }

  v5.receiver = self;
  v5.super_class = OADCustomPattern;
  return [(OADPattern *)&v5 hash]^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (self->mIsBlipRefOverridden)
  {
    v6 = [(OADBlipRef *)self->mBlipRef copyWithZone:zone];
    [v5 setBlipRef:v6];
  }

  return v5;
}

void __37__OADCustomPattern_defaultProperties__block_invoke()
{
  v0 = [[OADCustomPattern alloc] initWithDefaults];
  v1 = +[OADCustomPattern defaultProperties]::defaultProperties;
  +[OADCustomPattern defaultProperties]::defaultProperties = v0;
}

- (BOOL)isAnythingOverridden
{
  v4.receiver = self;
  v4.super_class = OADCustomPattern;
  return [(OADProperties *)&v4 isAnythingOverridden]|| [(OADCustomPattern *)self isBlipRefOverridden];
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  v11.receiver = self;
  v11.super_class = OADCustomPattern;
  [(OADProperties *)&v11 fixPropertiesForChangingParentPreservingEffectiveValues:valuesCopy];
  if (self->mIsBlipRefOverridden || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != valuesCopy))
  {
    v6 = [(OADProperties *)self possiblyInexistentOverrideForSelector:sel_isBlipRefOverridden];

    if (v6)
    {
      blipRef = [(OADCustomPattern *)self blipRef];
    }

    else
    {
      blipRef = 0;
    }

    v8 = [valuesCopy possiblyInexistentOverrideForSelector:sel_isBlipRefOverridden];

    if (v8)
    {
      blipRef2 = [valuesCopy blipRef];
    }

    else
    {
      blipRef2 = 0;
    }

    if (TCObjectEqual(blipRef, blipRef2))
    {
      mBlipRef = self->mBlipRef;
      self->mBlipRef = 0;

      self->mIsBlipRefOverridden = 0;
    }

    else if (!self->mIsBlipRefOverridden && v6)
    {
      [(OADCustomPattern *)self setBlipRef:blipRef];
    }
  }
}

- (id)blipRef
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isBlipRefOverridden];
  v3 = v2[3];
  v4 = v3;

  return v3;
}

- (void)setBlipRef:(id)ref
{
  refCopy = ref;
  if (self->mBlipRef != refCopy)
  {
    v6 = refCopy;
    objc_storeStrong(&self->mBlipRef, ref);
    refCopy = v6;
    self->mIsBlipRefOverridden = 1;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = OADCustomPattern;
  if ([(OADPattern *)&v8 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (self->mIsBlipRefOverridden == *(v5 + 32))
    {
      v6 = !self->mIsBlipRefOverridden || [(OADBlipRef *)self->mBlipRef isEqual:v5[3]];
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