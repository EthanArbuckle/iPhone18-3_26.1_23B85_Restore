@interface OADLineEnd
+ (id)defaultProperties;
+ (id)stringForLineEndLength:(unsigned __int8)a3;
+ (id)stringForLineEndType:(unsigned __int8)a3;
+ (id)stringForLineEndWidth:(unsigned __int8)a3;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)a3;
- (OADLineEnd)initWithDefaults;
- (OADLineEnd)initWithType:(unsigned __int8)a3 width:(unsigned __int8)a4 length:(unsigned __int8)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unsigned)length;
- (unsigned)type;
- (unsigned)width;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3;
- (void)removeUnnecessaryOverrides;
@end

@implementation OADLineEnd

+ (id)defaultProperties
{
  if (+[OADLineEnd defaultProperties]::once != -1)
  {
    +[OADLineEnd defaultProperties];
  }

  v3 = +[OADLineEnd defaultProperties]::defaultProperties;

  return v3;
}

- (OADLineEnd)initWithDefaults
{
  v5.receiver = self;
  v5.super_class = OADLineEnd;
  v2 = [(OADProperties *)&v5 initWithDefaults];
  v3 = v2;
  if (v2)
  {
    [(OADLineEnd *)v2 setType:0];
    [(OADLineEnd *)v3 setWidth:1];
    [(OADLineEnd *)v3 setLength:1];
  }

  return v3;
}

- (unsigned)type
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isTypeOverridden];
  v3 = v2[17];

  return v3;
}

- (unsigned)width
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isWidthOverridden];
  v3 = v2[18];

  return v3;
}

- (unsigned)length
{
  v2 = [(OADProperties *)self overrideForSelector:sel_isLengthOverridden];
  v3 = v2[19];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (*(&self->super + 20))
  {
    [v4 setType:*(&self->super + 17)];
  }

  if ((*(&self->super + 20) & 2) != 0)
  {
    [v5 setWidth:*(&self->super + 18)];
  }

  if ((*(&self->super + 20) & 4) != 0)
  {
    [v5 setLength:*(&self->super + 19)];
  }

  return v5;
}

- (OADLineEnd)initWithType:(unsigned __int8)a3 width:(unsigned __int8)a4 length:(unsigned __int8)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v11.receiver = self;
  v11.super_class = OADLineEnd;
  v8 = [(OADProperties *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(OADLineEnd *)v8 setType:v7];
    [(OADLineEnd *)v9 setWidth:v6];
    [(OADLineEnd *)v9 setLength:v5];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    v6 = *(&self->super + 17) == v7[17] && *(&self->super + 18) == v7[18] && *(&self->super + 19) == v7[19];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __31__OADLineEnd_defaultProperties__block_invoke()
{
  v0 = [[OADLineEnd alloc] initWithDefaults];
  v1 = +[OADLineEnd defaultProperties]::defaultProperties;
  +[OADLineEnd defaultProperties]::defaultProperties = v0;
}

- (BOOL)isAnythingOverridden
{
  v4.receiver = self;
  v4.super_class = OADLineEnd;
  return [(OADProperties *)&v4 isAnythingOverridden]|| [(OADLineEnd *)self isTypeOverridden]|| [(OADLineEnd *)self isWidthOverridden]|| [(OADLineEnd *)self isLengthOverridden];
}

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = OADLineEnd;
  [(OADProperties *)&v11 fixPropertiesForChangingParentPreservingEffectiveValues:v4];
  if ((*(&self->super + 20) & 1) != 0 || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != v4))
  {
    v6 = [(OADLineEnd *)self type];
    if (v6 == [v4 type])
    {
      *(&self->super + 20) &= ~1u;
    }

    else if ((*(&self->super + 20) & 1) == 0)
    {
      [(OADLineEnd *)self setType:[(OADLineEnd *)self type]];
    }
  }

  if ((*(&self->super + 20) & 2) != 0 || ([(OADProperties *)self parent], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 != v4))
  {
    v8 = [(OADLineEnd *)self width];
    if (v8 == [v4 width])
    {
      *(&self->super + 20) &= ~2u;
    }

    else if ((*(&self->super + 20) & 2) == 0)
    {
      [(OADLineEnd *)self setWidth:[(OADLineEnd *)self width]];
    }
  }

  if ((*(&self->super + 20) & 4) != 0 || ([(OADProperties *)self parent], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 != v4))
  {
    v10 = [(OADLineEnd *)self length];
    if (v10 == [v4 length])
    {
      *(&self->super + 20) &= ~4u;
    }

    else if ((*(&self->super + 20) & 4) == 0)
    {
      [(OADLineEnd *)self setLength:[(OADLineEnd *)self length]];
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
    if ([(OADLineEnd *)self isTypeOverridden])
    {
      v6 = [(OADProperties *)self parent];
      v7 = [(OADLineEnd *)self type];
      if (v7 == [v6 type])
      {
        [(OADLineEnd *)self setType:0];
        *(&self->super + 20) &= ~1u;
      }
    }

    if ([(OADLineEnd *)self isWidthOverridden])
    {
      v8 = [(OADProperties *)self parent];
      v9 = [(OADLineEnd *)self width];
      if (v9 == [v8 width])
      {
        [(OADLineEnd *)self setWidth:1];
        *(&self->super + 20) &= ~2u;
      }
    }

    if ([(OADLineEnd *)self isLengthOverridden])
    {
      v10 = [(OADProperties *)self parent];
      v11 = [(OADLineEnd *)self length];
      if (v11 == [v10 length])
      {
        [(OADLineEnd *)self setLength:1];
        *(&self->super + 20) &= ~4u;
      }
    }

    [(OADProperties *)self setMerged:v4];
    [(OADProperties *)self setMergedWithParent:v5];
    v12.receiver = self;
    v12.super_class = OADLineEnd;
    [(OADProperties *)&v12 removeUnnecessaryOverrides];
  }
}

+ (id)stringForLineEndType:(unsigned __int8)a3
{
  if (a3 > 5u)
  {
    return @"unknown";
  }

  else
  {
    return off_2799C7EA8[a3];
  }
}

+ (id)stringForLineEndWidth:(unsigned __int8)a3
{
  if (a3 > 2u)
  {
    return @"unknown";
  }

  else
  {
    return off_2799C7ED8[a3];
  }
}

+ (id)stringForLineEndLength:(unsigned __int8)a3
{
  if (a3 > 2u)
  {
    return @"unknown";
  }

  else
  {
    return off_2799C7ED8[a3];
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADLineEnd;
  v2 = [(OADProperties *)&v4 description];

  return v2;
}

@end