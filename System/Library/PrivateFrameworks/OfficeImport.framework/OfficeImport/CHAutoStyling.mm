@interface CHAutoStyling
+ (id)autoStylingWithChart:(id)chart drawingTheme:(id)theme;
- (CHAutoStyling)initWithChart:(id)chart drawingTheme:(id)theme;
- (void)replaceStrokeAndFillInEmptyMarker:(id)marker withSeriesGraphicProperties:(id)properties;
@end

@implementation CHAutoStyling

+ (id)autoStylingWithChart:(id)chart drawingTheme:(id)theme
{
  chartCopy = chart;
  themeCopy = theme;
  [chartCopy isBinary];
  v7 = [objc_alloc(objc_opt_class()) initWithChart:chartCopy drawingTheme:themeCopy];

  return v7;
}

- (void)replaceStrokeAndFillInEmptyMarker:(id)marker withSeriesGraphicProperties:(id)properties
{
  markerCopy = marker;
  propertiesCopy = properties;
  if ([propertiesCopy hasStroke])
  {
    stroke = [propertiesCopy stroke];
  }

  else
  {
    stroke = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fill = [stroke fill];
  }

  else
  {
    fill = 0;
  }

  graphicProperties = [markerCopy graphicProperties];
  v9 = [stroke copy];
  [graphicProperties setStroke:v9];

  graphicProperties2 = [markerCopy graphicProperties];
  v11 = [fill copy];
  [graphicProperties2 setFill:v11];
}

- (CHAutoStyling)initWithChart:(id)chart drawingTheme:(id)theme
{
  chartCopy = chart;
  themeCopy = theme;
  v12.receiver = self;
  v12.super_class = CHAutoStyling;
  v9 = [(CHAutoStyling *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mChart, chart);
    objc_storeStrong(&v10->mDrawingTheme, theme);
  }

  return v10;
}

@end