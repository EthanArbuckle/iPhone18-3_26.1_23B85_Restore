@interface CHAutoStyling
+ (id)autoStylingWithChart:(id)a3 drawingTheme:(id)a4;
- (CHAutoStyling)initWithChart:(id)a3 drawingTheme:(id)a4;
- (void)replaceStrokeAndFillInEmptyMarker:(id)a3 withSeriesGraphicProperties:(id)a4;
@end

@implementation CHAutoStyling

+ (id)autoStylingWithChart:(id)a3 drawingTheme:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 isBinary];
  v7 = [objc_alloc(objc_opt_class()) initWithChart:v5 drawingTheme:v6];

  return v7;
}

- (void)replaceStrokeAndFillInEmptyMarker:(id)a3 withSeriesGraphicProperties:(id)a4
{
  v12 = a3;
  v5 = a4;
  if ([v5 hasStroke])
  {
    v6 = [v5 stroke];
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 fill];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v12 graphicProperties];
  v9 = [v6 copy];
  [v8 setStroke:v9];

  v10 = [v12 graphicProperties];
  v11 = [v7 copy];
  [v10 setFill:v11];
}

- (CHAutoStyling)initWithChart:(id)a3 drawingTheme:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CHAutoStyling;
  v9 = [(CHAutoStyling *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mChart, a3);
    objc_storeStrong(&v10->mDrawingTheme, a4);
  }

  return v10;
}

@end