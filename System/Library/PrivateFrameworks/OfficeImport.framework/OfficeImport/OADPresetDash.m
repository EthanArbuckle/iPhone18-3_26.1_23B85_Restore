@interface OADPresetDash
+ (id)defaultProperties;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)a3;
- (OADPresetDash)initWithDefaults;
- (char)type;
- (id)copyWithZone:(_NSZone *)a3;
- (id)equivalentCustomDash;
- (unint64_t)hash;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3;
@end

@implementation OADPresetDash

+ (id)defaultProperties
{
  if (+[OADPresetDash defaultProperties]::once != -1)
  {
    +[OADPresetDash defaultProperties];
  }

  v3 = +[OADPresetDash defaultProperties]::defaultProperties;

  return v3;
}

- (OADPresetDash)initWithDefaults
{
  v5.receiver = self;
  v5.super_class = OADPresetDash;
  v2 = [(OADProperties *)&v5 initWithDefaults];
  v3 = v2;
  if (v2)
  {
    [(OADPresetDash *)v2 setType:0];
  }

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->super.super + 18))
  {
    return *(&self->super.super + 17);
  }

  else
  {
    return 0;
  }
}

- (char)type
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isTypeOverridden];
  v3 = v2[17];

  return v3;
}

- (id)equivalentCustomDash
{
  if (*(&self->super.super + 17) - 1 > 0xD)
  {
    v3 = 0;
  }

  else
  {
    v2 = *(&off_2799C7EF0 + (*(&self->super.super + 17) - 1));
    v3 = objc_alloc_init(OADCustomDash);
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    LODWORD(v6) = *v2;
    if (*v2 != -1.0)
    {
      v7 = (v2 + 2);
      do
      {
        *&v5 = *(v7 - 1);
        [OADDashStop addStopWithDash:v4 space:v6 toArray:v5];
        v8 = *v7;
        v7 += 2;
        *&v6 = v8;
      }

      while (v8 != -1.0);
    }

    [(OADCustomDash *)v3 setStops:v4, v6];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (*(&self->super.super + 18))
  {
    [v4 setType:*(&self->super.super + 17)];
  }

  return v5;
}

void __34__OADPresetDash_defaultProperties__block_invoke()
{
  v0 = [[OADPresetDash alloc] initWithDefaults];
  v1 = +[OADPresetDash defaultProperties]::defaultProperties;
  +[OADPresetDash defaultProperties]::defaultProperties = v0;
}

- (BOOL)isAnythingOverridden
{
  v4.receiver = self;
  v4.super_class = OADPresetDash;
  return [(OADProperties *)&v4 isAnythingOverridden]|| [(OADPresetDash *)self isTypeOverridden];
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = OADPresetDash;
  [(OADProperties *)&v7 fixPropertiesForChangingParentPreservingEffectiveValues:v4];
  if ((*(&self->super.super + 18) & 1) != 0 || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != v4))
  {
    v6 = [(OADPresetDash *)self type];
    if (v6 == [v4 type])
    {
      *(&self->super.super + 18) &= ~1u;
    }

    else if ((*(&self->super.super + 18) & 1) == 0)
    {
      [(OADPresetDash *)self setType:[(OADPresetDash *)self type]];
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = OADPresetDash;
  if ([(OADDash *)&v9 isEqual:v4])
  {
    v5 = v4;
    v6 = *(&self->super.super + 18);
    if ((v5[18] ^ v6))
    {
      v7 = v5[18] ^ v6 ^ 1;
    }

    else
    {
      v7 = (*(&self->super.super + 18) & 1) == 0 || *(&self->super.super + 17) == v5[17];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

@end