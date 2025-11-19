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
  v3 = [a1 _IS_imageMetadataFromFileName];
  v4 = [v3 name];

  if (v4)
  {
    v5 = [v3 name];
    [v2 setObject:v5 forKeyedSubscript:kIconCompilerImageInfoNameKey];
  }

  v6 = [v3 dimension];

  if (v6)
  {
    v7 = [v3 dimension];
    [v2 setObject:v7 forKeyedSubscript:kIconCompilerImageInfoSizeKey];
  }

  v8 = [v3 scale];

  if (v8)
  {
    v9 = [v3 scale];
    [v2 setObject:v9 forKeyedSubscript:kIconCompilerImageInfoScaleKey];
  }

  else
  {
    [v2 setObject:&unk_1F1A65688 forKeyedSubscript:kIconCompilerImageInfoScaleKey];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "selectedVariant")}];
  [v2 setObject:v10 forKeyedSubscript:kIconCompilerImageInfoIsSelectedVariantKey];

  return v2;
}

- (id)scaleableResourceMetadataFromFileName
{
  v2 = objc_opt_new();
  v3 = [a1 _IS_scaleableResourceMetadataFromFileName];
  v4 = [v3 name];

  if (v4)
  {
    v5 = [v3 name];
    [v2 setObject:v5 forKeyedSubscript:kIconCompilerImageInfoNameKey];
  }

  v6 = [v3 dimension];

  if (v6)
  {
    v7 = [v3 dimension];
    [v2 setObject:v7 forKeyedSubscript:kIconCompilerImageInfoSizeKey];
  }

  v8 = [v3 scale];

  if (v8)
  {
    v9 = [v3 scale];
    [v2 setObject:v9 forKeyedSubscript:kIconCompilerImageInfoScaleKey];
  }

  else
  {
    [v2 setObject:&unk_1F1A65688 forKeyedSubscript:kIconCompilerImageInfoScaleKey];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "selectedVariant")}];
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

  v3 = [_IS_imageMetadataFromFileName_matcher matchesInString:a1 options:0 range:{0, objc_msgSend(a1, "length")}];
  if (![v3 count])
  {
    goto LABEL_20;
  }

  if ([v3 count] != 1)
  {
    [NSString(FileNameConventionAdditions) _IS_imageMetadataFromFileName];
  }

  v4 = [v3 lastObject];
  if ([v4 numberOfRanges] != 5)
  {
    [NSString(FileNameConventionAdditions) _IS_imageMetadataFromFileName];
  }

  v5 = [v4 rangeAtIndex:1];
  if (v6)
  {
    v7 = [a1 substringWithRange:{v5, v6}];
    [v2 setName:v7];

    [v2 setSelectedVariant:0];
    [v4 rangeAtIndex:2];
    if (v8)
    {
      [v2 setSelectedVariant:1];
    }

    v9 = [v4 rangeAtIndex:3];
    if (v10)
    {
      v11 = MEMORY[0x1E696AD98];
      v12 = [a1 substringWithRange:{v9, v10}];
      v13 = [v11 numberWithInteger:{objc_msgSend(v12, "integerValue")}];
      [v2 setDimension:v13];
    }

    v14 = [v4 rangeAtIndex:4];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v15;
      if (v15)
      {
        v17 = v14;
        if (v14 + v15 < [a1 length])
        {
          v18 = [a1 substringWithRange:{v17, v16}];
          if (v18)
          {
            v19 = v18;
            v20 = MEMORY[0x1E696AD98];
            v21 = [v18 integerValue];
            if (v21 <= 1)
            {
              v22 = 1;
            }

            else
            {
              v22 = v21;
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

  v3 = [_IS_scaleableResourceMetadataFromFileName_matcher matchesInString:a1 options:0 range:{0, objc_msgSend(a1, "length")}];
  if (![v3 count])
  {
    goto LABEL_10;
  }

  if ([v3 count] != 1)
  {
    [NSString(FileNameConventionAdditions) _IS_scaleableResourceMetadataFromFileName];
  }

  v4 = [v3 lastObject];
  if ([v4 numberOfRanges] != 3)
  {
    [NSString(FileNameConventionAdditions) _IS_scaleableResourceMetadataFromFileName];
  }

  v5 = [v4 rangeAtIndex:1];
  if (v6)
  {
    v7 = [a1 substringWithRange:{v5, v6}];
    [v2 setName:v7];

    [v2 setSelectedVariant:0];
    [v4 rangeAtIndex:2];
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