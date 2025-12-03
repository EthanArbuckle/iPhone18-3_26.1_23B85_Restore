@interface CHXReadState
- (CHXReadState)initWithDrawingState:(id)state;
- (void)popDefaultTextProperties;
- (void)popTitleTextProperties;
- (void)pushDefaultTextProperties:(id)properties;
- (void)pushTitleTextProperties:(BOOL)properties;
- (void)setChart:(id)chart;
- (void)setChartPart:(id)part;
- (void)setCurrentChartType:(id)type;
- (void)setCurrentSeries:(id)series;
- (void)setDefaultTextProperties:(id)properties;
- (void)setResources:(id)resources;
@end

@implementation CHXReadState

- (CHXReadState)initWithDrawingState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = CHXReadState;
  v6 = [(CHXReadState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mDrawingState, state);
  }

  return v7;
}

- (void)setChart:(id)chart
{
  chartCopy = chart;
  if (self->mChart != chartCopy)
  {
    v14 = chartCopy;
    objc_storeStrong(&self->mChart, chart);
    v6 = [OADDrawingTheme alloc];
    styleMatrix = [(OAXDrawingState *)self->mDrawingState styleMatrix];
    fontScheme = [(OAXDrawingState *)self->mDrawingState fontScheme];
    colorScheme = [(OAXDrawingState *)self->mDrawingState colorScheme];
    colorMap = [(OAXDrawingState *)self->mDrawingState colorMap];
    v11 = [(OADDrawingTheme *)v6 initWithStyleMatrix:styleMatrix fontScheme:fontScheme colorScheme:colorScheme colorMap:colorMap colorPalette:0];

    v12 = [CHAutoStyling autoStylingWithChart:v14 drawingTheme:v11];
    mAutoStyling = self->mAutoStyling;
    self->mAutoStyling = v12;

    chartCopy = v14;
  }
}

- (void)setResources:(id)resources
{
  resourcesCopy = resources;
  mResources = self->mResources;
  p_mResources = &self->mResources;
  if (mResources != resourcesCopy)
  {
    v8 = resourcesCopy;
    objc_storeStrong(p_mResources, resources);
    resourcesCopy = v8;
  }
}

- (void)setChartPart:(id)part
{
  partCopy = part;
  mChartPart = self->mChartPart;
  p_mChartPart = &self->mChartPart;
  if (mChartPart != partCopy)
  {
    v8 = partCopy;
    objc_storeStrong(p_mChartPart, part);
    partCopy = v8;
  }
}

- (void)setCurrentChartType:(id)type
{
  typeCopy = type;
  mCurrentChartType = self->mCurrentChartType;
  p_mCurrentChartType = &self->mCurrentChartType;
  if (mCurrentChartType != typeCopy)
  {
    v8 = typeCopy;
    objc_storeStrong(p_mCurrentChartType, type);
    typeCopy = v8;
  }
}

- (void)setCurrentSeries:(id)series
{
  seriesCopy = series;
  mCurrentSeries = self->mCurrentSeries;
  p_mCurrentSeries = &self->mCurrentSeries;
  if (mCurrentSeries != seriesCopy)
  {
    v8 = seriesCopy;
    objc_storeStrong(p_mCurrentSeries, series);
    seriesCopy = v8;
  }
}

- (void)setDefaultTextProperties:(id)properties
{
  propertiesCopy = properties;
  mDefaultTextProperties = self->mDefaultTextProperties;
  p_mDefaultTextProperties = &self->mDefaultTextProperties;
  if (mDefaultTextProperties != propertiesCopy)
  {
    v8 = propertiesCopy;
    objc_storeStrong(p_mDefaultTextProperties, properties);
    propertiesCopy = v8;
  }
}

- (void)pushTitleTextProperties:(BOOL)properties
{
  propertiesCopy = properties;
  v7 = objc_alloc_init(OADParagraphProperties);
  [(OADProperties *)self->mDefaultTextProperties setMergedWithParent:0];
  if (![(OADCharacterProperties *)self->mDefaultTextProperties hasIsBold])
  {
    [(OADCharacterProperties *)v7 setIsBold:1];
  }

  [(OADProperties *)self->mDefaultTextProperties setMergedWithParent:1];
  if (propertiesCopy)
  {
    LODWORD(v5) = 18.0;
    if (self->mDefaultTextPropertiesHaveExplicitFontSize)
    {
      [(OADCharacterProperties *)self->mDefaultTextProperties size];
      v5 = v6 * 1.2;
      *&v5 = v5;
    }

    [(OADCharacterProperties *)v7 setSize:v5];
  }

  [(OADProperties *)v7 setParent:self->mDefaultTextProperties];
  [(CHXReadState *)self setDefaultTextProperties:v7];
}

- (void)popTitleTextProperties
{
  parent = [(OADProperties *)self->mDefaultTextProperties parent];
  [(CHXReadState *)self setDefaultTextProperties:?];
}

- (void)pushDefaultTextProperties:(id)properties
{
  propertiesCopy = properties;
  [propertiesCopy setParent:self->mDefaultTextProperties];
  [(CHXReadState *)self setDefaultTextProperties:propertiesCopy];
}

- (void)popDefaultTextProperties
{
  parent = [(OADProperties *)self->mDefaultTextProperties parent];
  [(CHXReadState *)self setDefaultTextProperties:?];
}

@end