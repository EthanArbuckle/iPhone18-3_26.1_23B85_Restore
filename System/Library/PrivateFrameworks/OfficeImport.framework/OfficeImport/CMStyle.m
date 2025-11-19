@interface CMStyle
- (BOOL)isEqual:(id)a3;
- (CMStyle)init;
- (CMStyle)initWithStyle:(id)a3;
- (id)attributeForName:(id)a3;
- (id)cacheFriendlyCSSStyleString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)cssStyleString;
- (id)propertyForName:(id)a3;
- (void)addPropertiesToCSSStyleString:(id)a3;
- (void)appendOriginInfoFromPoint:(CGPoint)a3;
- (void)appendPositionInfoFromRect:(CGRect)a3;
- (void)appendPropertyForName:(id)a3 color:(id)a4;
- (void)appendPropertyForName:(id)a3 floatValue:(float)a4;
- (void)appendPropertyForName:(id)a3 intValue:(int)a4;
- (void)appendPropertyForName:(id)a3 length:(double)a4 unit:(int)a5;
- (void)appendPropertyForName:(id)a3 oadTextSpacing:(id)a4 lineHeight:(float)a5 unit:(int)a6;
- (void)appendPropertyForName:(id)a3 oadTextSpacing:(id)a4 unit:(int)a5;
- (void)appendPropertyForName:(id)a3 stringValue:(id)a4;
- (void)appendPropertyForName:(id)a3 stringWithColons:(id)a4;
- (void)appendPropertyString:(id)a3;
- (void)appendSizeInfoFromRect:(CGRect)a3;
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

- (CMStyle)initWithStyle:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CMStyle;
  v5 = [(CMStyle *)&v16 init];
  if (v5)
  {
    if (v4)
    {
      v6 = objc_alloc(MEMORY[0x277CBEB38]);
      v7 = [v4 properties];
      v8 = [v6 initWithDictionary:v7];
      properties = v5->properties;
      v5->properties = v8;

      v10 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:v4[2]];
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

- (id)propertyForName:(id)a3
{
  v3 = [(NSMutableDictionary *)self->properties objectForKey:a3];

  return v3;
}

- (id)attributeForName:(id)a3
{
  v3 = [(NSMutableDictionary *)self->properties objectForKey:a3];

  return v3;
}

- (void)addPropertiesToCSSStyleString:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
          if ([v4 length])
          {
            [v4 appendString:@" "];
          }

          [v4 appendString:v12];
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

- (void)appendPropertyForName:(id)a3 oadTextSpacing:(id)a4 unit:(int)a5
{
  v5 = *&a5;
  v11 = a3;
  v8 = a4;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 percent];
      v10 = v9 / 100.0;
      if (v10 != 1.0)
      {
        [(CMStyle *)self appendPropertyForName:v11 length:8 unit:(v10 * 1.2)];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[CMStyle appendPropertyForName:length:unit:](self, "appendPropertyForName:length:unit:", v11, v5, [v8 points]);
      }
    }
  }
}

- (void)appendPropertyForName:(id)a3 oadTextSpacing:(id)a4 lineHeight:(float)a5 unit:(int)a6
{
  v6 = *&a6;
  v12 = a3;
  v10 = a4;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![v10 points])
      {
        goto LABEL_7;
      }

      -[CMStyle appendPropertyForName:length:unit:](self, "appendPropertyForName:length:unit:", v12, v6, [v10 points]);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 percent];
      [(CMStyle *)self appendPropertyForName:v12 length:1 unit:((v11 / 100.0) * a5)];
    }
  }

LABEL_7:
}

- (void)appendPropertyForName:(id)a3 stringWithColons:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([(NSMutableString *)self->mStyleString length])
  {
    [(NSMutableString *)self->mStyleString appendString:@" "];
  }

  [(NSMutableString *)self->mStyleString appendString:v7];
  [(NSMutableString *)self->mStyleString appendString:v6];
}

- (void)appendPropertyForName:(id)a3 stringValue:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([(NSMutableString *)self->mStyleString length])
  {
    [(NSMutableString *)self->mStyleString appendString:@" "];
  }

  [(NSMutableString *)self->mStyleString appendString:v7];
  [(NSMutableString *)self->mStyleString appendString:@":"];
  [(NSMutableString *)self->mStyleString appendString:v6];
  [(NSMutableString *)self->mStyleString appendString:@";"];
}

- (void)appendPropertyForName:(id)a3 intValue:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  if ([(NSMutableString *)self->mStyleString length])
  {
    [(NSMutableString *)self->mStyleString appendString:@" "];
  }

  [(NSMutableString *)self->mStyleString appendString:v6];
  [(NSMutableString *)self->mStyleString appendFormat:@": %d;", v4];
}

- (void)appendPropertyForName:(id)a3 floatValue:(float)a4
{
  v6 = a3;
  if ([(NSMutableString *)self->mStyleString length])
  {
    [(NSMutableString *)self->mStyleString appendString:@" "];
  }

  [(NSMutableString *)self->mStyleString appendString:v6];
  [(NSMutableString *)self->mStyleString appendFormat:@": %f;", a4];
}

- (void)appendPropertyForName:(id)a3 length:(double)a4 unit:(int)a5
{
  v5 = *&a5;
  v10 = a3;
  if ([(NSMutableString *)self->mStyleString length])
  {
    [(NSMutableString *)self->mStyleString appendString:@" "];
  }

  [(NSMutableString *)self->mStyleString appendString:v10];
  mStyleString = self->mStyleString;
  v9 = [CMLengthProperty cssStringValue:v5 unit:a4];
  [(NSMutableString *)mStyleString appendString:v9];
}

- (void)appendPropertyForName:(id)a3 color:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(NSMutableString *)self->mStyleString length])
  {
    [(NSMutableString *)self->mStyleString appendString:@" "];
  }

  [(NSMutableString *)self->mStyleString appendString:v9];
  mStyleString = self->mStyleString;
  v8 = [CMColorProperty cssStringFromTSUColor:v6];
  [(NSMutableString *)mStyleString appendString:v8];
}

- (void)appendPropertyString:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    if ([(NSMutableString *)self->mStyleString length])
    {
      [(NSMutableString *)self->mStyleString appendString:@" "];
    }

    [(NSMutableString *)self->mStyleString appendString:v4];
  }
}

- (void)appendPositionInfoFromRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(NSMutableString *)self->mStyleString length])
  {
    [(NSMutableString *)self->mStyleString appendString:@" "];
  }

  [(NSMutableString *)self->mStyleString appendFormat:@"top:%d; left:%d; width:%d; height:%d;", y, x, width, height];
}

- (void)appendOriginInfoFromPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(NSMutableString *)self->mStyleString length])
  {
    [(NSMutableString *)self->mStyleString appendString:@" "];
  }

  [(NSMutableString *)self->mStyleString appendFormat:@"top:%d; left:%d;", y, x];
}

- (void)appendSizeInfoFromRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  if ([(NSMutableString *)self->mStyleString length:a3.origin.x])
  {
    [(NSMutableString *)self->mStyleString appendString:@" "];
  }

  [(NSMutableString *)self->mStyleString appendFormat:@"width:%d; height:%d;", width, height];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithStyle:self];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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