@interface IFResourceMetadata
+ (id)metadataWithFileName:(id)a3;
@end

@implementation IFResourceMetadata

+ (id)metadataWithFileName:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (metadataWithFileName__onceToken != -1)
  {
    +[IFResourceMetadata metadataWithFileName:];
  }

  v5 = [metadataWithFileName__matcher matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  if (![v5 count])
  {
    goto LABEL_20;
  }

  if ([v5 count] != 1)
  {
    +[IFResourceMetadata metadataWithFileName:];
  }

  v6 = [v5 lastObject];
  if ([v6 numberOfRanges] != 6)
  {
    +[IFResourceMetadata metadataWithFileName:];
  }

  v7 = [v6 rangeAtIndex:1];
  if (v8)
  {
    v9 = [v3 substringWithRange:{v7, v8}];
    [v4 setName:v9];

    [v4 setSelectedVariant:0];
    [v6 rangeAtIndex:2];
    if (v10)
    {
      [v4 setSelectedVariant:1];
    }

    v11 = [v6 rangeAtIndex:3];
    if (v12)
    {
      v13 = MEMORY[0x1E696AD98];
      v14 = [v3 substringWithRange:{v11, v12}];
      [v14 floatValue];
      v15 = [v13 numberWithFloat:?];
      [v4 setDimension:v15];
    }

    v16 = [v6 rangeAtIndex:4];
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = v17;
      if (v17)
      {
        v19 = v16;
        if (v16 + v17 < [v3 length])
        {
          v20 = [v3 substringWithRange:{v19, v18}];
          if (v20)
          {
            v21 = v20;
            v22 = MEMORY[0x1E696AD98];
            v23 = [v20 integerValue];
            if (v23 <= 1)
            {
              v24 = 1;
            }

            else
            {
              v24 = v23;
            }

            v25 = [v22 numberWithInteger:v24];
            [v4 setScale:v25];
          }
        }
      }
    }

LABEL_20:
    v26 = v4;
    goto LABEL_22;
  }

  v26 = 0;
LABEL_22:

  return v26;
}

void __43__IFResourceMetadata_metadataWithFileName___block_invoke()
{
  v0 = metadataWithFileName__regexp;
  metadataWithFileName__regexp = @"^(.+?)[_|-]?(?:\\[(selected)\\])?([0-9]+.?[0-9]?)?(?:x[0-9]+)?(?:@([1|2|3])x)?(~ipad|~iphone)*$";

  if (!metadataWithFileName__matcher)
  {
    v1 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"^(.+?)[_|-]?(?:\\[(selected)\\])?([0-9]+.?[0-9]?)?(?:x[0-9]+)?(?:@([1|2|3])x)?(~ipad|~iphone)*$" options:0 error:0];
    v2 = metadataWithFileName__matcher;
    metadataWithFileName__matcher = v1;

    if (!metadataWithFileName__matcher)
    {
      __43__IFResourceMetadata_metadataWithFileName___block_invoke_cold_1();
    }
  }
}

@end