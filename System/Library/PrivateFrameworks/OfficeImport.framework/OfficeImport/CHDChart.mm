@interface CHDChart
+ (id)binaryEffects:(BOOL)a3;
- (BOOL)is3D;
- (BOOL)isArea;
- (BOOL)isPie;
- (BOOL)isScatterOrBubble;
- (BOOL)supportsMarkers;
- (CGRect)logicalBounds;
- (CHDChart)init;
- (NSString)description;
- (id)defaultContentFormat;
- (id)defaultDataLabelFont;
- (id)defaultFontWithResources:(id)a3;
- (id)defaultSeriesTitleFont;
- (id)defaultTextFont;
- (id)defaultThemeFont;
- (id)mainType;
- (id)styleMatrix;
- (int)defaultLabelPosition;
- (unint64_t)categoryCount;
- (unint64_t)defaultFontIndex;
- (unint64_t)seriesCount;
- (void)addChild:(id)a3;
- (void)addChildren:(id)a3;
- (void)changeParentTextListStylePreservingEffectiveValues:(id)a3;
- (void)removeChild:(id)a3;
- (void)replaceChild:(id)a3 with:(id)a4;
- (void)setBackWallGraphicProperties:(id)a3;
- (void)setChartAreaGraphicProperties:(id)a3;
- (void)setDefaultTextProperties:(id)a3;
- (void)setExternalData:(id)a3;
- (void)setFloorGraphicProperties:(id)a3;
- (void)setLegend:(id)a3;
- (void)setPlotArea:(id)a3;
- (void)setSideWallGraphicProperties:(id)a3;
- (void)setTitle:(id)a3;
- (void)setView3D:(id)a3;
@end

@implementation CHDChart

- (CHDChart)init
{
  v3 = objc_opt_class();
  v14.receiver = self;
  v14.super_class = CHDChart;
  v4 = [(OADDrawable *)&v14 initWithPropertiesClass:v3];
  v5 = v4;
  if (v4)
  {
    v4->mStyleId = -1;
    v6 = [[CHDPlotArea alloc] initWithChart:v4];
    mPlotArea = v5->mPlotArea;
    v5->mPlotArea = v6;

    v5->mAutoTitleDeleted = 1;
    v5->mPlotVisibleCellsOnly = 0;
    v5->mMSGraph = 0;
    v5->mHasSharedXValues = 0;
    v5->mDirectionChanged = 0;
    v5->mHasVisibleSeriesNames = 0;
    v5->mDisplayBlankCellsAs = 2;
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mDrawables = v5->mDrawables;
    v5->mDrawables = v8;

    v10 = objc_alloc_init(CHDDefaultTextProperties);
    mDefaultTextProperties = v5->mDefaultTextProperties;
    v5->mDefaultTextProperties = v10;

    v5->mChartDirection = 0;
    mThemeOverrides = v5->mThemeOverrides;
    v5->mThemeOverrides = 0;
  }

  return v5;
}

- (id)mainType
{
  v2 = [(CHDChart *)self plotArea];
  v3 = [v2 chartTypes];
  v4 = [v3 objectAtIndex:0];

  return v4;
}

- (unint64_t)defaultFontIndex
{
  v2 = [(EDKeyedCollection *)self->mDefaultTextProperties objectWithKey:2];
  v3 = v2;
  if (v2 && ([v2 runs], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [v3 runs];
    v6 = [v5 objectAtIndex:0];
    v7 = [v6 fontIndex];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (id)styleMatrix
{
  v2 = [(CHDChart *)self workbook];
  v3 = [v2 theme];
  v4 = [v3 baseStyles];
  v5 = [v4 styleMatrix];

  return v5;
}

- (BOOL)is3D
{
  v2 = [(CHDChart *)self mainType];
  v3 = [objc_opt_class() is3DType];

  return v3;
}

- (BOOL)isPie
{
  v2 = [(CHDChart *)self mainType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)seriesCount
{
  v2 = [(CHDChart *)self plotArea];
  v3 = [v2 chartTypes];

  v4 = [v3 count];
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [v3 objectAtIndex:v5];
      v6 += [v7 seriesCount];

      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)categoryCount
{
  v2 = [(CHDChart *)self plotArea];
  v3 = [v2 chartTypes];

  v4 = 0;
  v5 = [v3 count];
  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [v3 objectAtIndex:v6];
      v8 = [v7 categoryCount];

      if (v8 > v4)
      {
        v4 = v8;
      }

      ++v6;
    }

    while (v5 != v6);
  }

  return v4;
}

- (void)setPlotArea:(id)a3
{
  v5 = a3;
  if (self->mPlotArea != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mPlotArea, a3);
    v5 = v6;
  }
}

- (void)setView3D:(id)a3
{
  v5 = a3;
  if (self->mView3D != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mView3D, a3);
    v5 = v6;
  }
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (self->mTitle != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mTitle, a3);
    v5 = v6;
  }
}

- (void)setLegend:(id)a3
{
  v5 = a3;
  if (self->mLegend != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mLegend, a3);
    v5 = v6;
  }
}

- (void)setExternalData:(id)a3
{
  v5 = a3;
  if (self->mExternalData != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mExternalData, a3);
    v5 = v6;
  }
}

- (void)setChartAreaGraphicProperties:(id)a3
{
  v5 = a3;
  if (self->mChartAreaGraphicProperties != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mChartAreaGraphicProperties, a3);
    v5 = v6;
  }
}

- (void)setBackWallGraphicProperties:(id)a3
{
  v5 = a3;
  if (self->mBackWallGraphicProperties != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mBackWallGraphicProperties, a3);
    v5 = v6;
  }
}

- (void)setSideWallGraphicProperties:(id)a3
{
  v5 = a3;
  if (self->mSideWallGraphicProperties != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mSideWallGraphicProperties, a3);
    v5 = v6;
  }
}

- (void)setFloorGraphicProperties:(id)a3
{
  v5 = a3;
  if (self->mFloorGraphicProperties != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mFloorGraphicProperties, a3);
    v5 = v6;
  }
}

- (void)setDefaultTextProperties:(id)a3
{
  v5 = a3;
  if (self->mDefaultTextProperties != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mDefaultTextProperties, a3);
    v5 = v6;
  }
}

- (CGRect)logicalBounds
{
  x = self->mLogicalBounds.origin.x;
  y = self->mLogicalBounds.origin.y;
  width = self->mLogicalBounds.size.width;
  height = self->mLogicalBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)addChild:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSMutableArray *)self->mDrawables addObject:v4];
    [v4 setParent:self];
  }
}

- (void)addChildren:(id)a3
{
  v7 = a3;
  v4 = [v7 count];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [v7 objectAtIndex:i];
      [v6 setParent:self];
    }
  }

  [(NSMutableArray *)self->mDrawables addObjectsFromArray:v7];
}

- (void)replaceChild:(id)a3 with:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSMutableArray *)self->mDrawables indexOfObjectIdenticalTo:v8];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 setParent:0];
    [(NSMutableArray *)self->mDrawables replaceObjectAtIndex:v7 withObject:v6];
    [v6 setParent:self];
  }
}

- (void)removeChild:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableArray *)self->mDrawables indexOfObjectIdenticalTo:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 setParent:0];
    [(NSMutableArray *)self->mDrawables removeObjectAtIndex:v4];
  }
}

- (void)changeParentTextListStylePreservingEffectiveValues:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->mDrawables;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8++) changeParentTextListStylePreservingEffectiveValues:{v4, v9}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)defaultThemeFont
{
  v3 = self->mExternalData;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [(CHDChart *)self workbook];
    if (!v4)
    {
      v11 = 0;
      goto LABEL_9;
    }
  }

  v5 = [v4 theme];
  v6 = [v5 baseStyles];
  v7 = [v6 fontScheme];
  v8 = [v7 minorFont];
  v9 = [v8 latinFont];

  v10 = [v4 resources];
  v11 = [EDFont fontWithResources:v10];

  if (v9)
  {
    [v11 setName:v9];
  }

  [v11 setHeight:200.0];
  v12 = [OADSchemeColor schemeColorWithIndex:1];
  v13 = [v4 theme];
  v14 = [v13 baseStyles];
  v15 = [v14 colorScheme];
  v16 = [v4 resources];
  v17 = [v16 colors];
  v18 = [OADColor tsuColorWithColor:v12 colorMap:0 colorScheme:v15 colorPalette:v17];

  if (!v18)
  {
    v18 = +[OITSUColor blackColor];
  }

  [v11 setColor:v18];

LABEL_9:

  return v11;
}

- (id)defaultTextFont
{
  v3 = [(EDKeyedCollection *)self->mDefaultTextProperties objectWithKey:2];
  v4 = v3;
  if (v3 && ([v3 runs], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 runs];
    v7 = [v6 objectAtIndex:0];
    v8 = [v7 font];
  }

  else
  {
    v8 = [(CHDChart *)self defaultThemeFont];
  }

  return v8;
}

- (id)defaultDataLabelFont
{
  v3 = [(EDKeyedCollection *)self->mDefaultTextProperties objectWithKey:0];
  v4 = v3;
  if (v3 && ([v3 runs], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 runs];

    if (v6)
    {
      v7 = [v4 runs];
      v8 = [v7 objectAtIndex:0];
      v9 = [v8 font];

      goto LABEL_7;
    }

    v10 = [(CHDChart *)self defaultThemeFont];
  }

  else
  {
    v10 = [(CHDChart *)self defaultTextFont];
  }

  v9 = v10;
LABEL_7:

  return v9;
}

- (id)defaultSeriesTitleFont
{
  v3 = [(EDKeyedCollection *)self->mDefaultTextProperties objectWithKey:3];
  v4 = v3;
  if (v3 && ([v3 runs], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 runs];

    if (v6)
    {
      v7 = [v4 runs];
      v8 = [v7 objectAtIndex:0];
      v9 = [v8 font];

      goto LABEL_7;
    }

    v10 = [(CHDChart *)self defaultThemeFont];
  }

  else
  {
    v10 = [(CHDChart *)self defaultTextFont];
  }

  v9 = v10;
LABEL_7:

  return v9;
}

- (id)defaultContentFormat
{
  v2 = [(EDKeyedCollection *)self->mDefaultTextProperties objectWithKey:2];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 contentFormat];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)defaultFontWithResources:(id)a3
{
  v4 = [a3 fonts];
  if (!v4 || (v5 = [(CHDChart *)self defaultFontIndex], v5 == -1))
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 objectAtIndex:v5];
  }

  return v6;
}

- (int)defaultLabelPosition
{
  v2 = [(EDKeyedCollection *)self->mDefaultTextProperties objectWithKey:2];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 labelPosition];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isArea
{
  v2 = [(CHDChart *)self mainType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)supportsMarkers
{
  v3 = [(CHDChart *)self mainType];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    v5 = [(CHDChart *)self mainType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)isScatterOrBubble
{
  v3 = [(CHDChart *)self mainType];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    v5 = [(CHDChart *)self mainType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (id)binaryEffects:(BOOL)a3
{
  if (a3)
  {
    v3 = objc_alloc_init(OADOuterShadowEffect);
    v4 = +[OADRgbColor black];
    [(OADShadowEffect *)v3 setColor:v4];

    LODWORD(v5) = 1110704128;
    [(OADShadowEffect *)v3 setAngle:v5];
    LODWORD(v6) = 3.0;
    [(OADShadowEffect *)v3 setDistance:v6];
    [(OADShadowEffect *)v3 setBlurRadius:0.0];
    v7 = [MEMORY[0x277CBEA60] arrayWithObject:v3];
  }

  else
  {
    v7 = [MEMORY[0x277CBEA60] array];
  }

  return v7;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = CHDChart;
  v2 = [(OADGraphic *)&v4 description];

  return v2;
}

@end