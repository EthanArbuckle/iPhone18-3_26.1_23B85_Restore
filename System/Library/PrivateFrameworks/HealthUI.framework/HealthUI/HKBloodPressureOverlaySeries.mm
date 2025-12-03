@interface HKBloodPressureOverlaySeries
- (HKBloodPressureOverlaySeries)initWithDisplayType:(id)type dataSource:(id)source categoryData:(id)data;
- (double)_relationshipAnnotationCoordinateForCategoryData:(id)data;
- (id)_filteredBlockCoordinatesFromBlockCoordinates:(id)coordinates forOverlayMode:(unint64_t)mode;
- (unint64_t)_overlaySeriesAnnotationOptionsForMode:(unint64_t)mode categoryData:(id)data;
- (unint64_t)_overlaySeriesOptionsForMode:(unint64_t)mode categoryData:(id)data;
- (void)_applyStyle:(id)style;
- (void)_drawRangeAxisAnnotationsForUpperBound:(double)bound lowerBound:(double)lowerBound displayUpperBound:(BOOL)upperBound displayLowerBound:(BOOL)displayLowerBound axisAnnotationDelegate:(id)delegate;
- (void)drawSeriesWithVisibleCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate axisAnnotationDelegate:(id)self0 shouldExtendFirstPoint:(BOOL)self1;
@end

@implementation HKBloodPressureOverlaySeries

- (HKBloodPressureOverlaySeries)initWithDisplayType:(id)type dataSource:(id)source categoryData:(id)data
{
  typeCopy = type;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = HKBloodPressureOverlaySeries;
  v11 = [(HKLevelOverlaySeries *)&v25 initWithDisplayType:typeCopy dataSource:source options:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_baseDisplayType, type);
    objc_storeStrong(&v12->_categoryData, data);
    v12->_systolicRangeOptions = [(HKBloodPressureOverlaySeries *)v12 _overlaySeriesOptionsForMode:1 categoryData:v12->_categoryData];
    v12->_systolicAnnotationsOptions = [(HKBloodPressureOverlaySeries *)v12 _overlaySeriesAnnotationOptionsForMode:1 categoryData:v12->_categoryData];
    v12->_diastolicRangeOptions = [(HKBloodPressureOverlaySeries *)v12 _overlaySeriesOptionsForMode:2 categoryData:v12->_categoryData];
    v12->_diastolicAnnotationsOptions = [(HKBloodPressureOverlaySeries *)v12 _overlaySeriesAnnotationOptionsForMode:2 categoryData:v12->_categoryData];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v14 = [HKLevelOverlaySeries presentationStyleWithColor:labelColor options:0];
    systolicPresentationStyle = v12->_systolicPresentationStyle;
    v12->_systolicPresentationStyle = v14;

    displayCategory = [typeCopy displayCategory];
    color = [displayCategory color];
    v18 = [HKLevelOverlaySeries presentationStyleWithColor:color options:0];
    diastolicPresentationStyle = v12->_diastolicPresentationStyle;
    v12->_diastolicPresentationStyle = v18;

    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    v21 = [labelColor2 colorWithAlphaComponent:0.5];
    v22 = [HKLevelOverlaySeries presentationStyleWithColor:v21 options:0];
    relationshipPresentationStyle = v12->_relationshipPresentationStyle;
    v12->_relationshipPresentationStyle = v22;
  }

  return v12;
}

- (void)drawSeriesWithVisibleCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate axisAnnotationDelegate:(id)self0 shouldExtendFirstPoint:(BOOL)self1
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  annotationDelegateCopy = annotationDelegate;
  delegateCopy = delegate;
  coordinatesCopy = coordinates;
  v47 = [(HKBloodPressureOverlaySeries *)self _filteredBlockCoordinatesFromBlockCoordinates:coordinatesCopy forOverlayMode:1];
  v46 = [(HKBloodPressureOverlaySeries *)self _filteredBlockCoordinatesFromBlockCoordinates:coordinatesCopy forOverlayMode:2];

  [(HKBloodPressureOverlaySeries *)self _applyStyle:self->_systolicPresentationStyle];
  categoryData = [(HKBloodPressureOverlaySeries *)self categoryData];
  [categoryData systolicUpperBound];
  v22 = v21;
  categoryData2 = [(HKBloodPressureOverlaySeries *)self categoryData];
  [categoryData2 systolicLowerBound];
  [(HKBloodPressureOverlaySeries *)self _drawRangeAxisAnnotationsForUpperBound:self->_systolicAnnotationsOptions & 1 lowerBound:(self->_systolicAnnotationsOptions >> 1) & 1 displayUpperBound:annotationDelegateCopy displayLowerBound:v22 axisAnnotationDelegate:v24];

  visibleValueRange = [(HKGraphSeries *)self visibleValueRange];
  systolicRangeOptions = self->_systolicRangeOptions;
  LODWORD(coordinates) = self->_systolicAnnotationsOptions;
  strokeStyle = [(HKLineSeriesPresentationStyle *)self->_systolicPresentationStyle strokeStyle];
  v28 = *&transform->c;
  v50 = *&transform->a;
  v51 = v28;
  v52 = *&transform->tx;
  BYTE2(v43) = (coordinates & 2) != 0;
  BYTE1(v43) = (systolicRangeOptions & 2) != 0;
  LOBYTE(v43) = coordinates & 1;
  [(HKLevelOverlaySeries *)self _drawLevelBoundsInContext:context coordinates:v47 pointTransform:&v50 seriesRect:visibleValueRange visibleValueRange:point extendFirstPoint:systolicRangeOptions & 1 displayUpperBound:x displayUpperBoundPath:y displayLowerBound:width displayLowerBoundPath:height strokeStyle:v43 seriesRenderingDelegate:strokeStyle, delegateCopy];

  [(HKBloodPressureOverlaySeries *)self _applyStyle:self->_diastolicPresentationStyle];
  categoryData3 = [(HKBloodPressureOverlaySeries *)self categoryData];
  [categoryData3 diastolicUpperBound];
  v31 = v30;
  categoryData4 = [(HKBloodPressureOverlaySeries *)self categoryData];
  [categoryData4 diastolicLowerBound];
  [(HKBloodPressureOverlaySeries *)self _drawRangeAxisAnnotationsForUpperBound:self->_diastolicAnnotationsOptions & 1 lowerBound:(self->_diastolicAnnotationsOptions >> 1) & 1 displayUpperBound:annotationDelegateCopy displayLowerBound:v31 axisAnnotationDelegate:v33];

  visibleValueRange2 = [(HKGraphSeries *)self visibleValueRange];
  diastolicRangeOptions = self->_diastolicRangeOptions;
  LODWORD(coordinates) = self->_diastolicAnnotationsOptions;
  strokeStyle2 = [(HKLineSeriesPresentationStyle *)self->_diastolicPresentationStyle strokeStyle];
  v37 = *&transform->c;
  v50 = *&transform->a;
  v51 = v37;
  v52 = *&transform->tx;
  BYTE2(v44) = (coordinates & 2) != 0;
  BYTE1(v44) = (diastolicRangeOptions & 2) != 0;
  LOBYTE(v44) = coordinates & 1;
  [(HKLevelOverlaySeries *)self _drawLevelBoundsInContext:context coordinates:v46 pointTransform:&v50 seriesRect:visibleValueRange2 visibleValueRange:point extendFirstPoint:diastolicRangeOptions & 1 displayUpperBound:x displayUpperBoundPath:y displayLowerBound:width displayLowerBoundPath:height strokeStyle:v44 seriesRenderingDelegate:strokeStyle2, delegateCopy];

  categoryData5 = [(HKBloodPressureOverlaySeries *)self categoryData];
  v39 = +[HKBloodPressureClassificationUtilities localizedStringForAxisAnnotationRangeRelationship:](HKBloodPressureClassificationUtilities, "localizedStringForAxisAnnotationRangeRelationship:", [categoryData5 rangeRelationship]);

  categoryData6 = [(HKBloodPressureOverlaySeries *)self categoryData];
  [(HKBloodPressureOverlaySeries *)self _relationshipAnnotationCoordinateForCategoryData:categoryData6];
  v42 = v41;

  [(HKBloodPressureOverlaySeries *)self _applyStyle:self->_relationshipPresentationStyle];
  [(HKLineSeries *)self addAxisAnnotationForString:v39 modelCoordinate:annotationDelegateCopy axisAnnotationDelegate:v42];
}

- (void)_drawRangeAxisAnnotationsForUpperBound:(double)bound lowerBound:(double)lowerBound displayUpperBound:(BOOL)upperBound displayLowerBound:(BOOL)displayLowerBound axisAnnotationDelegate:(id)delegate
{
  displayLowerBoundCopy = displayLowerBound;
  upperBoundCopy = upperBound;
  delegateCopy = delegate;
  v13 = delegateCopy;
  if (upperBoundCopy && displayLowerBoundCopy)
  {
    v18 = delegateCopy;
    [(HKLineSeries *)self addAxisAnnotationForValue:delegateCopy axisAnnotationDelegate:bound];
    delegateCopy = [(HKLineSeries *)self addAxisAnnotationForValue:v18 axisAnnotationDelegate:lowerBound];
  }

  else
  {
    if (displayLowerBoundCopy)
    {
      v18 = delegateCopy;
      v14 = [HKBloodPressureClassificationUtilities localizedStringForAxisAnnotationAboveLowerBoundValue:lowerBound];
      selfCopy2 = self;
      v16 = v14;
      boundCopy = lowerBound;
    }

    else
    {
      if (!upperBoundCopy)
      {
        goto LABEL_10;
      }

      v18 = delegateCopy;
      v14 = [HKBloodPressureClassificationUtilities localizedStringForAxisAnnotationBelowUpperBoundValue:bound];
      selfCopy2 = self;
      v16 = v14;
      boundCopy = bound;
    }

    [(HKLineSeries *)selfCopy2 addAxisAnnotationForString:v16 modelCoordinate:v18 axisAnnotationDelegate:boundCopy];
  }

  v13 = v18;
LABEL_10:

  MEMORY[0x1EEE66BB8](delegateCopy, v13);
}

- (unint64_t)_overlaySeriesOptionsForMode:(unint64_t)mode categoryData:(id)data
{
  dataCopy = data;
  v6 = dataCopy;
  if (mode == 2)
  {
    [dataCopy diastolicLowerBound];
    if (HKUIEqualDoubles(v9, -1.79769313e308))
    {
      v8 = 1;
    }

    else
    {
      v8 = 3;
    }
  }

  else if (mode == 1)
  {
    [dataCopy systolicUpperBound];
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

- (unint64_t)_overlaySeriesAnnotationOptionsForMode:(unint64_t)mode categoryData:(id)data
{
  dataCopy = data;
  v6 = dataCopy;
  if (mode == 2)
  {
    [dataCopy diastolicUpperBound];
    v7 = v11;
    [v6 diastolicLowerBound];
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
    if (mode != 1)
    {
      goto LABEL_6;
    }

    [dataCopy systolicUpperBound];
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

- (double)_relationshipAnnotationCoordinateForCategoryData:(id)data
{
  dataCopy = data;
  [dataCopy systolicLowerBound];
  v5 = v4;
  [dataCopy diastolicUpperBound];
  v7 = v6;
  if (HKUIEqualDoubles(v5, -1.79769313e308))
  {
    [dataCopy systolicUpperBound];
    v5 = v8;
  }

  if (HKUIEqualDoubles(v7, 1.79769313e308))
  {
    [dataCopy diastolicLowerBound];
    v7 = v9;
  }

  return v7 + (v5 - v7) * 0.5;
}

- (id)_filteredBlockCoordinatesFromBlockCoordinates:(id)coordinates forOverlayMode:(unint64_t)mode
{
  v22 = *MEMORY[0x1E69E9840];
  coordinatesCopy = coordinates;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = coordinatesCopy;
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
        userInfo = [v12 userInfo];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          userInfo2 = [v12 userInfo];
          if ([userInfo2 overlayMode] == mode)
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

- (void)_applyStyle:(id)style
{
  v8[1] = *MEMORY[0x1E69E9840];
  styleCopy = style;
  [(HKLineSeries *)self setInactivePresentationStyle:styleCopy];
  v8[0] = styleCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(HKLineSeries *)self setHighlightedPresentationStyles:v5];

  v7 = styleCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];

  [(HKLineSeries *)self setUnhighlightedPresentationStyles:v6];
}

@end