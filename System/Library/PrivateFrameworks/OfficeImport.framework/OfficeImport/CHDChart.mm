@interface CHDChart
+ (id)binaryEffects:(BOOL)effects;
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
- (id)defaultFontWithResources:(id)resources;
- (id)defaultSeriesTitleFont;
- (id)defaultTextFont;
- (id)defaultThemeFont;
- (id)mainType;
- (id)styleMatrix;
- (int)defaultLabelPosition;
- (unint64_t)categoryCount;
- (unint64_t)defaultFontIndex;
- (unint64_t)seriesCount;
- (void)addChild:(id)child;
- (void)addChildren:(id)children;
- (void)changeParentTextListStylePreservingEffectiveValues:(id)values;
- (void)removeChild:(id)child;
- (void)replaceChild:(id)child with:(id)with;
- (void)setBackWallGraphicProperties:(id)properties;
- (void)setChartAreaGraphicProperties:(id)properties;
- (void)setDefaultTextProperties:(id)properties;
- (void)setExternalData:(id)data;
- (void)setFloorGraphicProperties:(id)properties;
- (void)setLegend:(id)legend;
- (void)setPlotArea:(id)area;
- (void)setSideWallGraphicProperties:(id)properties;
- (void)setTitle:(id)title;
- (void)setView3D:(id)d;
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
  plotArea = [(CHDChart *)self plotArea];
  chartTypes = [plotArea chartTypes];
  v4 = [chartTypes objectAtIndex:0];

  return v4;
}

- (unint64_t)defaultFontIndex
{
  v2 = [(EDKeyedCollection *)self->mDefaultTextProperties objectWithKey:2];
  v3 = v2;
  if (v2 && ([v2 runs], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    runs = [v3 runs];
    v6 = [runs objectAtIndex:0];
    fontIndex = [v6 fontIndex];
  }

  else
  {
    fontIndex = -1;
  }

  return fontIndex;
}

- (id)styleMatrix
{
  workbook = [(CHDChart *)self workbook];
  theme = [workbook theme];
  baseStyles = [theme baseStyles];
  styleMatrix = [baseStyles styleMatrix];

  return styleMatrix;
}

- (BOOL)is3D
{
  mainType = [(CHDChart *)self mainType];
  is3DType = [objc_opt_class() is3DType];

  return is3DType;
}

- (BOOL)isPie
{
  mainType = [(CHDChart *)self mainType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)seriesCount
{
  plotArea = [(CHDChart *)self plotArea];
  chartTypes = [plotArea chartTypes];

  v4 = [chartTypes count];
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [chartTypes objectAtIndex:v5];
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
  plotArea = [(CHDChart *)self plotArea];
  chartTypes = [plotArea chartTypes];

  v4 = 0;
  v5 = [chartTypes count];
  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [chartTypes objectAtIndex:v6];
      categoryCount = [v7 categoryCount];

      if (categoryCount > v4)
      {
        v4 = categoryCount;
      }

      ++v6;
    }

    while (v5 != v6);
  }

  return v4;
}

- (void)setPlotArea:(id)area
{
  areaCopy = area;
  if (self->mPlotArea != areaCopy)
  {
    v6 = areaCopy;
    objc_storeStrong(&self->mPlotArea, area);
    areaCopy = v6;
  }
}

- (void)setView3D:(id)d
{
  dCopy = d;
  if (self->mView3D != dCopy)
  {
    v6 = dCopy;
    objc_storeStrong(&self->mView3D, d);
    dCopy = v6;
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (self->mTitle != titleCopy)
  {
    v6 = titleCopy;
    objc_storeStrong(&self->mTitle, title);
    titleCopy = v6;
  }
}

- (void)setLegend:(id)legend
{
  legendCopy = legend;
  if (self->mLegend != legendCopy)
  {
    v6 = legendCopy;
    objc_storeStrong(&self->mLegend, legend);
    legendCopy = v6;
  }
}

- (void)setExternalData:(id)data
{
  dataCopy = data;
  if (self->mExternalData != dataCopy)
  {
    v6 = dataCopy;
    objc_storeStrong(&self->mExternalData, data);
    dataCopy = v6;
  }
}

- (void)setChartAreaGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  if (self->mChartAreaGraphicProperties != propertiesCopy)
  {
    v6 = propertiesCopy;
    objc_storeStrong(&self->mChartAreaGraphicProperties, properties);
    propertiesCopy = v6;
  }
}

- (void)setBackWallGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  if (self->mBackWallGraphicProperties != propertiesCopy)
  {
    v6 = propertiesCopy;
    objc_storeStrong(&self->mBackWallGraphicProperties, properties);
    propertiesCopy = v6;
  }
}

- (void)setSideWallGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  if (self->mSideWallGraphicProperties != propertiesCopy)
  {
    v6 = propertiesCopy;
    objc_storeStrong(&self->mSideWallGraphicProperties, properties);
    propertiesCopy = v6;
  }
}

- (void)setFloorGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  if (self->mFloorGraphicProperties != propertiesCopy)
  {
    v6 = propertiesCopy;
    objc_storeStrong(&self->mFloorGraphicProperties, properties);
    propertiesCopy = v6;
  }
}

- (void)setDefaultTextProperties:(id)properties
{
  propertiesCopy = properties;
  if (self->mDefaultTextProperties != propertiesCopy)
  {
    v6 = propertiesCopy;
    objc_storeStrong(&self->mDefaultTextProperties, properties);
    propertiesCopy = v6;
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

- (void)addChild:(id)child
{
  childCopy = child;
  if (childCopy)
  {
    [(NSMutableArray *)self->mDrawables addObject:childCopy];
    [childCopy setParent:self];
  }
}

- (void)addChildren:(id)children
{
  childrenCopy = children;
  v4 = [childrenCopy count];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [childrenCopy objectAtIndex:i];
      [v6 setParent:self];
    }
  }

  [(NSMutableArray *)self->mDrawables addObjectsFromArray:childrenCopy];
}

- (void)replaceChild:(id)child with:(id)with
{
  childCopy = child;
  withCopy = with;
  v7 = [(NSMutableArray *)self->mDrawables indexOfObjectIdenticalTo:childCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [childCopy setParent:0];
    [(NSMutableArray *)self->mDrawables replaceObjectAtIndex:v7 withObject:withCopy];
    [withCopy setParent:self];
  }
}

- (void)removeChild:(id)child
{
  childCopy = child;
  v4 = [(NSMutableArray *)self->mDrawables indexOfObjectIdenticalTo:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [childCopy setParent:0];
    [(NSMutableArray *)self->mDrawables removeObjectAtIndex:v4];
  }
}

- (void)changeParentTextListStylePreservingEffectiveValues:(id)values
{
  v14 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
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

        [*(*(&v9 + 1) + 8 * v8++) changeParentTextListStylePreservingEffectiveValues:{valuesCopy, v9}];
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
    workbook = v3;
  }

  else
  {
    workbook = [(CHDChart *)self workbook];
    if (!workbook)
    {
      v11 = 0;
      goto LABEL_9;
    }
  }

  theme = [workbook theme];
  baseStyles = [theme baseStyles];
  fontScheme = [baseStyles fontScheme];
  minorFont = [fontScheme minorFont];
  latinFont = [minorFont latinFont];

  resources = [workbook resources];
  v11 = [EDFont fontWithResources:resources];

  if (latinFont)
  {
    [v11 setName:latinFont];
  }

  [v11 setHeight:200.0];
  v12 = [OADSchemeColor schemeColorWithIndex:1];
  theme2 = [workbook theme];
  baseStyles2 = [theme2 baseStyles];
  colorScheme = [baseStyles2 colorScheme];
  resources2 = [workbook resources];
  colors = [resources2 colors];
  v18 = [OADColor tsuColorWithColor:v12 colorMap:0 colorScheme:colorScheme colorPalette:colors];

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
    runs = [v4 runs];
    v7 = [runs objectAtIndex:0];
    font = [v7 font];
  }

  else
  {
    font = [(CHDChart *)self defaultThemeFont];
  }

  return font;
}

- (id)defaultDataLabelFont
{
  v3 = [(EDKeyedCollection *)self->mDefaultTextProperties objectWithKey:0];
  v4 = v3;
  if (v3 && ([v3 runs], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    runs = [v4 runs];

    if (runs)
    {
      runs2 = [v4 runs];
      v8 = [runs2 objectAtIndex:0];
      font = [v8 font];

      goto LABEL_7;
    }

    defaultThemeFont = [(CHDChart *)self defaultThemeFont];
  }

  else
  {
    defaultThemeFont = [(CHDChart *)self defaultTextFont];
  }

  font = defaultThemeFont;
LABEL_7:

  return font;
}

- (id)defaultSeriesTitleFont
{
  v3 = [(EDKeyedCollection *)self->mDefaultTextProperties objectWithKey:3];
  v4 = v3;
  if (v3 && ([v3 runs], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    runs = [v4 runs];

    if (runs)
    {
      runs2 = [v4 runs];
      v8 = [runs2 objectAtIndex:0];
      font = [v8 font];

      goto LABEL_7;
    }

    defaultThemeFont = [(CHDChart *)self defaultThemeFont];
  }

  else
  {
    defaultThemeFont = [(CHDChart *)self defaultTextFont];
  }

  font = defaultThemeFont;
LABEL_7:

  return font;
}

- (id)defaultContentFormat
{
  v2 = [(EDKeyedCollection *)self->mDefaultTextProperties objectWithKey:2];
  v3 = v2;
  if (v2)
  {
    contentFormat = [v2 contentFormat];
  }

  else
  {
    contentFormat = 0;
  }

  return contentFormat;
}

- (id)defaultFontWithResources:(id)resources
{
  fonts = [resources fonts];
  if (!fonts || (v5 = [(CHDChart *)self defaultFontIndex], v5 == -1))
  {
    v6 = 0;
  }

  else
  {
    v6 = [fonts objectAtIndex:v5];
  }

  return v6;
}

- (int)defaultLabelPosition
{
  v2 = [(EDKeyedCollection *)self->mDefaultTextProperties objectWithKey:2];
  v3 = v2;
  if (v2)
  {
    labelPosition = [v2 labelPosition];
  }

  else
  {
    labelPosition = 0;
  }

  return labelPosition;
}

- (BOOL)isArea
{
  mainType = [(CHDChart *)self mainType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)supportsMarkers
{
  mainType = [(CHDChart *)self mainType];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    mainType2 = [(CHDChart *)self mainType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)isScatterOrBubble
{
  mainType = [(CHDChart *)self mainType];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    mainType2 = [(CHDChart *)self mainType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (id)binaryEffects:(BOOL)effects
{
  if (effects)
  {
    v3 = objc_alloc_init(OADOuterShadowEffect);
    v4 = +[OADRgbColor black];
    [(OADShadowEffect *)v3 setColor:v4];

    LODWORD(v5) = 1110704128;
    [(OADShadowEffect *)v3 setAngle:v5];
    LODWORD(v6) = 3.0;
    [(OADShadowEffect *)v3 setDistance:v6];
    [(OADShadowEffect *)v3 setBlurRadius:0.0];
    array = [MEMORY[0x277CBEA60] arrayWithObject:v3];
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  return array;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = CHDChart;
  v2 = [(OADGraphic *)&v4 description];

  return v2;
}

@end