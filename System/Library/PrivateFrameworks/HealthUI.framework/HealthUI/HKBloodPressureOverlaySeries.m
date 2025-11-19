@interface HKBloodPressureOverlaySeries
- (HKBloodPressureOverlaySeries)initWithDisplayType:(id)a3 dataSource:(id)a4 categoryData:(id)a5;
- (double)_relationshipAnnotationCoordinateForCategoryData:(id)a3;
- (id)_filteredBlockCoordinatesFromBlockCoordinates:(id)a3 forOverlayMode:(unint64_t)a4;
- (unint64_t)_overlaySeriesAnnotationOptionsForMode:(unint64_t)a3 categoryData:(id)a4;
- (unint64_t)_overlaySeriesOptionsForMode:(unint64_t)a3 categoryData:(id)a4;
- (void)_applyStyle:(id)a3;
- (void)_drawRangeAxisAnnotationsForUpperBound:(double)a3 lowerBound:(double)a4 displayUpperBound:(BOOL)a5 displayLowerBound:(BOOL)a6 axisAnnotationDelegate:(id)a7;
- (void)drawSeriesWithVisibleCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9 axisAnnotationDelegate:(id)a10 shouldExtendFirstPoint:(BOOL)a11;
@end

@implementation HKBloodPressureOverlaySeries

- (HKBloodPressureOverlaySeries)initWithDisplayType:(id)a3 dataSource:(id)a4 categoryData:(id)a5
{
  v9 = a3;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = HKBloodPressureOverlaySeries;
  v11 = [(HKLevelOverlaySeries *)&v25 initWithDisplayType:v9 dataSource:a4 options:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_baseDisplayType, a3);
    objc_storeStrong(&v12->_categoryData, a5);
    v12->_systolicRangeOptions = [(HKBloodPressureOverlaySeries *)v12 _overlaySeriesOptionsForMode:1 categoryData:v12->_categoryData];
    v12->_systolicAnnotationsOptions = [(HKBloodPressureOverlaySeries *)v12 _overlaySeriesAnnotationOptionsForMode:1 categoryData:v12->_categoryData];
    v12->_diastolicRangeOptions = [(HKBloodPressureOverlaySeries *)v12 _overlaySeriesOptionsForMode:2 categoryData:v12->_categoryData];
    v12->_diastolicAnnotationsOptions = [(HKBloodPressureOverlaySeries *)v12 _overlaySeriesAnnotationOptionsForMode:2 categoryData:v12->_categoryData];
    v13 = [MEMORY[0x1E69DC888] labelColor];
    v14 = [HKLevelOverlaySeries presentationStyleWithColor:v13 options:0];
    systolicPresentationStyle = v12->_systolicPresentationStyle;
    v12->_systolicPresentationStyle = v14;

    v16 = [v9 displayCategory];
    v17 = [v16 color];
    v18 = [HKLevelOverlaySeries presentationStyleWithColor:v17 options:0];
    diastolicPresentationStyle = v12->_diastolicPresentationStyle;
    v12->_diastolicPresentationStyle = v18;

    v20 = [MEMORY[0x1E69DC888] labelColor];
    v21 = [v20 colorWithAlphaComponent:0.5];
    v22 = [HKLevelOverlaySeries presentationStyleWithColor:v21 options:0];
    relationshipPresentationStyle = v12->_relationshipPresentationStyle;
    v12->_relationshipPresentationStyle = v22;
  }

  return v12;
}

- (void)drawSeriesWithVisibleCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9 axisAnnotationDelegate:(id)a10 shouldExtendFirstPoint:(BOOL)a11
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v48 = a10;
  v45 = a9;
  v19 = a3;
  v47 = [(HKBloodPressureOverlaySeries *)self _filteredBlockCoordinatesFromBlockCoordinates:v19 forOverlayMode:1];
  v46 = [(HKBloodPressureOverlaySeries *)self _filteredBlockCoordinatesFromBlockCoordinates:v19 forOverlayMode:2];

  [(HKBloodPressureOverlaySeries *)self _applyStyle:self->_systolicPresentationStyle];
  v20 = [(HKBloodPressureOverlaySeries *)self categoryData];
  [v20 systolicUpperBound];
  v22 = v21;
  v23 = [(HKBloodPressureOverlaySeries *)self categoryData];
  [v23 systolicLowerBound];
  [(HKBloodPressureOverlaySeries *)self _drawRangeAxisAnnotationsForUpperBound:self->_systolicAnnotationsOptions & 1 lowerBound:(self->_systolicAnnotationsOptions >> 1) & 1 displayUpperBound:v48 displayLowerBound:v22 axisAnnotationDelegate:v24];

  v25 = [(HKGraphSeries *)self visibleValueRange];
  systolicRangeOptions = self->_systolicRangeOptions;
  LODWORD(a3) = self->_systolicAnnotationsOptions;
  v27 = [(HKLineSeriesPresentationStyle *)self->_systolicPresentationStyle strokeStyle];
  v28 = *&a6->c;
  v50 = *&a6->a;
  v51 = v28;
  v52 = *&a6->tx;
  BYTE2(v43) = (a3 & 2) != 0;
  BYTE1(v43) = (systolicRangeOptions & 2) != 0;
  LOBYTE(v43) = a3 & 1;
  [(HKLevelOverlaySeries *)self _drawLevelBoundsInContext:a7 coordinates:v47 pointTransform:&v50 seriesRect:v25 visibleValueRange:a11 extendFirstPoint:systolicRangeOptions & 1 displayUpperBound:x displayUpperBoundPath:y displayLowerBound:width displayLowerBoundPath:height strokeStyle:v43 seriesRenderingDelegate:v27, v45];

  [(HKBloodPressureOverlaySeries *)self _applyStyle:self->_diastolicPresentationStyle];
  v29 = [(HKBloodPressureOverlaySeries *)self categoryData];
  [v29 diastolicUpperBound];
  v31 = v30;
  v32 = [(HKBloodPressureOverlaySeries *)self categoryData];
  [v32 diastolicLowerBound];
  [(HKBloodPressureOverlaySeries *)self _drawRangeAxisAnnotationsForUpperBound:self->_diastolicAnnotationsOptions & 1 lowerBound:(self->_diastolicAnnotationsOptions >> 1) & 1 displayUpperBound:v48 displayLowerBound:v31 axisAnnotationDelegate:v33];

  v34 = [(HKGraphSeries *)self visibleValueRange];
  diastolicRangeOptions = self->_diastolicRangeOptions;
  LODWORD(a3) = self->_diastolicAnnotationsOptions;
  v36 = [(HKLineSeriesPresentationStyle *)self->_diastolicPresentationStyle strokeStyle];
  v37 = *&a6->c;
  v50 = *&a6->a;
  v51 = v37;
  v52 = *&a6->tx;
  BYTE2(v44) = (a3 & 2) != 0;
  BYTE1(v44) = (diastolicRangeOptions & 2) != 0;
  LOBYTE(v44) = a3 & 1;
  [(HKLevelOverlaySeries *)self _drawLevelBoundsInContext:a7 coordinates:v46 pointTransform:&v50 seriesRect:v34 visibleValueRange:a11 extendFirstPoint:diastolicRangeOptions & 1 displayUpperBound:x displayUpperBoundPath:y displayLowerBound:width displayLowerBoundPath:height strokeStyle:v44 seriesRenderingDelegate:v36, v45];

  v38 = [(HKBloodPressureOverlaySeries *)self categoryData];
  v39 = +[HKBloodPressureClassificationUtilities localizedStringForAxisAnnotationRangeRelationship:](HKBloodPressureClassificationUtilities, "localizedStringForAxisAnnotationRangeRelationship:", [v38 rangeRelationship]);

  v40 = [(HKBloodPressureOverlaySeries *)self categoryData];
  [(HKBloodPressureOverlaySeries *)self _relationshipAnnotationCoordinateForCategoryData:v40];
  v42 = v41;

  [(HKBloodPressureOverlaySeries *)self _applyStyle:self->_relationshipPresentationStyle];
  [(HKLineSeries *)self addAxisAnnotationForString:v39 modelCoordinate:v48 axisAnnotationDelegate:v42];
}

- (void)_drawRangeAxisAnnotationsForUpperBound:(double)a3 lowerBound:(double)a4 displayUpperBound:(BOOL)a5 displayLowerBound:(BOOL)a6 axisAnnotationDelegate:(id)a7
{
  v7 = a6;
  v8 = a5;
  v12 = a7;
  v13 = v12;
  if (v8 && v7)
  {
    v18 = v12;
    [(HKLineSeries *)self addAxisAnnotationForValue:v12 axisAnnotationDelegate:a3];
    v12 = [(HKLineSeries *)self addAxisAnnotationForValue:v18 axisAnnotationDelegate:a4];
  }

  else
  {
    if (v7)
    {
      v18 = v12;
      v14 = [HKBloodPressureClassificationUtilities localizedStringForAxisAnnotationAboveLowerBoundValue:a4];
      v15 = self;
      v16 = v14;
      v17 = a4;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      v18 = v12;
      v14 = [HKBloodPressureClassificationUtilities localizedStringForAxisAnnotationBelowUpperBoundValue:a3];
      v15 = self;
      v16 = v14;
      v17 = a3;
    }

    [(HKLineSeries *)v15 addAxisAnnotationForString:v16 modelCoordinate:v18 axisAnnotationDelegate:v17];
  }

  v13 = v18;
LABEL_10:

  MEMORY[0x1EEE66BB8](v12, v13);
}

- (unint64_t)_overlaySeriesOptionsForMode:(unint64_t)a3 categoryData:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 == 2)
  {
    [v5 diastolicLowerBound];
    if (HKUIEqualDoubles(v9, -1.79769313e308))
    {
      v8 = 1;
    }

    else
    {
      v8 = 3;
    }
  }

  else if (a3 == 1)
  {
    [v5 systolicUpperBound];
    if (HKUIEqualDoubles(v7, 1.79769313e308))
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)_overlaySeriesAnnotationOptionsForMode:(unint64_t)a3 categoryData:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 == 2)
  {
    [v5 diastolicUpperBound];
    v7 = v11;
    [v6 diastolicLowerBound];
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    [v5 systolicUpperBound];
    v7 = v9;
    [v6 systolicLowerBound];
  }

  v8 = v10;
LABEL_6:
  if (HKUIEqualDoubles(v7, 1.79769313e308))
  {
    v12 = 2;
  }

  else if (HKUIEqualDoubles(v8, -1.79769313e308))
  {
    v12 = 1;
  }

  else
  {
    v12 = 3;
  }

  return v12;
}

- (double)_relationshipAnnotationCoordinateForCategoryData:(id)a3
{
  v3 = a3;
  [v3 systolicLowerBound];
  v5 = v4;
  [v3 diastolicUpperBound];
  v7 = v6;
  if (HKUIEqualDoubles(v5, -1.79769313e308))
  {
    [v3 systolicUpperBound];
    v5 = v8;
  }

  if (HKUIEqualDoubles(v7, 1.79769313e308))
  {
    [v3 diastolicLowerBound];
    v7 = v9;
  }

  return v7 + (v5 - v7) * 0.5;
}

- (id)_filteredBlockCoordinatesFromBlockCoordinates:(id)a3 forOverlayMode:(unint64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 userInfo];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v15 = [v12 userInfo];
          if ([v15 overlayMode] == a4)
          {
            [v6 addObject:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)_applyStyle:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(HKLineSeries *)self setInactivePresentationStyle:v4];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(HKLineSeries *)self setHighlightedPresentationStyles:v5];

  v7 = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];

  [(HKLineSeries *)self setUnhighlightedPresentationStyles:v6];
}

@end