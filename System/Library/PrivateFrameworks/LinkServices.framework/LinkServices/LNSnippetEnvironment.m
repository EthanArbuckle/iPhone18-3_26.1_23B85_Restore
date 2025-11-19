@interface LNSnippetEnvironment
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (LNSnippetEnvironment)initWithCoder:(id)a3;
- (LNSnippetEnvironment)initWithSize:(CGSize)a3 locale:(id)a4 dynamicTypeSize:(int64_t)a5 legibilityWeight:(int64_t)a6 layoutDirection:(int64_t)a7 colorScheme:(int64_t)a8 colorSchemeContrast:(int64_t)a9 displayScale:(double)a10 displayGamut:(int64_t)a11 accessibilityDifferentiateWithoutColor:(BOOL)a12 accessibilityInvertColors:(BOOL)a13 accessibilityReduceMotion:(BOOL)a14 accessibilityReduceTransparency:(BOOL)a15;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696B098];
  v5 = a3;
  [(LNSnippetEnvironment *)self size];
  v7 = [v4 lns_valueWithCGSize:?];
  [v5 encodeObject:v7 forKey:@"size"];
  v6 = [(LNSnippetEnvironment *)self locale];
  [v5 encodeObject:v6 forKey:@"locale"];

  [v5 encodeInteger:-[LNSnippetEnvironment dynamicTypeSize](self forKey:{"dynamicTypeSize"), @"dynamicTypeSize"}];
  [v5 encodeInteger:-[LNSnippetEnvironment legibilityWeight](self forKey:{"legibilityWeight"), @"legibilityWeight"}];
  [v5 encodeInteger:-[LNSnippetEnvironment layoutDirection](self forKey:{"layoutDirection"), @"layoutDirection"}];
  [v5 encodeInteger:-[LNSnippetEnvironment colorScheme](self forKey:{"colorScheme"), @"colorScheme"}];
  [v5 encodeInteger:-[LNSnippetEnvironment colorSchemeContrast](self forKey:{"colorSchemeContrast"), @"colorSchemeContrast"}];
  [(LNSnippetEnvironment *)self displayScale];
  [v5 encodeDouble:@"displayScale" forKey:?];
  [v5 encodeInteger:-[LNSnippetEnvironment displayGamut](self forKey:{"displayGamut"), @"displayGamut"}];
  [v5 encodeBool:-[LNSnippetEnvironment accessibilityDifferentiateWithoutColor](self forKey:{"accessibilityDifferentiateWithoutColor"), @"accessibilityDifferentiateWithoutColor"}];
  [v5 encodeBool:-[LNSnippetEnvironment accessibilityInvertColors](self forKey:{"accessibilityInvertColors"), @"accessibilityInvertColors"}];
  [v5 encodeBool:-[LNSnippetEnvironment accessibilityReduceMotion](self forKey:{"accessibilityReduceMotion"), @"accessibilityReduceMotion"}];
  [v5 encodeBool:-[LNSnippetEnvironment accessibilityReduceTransparency](self forKey:{"accessibilityReduceTransparency"), @"accessibilityReduceTransparency"}];
}

- (LNSnippetEnvironment)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"size"];
  v6 = v5;
  if (v5)
  {
    [v5 lns_CGSizeValue];
    v8 = v7;
    v10 = v9;
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    v25 = [v4 decodeIntegerForKey:@"dynamicTypeSize"];
    v24 = [v4 decodeIntegerForKey:@"legibilityWeight"];
    v23 = [v4 decodeIntegerForKey:@"layoutDirection"];
    [v4 decodeDoubleForKey:@"displayScale"];
    v13 = v12;
    v14 = [v4 decodeIntegerForKey:@"displayGamut"];
    v15 = [v4 decodeIntegerForKey:@"colorScheme"];
    v16 = [v4 decodeIntegerForKey:@"colorSchemeContrast"];
    v17 = [v4 decodeBoolForKey:@"accessibilityDifferentiateWithoutColor"];
    v18 = [v4 decodeBoolForKey:@"accessibilityInvertColors"];
    v19 = [v4 decodeBoolForKey:@"accessibilityReduceMotion"];
    BYTE3(v22) = [v4 decodeBoolForKey:@"accessibilityReduceTransparency"];
    BYTE2(v22) = v19;
    BYTE1(v22) = v18;
    LOBYTE(v22) = v17;
    self = [LNSnippetEnvironment initWithSize:"initWithSize:locale:dynamicTypeSize:legibilityWeight:layoutDirection:colorScheme:colorSchemeContrast:displayScale:displayGamut:accessibilityDifferentiateWithoutColor:accessibilityInvertColors:accessibilityReduceMotion:accessibilityReduceTransparency:" locale:v11 dynamicTypeSize:v25 legibilityWeight:v24 layoutDirection:v23 colorScheme:v15 colorSchemeContrast:v16 displayScale:v8 displayGamut:v10 accessibilityDifferentiateWithoutColor:v13 accessibilityInvertColors:v14 accessibilityReduceMotion:v22 accessibilityReduceTransparency:?];

    v20 = self;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
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

        v13 = [(LNSnippetEnvironment *)self locale];
        v14 = [(LNSnippetEnvironment *)v6 locale];
        v15 = v13;
        v16 = v14;
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

        v20 = [(LNSnippetEnvironment *)self dynamicTypeSize];
        if (v20 == [(LNSnippetEnvironment *)v6 dynamicTypeSize])
        {
          v21 = [(LNSnippetEnvironment *)self legibilityWeight];
          if (v21 == [(LNSnippetEnvironment *)v6 legibilityWeight])
          {
            v22 = [(LNSnippetEnvironment *)self layoutDirection];
            if (v22 == [(LNSnippetEnvironment *)v6 layoutDirection])
            {
              v23 = [(LNSnippetEnvironment *)self colorScheme];
              if (v23 == [(LNSnippetEnvironment *)v6 colorScheme])
              {
                v24 = [(LNSnippetEnvironment *)self colorSchemeContrast];
                if (v24 == [(LNSnippetEnvironment *)v6 colorSchemeContrast])
                {
                  [(LNSnippetEnvironment *)self displayScale];
                  v26 = v25;
                  [(LNSnippetEnvironment *)v6 displayScale];
                  if (v26 == v27)
                  {
                    v28 = [(LNSnippetEnvironment *)self displayGamut];
                    if (v28 == [(LNSnippetEnvironment *)v6 displayGamut])
                    {
                      v29 = [(LNSnippetEnvironment *)self accessibilityDifferentiateWithoutColor];
                      if (v29 == [(LNSnippetEnvironment *)v6 accessibilityDifferentiateWithoutColor])
                      {
                        v30 = [(LNSnippetEnvironment *)self accessibilityInvertColors];
                        if (v30 == [(LNSnippetEnvironment *)v6 accessibilityInvertColors])
                        {
                          v31 = [(LNSnippetEnvironment *)self accessibilityReduceMotion];
                          if (v31 == [(LNSnippetEnvironment *)v6 accessibilityReduceMotion])
                          {
                            v32 = [(LNSnippetEnvironment *)self accessibilityReduceTransparency];
                            v19 = v32 ^ [(LNSnippetEnvironment *)v6 accessibilityReduceTransparency]^ 1;
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

- (LNSnippetEnvironment)initWithSize:(CGSize)a3 locale:(id)a4 dynamicTypeSize:(int64_t)a5 legibilityWeight:(int64_t)a6 layoutDirection:(int64_t)a7 colorScheme:(int64_t)a8 colorSchemeContrast:(int64_t)a9 displayScale:(double)a10 displayGamut:(int64_t)a11 accessibilityDifferentiateWithoutColor:(BOOL)a12 accessibilityInvertColors:(BOOL)a13 accessibilityReduceMotion:(BOOL)a14 accessibilityReduceTransparency:(BOOL)a15
{
  height = a3.height;
  width = a3.width;
  v25 = a4;
  v30.receiver = self;
  v30.super_class = LNSnippetEnvironment;
  v26 = [(LNSnippetEnvironment *)&v30 init];
  v27 = v26;
  if (v26)
  {
    v26->_size.width = width;
    v26->_size.height = height;
    objc_storeStrong(&v26->_locale, a4);
    v27->_dynamicTypeSize = a5;
    v27->_legibilityWeight = a6;
    v27->_layoutDirection = a7;
    v27->_colorScheme = a8;
    v27->_colorSchemeContrast = a9;
    v27->_displayScale = a10;
    v27->_displayGamut = a11;
    v27->_accessibilityDifferentiateWithoutColor = a12;
    v27->_accessibilityInvertColors = a13;
    v27->_accessibilityReduceMotion = a14;
    v27->_accessibilityReduceTransparency = a15;
    v28 = v27;
  }

  return v27;
}

@end