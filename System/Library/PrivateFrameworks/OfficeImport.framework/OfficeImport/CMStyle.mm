@interface CMStyle
- (BOOL)isEqual:(id)equal;
- (CMStyle)init;
- (CMStyle)initWithStyle:(id)style;
- (id)attributeForName:(id)name;
- (id)cacheFriendlyCSSStyleString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)cssStyleString;
- (id)propertyForName:(id)name;
- (void)addPropertiesToCSSStyleString:(id)string;
- (void)appendOriginInfoFromPoint:(CGPoint)point;
- (void)appendPositionInfoFromRect:(CGRect)rect;
- (void)appendPropertyForName:(id)name color:(id)color;
- (void)appendPropertyForName:(id)name floatValue:(float)value;
- (void)appendPropertyForName:(id)name intValue:(int)value;
- (void)appendPropertyForName:(id)name length:(double)length unit:(int)unit;
- (void)appendPropertyForName:(id)name oadTextSpacing:(id)spacing lineHeight:(float)height unit:(int)unit;
- (void)appendPropertyForName:(id)name oadTextSpacing:(id)spacing unit:(int)unit;
- (void)appendPropertyForName:(id)name stringValue:(id)value;
- (void)appendPropertyForName:(id)name stringWithColons:(id)colons;
- (void)appendPropertyString:(id)string;
- (void)appendSizeInfoFromRect:(CGRect)rect;
@end

@implementation CMStyle

- (CMStyle)init
{
  v9.receiver = self;
  v9.super_class = CMStyle;
  v2 = [(CMStyle *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    properties = v2->properties;
    v2->properties = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
    mStyleString = v2->mStyleString;
    v2->mStyleString = v5;

    v7 = v2;
  }

  return v2;
}

- (id)cssStyleString
{
  [(CMStyle *)self addPropertiesToCSSStyleString:self->mStyleString];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  properties = self->properties;
  self->properties = v3;

  mStyleString = self->mStyleString;

  return mStyleString;
}

- (CMStyle)initWithStyle:(id)style
{
  styleCopy = style;
  v16.receiver = self;
  v16.super_class = CMStyle;
  v5 = [(CMStyle *)&v16 init];
  if (v5)
  {
    if (styleCopy)
    {
      v6 = objc_alloc(MEMORY[0x277CBEB38]);
      properties = [styleCopy properties];
      v8 = [v6 initWithDictionary:properties];
      properties = v5->properties;
      v5->properties = v8;

      v10 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:styleCopy[2]];
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v12 = v5->properties;
      v5->properties = v11;

      v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
    }

    mStyleString = v5->mStyleString;
    v5->mStyleString = v10;

    v14 = v5;
  }

  return v5;
}

- (id)propertyForName:(id)name
{
  v3 = [(NSMutableDictionary *)self->properties objectForKey:name];

  return v3;
}

- (id)attributeForName:(id)name
{
  v3 = [(NSMutableDictionary *)self->properties objectForKey:name];

  return v3;
}

- (void)addPropertiesToCSSStyleString:(id)string
{
  v18 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->properties;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->properties objectForKey:v9, v13];
        v11 = [v10 cssStringForName:v9];
        v12 = v11;
        if (v11 && [v11 length])
        {
          if ([stringCopy length])
          {
            [stringCopy appendString:@" "];
          }

          [stringCopy appendString:v12];
        }
      }

      v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (id)cacheFriendlyCSSStyleString
{
  v3 = [(NSMutableString *)self->mStyleString mutableCopy];
  [(CMStyle *)self addPropertiesToCSSStyleString:v3];

  return v3;
}

- (void)appendPropertyForName:(id)name oadTextSpacing:(id)spacing unit:(int)unit
{
  v5 = *&unit;
  nameCopy = name;
  spacingCopy = spacing;
  if (spacingCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [spacingCopy percent];
      v10 = v9 / 100.0;
      if (v10 != 1.0)
      {
        [(CMStyle *)self appendPropertyForName:nameCopy length:8 unit:(v10 * 1.2)];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[CMStyle appendPropertyForName:length:unit:](self, "appendPropertyForName:length:unit:", nameCopy, v5, [spacingCopy points]);
      }
    }
  }
}

- (void)appendPropertyForName:(id)name oadTextSpacing:(id)spacing lineHeight:(float)height unit:(int)unit
{
  v6 = *&unit;
  nameCopy = name;
  spacingCopy = spacing;
  if (spacingCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![spacingCopy points])
      {
        goto LABEL_7;
      }

      -[CMStyle appendPropertyForName:length:unit:](self, "appendPropertyForName:length:unit:", nameCopy, v6, [spacingCopy points]);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [spacingCopy percent];
      [(CMStyle *)self appendPropertyForName:nameCopy length:1 unit:((v11 / 100.0) * height)];
    }
  }

LABEL_7:
}

- (void)appendPropertyForName:(id)name stringWithColons:(id)colons
{
  nameCopy = name;
  colonsCopy = colons;
  if ([(NSMutableString *)self->mStyleString length])
  {
    [(NSMutableString *)self->mStyleString appendString:@" "];
  }

  [(NSMutableString *)self->mStyleString appendString:nameCopy];
  [(NSMutableString *)self->mStyleString appendString:colonsCopy];
}

- (void)appendPropertyForName:(id)name stringValue:(id)value
{
  nameCopy = name;
  valueCopy = value;
  if ([(NSMutableString *)self->mStyleString length])
  {
    [(NSMutableString *)self->mStyleString appendString:@" "];
  }

  [(NSMutableString *)self->mStyleString appendString:nameCopy];
  [(NSMutableString *)self->mStyleString appendString:@":"];
  [(NSMutableString *)self->mStyleString appendString:valueCopy];
  [(NSMutableString *)self->mStyleString appendString:@";"];
}

- (void)appendPropertyForName:(id)name intValue:(int)value
{
  v4 = *&value;
  nameCopy = name;
  if ([(NSMutableString *)self->mStyleString length])
  {
    [(NSMutableString *)self->mStyleString appendString:@" "];
  }

  [(NSMutableString *)self->mStyleString appendString:nameCopy];
  [(NSMutableString *)self->mStyleString appendFormat:@": %d;", v4];
}

- (void)appendPropertyForName:(id)name floatValue:(float)value
{
  nameCopy = name;
  if ([(NSMutableString *)self->mStyleString length])
  {
    [(NSMutableString *)self->mStyleString appendString:@" "];
  }

  [(NSMutableString *)self->mStyleString appendString:nameCopy];
  [(NSMutableString *)self->mStyleString appendFormat:@": %f;", value];
}

- (void)appendPropertyForName:(id)name length:(double)length unit:(int)unit
{
  v5 = *&unit;
  nameCopy = name;
  if ([(NSMutableString *)self->mStyleString length])
  {
    [(NSMutableString *)self->mStyleString appendString:@" "];
  }

  [(NSMutableString *)self->mStyleString appendString:nameCopy];
  mStyleString = self->mStyleString;
  v9 = [CMLengthProperty cssStringValue:v5 unit:length];
  [(NSMutableString *)mStyleString appendString:v9];
}

- (void)appendPropertyForName:(id)name color:(id)color
{
  nameCopy = name;
  colorCopy = color;
  if ([(NSMutableString *)self->mStyleString length])
  {
    [(NSMutableString *)self->mStyleString appendString:@" "];
  }

  [(NSMutableString *)self->mStyleString appendString:nameCopy];
  mStyleString = self->mStyleString;
  v8 = [CMColorProperty cssStringFromTSUColor:colorCopy];
  [(NSMutableString *)mStyleString appendString:v8];
}

- (void)appendPropertyString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    if ([(NSMutableString *)self->mStyleString length])
    {
      [(NSMutableString *)self->mStyleString appendString:@" "];
    }

    [(NSMutableString *)self->mStyleString appendString:stringCopy];
  }
}

- (void)appendPositionInfoFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ([(NSMutableString *)self->mStyleString length])
  {
    [(NSMutableString *)self->mStyleString appendString:@" "];
  }

  [(NSMutableString *)self->mStyleString appendFormat:@"top:%d; left:%d; width:%d; height:%d;", y, x, width, height];
}

- (void)appendOriginInfoFromPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(NSMutableString *)self->mStyleString length])
  {
    [(NSMutableString *)self->mStyleString appendString:@" "];
  }

  [(NSMutableString *)self->mStyleString appendFormat:@"top:%d; left:%d;", y, x];
}

- (void)appendSizeInfoFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  if ([(NSMutableString *)self->mStyleString length:rect.origin.x])
  {
    [(NSMutableString *)self->mStyleString appendString:@" "];
  }

  [(NSMutableString *)self->mStyleString appendFormat:@"width:%d; height:%d;", width, height];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithStyle:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(NSMutableDictionary *)self->properties isEqual:v5->properties])
      {
        v6 = [(NSMutableString *)self->mStyleString isEqualToString:v5->mStyleString];
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
  }

  return v6;
}

@end