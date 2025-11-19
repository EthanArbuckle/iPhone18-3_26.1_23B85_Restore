@interface OADGraphicStyleCache
+ (int)fillCatagory:(id)a3;
- (OADGraphicStyleCache)init;
- (id)tableStyleForId:(id)a3;
- (unint64_t)cacheDrawablePropertiesOfCategory:(int)a3 withFillCategory:(int)a4 fillIndex:(unint64_t)a5 strokeIndex:(unint64_t)a6 shadowIndex:(unint64_t)a7 reflectionOpacity:(float)a8 textStyleIndex:(unint64_t)a9;
- (unint64_t)cacheDrawablePropertiesOfCategory:(int)a3 withGraphicProperties:(id)a4 textBodyProperties:(id)a5 paragraphProperties:(id)a6 characterProperties:(id)a7 colorContext:(id)a8;
- (unint64_t)cacheFill:(id)a3 returnCategory:(int *)a4;
- (unint64_t)cacheStroke:(id)a3;
- (void)applyCachedDrawableStyle:(id)a3 toGraphicProperties:(id)a4;
- (void)applyCachedDrawableStyle:(id)a3 toParagraphProperties:(id)a4;
- (void)applyCachedDrawableStyle:(id)a3 toTextBodyProperties:(id)a4;
- (void)cacheChartStyleId:(int)a3;
- (void)cacheTableStyle:(id)a3;
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

+ (int)fillCatagory:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = objc_opt_class();
    v6 = TSUDynamicCast(v5, v3);
    v7 = v6;
    if (v6)
    {
      v8 = [v6 color];
      [OADColor alphaWithColor:v8];
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
      v12 = TSUDynamicCast(v11, v3);
      v13 = v12;
      if (v12)
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v14 = [v12 stops];
        v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v15)
        {
          v16 = *v33;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v33 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = [*(*(&v32 + 1) + 8 * i) color];
              [OADColor alphaWithColor:v18];
              v20 = v19 <= 0.08;

              if (!v20)
              {
                v4 = 1;
                goto LABEL_19;
              }
            }

            v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
        v22 = TSUDynamicCast(v21, v3);
        v23 = v22;
        if (v22)
        {
          v24 = [v22 blipRef];
          v25 = [v24 effectCount];
          if (v25)
          {
            v26 = 0;
            while (1)
            {
              v27 = objc_opt_class();
              v28 = [v24 effectAtIndex:v26];
              v29 = TSUDynamicCast(v27, v28);

              if (v29)
              {
                [v29 alpha];
                if (v30 <= 0.08)
                {
                  break;
                }
              }

              if (v25 == ++v26)
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

- (unint64_t)cacheFill:(id)a3 returnCategory:(int *)a4
{
  v6 = a3;
  v7 = [OADGraphicStyleCache fillCatagory:v6];
  if (a4)
  {
    *a4 = v7;
  }

  if (v7 > 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(OADGraphicFeatureCache *)self->mFillCacheArray[v7] cacheFeature:v6];
  }

  return v8;
}

- (unint64_t)cacheStroke:(id)a3
{
  v4 = a3;
  v5 = [v4 fill];
  v6 = [OADGraphicStyleCache fillCatagory:v5];

  if (v6 == 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(OADGraphicFeatureCache *)self->mStrokeCache cacheFeature:v4];
  }

  return v7;
}

- (void)cacheTableStyle:(id)a3
{
  v6 = a3;
  v4 = [v6 id];
  if ([v4 hasPrefix:@"{"] && objc_msgSend(v4, "hasSuffix:", @"}") && objc_msgSend(v4, "length") == 38)
  {
    v5 = [v4 substringWithRange:{1, objc_msgSend(v4, "length") - 2}];

    v4 = v5;
  }

  if (v4)
  {
    [(OADGraphicFeatureCache *)self->mTableIdCache cacheFeature:v4];
    [(NSMutableDictionary *)self->mTableStyleCache setObject:v6 forKey:v4];
  }
}

- (id)tableStyleForId:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mTableStyleCache objectForKey:a3];

  return v3;
}

- (void)cacheChartStyleId:(int)a3
{
  mChartIdCache = self->mChartIdCache;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&a3];
  [(OADGraphicFeatureCache *)mChartIdCache cacheFeature:?];
}

- (unint64_t)cacheDrawablePropertiesOfCategory:(int)a3 withFillCategory:(int)a4 fillIndex:(unint64_t)a5 strokeIndex:(unint64_t)a6 shadowIndex:(unint64_t)a7 reflectionOpacity:(float)a8 textStyleIndex:(unint64_t)a9
{
  v11 = [[OADCachedDrawableStyle alloc] initWithFillCategory:*&a4 mFillIndex:a5 strokeIndex:a6 shadowIndex:a7 reflectionOpacity:(a8 * 255.0) textStyleIndex:a9];
  v12 = [(OADGraphicFeatureCache *)self->mDrawableStyleCacheArray[a3] cacheFeature:v11];

  return v12;
}

- (unint64_t)cacheDrawablePropertiesOfCategory:(int)a3 withGraphicProperties:(id)a4 textBodyProperties:(id)a5 paragraphProperties:(id)a6 characterProperties:(id)a7 colorContext:(id)a8
{
  v48 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = v14;
  v46 = 4;
  if (a3)
  {
    v15 = 0;
  }

  else
  {
    v16 = [v14 fill];
    v15 = [(OADGraphicStyleCache *)self cacheFill:v16 returnCategory:&v46];

    if (!v15)
    {
      v19 = 0;
      goto LABEL_35;
    }
  }

  v17 = [v14 stroke];
  v18 = [(OADGraphicStyleCache *)self cacheStroke:v17];

  if (v18 || ((v19 = 0, !a3) ? (v20 = v15 == 0) : (v20 = 0), !v20 ? (v21 = 0) : (v21 = 1), (a3 - 1) >= 2 && (v21 & 1) == 0))
  {
    [v14 effects];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v22 = v43 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v42 objects:v47 count:16];
    v35 = v18;
    v36 = self;
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

        v29 = [(OADGraphicStyleCache *)v36 cacheShadow:v24];
        [v25 startOpacity];
        v31 = LODWORD(v30);
        if ((a3 & 0xFFFFFFFD) == 1)
        {
          v32 = 0;
        }

        else
        {
          v33 = [[OADCachedTextStyle alloc] initWithTextBodyProperties:v37 paragraphProperties:v38 characterProperties:v39 colorContext:v40 graphicStyleCache:v36];
          v32 = [(OADGraphicFeatureCache *)v36->mTextStyleCache cacheFeature:v33];
        }

        LODWORD(v30) = v31;
        v19 = [(OADGraphicStyleCache *)v36 cacheDrawablePropertiesOfCategory:a3 withFillCategory:v46 fillIndex:v15 strokeIndex:v35 shadowIndex:v29 reflectionOpacity:v32 textStyleIndex:v30];

        break;
      }
    }
  }

LABEL_35:

  return v19;
}

- (void)applyCachedDrawableStyle:(id)a3 toGraphicProperties:(id)a4
{
  v18 = a3;
  v6 = a4;
  if ([v18 fillCategory] > 3 || (-[OADGraphicFeatureCache countedFeatureAtIndex:](self->mFillCacheArray[objc_msgSend(v18, "fillCategory")], "countedFeatureAtIndex:", objc_msgSend(v18, "fillIndex")), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "feature"), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v8 = +[OADNullFill nullFill];
  }

  v9 = -[OADGraphicFeatureCache countedFeatureAtIndex:](self->mStrokeCache, "countedFeatureAtIndex:", [v18 strokeIndex]);
  v10 = [v9 feature];

  if (!v10)
  {
    v10 = +[OADStroke nullStroke];
  }

  v11 = [MEMORY[0x277CBEA60] array];
  v12 = -[OADGraphicFeatureCache countedFeatureAtIndex:](self->mShadowCache, "countedFeatureAtIndex:", [v18 shadowIndex]);
  v13 = [v12 feature];

  if (v13)
  {
    v14 = [v11 arrayByAddingObject:v13];

    v11 = v14;
  }

  if ([v18 reflectionOpacity])
  {
    v15 = objc_alloc_init(OADReflectionEffect);
    *&v16 = [v18 reflectionOpacity];
    [(OADReflectionEffect *)v15 setStartOpacity:v16];
    v17 = [v11 arrayByAddingObject:v15];

    v11 = v17;
  }

  [v6 setFill:v8];
  [v6 setStroke:v10];
  [v6 setEffects:v11];
}

- (void)applyCachedDrawableStyle:(id)a3 toParagraphProperties:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = -[OADGraphicFeatureCache countedFeatureAtIndex:](self->mTextStyleCache, "countedFeatureAtIndex:", [v9 textStyleIndex]);
  v8 = [v7 feature];

  [v8 applyToParagraphProperties:v6 graphicStyleCache:self];
}

- (void)applyCachedDrawableStyle:(id)a3 toTextBodyProperties:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = -[OADGraphicFeatureCache countedFeatureAtIndex:](self->mTextStyleCache, "countedFeatureAtIndex:", [v9 textStyleIndex]);
  v8 = [v7 feature];

  [v8 applyToTextBodyProperties:v6 graphicStyleCache:self];
}

@end