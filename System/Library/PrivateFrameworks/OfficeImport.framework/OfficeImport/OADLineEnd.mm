@interface OADLineEnd
+ (id)defaultProperties;
+ (id)stringForLineEndLength:(unsigned __int8)length;
+ (id)stringForLineEndType:(unsigned __int8)type;
+ (id)stringForLineEndWidth:(unsigned __int8)width;
- (BOOL)isAnythingOverridden;
- (BOOL)isEqual:(id)equal;
- (OADLineEnd)initWithDefaults;
- (OADLineEnd)initWithType:(unsigned __int8)type width:(unsigned __int8)width length:(unsigned __int8)length;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unsigned)length;
- (unsigned)type;
- (unsigned)width;
- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values;
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
  initWithDefaults = [(OADProperties *)&v5 initWithDefaults];
  v3 = initWithDefaults;
  if (initWithDefaults)
  {
    [(OADLineEnd *)initWithDefaults setType:0];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (OADLineEnd)initWithType:(unsigned __int8)type width:(unsigned __int8)width length:(unsigned __int8)length
{
  lengthCopy = length;
  widthCopy = width;
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = OADLineEnd;
  v8 = [(OADProperties *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(OADLineEnd *)v8 setType:typeCopy];
    [(OADLineEnd *)v9 setWidth:widthCopy];
    [(OADLineEnd *)v9 setLength:lengthCopy];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
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

- (void)fixPropertiesForChangingParentPreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  v11.receiver = self;
  v11.super_class = OADLineEnd;
  [(OADProperties *)&v11 fixPropertiesForChangingParentPreservingEffectiveValues:valuesCopy];
  if ((*(&self->super + 20) & 1) != 0 || ([(OADProperties *)self parent], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 != valuesCopy))
  {
    type = [(OADLineEnd *)self type];
    if (type == [valuesCopy type])
    {
      *(&self->super + 20) &= ~1u;
    }

    else if ((*(&self->super + 20) & 1) == 0)
    {
      [(OADLineEnd *)self setType:[(OADLineEnd *)self type]];
    }
  }

  if ((*(&self->super + 20) & 2) != 0 || ([(OADProperties *)self parent], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 != valuesCopy))
  {
    width = [(OADLineEnd *)self width];
    if (width == [valuesCopy width])
    {
      *(&self->super + 20) &= ~2u;
    }

    else if ((*(&self->super + 20) & 2) == 0)
    {
      [(OADLineEnd *)self setWidth:[(OADLineEnd *)self width]];
    }
  }

  if ((*(&self->super + 20) & 4) != 0 || ([(OADProperties *)self parent], v9 = objc_claimAutoreleasedReturnValue(), v9, v9 != valuesCopy))
  {
    v10 = [(OADLineEnd *)self length];
    if (v10 == [valuesCopy length])
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
  parent = [(OADProperties *)self parent];

  if (parent)
  {
    isMerged = [(OADProperties *)self isMerged];
    isMergedWithParent = [(OADProperties *)self isMergedWithParent];
    [(OADProperties *)self setMerged:0];
    [(OADProperties *)self setMergedWithParent:0];
    if ([(OADLineEnd *)self isTypeOverridden])
    {
      parent2 = [(OADProperties *)self parent];
      type = [(OADLineEnd *)self type];
      if (type == [parent2 type])
      {
        [(OADLineEnd *)self setType:0];
        *(&self->super + 20) &= ~1u;
      }
    }

    if ([(OADLineEnd *)self isWidthOverridden])
    {
      parent3 = [(OADProperties *)self parent];
      width = [(OADLineEnd *)self width];
      if (width == [parent3 width])
      {
        [(OADLineEnd *)self setWidth:1];
        *(&self->super + 20) &= ~2u;
      }
    }

    if ([(OADLineEnd *)self isLengthOverridden])
    {
      parent4 = [(OADProperties *)self parent];
      v11 = [(OADLineEnd *)self length];
      if (v11 == [parent4 length])
      {
        [(OADLineEnd *)self setLength:1];
        *(&self->super + 20) &= ~4u;
      }
    }

    [(OADProperties *)self setMerged:isMerged];
    [(OADProperties *)self setMergedWithParent:isMergedWithParent];
    v12.receiver = self;
    v12.super_class = OADLineEnd;
    [(OADProperties *)&v12 removeUnnecessaryOverrides];
  }
}

+ (id)stringForLineEndType:(unsigned __int8)type
{
  if (type > 5u)
  {
    return @"unknown";
  }

  else
  {
    return off_2799C7EA8[type];
  }
}

+ (id)stringForLineEndWidth:(unsigned __int8)width
{
  if (width > 2u)
  {
    return @"unknown";
  }

  else
  {
    return off_2799C7ED8[width];
  }
}

+ (id)stringForLineEndLength:(unsigned __int8)length
{
  if (length > 2u)
  {
    return @"unknown";
  }

  else
  {
    return off_2799C7ED8[length];
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