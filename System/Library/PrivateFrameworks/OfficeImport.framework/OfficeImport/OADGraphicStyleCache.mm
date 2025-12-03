@interface OADGraphicStyleCache
+ (int)fillCatagory:(id)catagory;
- (OADGraphicStyleCache)init;
- (id)tableStyleForId:(id)id;
- (unint64_t)cacheDrawablePropertiesOfCategory:(int)category withFillCategory:(int)fillCategory fillIndex:(unint64_t)index strokeIndex:(unint64_t)strokeIndex shadowIndex:(unint64_t)shadowIndex reflectionOpacity:(float)opacity textStyleIndex:(unint64_t)styleIndex;
- (unint64_t)cacheDrawablePropertiesOfCategory:(int)category withGraphicProperties:(id)properties textBodyProperties:(id)bodyProperties paragraphProperties:(id)paragraphProperties characterProperties:(id)characterProperties colorContext:(id)context;
- (unint64_t)cacheFill:(id)fill returnCategory:(int *)category;
- (unint64_t)cacheStroke:(id)stroke;
- (void)applyCachedDrawableStyle:(id)style toGraphicProperties:(id)properties;
- (void)applyCachedDrawableStyle:(id)style toParagraphProperties:(id)properties;
- (void)applyCachedDrawableStyle:(id)style toTextBodyProperties:(id)properties;
- (void)cacheChartStyleId:(int)id;
- (void)cacheTableStyle:(id)style;
- (void)dealloc;
@end

@implementation OADGraphicStyleCache

- (OADGraphicStyleCache)init
{
  v26.receiver = self;
  v26.super_class = OADGraphicStyleCache;
  v2 = [(OADGraphicStyleCache *)&v26 init];
  if (v2)
  {
    for (i = 8; i != 40; i += 8)
    {
      v4 = objc_alloc_init(OADGraphicFeatureCache);
      v5 = *(&v2->super.isa + i);
      *(&v2->super.isa + i) = v4;
    }

    v6 = objc_alloc_init(OADGraphicFeatureCache);
    mStrokeCache = v2->mStrokeCache;
    v2->mStrokeCache = v6;

    v8 = objc_alloc_init(OADGraphicFeatureCache);
    mShadowCache = v2->mShadowCache;
    v2->mShadowCache = v8;

    v10 = objc_alloc_init(OADGraphicFeatureCache);
    mColorCache = v2->mColorCache;
    v2->mColorCache = v10;

    v12 = objc_alloc_init(OADGraphicFeatureCache);
    mFontFaceCache = v2->mFontFaceCache;
    v2->mFontFaceCache = v12;

    v14 = objc_alloc_init(OADGraphicFeatureCache);
    mTextStyleCache = v2->mTextStyleCache;
    v2->mTextStyleCache = v14;

    v16 = objc_alloc_init(OADGraphicFeatureCache);
    mTableIdCache = v2->mTableIdCache;
    v2->mTableIdCache = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mTableStyleCache = v2->mTableStyleCache;
    v2->mTableStyleCache = v18;

    v20 = objc_alloc_init(OADGraphicFeatureCache);
    mChartIdCache = v2->mChartIdCache;
    v2->mChartIdCache = v20;

    for (j = 104; j != 136; j += 8)
    {
      v23 = objc_alloc_init(OADGraphicFeatureCache);
      v24 = *(&v2->super.isa + j);
      *(&v2->super.isa + j) = v23;
    }
  }

  return v2;
}

- (void)dealloc
{
  for (i = 8; i != 40; i += 8)
  {
    v4 = *(&self->super.isa + i);
    *(&self->super.isa + i) = 0;
  }

  mStrokeCache = self->mStrokeCache;
  self->mStrokeCache = 0;

  mShadowCache = self->mShadowCache;
  self->mShadowCache = 0;

  mColorCache = self->mColorCache;
  self->mColorCache = 0;

  mFontFaceCache = self->mFontFaceCache;
  self->mFontFaceCache = 0;

  mTextStyleCache = self->mTextStyleCache;
  self->mTextStyleCache = 0;

  mTableIdCache = self->mTableIdCache;
  self->mTableIdCache = 0;

  mTableStyleCache = self->mTableStyleCache;
  self->mTableStyleCache = 0;

  mChartIdCache = self->mChartIdCache;
  self->mChartIdCache = 0;

  for (j = 104; j != 136; j += 8)
  {
    v14 = *(&self->super.isa + j);
    *(&self->super.isa + j) = 0;
  }

  v15.receiver = self;
  v15.super_class = OADGraphicStyleCache;
  [(OADGraphicStyleCache *)&v15 dealloc];
}

+ (int)fillCatagory:(id)catagory
{
  v37 = *MEMORY[0x277D85DE8];
  catagoryCopy = catagory;
  if (catagoryCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = objc_opt_class();
    v6 = TSUDynamicCast(v5, catagoryCopy);
    v7 = v6;
    if (v6)
    {
      color = [v6 color];
      [OADColor alphaWithColor:color];
      v10 = v9;

      if (v10 <= 0.08)
      {
        v4 = 4;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v11 = objc_opt_class();
      v12 = TSUDynamicCast(v11, catagoryCopy);
      v13 = v12;
      if (v12)
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        stops = [v12 stops];
        v15 = [stops countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v15)
        {
          v16 = *v33;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v33 != v16)
              {
                objc_enumerationMutation(stops);
              }

              color2 = [*(*(&v32 + 1) + 8 * i) color];
              [OADColor alphaWithColor:color2];
              v20 = v19 <= 0.08;

              if (!v20)
              {
                v4 = 1;
                goto LABEL_19;
              }
            }

            v15 = [stops countByEnumeratingWithState:&v32 objects:v36 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v4 = 4;
LABEL_19:
      }

      else
      {
        v21 = objc_opt_class();
        v22 = TSUDynamicCast(v21, catagoryCopy);
        v23 = v22;
        if (v22)
        {
          blipRef = [v22 blipRef];
          effectCount = [blipRef effectCount];
          if (effectCount)
          {
            v26 = 0;
            while (1)
            {
              v27 = objc_opt_class();
              v28 = [blipRef effectAtIndex:v26];
              v29 = TSUDynamicCast(v27, v28);

              if (v29)
              {
                [v29 alpha];
                if (v30 <= 0.08)
                {
                  break;
                }
              }

              if (effectCount == ++v26)
              {
                goto LABEL_26;
              }
            }

            v4 = 4;
          }

          else
          {
LABEL_26:
            v4 = 2;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4 = 3;
          }

          else
          {
            v4 = 4;
          }
        }
      }
    }
  }

  else
  {
    v4 = 4;
  }

  return v4;
}

- (unint64_t)cacheFill:(id)fill returnCategory:(int *)category
{
  fillCopy = fill;
  v7 = [OADGraphicStyleCache fillCatagory:fillCopy];
  if (category)
  {
    *category = v7;
  }

  if (v7 > 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(OADGraphicFeatureCache *)self->mFillCacheArray[v7] cacheFeature:fillCopy];
  }

  return v8;
}

- (unint64_t)cacheStroke:(id)stroke
{
  strokeCopy = stroke;
  fill = [strokeCopy fill];
  v6 = [OADGraphicStyleCache fillCatagory:fill];

  if (v6 == 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(OADGraphicFeatureCache *)self->mStrokeCache cacheFeature:strokeCopy];
  }

  return v7;
}

- (void)cacheTableStyle:(id)style
{
  styleCopy = style;
  v4 = [styleCopy id];
  if ([v4 hasPrefix:@"{"] && objc_msgSend(v4, "hasSuffix:", @"}") && objc_msgSend(v4, "length") == 38)
  {
    v5 = [v4 substringWithRange:{1, objc_msgSend(v4, "length") - 2}];

    v4 = v5;
  }

  if (v4)
  {
    [(OADGraphicFeatureCache *)self->mTableIdCache cacheFeature:v4];
    [(NSMutableDictionary *)self->mTableStyleCache setObject:styleCopy forKey:v4];
  }
}

- (id)tableStyleForId:(id)id
{
  v3 = [(NSMutableDictionary *)self->mTableStyleCache objectForKey:id];

  return v3;
}

- (void)cacheChartStyleId:(int)id
{
  mChartIdCache = self->mChartIdCache;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&id];
  [(OADGraphicFeatureCache *)mChartIdCache cacheFeature:?];
}

- (unint64_t)cacheDrawablePropertiesOfCategory:(int)category withFillCategory:(int)fillCategory fillIndex:(unint64_t)index strokeIndex:(unint64_t)strokeIndex shadowIndex:(unint64_t)shadowIndex reflectionOpacity:(float)opacity textStyleIndex:(unint64_t)styleIndex
{
  v11 = [[OADCachedDrawableStyle alloc] initWithFillCategory:*&fillCategory mFillIndex:index strokeIndex:strokeIndex shadowIndex:shadowIndex reflectionOpacity:(opacity * 255.0) textStyleIndex:styleIndex];
  v12 = [(OADGraphicFeatureCache *)self->mDrawableStyleCacheArray[category] cacheFeature:v11];

  return v12;
}

- (unint64_t)cacheDrawablePropertiesOfCategory:(int)category withGraphicProperties:(id)properties textBodyProperties:(id)bodyProperties paragraphProperties:(id)paragraphProperties characterProperties:(id)characterProperties colorContext:(id)context
{
  v48 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  bodyPropertiesCopy = bodyProperties;
  paragraphPropertiesCopy = paragraphProperties;
  characterPropertiesCopy = characterProperties;
  contextCopy = context;
  v41 = propertiesCopy;
  v46 = 4;
  if (category)
  {
    v15 = 0;
  }

  else
  {
    fill = [propertiesCopy fill];
    v15 = [(OADGraphicStyleCache *)self cacheFill:fill returnCategory:&v46];

    if (!v15)
    {
      v19 = 0;
      goto LABEL_35;
    }
  }

  stroke = [propertiesCopy stroke];
  v18 = [(OADGraphicStyleCache *)self cacheStroke:stroke];

  if (v18 || ((v19 = 0, !category) ? (v20 = v15 == 0) : (v20 = 0), !v20 ? (v21 = 0) : (v21 = 1), (category - 1) >= 2 && (v21 & 1) == 0))
  {
    [propertiesCopy effects];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v22 = v43 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v42 objects:v47 count:16];
    v35 = v18;
    selfCopy = self;
    v24 = 0;
    v25 = 0;
    if (!v23)
    {
      goto LABEL_31;
    }

    v26 = *v43;
    while (1)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v43 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v42 + 1) + 8 * i);
        if (v24)
        {
          if (v25)
          {
            continue;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v24 = v28;
            if (v25)
            {
              continue;
            }
          }

          else
          {
            v24 = 0;
            if (v25)
            {
              continue;
            }
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v28;
        }

        else
        {
          v25 = 0;
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (!v23)
      {
LABEL_31:

        v29 = [(OADGraphicStyleCache *)selfCopy cacheShadow:v24];
        [v25 startOpacity];
        v31 = LODWORD(v30);
        if ((category & 0xFFFFFFFD) == 1)
        {
          v32 = 0;
        }

        else
        {
          v33 = [[OADCachedTextStyle alloc] initWithTextBodyProperties:bodyPropertiesCopy paragraphProperties:paragraphPropertiesCopy characterProperties:characterPropertiesCopy colorContext:contextCopy graphicStyleCache:selfCopy];
          v32 = [(OADGraphicFeatureCache *)selfCopy->mTextStyleCache cacheFeature:v33];
        }

        LODWORD(v30) = v31;
        v19 = [(OADGraphicStyleCache *)selfCopy cacheDrawablePropertiesOfCategory:category withFillCategory:v46 fillIndex:v15 strokeIndex:v35 shadowIndex:v29 reflectionOpacity:v32 textStyleIndex:v30];

        break;
      }
    }
  }

LABEL_35:

  return v19;
}

- (void)applyCachedDrawableStyle:(id)style toGraphicProperties:(id)properties
{
  styleCopy = style;
  propertiesCopy = properties;
  if ([styleCopy fillCategory] > 3 || (-[OADGraphicFeatureCache countedFeatureAtIndex:](self->mFillCacheArray[objc_msgSend(styleCopy, "fillCategory")], "countedFeatureAtIndex:", objc_msgSend(styleCopy, "fillIndex")), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "feature"), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v8 = +[OADNullFill nullFill];
  }

  v9 = -[OADGraphicFeatureCache countedFeatureAtIndex:](self->mStrokeCache, "countedFeatureAtIndex:", [styleCopy strokeIndex]);
  feature = [v9 feature];

  if (!feature)
  {
    feature = +[OADStroke nullStroke];
  }

  array = [MEMORY[0x277CBEA60] array];
  v12 = -[OADGraphicFeatureCache countedFeatureAtIndex:](self->mShadowCache, "countedFeatureAtIndex:", [styleCopy shadowIndex]);
  feature2 = [v12 feature];

  if (feature2)
  {
    v14 = [array arrayByAddingObject:feature2];

    array = v14;
  }

  if ([styleCopy reflectionOpacity])
  {
    v15 = objc_alloc_init(OADReflectionEffect);
    *&v16 = [styleCopy reflectionOpacity];
    [(OADReflectionEffect *)v15 setStartOpacity:v16];
    v17 = [array arrayByAddingObject:v15];

    array = v17;
  }

  [propertiesCopy setFill:v8];
  [propertiesCopy setStroke:feature];
  [propertiesCopy setEffects:array];
}

- (void)applyCachedDrawableStyle:(id)style toParagraphProperties:(id)properties
{
  styleCopy = style;
  propertiesCopy = properties;
  v7 = -[OADGraphicFeatureCache countedFeatureAtIndex:](self->mTextStyleCache, "countedFeatureAtIndex:", [styleCopy textStyleIndex]);
  feature = [v7 feature];

  [feature applyToParagraphProperties:propertiesCopy graphicStyleCache:self];
}

- (void)applyCachedDrawableStyle:(id)style toTextBodyProperties:(id)properties
{
  styleCopy = style;
  propertiesCopy = properties;
  v7 = -[OADGraphicFeatureCache countedFeatureAtIndex:](self->mTextStyleCache, "countedFeatureAtIndex:", [styleCopy textStyleIndex]);
  feature = [v7 feature];

  [feature applyToTextBodyProperties:propertiesCopy graphicStyleCache:self];
}

@end