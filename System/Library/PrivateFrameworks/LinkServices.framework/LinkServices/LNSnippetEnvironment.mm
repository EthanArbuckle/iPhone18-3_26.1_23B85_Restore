@interface LNSnippetEnvironment
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (LNSnippetEnvironment)initWithCoder:(id)coder;
- (LNSnippetEnvironment)initWithSize:(CGSize)size locale:(id)locale dynamicTypeSize:(int64_t)typeSize legibilityWeight:(int64_t)weight layoutDirection:(int64_t)direction colorScheme:(int64_t)scheme colorSchemeContrast:(int64_t)contrast displayScale:(double)self0 displayGamut:(int64_t)self1 accessibilityDifferentiateWithoutColor:(BOOL)self2 accessibilityInvertColors:(BOOL)self3 accessibilityReduceMotion:(BOOL)self4 accessibilityReduceTransparency:(BOOL)self5;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNSnippetEnvironment

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696B098];
  coderCopy = coder;
  [(LNSnippetEnvironment *)self size];
  v7 = [v4 lns_valueWithCGSize:?];
  [coderCopy encodeObject:v7 forKey:@"size"];
  locale = [(LNSnippetEnvironment *)self locale];
  [coderCopy encodeObject:locale forKey:@"locale"];

  [coderCopy encodeInteger:-[LNSnippetEnvironment dynamicTypeSize](self forKey:{"dynamicTypeSize"), @"dynamicTypeSize"}];
  [coderCopy encodeInteger:-[LNSnippetEnvironment legibilityWeight](self forKey:{"legibilityWeight"), @"legibilityWeight"}];
  [coderCopy encodeInteger:-[LNSnippetEnvironment layoutDirection](self forKey:{"layoutDirection"), @"layoutDirection"}];
  [coderCopy encodeInteger:-[LNSnippetEnvironment colorScheme](self forKey:{"colorScheme"), @"colorScheme"}];
  [coderCopy encodeInteger:-[LNSnippetEnvironment colorSchemeContrast](self forKey:{"colorSchemeContrast"), @"colorSchemeContrast"}];
  [(LNSnippetEnvironment *)self displayScale];
  [coderCopy encodeDouble:@"displayScale" forKey:?];
  [coderCopy encodeInteger:-[LNSnippetEnvironment displayGamut](self forKey:{"displayGamut"), @"displayGamut"}];
  [coderCopy encodeBool:-[LNSnippetEnvironment accessibilityDifferentiateWithoutColor](self forKey:{"accessibilityDifferentiateWithoutColor"), @"accessibilityDifferentiateWithoutColor"}];
  [coderCopy encodeBool:-[LNSnippetEnvironment accessibilityInvertColors](self forKey:{"accessibilityInvertColors"), @"accessibilityInvertColors"}];
  [coderCopy encodeBool:-[LNSnippetEnvironment accessibilityReduceMotion](self forKey:{"accessibilityReduceMotion"), @"accessibilityReduceMotion"}];
  [coderCopy encodeBool:-[LNSnippetEnvironment accessibilityReduceTransparency](self forKey:{"accessibilityReduceTransparency"), @"accessibilityReduceTransparency"}];
}

- (LNSnippetEnvironment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"size"];
  v6 = v5;
  if (v5)
  {
    [v5 lns_CGSizeValue];
    v8 = v7;
    v10 = v9;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    v25 = [coderCopy decodeIntegerForKey:@"dynamicTypeSize"];
    v24 = [coderCopy decodeIntegerForKey:@"legibilityWeight"];
    v23 = [coderCopy decodeIntegerForKey:@"layoutDirection"];
    [coderCopy decodeDoubleForKey:@"displayScale"];
    v13 = v12;
    v14 = [coderCopy decodeIntegerForKey:@"displayGamut"];
    v15 = [coderCopy decodeIntegerForKey:@"colorScheme"];
    v16 = [coderCopy decodeIntegerForKey:@"colorSchemeContrast"];
    v17 = [coderCopy decodeBoolForKey:@"accessibilityDifferentiateWithoutColor"];
    v18 = [coderCopy decodeBoolForKey:@"accessibilityInvertColors"];
    v19 = [coderCopy decodeBoolForKey:@"accessibilityReduceMotion"];
    BYTE3(v22) = [coderCopy decodeBoolForKey:@"accessibilityReduceTransparency"];
    BYTE2(v22) = v19;
    BYTE1(v22) = v18;
    LOBYTE(v22) = v17;
    self = [LNSnippetEnvironment initWithSize:"initWithSize:locale:dynamicTypeSize:legibilityWeight:layoutDirection:colorScheme:colorSchemeContrast:displayScale:displayGamut:accessibilityDifferentiateWithoutColor:accessibilityInvertColors:accessibilityReduceMotion:accessibilityReduceTransparency:" locale:v11 dynamicTypeSize:v25 legibilityWeight:v24 layoutDirection:v23 colorScheme:v15 colorSchemeContrast:v16 displayScale:v8 displayGamut:v10 accessibilityDifferentiateWithoutColor:v13 accessibilityInvertColors:v14 accessibilityReduceMotion:v22 accessibilityReduceTransparency:?];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(LNSnippetEnvironment *)self size];
        v8 = v7;
        [(LNSnippetEnvironment *)v6 size];
        if (v8 != v9 || ([(LNSnippetEnvironment *)self size], v11 = v10, [(LNSnippetEnvironment *)v6 size], v11 != v12))
        {
          LOBYTE(v19) = 0;
LABEL_31:

          goto LABEL_32;
        }

        locale = [(LNSnippetEnvironment *)self locale];
        locale2 = [(LNSnippetEnvironment *)v6 locale];
        v15 = locale;
        v16 = locale2;
        v17 = v16;
        if (v15 == v16)
        {
        }

        else
        {
          if (!v15 || !v16)
          {

            goto LABEL_28;
          }

          v18 = [(LNSnippetEnvironment *)v15 isEqual:v16];

          if (!v18)
          {
            goto LABEL_28;
          }
        }

        dynamicTypeSize = [(LNSnippetEnvironment *)self dynamicTypeSize];
        if (dynamicTypeSize == [(LNSnippetEnvironment *)v6 dynamicTypeSize])
        {
          legibilityWeight = [(LNSnippetEnvironment *)self legibilityWeight];
          if (legibilityWeight == [(LNSnippetEnvironment *)v6 legibilityWeight])
          {
            layoutDirection = [(LNSnippetEnvironment *)self layoutDirection];
            if (layoutDirection == [(LNSnippetEnvironment *)v6 layoutDirection])
            {
              colorScheme = [(LNSnippetEnvironment *)self colorScheme];
              if (colorScheme == [(LNSnippetEnvironment *)v6 colorScheme])
              {
                colorSchemeContrast = [(LNSnippetEnvironment *)self colorSchemeContrast];
                if (colorSchemeContrast == [(LNSnippetEnvironment *)v6 colorSchemeContrast])
                {
                  [(LNSnippetEnvironment *)self displayScale];
                  v26 = v25;
                  [(LNSnippetEnvironment *)v6 displayScale];
                  if (v26 == v27)
                  {
                    displayGamut = [(LNSnippetEnvironment *)self displayGamut];
                    if (displayGamut == [(LNSnippetEnvironment *)v6 displayGamut])
                    {
                      accessibilityDifferentiateWithoutColor = [(LNSnippetEnvironment *)self accessibilityDifferentiateWithoutColor];
                      if (accessibilityDifferentiateWithoutColor == [(LNSnippetEnvironment *)v6 accessibilityDifferentiateWithoutColor])
                      {
                        accessibilityInvertColors = [(LNSnippetEnvironment *)self accessibilityInvertColors];
                        if (accessibilityInvertColors == [(LNSnippetEnvironment *)v6 accessibilityInvertColors])
                        {
                          accessibilityReduceMotion = [(LNSnippetEnvironment *)self accessibilityReduceMotion];
                          if (accessibilityReduceMotion == [(LNSnippetEnvironment *)v6 accessibilityReduceMotion])
                          {
                            accessibilityReduceTransparency = [(LNSnippetEnvironment *)self accessibilityReduceTransparency];
                            v19 = accessibilityReduceTransparency ^ [(LNSnippetEnvironment *)v6 accessibilityReduceTransparency]^ 1;
LABEL_29:

                            goto LABEL_30;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_28:
        LOBYTE(v19) = 0;
        goto LABEL_29;
      }

      LOBYTE(v19) = 0;
      v15 = v6;
      v6 = 0;
    }

    else
    {
      v15 = 0;
      LOBYTE(v19) = 0;
    }

LABEL_30:

    goto LABEL_31;
  }

  LOBYTE(v19) = 1;
LABEL_32:

  return v19;
}

- (LNSnippetEnvironment)initWithSize:(CGSize)size locale:(id)locale dynamicTypeSize:(int64_t)typeSize legibilityWeight:(int64_t)weight layoutDirection:(int64_t)direction colorScheme:(int64_t)scheme colorSchemeContrast:(int64_t)contrast displayScale:(double)self0 displayGamut:(int64_t)self1 accessibilityDifferentiateWithoutColor:(BOOL)self2 accessibilityInvertColors:(BOOL)self3 accessibilityReduceMotion:(BOOL)self4 accessibilityReduceTransparency:(BOOL)self5
{
  height = size.height;
  width = size.width;
  localeCopy = locale;
  v30.receiver = self;
  v30.super_class = LNSnippetEnvironment;
  v26 = [(LNSnippetEnvironment *)&v30 init];
  v27 = v26;
  if (v26)
  {
    v26->_size.width = width;
    v26->_size.height = height;
    objc_storeStrong(&v26->_locale, locale);
    v27->_dynamicTypeSize = typeSize;
    v27->_legibilityWeight = weight;
    v27->_layoutDirection = direction;
    v27->_colorScheme = scheme;
    v27->_colorSchemeContrast = contrast;
    v27->_displayScale = scale;
    v27->_displayGamut = gamut;
    v27->_accessibilityDifferentiateWithoutColor = color;
    v27->_accessibilityInvertColors = colors;
    v27->_accessibilityReduceMotion = motion;
    v27->_accessibilityReduceTransparency = transparency;
    v28 = v27;
  }

  return v27;
}

@end