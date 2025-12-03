@interface MSImageScalingSpecification
+ (MSImageScalingSpecification)specificationWithSharedAlbumSpecificationString:(id)string;
+ (id)assetsToGenerateFromImageWithInputSize:(CGSize)size toConformToSpecifications:(id)specifications;
- (double)scaleFactorForInputSize:(CGSize)size;
- (id)description;
@end

@implementation MSImageScalingSpecification

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MSImageScalingSpecification;
  v4 = [(MSImageScalingSpecification *)&v12 description];
  [(MSImageScalingSpecification *)self nominalShortSideLength];
  v6 = v5;
  [(MSImageScalingSpecification *)self minimumLongSideLength];
  v8 = v7;
  [(MSImageScalingSpecification *)self maximumLongSideLength];
  v10 = [v3 stringWithFormat:@"%@ Short side: %0.0f min long side: %0.0f max long side: %0.0f", v4, v6, v8, v9];

  return v10;
}

- (double)scaleFactorForInputSize:(CGSize)size
{
  if (size.width >= size.height)
  {
    height = size.height;
  }

  else
  {
    height = size.width;
  }

  if (size.width >= size.height)
  {
    width = size.width;
  }

  else
  {
    width = size.height;
  }

  [(MSImageScalingSpecification *)self nominalShortSideLength];
  v7 = v6 / height;
  v8 = floor(width * v7);
  [(MSImageScalingSpecification *)self minimumLongSideLength];
  if (v8 >= v9)
  {
    [(MSImageScalingSpecification *)self maximumLongSideLength];
    if (v8 <= v11)
    {
      goto LABEL_12;
    }

    [(MSImageScalingSpecification *)self maximumLongSideLength];
  }

  else
  {
    [(MSImageScalingSpecification *)self minimumLongSideLength];
  }

  v7 = v10 / width;
LABEL_12:
  result = 1.0;
  if (v7 <= 1.0)
  {
    return v7;
  }

  return result;
}

+ (id)assetsToGenerateFromImageWithInputSize:(CGSize)size toConformToSpecifications:(id)specifications
{
  height = size.height;
  width = size.width;
  v50 = *MEMORY[0x277D85DE8];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  specificationsCopy = specifications;
  v7 = [specificationsCopy countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v7)
  {
    v8 = *v44;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(specificationsCopy);
        }

        v10 = *(*(&v43 + 1) + 8 * i);
        if ([v10 assetTypeFlags])
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [specificationsCopy countByEnumeratingWithState:&v43 objects:v49 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(specificationsCopy, "count")}];
  if (v7)
  {
    [v7 scaleFactorForInputSize:{width, height}];
    v13 = v12;
    *&v12 = v12;
    v14 = __96__MSImageScalingSpecification_assetsToGenerateFromImageWithInputSize_toConformToSpecifications___block_invoke(@"thumbnail", 1, *&v12);
    [v11 addObject:v14];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = specificationsCopy;
    v15 = specificationsCopy;
    v16 = [v15 countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v36;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v35 + 1) + 8 * j);
          if (v20 != v7)
          {
            [v20 scaleFactorForInputSize:{width, height}];
            if (v21 <= v13)
            {
              v24 = [v14 objectForKey:@"MSAssetMetadataAssetTypeFlags"];
              intValue = [v24 intValue];

              [v14 setObject:@"derivative" forKey:@"MSAssetMetadataAssetType"];
              v23 = [MEMORY[0x277CCABB0] numberWithInt:intValue | 2u];
              [v14 setObject:v23 forKey:@"MSAssetMetadataAssetTypeFlags"];
            }

            else
            {
              v22 = v21;
              v23 = __96__MSImageScalingSpecification_assetsToGenerateFromImageWithInputSize_toConformToSpecifications___block_invoke(@"derivative", 2, v22);
              [v11 addObject:v23];
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v35 objects:v47 count:16];
      }

      while (v17);
    }

    specificationsCopy = v34;
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = specificationsCopy;
    v26 = [v14 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v40;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v40 != v28)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v39 + 1) + 8 * k) scaleFactorForInputSize:{width, height}];
          *&v30 = v30;
          v31 = __96__MSImageScalingSpecification_assetsToGenerateFromImageWithInputSize_toConformToSpecifications___block_invoke(@"derivative", 2, *&v30);
          [v11 addObject:v31];
        }

        v27 = [v14 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v27);
    }
  }

  v32 = *MEMORY[0x277D85DE8];

  return v11;
}

id __96__MSImageScalingSpecification_assetsToGenerateFromImageWithInputSize_toConformToSpecifications___block_invoke(void *a1, uint64_t a2, float a3)
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a1;
  v7 = [v5 dictionary];
  *&v8 = a3;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  [v7 setObject:v9 forKeyedSubscript:@"scaleFactor"];

  [v7 setObject:v6 forKeyedSubscript:@"MSAssetMetadataAssetType"];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  [v7 setObject:v10 forKeyedSubscript:@"MSAssetMetadataAssetTypeFlags"];

  return v7;
}

+ (MSImageScalingSpecification)specificationWithSharedAlbumSpecificationString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(MSImageScalingSpecification);
  v5 = [stringCopy componentsSeparatedByString:@":"];

  if ([v5 count] == 3)
  {
    v6 = [v5 objectAtIndex:0];
    -[MSImageScalingSpecification setNominalShortSideLength:](v4, "setNominalShortSideLength:", [v6 integerValue]);

    v7 = [v5 objectAtIndex:1];
    -[MSImageScalingSpecification setMinimumLongSideLength:](v4, "setMinimumLongSideLength:", [v7 integerValue]);

    v8 = [v5 objectAtIndex:2];
    -[MSImageScalingSpecification setMaximumLongSideLength:](v4, "setMaximumLongSideLength:", [v8 integerValue]);
  }

  else
  {
    v8 = v4;
    v4 = 0;
  }

  return v4;
}

@end