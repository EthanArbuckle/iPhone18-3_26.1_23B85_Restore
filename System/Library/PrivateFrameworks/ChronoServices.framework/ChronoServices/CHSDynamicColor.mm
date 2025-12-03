@interface CHSDynamicColor
+ (CHSDynamicColorCache)instanceCacheIfExists;
- (BOOL)_areColorsTheSame:(id)same;
- (BOOL)isEqual:(id)equal;
- (CHSDynamicColor)initWithCoder:(id)coder;
- (id)_effectiveColors;
- (id)_initWithColors:(id)colors;
- (id)_initWithSameColor:(id)color;
- (id)resolvedColorForColorScheme:(unint64_t)scheme displayGamut:(unint64_t)gamut;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSDynamicColor

- (id)_initWithSameColor:(id)color
{
  colorCopy = color;
  v9.receiver = self;
  v9.super_class = CHSDynamicColor;
  v6 = [(CHSDynamicColor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sameColor, color);
  }

  return v7;
}

- (id)_initWithColors:(id)colors
{
  colorsCopy = colors;
  v12.receiver = self;
  v12.super_class = CHSDynamicColor;
  v5 = [(CHSDynamicColor *)&v12 init];
  v6 = v5;
  if (v5)
  {
    if ([(CHSDynamicColor *)v5 _areColorsTheSame:colorsCopy])
    {
      colors = [colorsCopy allValues];
      firstObject = [colors firstObject];
      sameColor = v6->_sameColor;
      v6->_sameColor = firstObject;
    }

    else
    {
      v10 = [colorsCopy copy];
      colors = v6->_colors;
      v6->_colors = v10;
    }
  }

  return v6;
}

- (id)resolvedColorForColorScheme:(unint64_t)scheme displayGamut:(unint64_t)gamut
{
  sameColor = self->_sameColor;
  if (sameColor)
  {
    v5 = sameColor;
  }

  else
  {
    v7 = [[_CHSDynamicColorKey alloc] initWithColorScheme:scheme displayGamut:gamut];
    v5 = [(NSDictionary *)self->_colors objectForKeyedSubscript:v7];
  }

  return v5;
}

- (unint64_t)hash
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 23;
  _effectiveColors = [(CHSDynamicColor *)self _effectiveColors];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __23__CHSDynamicColor_hash__block_invoke;
  v5[3] = &unk_1E7454600;
  v5[4] = &v6;
  [_effectiveColors enumerateObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __23__CHSDynamicColor_hash__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) += [v3 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      _effectiveColors = [(CHSDynamicColor *)self _effectiveColors];
      _effectiveColors2 = [(CHSDynamicColor *)v5 _effectiveColors];
      v8 = BSEqualObjects();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (CHSDynamicColorCache)instanceCacheIfExists
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  environment = [processInfo environment];
  v4 = [environment objectForKeyedSubscript:@"CHS_IN_UNIT_TESTS"];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = +[_CHSDynamicColorCache sharedInstance];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sameColor = self->_sameColor;
  if (sameColor)
  {
    goto LABEL_2;
  }

  if (![(NSDictionary *)self->_colors count])
  {
    goto LABEL_3;
  }

  sameColor = self->_sameColor;
  if (sameColor)
  {
LABEL_2:
    [coderCopy encodeObject:sameColor forKey:@"sameColor"];
  }

  else
  {
    v6 = [(CHSDynamicColor *)self _areColorsTheSame:self->_colors];
    colors = self->_colors;
    if (v6)
    {
      allValues = [(NSDictionary *)colors allValues];
      firstObject = [allValues firstObject];
      [coderCopy encodeObject:firstObject forKey:@"sameColor"];
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __35__CHSDynamicColor_encodeWithCoder___block_invoke;
      v10[3] = &unk_1E7454628;
      v11 = coderCopy;
      [(NSDictionary *)colors enumerateKeysAndObjectsUsingBlock:v10];
    }
  }

LABEL_3:
}

void __35__CHSDynamicColor_encodeWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = [a2 _encodingKey];
  [v5 encodeObject:v7 forKey:v6];
}

- (CHSDynamicColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"sameColor"])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sameColor"];
    v6 = [(CHSDynamicColor *)self _initWithSameColor:v5];

    v7 = v6;
LABEL_9:
    v11 = +[CHSDynamicColor instanceCacheIfExists];
    v12 = [v11 cachedObjectForObject:v6];

    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v6;
    }

    v10 = v13;

    goto LABEL_13;
  }

  if (initWithCoder__onceToken_0 != -1)
  {
    [CHSDynamicColor initWithCoder:];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__6;
  v25 = __Block_byref_object_dispose__6;
  v26 = 0;
  v8 = initWithCoder__keys;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __33__CHSDynamicColor_initWithCoder___block_invoke_2;
  v18 = &unk_1E7454650;
  v19 = coderCopy;
  v20 = &v21;
  [v8 enumerateObjectsUsingBlock:&v15];
  v9 = v22[5];
  if (v9)
  {
    v10 = [v22[5] copy];
    v6 = [(CHSDynamicColor *)self _initWithColors:v10];

    v7 = v6;
  }

  else
  {
    v7 = [(CHSDynamicColor *)self _initWithSameColor:0, v15, v16, v17, v18];
    v6 = 0;
    v10 = v7;
  }

  _Block_object_dispose(&v21, 8);
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_13:

  return v10;
}

void __33__CHSDynamicColor_initWithCoder___block_invoke()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = @"P_LightSRGB";
  v3[1] = @"P_DarkSRGB";
  v3[2] = @"P_LightP3";
  v3[3] = @"P_DarkP3";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:4];
  v1 = initWithCoder__keys;
  initWithCoder__keys = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void __33__CHSDynamicColor_initWithCoder___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([*(a1 + 32) containsValueForKey:?])
  {
    v3 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:v9];
    if (v3)
    {
      v4 = *(*(*(a1 + 40) + 8) + 40);
      if (!v4)
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v6 = *(*(a1 + 40) + 8);
        v7 = *(v6 + 40);
        *(v6 + 40) = v5;

        v4 = *(*(*(a1 + 40) + 8) + 40);
      }

      v8 = [_CHSDynamicColorKey instanceForEncodingKey:v9];
      [v4 setObject:v3 forKeyedSubscript:v8];
    }
  }
}

- (BOOL)_areColorsTheSame:(id)same
{
  sameCopy = same;
  v4 = [sameCopy count];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  if (v4)
  {
    v5 = v4 == +[_CHSDynamicColorKey maxPermutations];
  }

  else
  {
    v5 = 1;
  }

  v14 = v5;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__6;
  v9[4] = __Block_byref_object_dispose__6;
  v10 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__CHSDynamicColor__areColorsTheSame___block_invoke;
  v8[3] = &unk_1E7454678;
  v8[4] = v9;
  v8[5] = &v11;
  [sameCopy enumerateKeysAndObjectsUsingBlock:v8];
  v6 = *(v12 + 24);
  _Block_object_dispose(v9, 8);

  _Block_object_dispose(&v11, 8);
  return v6;
}

void __37__CHSDynamicColor__areColorsTheSame___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = *(*(a1 + 32) + 8);
  v11 = *(v8 + 40);
  v9 = (v8 + 40);
  v10 = v11;
  if (v11)
  {
    if (([v10 isEqualToColor:v7] & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  else
  {
    objc_storeStrong(v9, a3);
  }
}

- (id)_effectiveColors
{
  if (self->_sameColor)
  {
    v2 = [MEMORY[0x1E695DFD8] setWithObject:?];
  }

  else
  {
    if ([(NSDictionary *)self->_colors count])
    {
      v5 = [(CHSDynamicColor *)self _areColorsTheSame:self->_colors];
      v6 = MEMORY[0x1E695DFD8];
      allValues = [(NSDictionary *)self->_colors allValues];
      v8 = allValues;
      if (v5)
      {
        firstObject = [allValues firstObject];
        v3 = [v6 setWithObject:firstObject];
      }

      else
      {
        v3 = [v6 setWithArray:allValues];
      }

      goto LABEL_10;
    }

    v2 = [MEMORY[0x1E695DFD8] set];
  }

  v3 = v2;
LABEL_10:

  return v3;
}

@end