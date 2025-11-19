@interface CHXReadState
- (CHXReadState)initWithDrawingState:(id)a3;
- (void)popDefaultTextProperties;
- (void)popTitleTextProperties;
- (void)pushDefaultTextProperties:(id)a3;
- (void)pushTitleTextProperties:(BOOL)a3;
- (void)setChart:(id)a3;
- (void)setChartPart:(id)a3;
- (void)setCurrentChartType:(id)a3;
- (void)setCurrentSeries:(id)a3;
- (void)setDefaultTextProperties:(id)a3;
- (void)setResources:(id)a3;
@end

@implementation CHXReadState

- (CHXReadState)initWithDrawingState:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHXReadState;
  v6 = [(CHXReadState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mDrawingState, a3);
  }

  return v7;
}

- (void)setChart:(id)a3
{
  v5 = a3;
  if (self->mChart != v5)
  {
    v14 = v5;
    objc_storeStrong(&self->mChart, a3);
    v6 = [OADDrawingTheme alloc];
    v7 = [(OAXDrawingState *)self->mDrawingState styleMatrix];
    v8 = [(OAXDrawingState *)self->mDrawingState fontScheme];
    v9 = [(OAXDrawingState *)self->mDrawingState colorScheme];
    v10 = [(OAXDrawingState *)self->mDrawingState colorMap];
    v11 = [(OADDrawingTheme *)v6 initWithStyleMatrix:v7 fontScheme:v8 colorScheme:v9 colorMap:v10 colorPalette:0];

    v12 = [CHAutoStyling autoStylingWithChart:v14 drawingTheme:v11];
    mAutoStyling = self->mAutoStyling;
    self->mAutoStyling = v12;

    v5 = v14;
  }
}

- (void)setResources:(id)a3
{
  v5 = a3;
  mResources = self->mResources;
  p_mResources = &self->mResources;
  if (mResources != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mResources, a3);
    v5 = v8;
  }
}

- (void)setChartPart:(id)a3
{
  v5 = a3;
  mChartPart = self->mChartPart;
  p_mChartPart = &self->mChartPart;
  if (mChartPart != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mChartPart, a3);
    v5 = v8;
  }
}

- (void)setCurrentChartType:(id)a3
{
  v5 = a3;
  mCurrentChartType = self->mCurrentChartType;
  p_mCurrentChartType = &self->mCurrentChartType;
  if (mCurrentChartType != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mCurrentChartType, a3);
    v5 = v8;
  }
}

- (void)setCurrentSeries:(id)a3
{
  v5 = a3;
  mCurrentSeries = self->mCurrentSeries;
  p_mCurrentSeries = &self->mCurrentSeries;
  if (mCurrentSeries != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mCurrentSeries, a3);
    v5 = v8;
  }
}

- (void)setDefaultTextProperties:(id)a3
{
  v5 = a3;
  mDefaultTextProperties = self->mDefaultTextProperties;
  p_mDefaultTextProperties = &self->mDefaultTextProperties;
  if (mDefaultTextProperties != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mDefaultTextProperties, a3);
    v5 = v8;
  }
}

- (void)pushTitleTextProperties:(BOOL)a3
{
  v3 = a3;
  v7 = objc_alloc_init(OADParagraphProperties);
  [(OADProperties *)self->mDefaultTextProperties setMergedWithParent:0];
  if (![(OADCharacterProperties *)self->mDefaultTextProperties hasIsBold])
  {
    [(OADCharacterProperties *)v7 setIsBold:1];
  }

  [(OADProperties *)self->mDefaultTextProperties setMergedWithParent:1];
  if (v3)
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
  v3 = [(OADProperties *)self->mDefaultTextProperties parent];
  [(CHXReadState *)self setDefaultTextProperties:?];
}

- (void)pushDefaultTextProperties:(id)a3
{
  v4 = a3;
  [v4 setParent:self->mDefaultTextProperties];
  [(CHXReadState *)self setDefaultTextProperties:v4];
}

- (void)popDefaultTextProperties
{
  v3 = [(OADProperties *)self->mDefaultTextProperties parent];
  [(CHXReadState *)self setDefaultTextProperties:?];
}

@end