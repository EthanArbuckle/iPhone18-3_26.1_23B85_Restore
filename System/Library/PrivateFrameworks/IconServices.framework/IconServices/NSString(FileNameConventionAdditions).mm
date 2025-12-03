@interface NSString(FileNameConventionAdditions)
- (id)_IS_imageMetadataFromFileName;
- (id)_IS_scaleableResourceMetadataFromFileName;
- (id)imageMetadataFromFileName;
- (id)scaleableResourceMetadataFromFileName;
@end

@implementation NSString(FileNameConventionAdditions)

- (id)imageMetadataFromFileName
{
  v2 = objc_opt_new();
  _IS_imageMetadataFromFileName = [self _IS_imageMetadataFromFileName];
  name = [_IS_imageMetadataFromFileName name];

  if (name)
  {
    name2 = [_IS_imageMetadataFromFileName name];
    [v2 setObject:name2 forKeyedSubscript:kIconCompilerImageInfoNameKey];
  }

  dimension = [_IS_imageMetadataFromFileName dimension];

  if (dimension)
  {
    dimension2 = [_IS_imageMetadataFromFileName dimension];
    [v2 setObject:dimension2 forKeyedSubscript:kIconCompilerImageInfoSizeKey];
  }

  scale = [_IS_imageMetadataFromFileName scale];

  if (scale)
  {
    scale2 = [_IS_imageMetadataFromFileName scale];
    [v2 setObject:scale2 forKeyedSubscript:kIconCompilerImageInfoScaleKey];
  }

  else
  {
    [v2 setObject:&unk_1F1A65688 forKeyedSubscript:kIconCompilerImageInfoScaleKey];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(_IS_imageMetadataFromFileName, "selectedVariant")}];
  [v2 setObject:v10 forKeyedSubscript:kIconCompilerImageInfoIsSelectedVariantKey];

  return v2;
}

- (id)scaleableResourceMetadataFromFileName
{
  v2 = objc_opt_new();
  _IS_scaleableResourceMetadataFromFileName = [self _IS_scaleableResourceMetadataFromFileName];
  name = [_IS_scaleableResourceMetadataFromFileName name];

  if (name)
  {
    name2 = [_IS_scaleableResourceMetadataFromFileName name];
    [v2 setObject:name2 forKeyedSubscript:kIconCompilerImageInfoNameKey];
  }

  dimension = [_IS_scaleableResourceMetadataFromFileName dimension];

  if (dimension)
  {
    dimension2 = [_IS_scaleableResourceMetadataFromFileName dimension];
    [v2 setObject:dimension2 forKeyedSubscript:kIconCompilerImageInfoSizeKey];
  }

  scale = [_IS_scaleableResourceMetadataFromFileName scale];

  if (scale)
  {
    scale2 = [_IS_scaleableResourceMetadataFromFileName scale];
    [v2 setObject:scale2 forKeyedSubscript:kIconCompilerImageInfoScaleKey];
  }

  else
  {
    [v2 setObject:&unk_1F1A65688 forKeyedSubscript:kIconCompilerImageInfoScaleKey];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(_IS_scaleableResourceMetadataFromFileName, "selectedVariant")}];
  [v2 setObject:v10 forKeyedSubscript:kIconCompilerImageInfoIsSelectedVariantKey];

  return v2;
}

- (id)_IS_imageMetadataFromFileName
{
  v2 = objc_opt_new();
  if (_IS_imageMetadataFromFileName_onceToken != -1)
  {
    [NSString(FileNameConventionAdditions) _IS_imageMetadataFromFileName];
  }

  v3 = [_IS_imageMetadataFromFileName_matcher matchesInString:self options:0 range:{0, objc_msgSend(self, "length")}];
  if (![v3 count])
  {
    goto LABEL_20;
  }

  if ([v3 count] != 1)
  {
    [NSString(FileNameConventionAdditions) _IS_imageMetadataFromFileName];
  }

  lastObject = [v3 lastObject];
  if ([lastObject numberOfRanges] != 5)
  {
    [NSString(FileNameConventionAdditions) _IS_imageMetadataFromFileName];
  }

  v5 = [lastObject rangeAtIndex:1];
  if (v6)
  {
    v7 = [self substringWithRange:{v5, v6}];
    [v2 setName:v7];

    [v2 setSelectedVariant:0];
    [lastObject rangeAtIndex:2];
    if (v8)
    {
      [v2 setSelectedVariant:1];
    }

    v9 = [lastObject rangeAtIndex:3];
    if (v10)
    {
      v11 = MEMORY[0x1E696AD98];
      v12 = [self substringWithRange:{v9, v10}];
      v13 = [v11 numberWithInteger:{objc_msgSend(v12, "integerValue")}];
      [v2 setDimension:v13];
    }

    v14 = [lastObject rangeAtIndex:4];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v15;
      if (v15)
      {
        v17 = v14;
        if (v14 + v15 < [self length])
        {
          v18 = [self substringWithRange:{v17, v16}];
          if (v18)
          {
            v19 = v18;
            v20 = MEMORY[0x1E696AD98];
            integerValue = [v18 integerValue];
            if (integerValue <= 1)
            {
              v22 = 1;
            }

            else
            {
              v22 = integerValue;
            }

            v23 = [v20 numberWithInteger:v22];
            [v2 setScale:v23];
          }
        }
      }
    }

LABEL_20:
    v24 = v2;
    goto LABEL_22;
  }

  v24 = 0;
LABEL_22:

  return v24;
}

- (id)_IS_scaleableResourceMetadataFromFileName
{
  v2 = objc_opt_new();
  if (_IS_scaleableResourceMetadataFromFileName_onceToken != -1)
  {
    [NSString(FileNameConventionAdditions) _IS_scaleableResourceMetadataFromFileName];
  }

  v3 = [_IS_scaleableResourceMetadataFromFileName_matcher matchesInString:self options:0 range:{0, objc_msgSend(self, "length")}];
  if (![v3 count])
  {
    goto LABEL_10;
  }

  if ([v3 count] != 1)
  {
    [NSString(FileNameConventionAdditions) _IS_scaleableResourceMetadataFromFileName];
  }

  lastObject = [v3 lastObject];
  if ([lastObject numberOfRanges] != 3)
  {
    [NSString(FileNameConventionAdditions) _IS_scaleableResourceMetadataFromFileName];
  }

  v5 = [lastObject rangeAtIndex:1];
  if (v6)
  {
    v7 = [self substringWithRange:{v5, v6}];
    [v2 setName:v7];

    [v2 setSelectedVariant:0];
    [lastObject rangeAtIndex:2];
    if (v8)
    {
      [v2 setSelectedVariant:1];
    }

LABEL_10:
    v9 = v2;
    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

@end