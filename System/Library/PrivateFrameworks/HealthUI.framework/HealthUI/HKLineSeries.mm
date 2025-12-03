@interface HKLineSeries
- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than;
- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than;
- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)rect blockCoordinate:(id)coordinate;
- (HKLineSeries)init;
- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (id)_attributedAnnotationWithString:(id)string labelStyle:(id)style;
- (id)_currentPresentationStyles;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (int64_t)resolutionForTimeScope:(int64_t)scope traitResolution:(int64_t)resolution;
- (void)_enumerateCoordinateList:(id)list withTransform:(CGAffineTransform *)transform presentationStyle:(id)style zoomLevelConfiguration:(id)configuration axisRect:(CGRect)rect block:(id)block;
- (void)_enumerateCoordinateListByRemovingOffscreenPoints:(id)points withTransform:(CGAffineTransform *)transform presentationStyle:(id)style zoomLevelConfiguration:(id)configuration axisRect:(CGRect)rect block:(id)block;
- (void)_enumeratePathsFromBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration transform:(CGAffineTransform *)transform presentationStyle:(id)style caresAboutSelection:(BOOL)selection seriesRenderingDelegate:(id)delegate forceGapBetweenUntransformedPoints:(id)self0 handler:(id)self1;
- (void)_enumerateSawToothPathsFromBlockCoordinates:(id)coordinates transform:(CGAffineTransform *)transform zoomLevelConfiguration:(id)configuration presentationStyle:(id)style caresAboutSelection:(BOOL)selection axisRect:(CGRect)rect seriesRenderingDelegate:(id)delegate forceGapBetweenUntransformedPoints:(id)self0 handler:(id)self1;
- (void)_enumerateSinePathsFromBlockCoordinates:(id)coordinates transfrom:(CGAffineTransform *)transfrom zoomLevelConfiguration:(id)configuration presentationStyle:(id)style axisRect:(CGRect)rect handler:(id)handler;
- (void)_renderLineEndCapsInContext:(CGContext *)context endCaps:(id)caps endCapImage:(id)image;
- (void)_renderPointLabelInContext:(CGContext *)context renderingData:(id *)data numberFormatter:(id)formatter labelAttributes:(id)attributes seriesRenderingDelegate:(id)delegate;
- (void)_renderPointLabelsInContext:(CGContext *)context blockCoordinates:(id)coordinates axisRect:(CGRect)rect pointTransform:(CGAffineTransform *)transform presentationStyle:(id)style zoomLevelConfiguration:(id)configuration seriesRenderingDelegate:(id)delegate;
- (void)_renderPointMarkersInContext:(CGContext *)context blockCoordinates:(id)coordinates pointTransform:(CGAffineTransform *)transform presentationStyle:(id)style;
- (void)_updateSecondaryRenderContextWithBlockCoordinates:(id)coordinates secondaryRenderContext:(id)context pointTransform:(CGAffineTransform *)transform zoomLevelConfiguration:(id)configuration axisRect:(CGRect)rect;
- (void)addAxisAnnotationForString:(id)string modelCoordinate:(double)coordinate axisAnnotationDelegate:(id)delegate;
- (void)addAxisAnnotationForValue:(double)value axisAnnotationDelegate:(id)delegate;
- (void)drawLegendPointLabelInContext:(CGContext *)context point:(CGPoint)point untransformedPoint:(CGPoint)untransformedPoint axisRect:(CGRect)rect presentationStyle:(id)style leftOfPoint:(BOOL)ofPoint;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate forceGapBetweenUntransformedPoints:(id)self0;
- (void)renderPointMarkersInContext:(CGContext *)context blockCoordinates:(id)coordinates pointTransform:(CGAffineTransform *)transform pointMarkerStyle:(id)style selectedBoundsMarkerStyle:(id)markerStyle selectedPointMarkerStyle:(id)pointMarkerStyle;
@end

@implementation HKLineSeries

- (HKLineSeries)init
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = HKLineSeries;
  v2 = [(HKGraphSeries *)&v10 init];
  if (v2)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v4 = [HKStrokeStyle strokeStyleWithColor:blackColor lineWidth:1.0];

    v5 = objc_alloc_init(HKLineSeriesPresentationStyle);
    [(HKLineSeriesPresentationStyle *)v5 setStrokeStyle:v4];
    [(HKLineSeriesPresentationStyle *)v5 setWaveForm:0];
    v11[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v7 = *(v2 + 27);
    *(v2 + 27) = v6;

    v2[208] = 0;
    *(v2 + 209) = 1;
    v8 = *(v2 + 32);
    *(v2 + 32) = 0;
  }

  return v2;
}

- (id)_currentPresentationStyles
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(HKGraphSeries *)self allowsSelection])
  {
    if ([(HKGraphSeries *)self isHighlighted])
    {
      highlightedPresentationStyles = self->_highlightedPresentationStyles;
      if (!highlightedPresentationStyles)
      {
        v4 = 216;
LABEL_9:
        highlightedPresentationStyles = *(&self->super.super.isa + v4);
      }
    }

    else
    {
      highlightedPresentationStyles = self->_unhighlightedPresentationStyles;
      if (!highlightedPresentationStyles)
      {
        v4 = 224;
        goto LABEL_9;
      }
    }

    v7 = highlightedPresentationStyles;
    goto LABEL_12;
  }

  inactivePresentationStyle = [(HKLineSeries *)self inactivePresentationStyle];

  if (inactivePresentationStyle)
  {
    inactivePresentationStyle2 = [(HKLineSeries *)self inactivePresentationStyle];
    v9[0] = inactivePresentationStyle2;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v7 = 0;
  }

LABEL_12:

  return v7;
}

- (void)_enumerateCoordinateList:(id)list withTransform:(CGAffineTransform *)transform presentationStyle:(id)style zoomLevelConfiguration:(id)configuration axisRect:(CGRect)rect block:(id)block
{
  blockCopy = block;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __111__HKLineSeries__enumerateCoordinateList_withTransform_presentationStyle_zoomLevelConfiguration_axisRect_block___block_invoke;
  v14[3] = &unk_1E81B6758;
  v15 = blockCopy;
  v11 = *&transform->c;
  v13[0] = *&transform->a;
  v13[1] = v11;
  v13[2] = *&transform->tx;
  v12 = blockCopy;
  [list enumerateCoordinatesWithTransform:v13 roundToViewScale:1 block:v14];
}

void __111__HKLineSeries__enumerateCoordinateList_withTransform_presentationStyle_zoomLevelConfiguration_axisRect_block___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v12 = a4;
  [a2 coordinate];
  v7 = v6;
  v9 = v8;
  [v12 coordinate];
  (*(v5 + 16))(v5, v12, v7, v9, v10, v11);
}

- (void)_enumerateCoordinateListByRemovingOffscreenPoints:(id)points withTransform:(CGAffineTransform *)transform presentationStyle:(id)style zoomLevelConfiguration:(id)configuration axisRect:(CGRect)rect block:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pointsCopy = points;
  styleCopy = style;
  configurationCopy = configuration;
  blockCopy = block;
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  MinX = CGRectGetMinX(v48);
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  MaxX = CGRectGetMaxX(v49);
  numCoordinates = [pointsCopy numCoordinates];
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v47[3] = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v45 = 0;
  v23 = HKCircularBufferCreate(2, 40);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __136__HKLineSeries__enumerateCoordinateListByRemovingOffscreenPoints_withTransform_presentationStyle_zoomLevelConfiguration_axisRect_block___block_invoke;
  aBlock[3] = &unk_1E81B6780;
  v42 = v44;
  v43 = v23;
  v24 = blockCopy;
  v41 = v24;
  v25 = _Block_copy(aBlock);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __136__HKLineSeries__enumerateCoordinateListByRemovingOffscreenPoints_withTransform_presentationStyle_zoomLevelConfiguration_axisRect_block___block_invoke_2;
  v31[3] = &unk_1E81B67A8;
  v34 = v47;
  v36 = MinX;
  v37 = v23;
  v38 = MaxX;
  v26 = v25;
  v32 = v26;
  v27 = v24;
  v39 = numCoordinates;
  v33 = v27;
  v35 = v46;
  v28 = *&transform->c;
  v30[0] = *&transform->a;
  v30[1] = v28;
  v30[2] = *&transform->tx;
  [(HKLineSeries *)self _enumerateCoordinateList:pointsCopy withTransform:v30 presentationStyle:styleCopy zoomLevelConfiguration:configurationCopy axisRect:v31 block:x, y, width, height];
  v26[2](v26);
  HKCircularBufferRelease(v23);

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v46, 8);
  _Block_object_dispose(v47, 8);
}

BOOL __136__HKLineSeries__enumerateCoordinateListByRemovingOffscreenPoints_withTransform_presentationStyle_zoomLevelConfiguration_axisRect_block___block_invoke(_BOOL8 result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v3 = HKCircularBufferIteratorMake();
    for (result = HKCircularBufferIteratorHasNext(v1[6], v3); result; result = HKCircularBufferIteratorHasNext(v1[6], v3))
    {
      v2 = HKCircularBufferIteratorNext(v1[6], &v3);
      (*(v1[4] + 16))(v1[4], 0, *(v2 + 32), *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
    }

    *(*(v1[5] + 8) + 24) = 1;
  }

  return result;
}

void __136__HKLineSeries__enumerateCoordinateListByRemovingOffscreenPoints_withTransform_presentationStyle_zoomLevelConfiguration_axisRect_block___block_invoke_2(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  v12 = v11;
  ++*(*(*(a1 + 48) + 8) + 24);
  if (a3 >= *(a1 + 64))
  {
    if (a3 <= *(a1 + 80))
    {
      (*(*(a1 + 32) + 16))();
      (*(*(a1 + 40) + 16))(*(a1 + 40), *(*(*(a1 + 48) + 8) + 24) == *(a1 + 88), v12, a3, a4, a5, a6);
    }

    else if (*(*(*(a1 + 56) + 8) + 24) <= 2)
    {
      (*(*(a1 + 32) + 16))();
      (*(*(a1 + 40) + 16))(a3, a4, a5, a6);
      ++*(*(*(a1 + 56) + 8) + 24);
    }
  }

  else
  {
    *__src = a3;
    *&__src[1] = a4;
    *&__src[2] = a5;
    *&__src[3] = a6;
    v14 = v11;
    HKCircularBufferAddItem(*(a1 + 72), __src);
  }
}

- (void)_enumeratePathsFromBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration transform:(CGAffineTransform *)transform presentationStyle:(id)style caresAboutSelection:(BOOL)selection seriesRenderingDelegate:(id)delegate forceGapBetweenUntransformedPoints:(id)self0 handler:(id)self1
{
  selectionCopy = selection;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  delegateCopy = delegate;
  pointsCopy = points;
  handlerCopy = handler;
  styleCopy = style;
  configurationCopy = configuration;
  coordinatesCopy = coordinates;
  if ([styleCopy waveForm])
  {
    v27 = *&transform->c;
    v29 = *&transform->a;
    v30 = v27;
    v31 = *&transform->tx;
    [(HKLineSeries *)self _enumerateSinePathsFromBlockCoordinates:coordinatesCopy transfrom:&v29 zoomLevelConfiguration:configurationCopy presentationStyle:styleCopy axisRect:handlerCopy handler:x, y, width, height];
  }

  else
  {
    v28 = *&transform->c;
    v29 = *&transform->a;
    v30 = v28;
    v31 = *&transform->tx;
    [(HKLineSeries *)self _enumerateSawToothPathsFromBlockCoordinates:coordinatesCopy transform:&v29 zoomLevelConfiguration:configurationCopy presentationStyle:styleCopy caresAboutSelection:selectionCopy axisRect:delegateCopy seriesRenderingDelegate:x forceGapBetweenUntransformedPoints:y handler:width, height, pointsCopy, handlerCopy];
  }
}

- (void)addAxisAnnotationForValue:(double)value axisAnnotationDelegate:(id)delegate
{
  v34 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  if (delegateCopy)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:value];
    yAxis = [(HKGraphSeries *)self yAxis];
    if (yAxis)
    {
      v26 = yAxis;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      obj = [(HKLineSeries *)self _currentPresentationStyles];
      v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v30;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v30 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v29 + 1) + 8 * i);
            axisAnnotationStyle = [v12 axisAnnotationStyle];
            v14 = axisAnnotationStyle;
            if (axisAnnotationStyle)
            {
              numberFormatter = [axisAnnotationStyle numberFormatter];
              v16 = numberFormatter;
              if (numberFormatter)
              {
                v17 = numberFormatter;
              }

              else
              {
                v17 = HKDecimalFormatter(0);
              }

              v18 = v17;

              if ([v12 shouldNegateAnnotationValue])
              {
                v19 = MEMORY[0x1E696AD98];
                [v6 floatValue];
                *&v21 = -v20;
                v22 = [v19 numberWithFloat:v21];
              }

              else
              {
                v22 = v6;
              }

              v23 = v22;
              v24 = [v18 stringFromNumber:v22 displayType:0 unitController:0];
              v25 = [(HKLineSeries *)self _attributedAnnotationWithString:v24 labelStyle:v14];
              [delegateCopy addAxisAnnotation:v25 forSeries:self modelCoordinate:v6];
            }
          }

          v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v9);
      }

      yAxis = v26;
    }
  }
}

- (void)addAxisAnnotationForString:(id)string modelCoordinate:(double)coordinate axisAnnotationDelegate:(id)delegate
{
  v25 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  delegateCopy = delegate;
  if (delegateCopy)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:coordinate];
    yAxis = [(HKGraphSeries *)self yAxis];
    if (yAxis)
    {
      v19 = yAxis;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      _currentPresentationStyles = [(HKLineSeries *)self _currentPresentationStyles];
      v13 = [_currentPresentationStyles countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        do
        {
          v16 = 0;
          do
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(_currentPresentationStyles);
            }

            axisAnnotationStyle = [*(*(&v20 + 1) + 8 * v16) axisAnnotationStyle];
            if (axisAnnotationStyle)
            {
              v18 = [(HKLineSeries *)self _attributedAnnotationWithString:stringCopy labelStyle:axisAnnotationStyle];
              if (v18)
              {
                [delegateCopy addAxisAnnotation:v18 forSeries:self modelCoordinate:v10];
              }
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [_currentPresentationStyles countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v14);
      }

      yAxis = v19;
    }
  }
}

- (id)_attributedAnnotationWithString:(id)string labelStyle:(id)style
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = *MEMORY[0x1E69DB650];
  stringCopy = string;
  textColor = [style textColor];
  v12[0] = textColor;
  v11[1] = *MEMORY[0x1E69DB648];
  hk_chartAxisLabelFont = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
  v12[1] = hk_chartAxisLabelFont;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy attributes:v8];

  return v9;
}

- (void)_enumerateSawToothPathsFromBlockCoordinates:(id)coordinates transform:(CGAffineTransform *)transform zoomLevelConfiguration:(id)configuration presentationStyle:(id)style caresAboutSelection:(BOOL)selection axisRect:(CGRect)rect seriesRenderingDelegate:(id)delegate forceGapBetweenUntransformedPoints:(id)self0 handler:(id)self1
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  coordinatesCopy = coordinates;
  configurationCopy = configuration;
  styleCopy = style;
  delegateCopy = delegate;
  pointsCopy = points;
  handlerCopy = handler;
  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x3010000000;
  v70[3] = &unk_1C3DAF4DA;
  v71 = *MEMORY[0x1E695EFF8];
  v29 = v71;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = __Block_byref_object_copy__4;
  v68[4] = __Block_byref_object_dispose__4;
  v69 = objc_opt_new();
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x3010000000;
  v67[4] = 0;
  v67[5] = 0;
  v67[3] = &unk_1C3DAF4DA;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3010000000;
  v61 = &unk_1C3DAF4DA;
  v62 = v29;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x3032000000;
  v52[3] = __Block_byref_object_copy__4;
  v52[4] = __Block_byref_object_dispose__4;
  v53 = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __207__HKLineSeries__enumerateSawToothPathsFromBlockCoordinates_transform_zoomLevelConfiguration_presentationStyle_caresAboutSelection_axisRect_seriesRenderingDelegate_forceGapBetweenUntransformedPoints_handler___block_invoke;
  v35[3] = &unk_1E81B67D0;
  v23 = delegateCopy;
  v47 = x;
  v48 = y;
  v49 = width;
  v50 = height;
  v36 = v23;
  selfCopy = self;
  v40 = v68;
  v41 = &v63;
  v42 = &v58;
  v24 = pointsCopy;
  v38 = v24;
  v43 = v52;
  v44 = v70;
  v25 = handlerCopy;
  v39 = v25;
  v45 = v67;
  v46 = &v54;
  selectionCopy = selection;
  v26 = *&transform->c;
  v34[0] = *&transform->a;
  v34[1] = v26;
  v34[2] = *&transform->tx;
  [(HKLineSeries *)self _enumerateCoordinateListByRemovingOffscreenPoints:coordinatesCopy withTransform:v34 presentationStyle:styleCopy zoomLevelConfiguration:configurationCopy axisRect:v35 block:x, y, width, height];
  if (*(v64 + 24) == 1)
  {
    v27 = [v23 axisAnnotationDelegateForSeries:self];
    v28 = v27;
    if (self->_extendLastValue || *(v55 + 24) == 1)
    {
      [(HKLineSeries *)self addAxisAnnotationForValue:v27 axisAnnotationDelegate:v59[5], v29];
    }

    else
    {
      [v27 clearAxisAnnotations];
    }
  }

  _Block_object_dispose(v52, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(v67, 8);
  _Block_object_dispose(v68, 8);

  _Block_object_dispose(v70, 8);
}

void __207__HKLineSeries__enumerateSawToothPathsFromBlockCoordinates_transform_zoomLevelConfiguration_presentationStyle_caresAboutSelection_axisRect_seriesRenderingDelegate_forceGapBetweenUntransformedPoints_handler___block_invoke(uint64_t a1, int a2, void *a3, double a4, double a5, double a6, double a7)
{
  v73 = a3;
  [*(a1 + 32) virtualMarginInsets];
  v16 = v14;
  v17 = *(a1 + 120);
  v18 = v17 + *(a1 + 136) - v15;
  v19 = a4 <= v18 && a4 >= v17 + v14;
  if (*(*(a1 + 40) + 209) & 1) != 0 || (v20 = v15, ([*(*(*(a1 + 64) + 8) + 40) isEmpty]))
  {
    v21 = 0;
  }

  else
  {
    v72 = a7;
    [*(*(*(a1 + 64) + 8) + 40) currentPoint];
    v23 = vabdd_f64(a4, v22);
    if (*(*(a1 + 40) + 208))
    {
      v24 = 1.0;
    }

    else
    {
      v24 = 1.4;
    }

    [*(a1 + 32) screenRectForSeries:?];
    v26 = v24 * (v25 - v16 - v20);
    v27 = vabdd_f64(v23, v26) >= 0.01;
    v21 = v23 > v26 && v27;
    v28 = [*(a1 + 40) maximumConnectionDistance];
    if (v28 && (v29 = *(*(*(a1 + 72) + 8) + 24), v28, v29 == 1))
    {
      v30 = [*(a1 + 40) maximumConnectionDistance];
      [v30 floatValue];
      v32 = v31;

      v33 = vabdd_f64(*(*(*(a1 + 80) + 8) + 32), a6) <= v32;
      a7 = v72;
      if (!v33)
      {
        goto LABEL_10;
      }
    }

    else
    {
      a7 = v72;
    }
  }

  if (*(*(*(a1 + 72) + 8) + 24) == 1 && (v21 & 1) == 0)
  {
    if ((*(*(a1 + 48) + 16))(*(*(*(a1 + 80) + 8) + 32), *(*(*(a1 + 80) + 8) + 40), a6, a7))
    {
LABEL_10:
      v21 = 1;
      goto LABEL_22;
    }

    v21 = [*(a1 + 40) connectPoint:*(*(*(a1 + 88) + 8) + 40) toPoint:v73] ^ 1;
  }

LABEL_22:
  v34 = *(*(a1 + 40) + 208);
  v35 = [*(*(*(a1 + 64) + 8) + 40) isEmpty];
  if (v34 == 1)
  {
    if (v35)
    {
      v36 = *(*(a1 + 96) + 8);
      *(v36 + 32) = a4;
      *(v36 + 40) = a5;
      if (*(*(a1 + 40) + 210) == 1 && v19)
      {
        v38 = *(a1 + 120);
        [*(*(*(a1 + 64) + 8) + 40) moveToPoint:{v38, a5}];
        [*(*(*(a1 + 64) + 8) + 40) addLineToPoint:{*(*(*(a1 + 96) + 8) + 32), *(*(*(a1 + 96) + 8) + 40)}];
        (*(*(a1 + 56) + 16))(v38, a5, *(*(*(a1 + 96) + 8) + 32), *(*(*(a1 + 96) + 8) + 40));
        v39 = objc_opt_new();
        v40 = *(*(a1 + 64) + 8);
        v41 = *(v40 + 40);
        *(v40 + 40) = v39;
      }

      v42 = *(*(*(a1 + 64) + 8) + 40);
    }

    else
    {
      v42 = *(*(*(a1 + 64) + 8) + 40);
      if (!v21)
      {
        [v42 addLineToPoint:{a4, *(*(*(a1 + 104) + 8) + 40)}];
        [*(*(*(a1 + 64) + 8) + 40) addLineToPoint:{a4, a5}];
        goto LABEL_38;
      }
    }

    [v42 moveToPoint:{a4, a5}];
LABEL_38:
    v45 = *(*(a1 + 104) + 8);
    *(v45 + 32) = a4;
    *(v45 + 40) = a5;
    goto LABEL_39;
  }

  if (v35)
  {
    v43 = *(*(a1 + 96) + 8);
    *(v43 + 32) = a4;
    *(v43 + 40) = a5;
    v44 = *(*(*(a1 + 64) + 8) + 40);
LABEL_35:
    [v44 moveToPoint:{a4, a5}];
    goto LABEL_39;
  }

  v44 = *(*(*(a1 + 64) + 8) + 40);
  if (v21)
  {
    goto LABEL_35;
  }

  [v44 addLineToPoint:{a4, a5}];
LABEL_39:
  if (a4 <= v18)
  {
    v46 = *(*(a1 + 80) + 8);
    *(v46 + 32) = a6;
    *(v46 + 40) = a7;
    objc_storeStrong((*(*(a1 + 88) + 8) + 40), a3);
    *(*(*(a1 + 72) + 8) + 24) = 1;
    *(*(*(a1 + 112) + 8) + 24) = v19;
  }

  if (*(a1 + 152) == 1)
  {
    v47 = [*(a1 + 40) closestXCoordinateRange];

    if (v47)
    {
      v48 = HKUIFloorCGPointToScreenScale(a4, a5);
      v49 = [*(a1 + 40) closestXCoordinateRange];
      v50 = [v49 minValue];
      [v50 floatValue];
      v52 = HKUIFloorToScreenScale(v51);

      v53 = [*(a1 + 40) closestXCoordinateRange];
      v54 = [v53 maxValue];
      [v54 floatValue];
      v56 = HKUIFloorToScreenScale(v55);

      v57 = vabdd_f64(v52, v48);
      v58 = HKUIOnePixel();
      v59 = HKUIOnePixel();
      if (v57 <= v58 || vabdd_f64(v56, v48) <= v59)
      {
        (*(*(a1 + 56) + 16))(*(*(*(a1 + 96) + 8) + 32), *(*(*(a1 + 96) + 8) + 40), a4, a5);
        v60 = *(*(a1 + 96) + 8);
        *(v60 + 32) = a4;
        *(v60 + 40) = a5;
        v61 = objc_opt_new();
        v62 = *(*(a1 + 64) + 8);
        v63 = *(v62 + 40);
        *(v62 + 40) = v61;

        [*(*(*(a1 + 64) + 8) + 40) moveToPoint:{*(*(*(a1 + 96) + 8) + 32), *(*(*(a1 + 96) + 8) + 40)}];
      }
    }
  }

  if (a2)
  {
    v64 = *(a1 + 40);
    if (*(v64 + 208) == 1 && *(v64 + 209) == 1 && v19)
    {
      (*(*(a1 + 56) + 16))(*(*(*(a1 + 96) + 8) + 32), *(*(*(a1 + 96) + 8) + 40), a4, a5);
      v65 = *(*(a1 + 96) + 8);
      *(v65 + 32) = a4;
      *(v65 + 40) = a5;
      a4 = *(a1 + 120) + *(a1 + 136);
      v66 = objc_opt_new();
      v67 = *(*(a1 + 64) + 8);
      v68 = *(v67 + 40);
      *(v67 + 40) = v66;

      [*(*(*(a1 + 64) + 8) + 40) moveToPoint:{*(*(*(a1 + 96) + 8) + 32), *(*(*(a1 + 96) + 8) + 40)}];
      [*(*(*(a1 + 64) + 8) + 40) addLineToPoint:{a4, a5}];
    }

    (*(*(a1 + 56) + 16))(*(*(*(a1 + 96) + 8) + 32), *(*(*(a1 + 96) + 8) + 40), a4, a5);
    *(*(*(a1 + 96) + 8) + 32) = *MEMORY[0x1E695EFF8];
    v69 = objc_opt_new();
    v70 = *(*(a1 + 64) + 8);
    v71 = *(v70 + 40);
    *(v70 + 40) = v69;
  }
}

- (void)_enumerateSinePathsFromBlockCoordinates:(id)coordinates transfrom:(CGAffineTransform *)transfrom zoomLevelConfiguration:(id)configuration presentationStyle:(id)style axisRect:(CGRect)rect handler:(id)handler
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  coordinatesCopy = coordinates;
  configurationCopy = configuration;
  styleCopy = style;
  handlerCopy = handler;
  [styleCopy sineWaveSmoothingFactor];
  v20 = v19;
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v56[3] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __124__HKLineSeries__enumerateSinePathsFromBlockCoordinates_transfrom_zoomLevelConfiguration_presentationStyle_axisRect_handler___block_invoke;
  aBlock[3] = &unk_1E81B67F8;
  v54 = v56;
  v22 = bezierPath;
  v53 = v22;
  v55 = v20;
  v23 = _Block_copy(aBlock);
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3010000000;
  v50[3] = &unk_1C3DAF4DA;
  v51 = *MEMORY[0x1E695EFF8];
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3010000000;
  v48[3] = &unk_1C3DAF4DA;
  v49 = v51;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3010000000;
  v46[3] = &unk_1C3DAF4DA;
  v47 = v51;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3010000000;
  v44[3] = &unk_1C3DAF4DA;
  v45 = v51;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3010000000;
  v42[3] = &unk_1C3DAF4DA;
  v43 = v51;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __124__HKLineSeries__enumerateSinePathsFromBlockCoordinates_transfrom_zoomLevelConfiguration_presentationStyle_axisRect_handler___block_invoke_2;
  v31[3] = &unk_1E81B6820;
  v35 = v41;
  v36 = v44;
  v24 = v22;
  v32 = v24;
  v37 = v50;
  v38 = v48;
  v39 = v46;
  v25 = v23;
  v33 = v25;
  v40 = v42;
  v26 = handlerCopy;
  v34 = v26;
  v27 = *&transfrom->c;
  v30[0] = *&transfrom->a;
  v30[1] = v27;
  v30[2] = *&transfrom->tx;
  [(HKLineSeries *)self _enumerateCoordinateListByRemovingOffscreenPoints:coordinatesCopy withTransform:v30 presentationStyle:styleCopy zoomLevelConfiguration:configurationCopy axisRect:v31 block:x, y, width, height];

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v46, 8);
  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v50, 8);

  _Block_object_dispose(v56, 8);
}

uint64_t __124__HKLineSeries__enumerateSinePathsFromBlockCoordinates_transfrom_zoomLevelConfiguration_presentationStyle_axisRect_handler___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (!*(*(*(a1 + 40) + 8) + 24))
  {
    [*(a1 + 32) moveToPoint:{a2, a3}];
  }

  v14 = a5 - a3;
  v15 = a7 - a5;
  v16 = vabdd_f64(a4, a2);
  v17 = vabdd_f64(a6, a4);
  v18 = 0.1;
  if (v16 >= 0.00000011920929 && v17 >= 0.00000011920929)
  {
    v20 = fmax(fabs(v14 / v16), fabs(v15 / v17));
    if (v20 <= 5.0)
    {
      if (v20 <= 3.0)
      {
        v18 = 0.5;
        if (v20 <= 1.5)
        {
          v18 = 1.0;
          if (v20 < 0.5)
          {
            v18 = 2.0;
          }
        }
      }

      else
      {
        v18 = 0.2;
      }
    }
  }

  v21 = *(a1 + 48) * v18;
  v22 = a4 + (a6 - a4) * v21;
  v23 = a5 + v15 * v21;
  [*(a1 + 32) addLineToPoint:{a4 - (a4 - a2) * v21, a5 - v14 * v21}];
  result = [*(a1 + 32) addQuadCurveToPoint:v22 controlPoint:{v23, a4, a5}];
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

void __124__HKLineSeries__enumerateSinePathsFromBlockCoordinates_transfrom_zoomLevelConfiguration_presentationStyle_axisRect_handler___block_invoke_2(uint64_t a1, int a2, void *a3, double a4, double a5)
{
  v16 = a3;
  v9 = *(*(*(a1 + 56) + 8) + 24);
  if (v9 != 2)
  {
    if (v9 == 1)
    {
      v11 = *(a1 + 80);
      goto LABEL_6;
    }

    if (!v9)
    {
      v10 = *(*(a1 + 64) + 8);
      *(v10 + 32) = a4;
      *(v10 + 40) = a5;
      [*(a1 + 32) moveToPoint:{a4, a5}];
      v11 = *(a1 + 72);
LABEL_6:
      v12 = *(v11 + 8);
      *(v12 + 32) = a4;
      *(v12 + 40) = a5;
      goto LABEL_9;
    }

    *(*(*(a1 + 72) + 8) + 32) = *(*(*(a1 + 80) + 8) + 32);
    *(*(*(a1 + 80) + 8) + 32) = *(*(*(a1 + 88) + 8) + 32);
  }

  v13 = *(*(a1 + 88) + 8);
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  (*(*(a1 + 40) + 16))(*(*(*(a1 + 72) + 8) + 32), *(*(*(a1 + 72) + 8) + 40), *(*(*(a1 + 80) + 8) + 32), *(*(*(a1 + 80) + 8) + 40), *(*(*(a1 + 88) + 8) + 32), *(*(*(a1 + 88) + 8) + 40));
LABEL_9:
  ++*(*(*(a1 + 56) + 8) + 24);
  v14 = *(*(a1 + 96) + 8);
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  if (a2)
  {
    [*(a1 + 32) addLineToPoint:{*(*(*(a1 + 96) + 8) + 32), *(*(*(a1 + 96) + 8) + 40)}];
    (*(*(a1 + 48) + 16))(*(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40), *(*(*(a1 + 96) + 8) + 32), *(*(*(a1 + 96) + 8) + 40));
    v15 = *MEMORY[0x1E695EFF8];
    *(*(*(a1 + 72) + 8) + 32) = *MEMORY[0x1E695EFF8];
    *(*(*(a1 + 80) + 8) + 32) = v15;
    *(*(*(a1 + 88) + 8) + 32) = v15;
    *(*(*(a1 + 64) + 8) + 32) = v15;
    *(*(*(a1 + 96) + 8) + 32) = v15;
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  v9 = *&transform->c;
  v10[0] = *&transform->a;
  v10[1] = v9;
  v10[2] = *&transform->tx;
  [(HKLineSeries *)self drawSeriesWithBlockCoordinates:coordinates axisRect:configuration zoomLevelConfiguration:v10 pointTransform:context renderContext:renderContext secondaryRenderContext:delegate seriesRenderingDelegate:rect.origin.x forceGapBetweenUntransformedPoints:rect.origin.y, rect.size.width, rect.size.height, &__block_literal_global_13];
}

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate forceGapBetweenUntransformedPoints:(id)self0
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v118 = *MEMORY[0x1E69E9840];
  coordinatesCopy = coordinates;
  configurationCopy = configuration;
  renderContextCopy = renderContext;
  delegateCopy = delegate;
  pointsCopy = points;
  c = context;
  CGContextSaveGState(context);
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  selfCopy = self;
  obj = [(HKLineSeries *)self _currentPresentationStyles];
  v71 = [obj countByEnumeratingWithState:&v113 objects:v117 count:16];
  if (v71)
  {
    v69 = *v114;
    do
    {
      v20 = 0;
      do
      {
        if (*v114 != v69)
        {
          v21 = v20;
          objc_enumerationMutation(obj);
          v20 = v21;
        }

        v73 = v20;
        v83 = *(*(&v113 + 1) + 8 * v20);
        strokeStyle = [v83 strokeStyle];
        fillStyle = [v83 fillStyle];
        firstObject = [(NSArray *)selfCopy->_selectedPresentationStyles firstObject];
        strokeStyle2 = [firstObject strokeStyle];

        firstObject2 = [(NSArray *)selfCopy->_selectedPresentationStyles firstObject];
        fillStyle2 = [firstObject2 fillStyle];

        if ([fillStyle isEqual:fillStyle2])
        {
          v26 = [strokeStyle isEqual:strokeStyle2];
        }

        else
        {
          v26 = 0;
        }

        endCapStyle = [v83 endCapStyle];
        v28 = [(HKLineSeries *)selfCopy pointMarkerImageForPointMarkerStyle:endCapStyle];

        v29 = objc_opt_new();
        v30 = objc_opt_new();
        v31 = objc_opt_new();
        v32 = objc_opt_new();
        v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v100[0] = MEMORY[0x1E69E9820];
        v100[1] = 3221225472;
        v100[2] = __190__HKLineSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate_forceGapBetweenUntransformedPoints___block_invoke;
        v100[3] = &unk_1E81B6868;
        v100[4] = selfCopy;
        v78 = strokeStyle;
        v101 = v78;
        v34 = v31;
        v102 = v34;
        v35 = v29;
        v103 = v35;
        v36 = fillStyle;
        v104 = v36;
        v109 = x;
        v110 = y;
        v111 = width;
        v112 = height;
        v75 = v32;
        v105 = v75;
        v37 = v30;
        v106 = v37;
        v38 = v28;
        v107 = v38;
        v76 = v33;
        v108 = v76;
        v39 = *&transform->c;
        v97 = *&transform->a;
        v98 = v39;
        v99 = *&transform->tx;
        [(HKLineSeries *)selfCopy _enumeratePathsFromBlockCoordinates:coordinatesCopy axisRect:configurationCopy zoomLevelConfiguration:&v97 transform:v83 presentationStyle:v26 caresAboutSelection:delegateCopy seriesRenderingDelegate:x forceGapBetweenUntransformedPoints:y handler:width, height, pointsCopy, v100];
        if (v78)
        {
          if (([v35 isEmpty] & 1) == 0)
          {
            [v78 applyToContext:c];
            v40 = v35;
            CGContextAddPath(c, [v35 CGPath]);
            CGContextStrokePath(c);
          }

          if (([v34 isEmpty] & 1) == 0)
          {
            [strokeStyle2 applyToContext:c];
            v41 = v34;
            CGContextAddPath(c, [v34 CGPath]);
            CGContextStrokePath(c);
          }
        }

        if (v36)
        {
          if (([v37 isEmpty] & 1) == 0)
          {
            v42 = v37;
            cGPath = [v37 CGPath];
            [(HKGraphSeries *)selfCopy alpha];
            [v36 renderPath:cGPath context:c axisRect:x alpha:{y, width, height, v44}];
          }

          if (([v34 isEmpty] & 1) == 0)
          {
            v45 = v75;
            cGPath2 = [v75 CGPath];
            [(HKGraphSeries *)selfCopy alpha];
            [fillStyle2 renderPath:cGPath2 context:c axisRect:x alpha:{y, width, height, v47}];
          }
        }

        if (v38)
        {
          [(HKLineSeries *)selfCopy _renderLineEndCapsInContext:c endCaps:v76 endCapImage:v38];
        }

        v48 = *&transform->c;
        v97 = *&transform->a;
        v98 = v48;
        v99 = *&transform->tx;
        [(HKLineSeries *)selfCopy _renderPointMarkersInContext:c blockCoordinates:coordinatesCopy pointTransform:&v97 presentationStyle:v83];
        annotationStyle = [v83 annotationStyle];
        if (annotationStyle)
        {
          v50 = *&transform->c;
          v97 = *&transform->a;
          v98 = v50;
          v99 = *&transform->tx;
          [(HKLineSeries *)selfCopy _renderPointLabelsInContext:c blockCoordinates:coordinatesCopy axisRect:&v97 pointTransform:v83 presentationStyle:configurationCopy zoomLevelConfiguration:delegateCopy seriesRenderingDelegate:x, y, width, height];
        }

        legendAnnotationStyle = [v83 legendAnnotationStyle];
        v52 = legendAnnotationStyle == 0;

        if (!v52)
        {
          legendAnnotationStyle2 = [v83 legendAnnotationStyle];
          leftOfSeries = [legendAnnotationStyle2 leftOfSeries];

          *&v97 = 0;
          *(&v97 + 1) = &v97;
          *&v98 = 0x3010000000;
          *(&v98 + 1) = &unk_1C3DAF4DA;
          v99 = 0uLL;
          v91 = 0;
          v92 = &v91;
          v93 = 0x3010000000;
          v94 = &unk_1C3DAF4DA;
          v95 = 0;
          v96 = 0;
          v55 = *&transform->c;
          v88 = *&transform->a;
          v89 = v55;
          v90 = *&transform->tx;
          if (leftOfSeries)
          {
            [coordinatesCopy firstCoordinateWithTransform:&v88 roundToViewScale:1];
          }

          else
          {
            [coordinatesCopy lastCoordinateWithTransform:&v88 roundToViewScale:1];
          }
          v56 = ;
          [v56 coordinate];
          v57 = *(&v97 + 1);
          *(*(&v97 + 1) + 32) = v58;
          *(v57 + 40) = v59;
          v60 = *&transform->c;
          v88 = *&transform->a;
          v89 = v60;
          v90 = *&transform->tx;
          v61 = [v56 copyWithTransform:&v88 roundToViewScale:1];
          [v61 coordinate];
          v62 = v92;
          *(v92 + 4) = v63;
          *(v62 + 5) = v64;

          v86[0] = 0;
          v86[1] = v86;
          v86[2] = 0x2020000000;
          v87 = 1;
          v84[0] = MEMORY[0x1E69E9820];
          v84[1] = 3221225472;
          v84[2] = __190__HKLineSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate_forceGapBetweenUntransformedPoints___block_invoke_2;
          v84[3] = &unk_1E81B6890;
          v85 = leftOfSeries;
          v84[4] = v86;
          v84[5] = &v91;
          v84[6] = &v97;
          v65 = *&transform->c;
          v88 = *&transform->a;
          v89 = v65;
          v90 = *&transform->tx;
          [(HKLineSeries *)selfCopy _enumerateCoordinateListByRemovingOffscreenPoints:coordinatesCopy withTransform:&v88 presentationStyle:v83 zoomLevelConfiguration:configurationCopy axisRect:v84 block:x, y, width, height];
          [(HKLineSeries *)selfCopy drawLegendPointLabelInContext:c point:v83 untransformedPoint:leftOfSeries axisRect:v92[4] presentationStyle:v92[5] leftOfPoint:*(*(&v97 + 1) + 32), *(*(&v97 + 1) + 40), x, y, width, height];
          _Block_object_dispose(v86, 8);
          _Block_object_dispose(&v91, 8);
          _Block_object_dispose(&v97, 8);
        }

        v20 = v73 + 1;
      }

      while (v71 != v73 + 1);
      v71 = [obj countByEnumeratingWithState:&v113 objects:v117 count:16];
    }

    while (v71);
  }

  CGContextRestoreGState(c);
  v66 = *&transform->c;
  v97 = *&transform->a;
  v98 = v66;
  v99 = *&transform->tx;
  [(HKLineSeries *)selfCopy _updateSecondaryRenderContextWithBlockCoordinates:coordinatesCopy secondaryRenderContext:renderContextCopy pointTransform:&v97 zoomLevelConfiguration:configurationCopy axisRect:x, y, width, height];
}

void __190__HKLineSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate_forceGapBetweenUntransformedPoints___block_invoke(uint64_t a1, void *a2, double a3, CGFloat a4, double a5, CGFloat MaxY)
{
  v30 = a2;
  v11 = [*(a1 + 32) closestXCoordinateRange];

  if (v11 && ([*(a1 + 32) closestXCoordinateRange], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "minValue"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "floatValue"), v15 = HKUIFloorToScreenScale(v14), v13, v12, objc_msgSend(*(a1 + 32), "closestXCoordinateRange"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "maxValue"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "floatValue"), v19 = HKUIFloorToScreenScale(v18), v17, v16, v20 = vabdd_f64(v15, HKUIFloorToScreenScale(a3)), v20 <= HKUIOnePixel()))
  {
    v22 = vabdd_f64(v19, HKUIFloorToScreenScale(a5));
    v21 = v22 <= HKUIOnePixel();
  }

  else
  {
    v21 = 0;
  }

  if (*(a1 + 40))
  {
    v23 = 56;
    if (v21)
    {
      v23 = 48;
    }

    [*(a1 + v23) appendPath:v30];
  }

  if (*(a1 + 64))
  {
    v24 = [v30 copy];
    MaxY = CGRectGetMaxY(*(a1 + 104));
    a4 = CGRectGetMaxY(*(a1 + 104));
    [v24 addLineToPoint:{a5, MaxY}];
    [v24 addLineToPoint:{a3, a4}];
    [v24 closePath];
    v25 = 80;
    if (v21)
    {
      v25 = 72;
    }

    [*(a1 + v25) appendPath:v24];
  }

  if (*(a1 + 88))
  {
    v26 = *(a1 + 96);
    v27 = [MEMORY[0x1E696B098] valueWithCGPoint:{a3, a4}];
    [v26 addObject:v27];

    if (a3 != a5 || a4 != MaxY)
    {
      v28 = *(a1 + 96);
      v29 = [MEMORY[0x1E696B098] valueWithCGPoint:{a5, MaxY}];
      [v28 addObject:v29];
    }
  }
}

uint64_t __190__HKLineSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate_forceGapBetweenUntransformedPoints___block_invoke_2(uint64_t result, int a2, double a3, double a4, double a5, double a6)
{
  if (*(*(*(result + 32) + 8) + 24) == 1 && *(result + 56) == 1)
  {
    v6 = *(*(result + 40) + 8);
    *(v6 + 32) = a3;
    *(v6 + 40) = a4;
    v7 = *(*(result + 48) + 8);
    *(v7 + 32) = a5;
    *(v7 + 40) = a6;
    *(*(*(result + 32) + 8) + 24) = 0;
  }

  if (a2)
  {
    if ((*(result + 56) & 1) == 0)
    {
      v8 = *(*(result + 40) + 8);
      *(v8 + 32) = a3;
      *(v8 + 40) = a4;
      v9 = *(*(result + 48) + 8);
      *(v9 + 32) = a5;
      *(v9 + 40) = a6;
    }
  }

  return result;
}

- (void)drawLegendPointLabelInContext:(CGContext *)context point:(CGPoint)point untransformedPoint:(CGPoint)untransformedPoint axisRect:(CGRect)rect presentationStyle:(id)style leftOfPoint:(BOOL)ofPoint
{
  ofPointCopy = ofPoint;
  y = point.y;
  x = point.x;
  v33[2] = *MEMORY[0x1E69E9840];
  styleCopy = style;
  legendAnnotationStyle = [styleCopy legendAnnotationStyle];
  labelStyle = [legendAnnotationStyle labelStyle];

  textColor = [labelStyle textColor];
  font = [labelStyle font];
  v16 = *MEMORY[0x1E69DB650];
  v32[0] = *MEMORY[0x1E69DB648];
  v32[1] = v16;
  v33[0] = font;
  v33[1] = textColor;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  legendAnnotationStyle2 = [styleCopy legendAnnotationStyle];
  localizedLabelKey = [legendAnnotationStyle2 localizedLabelKey];
  v21 = [v18 localizedStringForKey:localizedLabelKey value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  [v21 sizeWithAttributes:v17];
  v23 = v22;
  v25 = v24;
  if (ofPointCopy)
  {
    v26 = x + v22 * -0.5 * 2.0 + -3.0;
    pointMarkerStyle = [styleCopy pointMarkerStyle];

    [pointMarkerStyle radius];
    v29 = v26 - v28;
  }

  else
  {
    pointMarkerStyle = [styleCopy pointMarkerStyle];

    [pointMarkerStyle radius];
    v29 = x + 3.0 + v30;
  }

  [(HKLineSeries *)self _renderPointLegendLabelWithText:v21 drawRect:v17 labelAttributes:v29, y + v25 * -0.5, v23, v25];
}

- (void)_updateSecondaryRenderContextWithBlockCoordinates:(id)coordinates secondaryRenderContext:(id)context pointTransform:(CGAffineTransform *)transform zoomLevelConfiguration:(id)configuration axisRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  coordinatesCopy = coordinates;
  contextCopy = context;
  configurationCopy = configuration;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3010000000;
  v44[3] = &unk_1C3DAF4DA;
  v45 = vdupq_n_s64(0x10000000000000uLL);
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v43[3] = 0x10000000000000;
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  MinY = CGRectGetMinY(v46);
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  MaxY = CGRectGetMaxY(v47);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __136__HKLineSeries__updateSecondaryRenderContextWithBlockCoordinates_secondaryRenderContext_pointTransform_zoomLevelConfiguration_axisRect___block_invoke_2;
  aBlock[3] = &unk_1E81B68D8;
  v41 = MinY;
  v42 = MaxY;
  v38 = &__block_literal_global_332_0;
  v39 = v43;
  v40 = v44;
  v20 = contextCopy;
  v36 = v20;
  selfCopy = self;
  v21 = _Block_copy(aBlock);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __136__HKLineSeries__updateSecondaryRenderContextWithBlockCoordinates_secondaryRenderContext_pointTransform_zoomLevelConfiguration_axisRect___block_invoke_3;
  v26[3] = &unk_1E81B6900;
  v33 = MinY;
  v34 = MaxY;
  v31 = v44;
  v32 = v43;
  v22 = v21;
  v29 = v22;
  v30 = &__block_literal_global_332_0;
  v23 = v20;
  v27 = v23;
  selfCopy2 = self;
  v24 = *&transform->c;
  v25[0] = *&transform->a;
  v25[1] = v24;
  v25[2] = *&transform->tx;
  [(HKLineSeries *)self _enumerateCoordinateListByRemovingOffscreenPoints:coordinatesCopy withTransform:v25 presentationStyle:0 zoomLevelConfiguration:configurationCopy axisRect:v26 block:x, y, width, height];

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v44, 8);
}

void __136__HKLineSeries__updateSecondaryRenderContextWithBlockCoordinates_secondaryRenderContext_pointTransform_zoomLevelConfiguration_axisRect___block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4, __n128 a5, __n128 a6)
{
  a6.n128_f64[0] = a4;
  a5.n128_f64[0] = a3;
  if (*(*(*(a1 + 56) + 8) + 24) != 2.22507386e-308)
  {
    v8 = 80;
    if (a2)
    {
      v8 = 72;
    }

    v9 = (*(*(a1 + 48) + 16))(*(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40), a5, a6, *(a1 + v8));
    v10 = *(*(*(a1 + 56) + 8) + 24);
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) offScreenIndicatorColor];
    [v11 addOffScreenRegionWithStartLocation:v12 endLocation:a2 color:v10 aboveScreen:v9];

    *(*(*(a1 + 56) + 8) + 24) = 0x10000000000000;
  }
}

void __136__HKLineSeries__updateSecondaryRenderContextWithBlockCoordinates_secondaryRenderContext_pointTransform_zoomLevelConfiguration_axisRect___block_invoke_3(uint64_t a1, int a2, void *a3, double a4, double a5)
{
  v9 = a3;
  v12 = *(a1 + 80);
  v11.n128_u64[0] = *(a1 + 88);
  v13 = a5 < v12;
  v14 = *(*(a1 + 64) + 8);
  v15.n128_u64[0] = *(v14 + 32);
  if (a5 > v11.n128_f64[0])
  {
    v13 = 1;
  }

  if (v13 && v15.n128_f64[0] == 2.22507386e-308)
  {
    *(*(*(a1 + 72) + 8) + 24) = a4;
    goto LABEL_19;
  }

  v10.n128_u64[0] = *(v14 + 40);
  if (a5 < v12 && v10.n128_f64[0] >= v12)
  {
    v24 = v9;
    v18 = v10.n128_f64[0] <= v11.n128_f64[0];
    v11.n128_u64[0] = *(a1 + 80);
    if (!v18)
    {
      (*(*(a1 + 48) + 16))(a4, a5);
      v19 = *(*(a1 + 64) + 8);
      v11.n128_u64[0] = *(a1 + 80);
LABEL_25:
      v15.n128_u64[0] = *(v19 + 32);
      v10.n128_u64[0] = *(v19 + 40);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v18 = a5 > v11.n128_f64[0] && v10.n128_f64[0] <= v11.n128_f64[0];
  if (!v18)
  {
    if (!v13)
    {
      v24 = v9;
      (*(*(a1 + 48) + 16))(a4, a5);
      goto LABEL_27;
    }

LABEL_19:
    if (!a2)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v24 = v9;
  if (v10.n128_f64[0] < v12)
  {
    (*(*(a1 + 48) + 16))(a4, a5);
    v19 = *(*(a1 + 64) + 8);
    v11.n128_u64[0] = *(a1 + 88);
    goto LABEL_25;
  }

LABEL_26:
  *(*(*(a1 + 72) + 8) + 24) = (*(*(a1 + 56) + 16))(v15, v10, a4, a5, v11);
LABEL_27:
  v9 = v24;
  if (!a2)
  {
    goto LABEL_30;
  }

LABEL_28:
  v20 = *(*(*(a1 + 72) + 8) + 24);
  if (v20 != 2.22507386e-308)
  {
    v25 = v9;
    v21 = *(a1 + 32);
    v22 = [*(a1 + 40) offScreenIndicatorColor];
    [v21 addOffScreenRegionWithStartLocation:v22 endLocation:a5 < v12 color:v20 aboveScreen:a4];

    v9 = v25;
    *(*(*(a1 + 72) + 8) + 24) = 0x10000000000000;
  }

LABEL_30:
  v23 = *(*(a1 + 64) + 8);
  *(v23 + 32) = a4;
  *(v23 + 40) = a5;
}

- (void)_renderLineEndCapsInContext:(CGContext *)context endCaps:(id)caps endCapImage:(id)image
{
  v31 = *MEMORY[0x1E69E9840];
  capsCopy = caps;
  imageCopy = image;
  CGContextSaveGState(context);
  v9 = HKChartSeriesPointMarkerBaseRect(imageCopy);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  cGImage = [imageCopy CGImage];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = capsCopy;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      v21 = 0;
      do
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v26 + 1) + 8 * v21) CGPointValue];
        v23 = v22;
        v25 = v24;
        v32.origin.x = v9;
        v32.origin.y = v11;
        v32.size.width = v13;
        v32.size.height = v15;
        v33 = CGRectOffset(v32, v23, v25);
        CGContextDrawImage(context, v33, cGImage);
        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v19);
  }

  CGContextRestoreGState(context);
}

- (void)_renderPointMarkersInContext:(CGContext *)context blockCoordinates:(id)coordinates pointTransform:(CGAffineTransform *)transform presentationStyle:(id)style
{
  coordinatesCopy = coordinates;
  pointMarkerStyle = [style pointMarkerStyle];
  selectedPointMarkerStyle = self->_selectedPointMarkerStyle;
  firstObject = [(NSArray *)self->_selectedPresentationStyles firstObject];
  pointMarkerStyle2 = [firstObject pointMarkerStyle];
  v15 = *&transform->c;
  v16[0] = *&transform->a;
  v16[1] = v15;
  v16[2] = *&transform->tx;
  [(HKLineSeries *)self renderPointMarkersInContext:context blockCoordinates:coordinatesCopy pointTransform:v16 pointMarkerStyle:pointMarkerStyle selectedBoundsMarkerStyle:selectedPointMarkerStyle selectedPointMarkerStyle:pointMarkerStyle2];
}

- (void)renderPointMarkersInContext:(CGContext *)context blockCoordinates:(id)coordinates pointTransform:(CGAffineTransform *)transform pointMarkerStyle:(id)style selectedBoundsMarkerStyle:(id)markerStyle selectedPointMarkerStyle:(id)pointMarkerStyle
{
  coordinatesCopy = coordinates;
  markerStyleCopy = markerStyle;
  pointMarkerStyleCopy = pointMarkerStyle;
  v17 = [(HKLineSeries *)self pointMarkerImageForPointMarkerStyle:style];
  if (v17)
  {
    CGContextSaveGState(context);
    v18 = HKChartSeriesPointMarkerBaseRect(v17);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    cGImage = [v17 CGImage];
    v25 = [(HKLineSeries *)self pointMarkerImageForPointMarkerStyle:markerStyleCopy];
    v26 = HKChartSeriesPointMarkerBaseRect(v25);
    v28 = v27;
    v30 = v29;
    v32 = v31;
    cGImage2 = [v25 CGImage];
    v33 = [(HKLineSeries *)self pointMarkerImageForPointMarkerStyle:pointMarkerStyleCopy];
    v34 = markerStyleCopy;
    v35 = coordinatesCopy;
    cGImage3 = [v33 CGImage];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    [(HKGraphSeries *)self selectedPathRange];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __144__HKLineSeries_renderPointMarkersInContext_blockCoordinates_pointTransform_pointMarkerStyle_selectedBoundsMarkerStyle_selectedPointMarkerStyle___block_invoke;
    v41[3] = &__block_descriptor_192_e114_v64__0___HKLineSeriesBlockCoordinate_8____HKGraphSeriesDataBlockPath_qqq_q_16___HKLineSeriesBlockCoordinate_48_B56l;
    v41[4] = cGImage;
    *&v41[5] = v18;
    v41[6] = v20;
    v41[7] = v22;
    v41[8] = v24;
    v42 = v53;
    v43 = v54;
    v44 = v55;
    v45 = v56;
    v46 = cGImage2;
    v47 = v26;
    v48 = v28;
    v49 = v30;
    v50 = v32;
    v51 = cGImage3;
    contextCopy = context;
    coordinatesCopy = v35;
    markerStyleCopy = v34;
    v37 = *&transform->c;
    v40[0] = *&transform->a;
    v40[1] = v37;
    v40[2] = *&transform->tx;
    [coordinatesCopy enumerateCoordinatesWithTransform:v40 roundToViewScale:1 block:v41];
    CGContextRestoreGState(context);
  }
}

void __144__HKLineSeries_renderPointMarkersInContext_blockCoordinates_pointTransform_pointMarkerStyle_selectedBoundsMarkerStyle_selectedPointMarkerStyle___block_invoke(uint64_t a1, void *a2, __int128 *a3)
{
  [a2 coordinate];
  v6 = v5;
  v8 = v7;
  v9 = *(a1 + 32);
  v23 = *(a1 + 40);
  v24 = *(a1 + 56);
  v10 = a3[1];
  v25 = *a3;
  v26 = v10;
  v11 = *(a1 + 88);
  v29 = *(a1 + 72);
  v30 = v11;
  if (HKGraphSeriesDataPointPathEqualToPath(&v25, &v29) || (v12 = a3[1], v25 = *a3, v26 = v12, v13 = *(a1 + 120), v29 = *(a1 + 104), v30 = v13, HKGraphSeriesDataPointPathEqualToPath(&v25, &v29)))
  {
    v9 = *(a1 + 136);
    v23 = *(a1 + 144);
    v24 = *(a1 + 160);
  }

  v14 = a3[1];
  v29 = *a3;
  v30 = v14;
  v15 = *(a1 + 88);
  v25 = *(a1 + 72);
  v26 = v15;
  v16 = *(a1 + 120);
  v27 = *(a1 + 104);
  v28 = v16;
  v17 = HKGraphSeriesDataPointPathInRange(&v29, &v25);
  v18 = v23;
  v19 = v24;
  if (v17)
  {
    v9 = *(a1 + 176);
    v19 = *(a1 + 56);
    v18 = *(a1 + 40);
  }

  v20 = *(a1 + 184);
  v21 = *(&v18 + 1);
  v22 = *(&v19 + 1);
  v31 = CGRectOffset(*&v18, v6, v8);
  CGContextDrawImage(v20, v31, v9);
}

- (void)_renderPointLabelsInContext:(CGContext *)context blockCoordinates:(id)coordinates axisRect:(CGRect)rect pointTransform:(CGAffineTransform *)transform presentationStyle:(id)style zoomLevelConfiguration:(id)configuration seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v61[2] = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  configurationCopy = configuration;
  styleCopy = style;
  coordinatesCopy = coordinates;
  annotationStyle = [styleCopy annotationStyle];
  textColor = [annotationStyle textColor];
  font = [annotationStyle font];
  v23 = *MEMORY[0x1E69DB650];
  v60[0] = *MEMORY[0x1E69DB648];
  v60[1] = v23;
  v44 = font;
  v45 = textColor;
  v61[0] = font;
  v61[1] = textColor;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
  numberFormatter = [annotationStyle numberFormatter];
  v26 = numberFormatter;
  if (numberFormatter)
  {
    v27 = numberFormatter;
  }

  else
  {
    v27 = HKIntegerFormatter();
  }

  v28 = v27;

  v29 = [HKPointLabelEngine alloc];
  seriesDrawingDuringTiling = [delegateCopy seriesDrawingDuringTiling];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __150__HKLineSeries__renderPointLabelsInContext_blockCoordinates_axisRect_pointTransform_presentationStyle_zoomLevelConfiguration_seriesRenderingDelegate___block_invoke;
  v57[3] = &unk_1E81B6948;
  v31 = v28;
  v58 = v31;
  v32 = v24;
  v59 = v32;
  height = [(HKPointLabelEngine *)v29 initWithBoundingRegion:seriesDrawingDuringTiling ^ 1u isLabelShiftingEnabled:v57 labelSizeBlock:x, y, width, height];
  CGContextSaveGState(context);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __150__HKLineSeries__renderPointLabelsInContext_blockCoordinates_axisRect_pointTransform_presentationStyle_zoomLevelConfiguration_seriesRenderingDelegate___block_invoke_2;
  v50[3] = &unk_1E81B6970;
  v34 = height;
  v51 = v34;
  selfCopy = self;
  selfCopy2 = self;
  contextCopy = context;
  v36 = v31;
  v53 = v36;
  v37 = v32;
  v54 = v37;
  v38 = delegateCopy;
  v55 = v38;
  v39 = *&transform->c;
  v47 = *&transform->a;
  v48 = v39;
  v49 = *&transform->tx;
  [(HKLineSeries *)selfCopy2 _enumerateCoordinateListByRemovingOffscreenPoints:coordinatesCopy withTransform:&v47 presentationStyle:styleCopy zoomLevelConfiguration:configurationCopy axisRect:v50 block:x, y, width, height];

  if ([(HKPointLabelEngine *)v34 processLastPoint])
  {
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    if (v34)
    {
      [(HKPointLabelEngine *)v34 renderingData];
      v40 = *(&v49 + 1) | 2;
    }

    else
    {
      *&v49 = 0;
      v40 = 2;
      v47 = 0uLL;
      v48 = 0uLL;
    }

    *(&v49 + 1) = v40;
    v46[0] = v47;
    v46[1] = v48;
    v46[2] = v49;
    [(HKLineSeries *)selfCopy2 _renderPointLabelInContext:context renderingData:v46 numberFormatter:v36 labelAttributes:v37 seriesRenderingDelegate:v38];
  }

  CGContextRestoreGState(context);
}

double __150__HKLineSeries__renderPointLabelsInContext_blockCoordinates_axisRect_pointTransform_presentationStyle_zoomLevelConfiguration_seriesRenderingDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v4 = [v2 stringFromNumber:v3 displayType:0 unitController:0];

  [v4 sizeWithAttributes:*(a1 + 40)];
  v6 = v5;

  return v6;
}

uint64_t __150__HKLineSeries__renderPointLabelsInContext_blockCoordinates_axisRect_pointTransform_presentationStyle_zoomLevelConfiguration_seriesRenderingDelegate___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) processTransformedPoint:? untransformedPoint:?];
  if (result)
  {
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    v3 = *(a1 + 32);
    if (v3)
    {
      [v3 renderingData];
      v4 = *(&v13 + 1) | 2;
    }

    else
    {
      *&v13 = 0;
      v4 = 2;
      v11 = 0uLL;
      v12 = 0uLL;
    }

    *(&v13 + 1) = v4;
    v6 = *(a1 + 64);
    v5 = *(a1 + 72);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10[0] = v11;
    v10[1] = v12;
    v10[2] = v13;
    return [v7 _renderPointLabelInContext:v5 renderingData:v10 numberFormatter:v8 labelAttributes:v9 seriesRenderingDelegate:v6];
  }

  return result;
}

- (void)_renderPointLabelInContext:(CGContext *)context renderingData:(id *)data numberFormatter:(id)formatter labelAttributes:(id)attributes seriesRenderingDelegate:(id)delegate
{
  attributesCopy = attributes;
  delegateCopy = delegate;
  v12 = MEMORY[0x1E696AD98];
  var1 = data->var1;
  formatterCopy = formatter;
  v15 = [v12 numberWithDouble:var1];
  v16 = [formatterCopy stringFromNumber:v15 displayType:0 unitController:0];

  if ((data->var2 & 2) != 0)
  {
    if (([delegateCopy seriesDrawingDuringTiling] & 1) != 0 || objc_msgSend(delegateCopy, "seriesDrawingDuringScrolling"))
    {
      hk_chartBackgroundColor = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
    }

    else
    {
      hk_chartBackgroundColor = [MEMORY[0x1E69DC888] clearColor];
    }

    v18 = hk_chartBackgroundColor;
    [v16 hk_drawInRect:attributesCopy withAttributes:hk_chartBackgroundColor outlineWidth:context outlineColor:data->var0.origin.x context:{data->var0.origin.y, data->var0.size.width, data->var0.size.height, 8.0}];
  }

  else
  {
    [v16 drawInRect:attributesCopy withAttributes:{data->var0.origin.x, data->var0.origin.y, data->var0.size.width, data->var0.size.height}];
  }
}

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  axisCopy = axis;
  yAxisCopy = yAxis;
  chartPoints = [block chartPoints];
  if (!chartPoints)
  {
    [HKLineSeries coordinatesForBlock:blockPath:xAxis:yAxis:];
  }

  transform = [axisCopy transform];
  transform2 = [yAxisCopy transform];

  v14 = objc_opt_new();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __58__HKLineSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v22[3] = &unk_1E81B6998;
  v23 = transform;
  v24 = transform2;
  v25 = v14;
  v15 = v14;
  v16 = transform2;
  v17 = transform;
  [chartPoints enumerateObjectsUsingBlock:v22];
  v20 = *&path->index;
  resolution = path->resolution;
  v18 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:v15 blockPath:&v20];

  return v18;
}

void __58__HKLineSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke(void *a1, void *a2)
{
  v15 = a2;
  v3 = [v15 yValue];

  if (v3)
  {
    v4 = a1[4];
    v5 = [v15 xValueAsGenericType];
    [v4 coordinateForValue:v5];
    v7 = v6;

    v8 = a1[5];
    v9 = [v15 yValue];
    [v8 coordinateForValue:v9];
    v11 = v10;

    v12 = [v15 userInfo];
    v13 = a1[6];
    v14 = [[_HKLineSeriesBlockCoordinate alloc] initWithCoordinate:v12 userInfo:v7, v11];
    [v13 addObject:v14];
  }
}

- (int64_t)resolutionForTimeScope:(int64_t)scope traitResolution:(int64_t)resolution
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  unhighlightedPresentationStyles = [(HKLineSeries *)self unhighlightedPresentationStyles];
  v7 = [unhighlightedPresentationStyles countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(unhighlightedPresentationStyles);
        }

        annotationStyle = [*(*(&v15 + 1) + 8 * i) annotationStyle];
        v13 = annotationStyle != 0;

        v9 |= v13;
      }

      v8 = [unhighlightedPresentationStyles countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if (resolution == 1)
  {
    return (scope == 5) & v9;
  }

  else
  {
    return 0;
  }
}

- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKLineSeries distanceFromPoint:blockCoordinate:chartRect:];
  }

  [coordinateCopy coordinate];
  UIDistanceBetweenPoints();
  v7 = v6;

  return v7;
}

- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  x = point.x;
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKLineSeries xAxisDistanceFromPoint:blockCoordinate:chartRect:];
  }

  [coordinateCopy coordinate];
  v8 = vabdd_f64(v7, x);

  return v8;
}

- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  y = point.y;
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKLineSeries yAxisDifferenceToPoint:blockCoordinate:chartRect:];
  }

  [coordinateCopy coordinate];
  v8 = v7 - y;

  return v8;
}

- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)rect blockCoordinate:(id)coordinate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [coordinate coordinate];
  v9 = v8;
  v11 = v10;
  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;

  return CGRectContainsPoint(*&v12, *&v9);
}

- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than
{
  thanCopy = than;
  [coordinate coordinate];
  v7 = v6;
  [thanCopy coordinate];
  v9 = v8;

  return v7 < v9;
}

- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than
{
  thanCopy = than;
  [coordinate coordinate];
  v7 = v6;
  [thanCopy coordinate];
  v9 = v8;

  return v7 > v9;
}

- (void)coordinatesForBlock:blockPath:xAxis:yAxis:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"points != nil" object:? file:? lineNumber:? description:?];
}

- (void)distanceFromPoint:blockCoordinate:chartRect:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)xAxisDistanceFromPoint:blockCoordinate:chartRect:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)yAxisDifferenceToPoint:blockCoordinate:chartRect:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end