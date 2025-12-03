@interface HKGraphViewRenderer
- (BOOL)_lastSeriesInMultiSeriesRow:(id)row series:(id)series;
- (BOOL)seriesDrawingAsTopOverlay:(id)overlay;
- (CGAffineTransform)xAxisCoordinateTransform;
- (CGPoint)contentOffset;
- (CGRect)fullChartRect;
- (CGRect)insetChartRect;
- (CGRect)insetDataArea;
- (CGRect)screenRectForSeries:(id)series;
- (CGRect)scrollingAreaRect;
- (UIEdgeInsets)virtualMarginInsets;
- (double)_renderXAxisLabelsInContext:(CGContext *)context;
- (id)axisAnnotationDelegateForSeries:(id)series;
- (id)initWithRendererSeries:(double)series renderingView:(double)view fullChartRect:(double)rect insetChartRect:(double)chartRect insetDataArea:(double)area rightHandInactiveArea:(double)inactiveArea zoomScale:(double)scale traitResolution:(uint64_t)self0 contentOffset:(void *)self1 xAxisDateZoom:(void *)self2 drawingToTile:(void *)self3 tileColumn:(void *)self4 drawingDuringScrolling:(char)self5 drawingDuringAutoscale:(void *)self6 xAxis:(void *)self7 xAxisCoordinateTransform:(void *)self8 virtualMargins:(void *)self9 outlineColor:(void *)color tileBackgroundColor:(void *)backgroundColor topBaselineY:(void *)y bottomBaselineY:(void *)baselineY selectionLineColor:(void *)lineColor selectionLineStyle:(char)style disableXAxis:(char)xAxis currentXAxisHeight:(void *)height gridlineRanges:(__int128 *)ranges effectiveVisibleRangeCadence:(void *)cadence effectiveVisibleRangeActive:(void *)series0 actualVisibleRange:(void *)series1 scrollingAreaRect:(void *)series2 chartMeasuringStartupTime:(void *)series3;
- (void)_clearBackgroundInContext:(CGContext *)context;
- (void)_renderBaselineWithContext:(CGContext *)context chartRect:(CGRect)rect;
- (void)_renderDataAreaDividersWithContext:(CGContext *)context;
- (void)_renderSelectionLineWithContext:(CGContext *)context;
- (void)_renderSeriesWithContext:(CGContext *)context secondaryRenderContext:(id)renderContext chartRect:(CGRect)rect;
- (void)_renderVirtualMarginGridLines:(CGRect)lines context:(CGContext *)context;
- (void)_renderVirtualMarginInRect:(CGRect)rect context:(CGContext *)context marginStyle:(int64_t)style;
- (void)_renderVirtualMarginsWithContext:(CGContext *)context;
- (void)_renderXAxisGridlinesInContext:(CGContext *)context withBlendMode:(int)mode;
- (void)_renderXAxisLabelAndGridsNeedsNewRendererInContext:(CGContext *)context;
- (void)_renderYAxisGridlinesInContext:(CGContext *)context renderingView:(id)view chartRect:(CGRect)rect withBlendMode:(int)mode zoomScale:(double)scale contentOffset:(CGPoint)offset;
- (void)renderContentToContext:(CGContext *)context;
@end

@implementation HKGraphViewRenderer

- (id)initWithRendererSeries:(double)series renderingView:(double)view fullChartRect:(double)rect insetChartRect:(double)chartRect insetDataArea:(double)area rightHandInactiveArea:(double)inactiveArea zoomScale:(double)scale traitResolution:(uint64_t)self0 contentOffset:(void *)self1 xAxisDateZoom:(void *)self2 drawingToTile:(void *)self3 tileColumn:(void *)self4 drawingDuringScrolling:(char)self5 drawingDuringAutoscale:(void *)self6 xAxis:(void *)self7 xAxisCoordinateTransform:(void *)self8 virtualMargins:(void *)self9 outlineColor:(void *)color tileBackgroundColor:(void *)backgroundColor topBaselineY:(void *)y bottomBaselineY:(void *)baselineY selectionLineColor:(void *)lineColor selectionLineStyle:(char)style disableXAxis:(char)xAxis currentXAxisHeight:(void *)height gridlineRanges:(__int128 *)ranges effectiveVisibleRangeCadence:(void *)cadence effectiveVisibleRangeActive:(void *)series0 actualVisibleRange:(void *)series1 scrollingAreaRect:(void *)series2 chartMeasuringStartupTime:(void *)series3
{
  offsetCopy = offset;
  zoomCopy = zoom;
  zoomCopy2 = zoom;
  heightCopy = height;
  cadenceCopy = cadence;
  activeCopy = active;
  rangeCopy = range;
  v81 = a34;
  v80 = a35;
  v79 = a38;
  v55 = a39;
  v56 = a40;
  v57 = a41;
  v86.receiver = self;
  v86.super_class = HKGraphViewRenderer;
  v58 = objc_msgSendSuper2(&v86, sel_init);
  v59 = v58;
  if (v58)
  {
    objc_storeStrong(v58 + 6, offset);
    objc_storeStrong(v59 + 7, zoomCopy);
    *(v59 + 28) = a2;
    *(v59 + 29) = series;
    *(v59 + 30) = view;
    *(v59 + 31) = rect;
    *(v59 + 32) = chartRect;
    *(v59 + 33) = area;
    *(v59 + 34) = inactiveArea;
    *(v59 + 35) = scale;
    v59[36] = axis;
    v59[37] = transform;
    v59[38] = margins;
    v59[39] = color;
    v59[8] = backgroundColor;
    v59[9] = y;
    v59[26] = baselineY;
    v59[27] = lineColor;
    v59[10] = tile;
    v59[11] = column;
    *(v59 + 8) = scrolling;
    v59[12] = autoscale;
    *(v59 + 9) = style;
    *(v59 + 10) = xAxis;
    objc_storeStrong(v59 + 13, height);
    v60 = *ranges;
    v61 = ranges[2];
    *(v59 + 23) = ranges[1];
    *(v59 + 24) = v61;
    *(v59 + 22) = v60;
    objc_storeStrong(v59 + 14, cadence);
    objc_storeStrong(v59 + 15, active);
    objc_storeStrong(v59 + 16, range);
    v59[17] = areaRect;
    v59[18] = time;
    objc_storeStrong(v59 + 19, a34);
    objc_storeStrong(v59 + 20, a35);
    *(v59 + 11) = a36;
    v59[21] = a37;
    objc_storeStrong(v59 + 22, a38);
    v62 = [v55 copy];
    v63 = v59[24];
    v59[24] = v62;

    v64 = [v56 copy];
    v65 = v59[23];
    v59[23] = v64;

    v66 = [v57 copy];
    v67 = v59[25];
    v59[25] = v66;

    v59[40] = a42;
    v59[41] = a43;
    v59[42] = a44;
    v59[43] = a45;
    *(v59 + 12) = a46;
    v59[2] = 0;
    v59[3] = 0;
    v68 = v59[4];
    v59[4] = 0;
  }

  return v59;
}

- (void)renderContentToContext:(CGContext *)context
{
  UIGraphicsPushContext(context);
  if ([(HKGraphViewRenderer *)self drawingToTile])
  {
    [(HKGraphViewRenderer *)self _clearBackgroundInContext:context];
  }

  [(HKGraphViewRenderer *)self _renderXAxisLabelAndGridsNeedsNewRendererInContext:context];
  if (([(HKGraphViewRenderer *)self postUpdates]& 4) == 0)
  {
    v18 = objc_alloc_init(HKGraphSeriesSecondaryRenderContext);
    renderingView = [(HKGraphViewRenderer *)self renderingView];
    [(HKGraphViewRenderer *)self insetChartRect];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(HKGraphViewRenderer *)self zoomScale];
    v15 = v14;
    [(HKGraphViewRenderer *)self contentOffset];
    [(HKGraphViewRenderer *)self _renderYAxisGridlinesInContext:context renderingView:renderingView chartRect:0 withBlendMode:v7 zoomScale:v9 contentOffset:v11, v13, v15, v16, v17];

    [(HKGraphViewRenderer *)self insetChartRect];
    [(HKGraphViewRenderer *)self _renderSeriesWithContext:context secondaryRenderContext:v18 chartRect:?];
    [(HKGraphViewRenderer *)self _renderVirtualMarginsWithContext:context];
    [(HKGraphViewRenderer *)self insetChartRect];
    [(HKGraphViewRenderer *)self _renderBaselineWithContext:context chartRect:?];
    [(HKGraphViewRenderer *)self _renderDataAreaDividersWithContext:context];
    UIGraphicsPopContext();
  }
}

- (void)_clearBackgroundInContext:(CGContext *)context
{
  tileBackgroundColor = [(HKGraphViewRenderer *)self tileBackgroundColor];
  cGColor = [tileBackgroundColor CGColor];

  CGContextSetFillColorWithColor(context, cGColor);
  [(HKGraphViewRenderer *)self fullChartRect];

  CGContextFillRect(context, *&v7);
}

- (void)_renderXAxisLabelAndGridsNeedsNewRendererInContext:(CGContext *)context
{
  [(HKGraphViewRenderer *)self _renderXAxisGridlinesInContext:context withBlendMode:0];
  if (![(HKGraphViewRenderer *)self disableXAxis])
  {
    [(HKGraphViewRenderer *)self _renderXAxisLabelsInContext:context];
    v6 = v5;
    [(HKGraphViewRenderer *)self currentXAxisHeight];
    if (!HKUIEqualCGFloats(v6, v7) && ![(HKGraphViewRenderer *)self drawingToTile])
    {
      self->_postUpdates |= 4uLL;
      self->_postXAxisHeight = v6;
    }
  }
}

- (void)_renderXAxisGridlinesInContext:(CGContext *)context withBlendMode:(int)mode
{
  v4 = *&mode;
  [(HKGraphViewRenderer *)self zoomScale];
  v7 = v6;
  [(HKGraphViewRenderer *)self contentOffset];
  v9 = v8;
  v11 = v10;
  [(HKGraphViewRenderer *)self insetDataArea];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(HKGraphViewRenderer *)self topBaselineY];
  v21 = v15 + 4.0;
  if (v20 > 0.00000011920929)
  {
    v22 = v19 - (v20 - v15);
  }

  else
  {
    v22 = v19 + -4.0;
  }

  if (v20 > 0.00000011920929)
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  if (v20 <= 0.00000011920929)
  {
    v13 = v13 + 0.0;
  }

  xAxis = self->_xAxis;
  effectiveVisibleRangeCadence = [(HKGraphViewRenderer *)self effectiveVisibleRangeCadence];
  gridlineRanges = [(HKGraphViewRenderer *)self gridlineRanges];
  renderingView = [(HKGraphViewRenderer *)self renderingView];
  [(HKAxis *)xAxis drawGridlinesForModelRange:effectiveVisibleRangeCadence chartRect:gridlineRanges gridlineRanges:renderingView zoomScale:v4 contentOffset:v13 renderView:v23 blendMode:v17, v22, v7, v9, v11];
}

- (double)_renderXAxisLabelsInContext:(CGContext *)context
{
  [(HKGraphViewRenderer *)self zoomScale];
  v5 = v4;
  [(HKGraphViewRenderer *)self contentOffset];
  v7 = v6;
  v9 = v8;
  [(HKGraphViewRenderer *)self insetDataArea];
  v11 = v10;
  v13 = v12;
  drawingToTile = [(HKGraphViewRenderer *)self drawingToTile];
  v22 = 16.0;
  [(HKGraphViewRenderer *)self scrollingAreaRect];
  MinY = CGRectGetMinY(v23);
  [(HKGraphViewRenderer *)self scrollingAreaRect];
  Height = CGRectGetHeight(v24);
  xAxis = self->_xAxis;
  effectiveVisibleRangeCadence = self->_effectiveVisibleRangeCadence;
  renderingView = [(HKGraphViewRenderer *)self renderingView];
  [(HKAxis *)xAxis drawLabelsWithModelRange:effectiveVisibleRangeCadence chartRect:renderingView zoomScale:&v21 contentOffset:!drawingToTile renderView:v11 maximumLabelSize:MinY omitOffscreenLabels:v13, Height, v5, v7, v9];

  return HKUICeilToScreenScale(v22);
}

- (void)_renderYAxisGridlinesInContext:(CGContext *)context renderingView:(id)view chartRect:(CGRect)rect withBlendMode:(int)mode zoomScale:(double)scale contentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v11 = *&mode;
  v37 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  seriesConfiguration = [(HKGraphViewRenderer *)self seriesConfiguration];
  seriesRows = [seriesConfiguration seriesRows];

  v16 = [seriesRows countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(seriesRows);
        }

        v20 = *(*(&v32 + 1) + 8 * i);
        mainSeriesForRow = [v20 mainSeriesForRow];
        [v20 yAxisRect];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;
        visibleValueRange = [mainSeriesForRow visibleValueRange];
        yAxis = [mainSeriesForRow yAxis];
        [yAxis drawGridlinesForModelRange:visibleValueRange chartRect:0 gridlineRanges:viewCopy zoomScale:v11 contentOffset:v23 renderView:v25 blendMode:{v27, v29, scale, x, y}];
      }

      v17 = [seriesRows countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v17);
  }
}

- (void)_renderSeriesWithContext:(CGContext *)context secondaryRenderContext:(id)renderContext chartRect:(CGRect)rect
{
  v92 = *MEMORY[0x1E69E9840];
  renderContextCopy = renderContext;
  v60 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:[(HKGraphViewRenderer *)self xAxisDateZoom]];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  seriesConfiguration = [(HKGraphViewRenderer *)self seriesConfiguration];
  seriesRows = [seriesConfiguration seriesRows];

  obj = seriesRows;
  v8 = [seriesRows countByEnumeratingWithState:&v84 objects:v91 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v85;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v85 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v84 + 1) + 8 * i);
        selectedSeriesForRow = [v13 selectedSeriesForRow];
        if ([selectedSeriesForRow drawSelectionLineBehindAllSeries])
        {
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          overlaidSeries = [v13 overlaidSeries];
          v16 = [overlaidSeries countByEnumeratingWithState:&v80 objects:v90 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v81;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v81 != v18)
                {
                  objc_enumerationMutation(overlaidSeries);
                }

                if (!((*(*(&v80 + 1) + 8 * j) != selectedSeriesForRow) | v10 & 1))
                {
                  [(HKGraphViewRenderer *)self _renderSelectionLineWithContext:context];
                  v10 = 1;
                }
              }

              v17 = [overlaidSeries countByEnumeratingWithState:&v80 objects:v90 count:16];
            }

            while (v17);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v84 objects:v91 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  seriesConfiguration2 = [(HKGraphViewRenderer *)self seriesConfiguration];
  seriesRows2 = [seriesConfiguration2 seriesRows];

  v53 = seriesRows2;
  v55 = [seriesRows2 countByEnumeratingWithState:&v76 objects:v89 count:16];
  v22 = 0;
  if (v55)
  {
    v54 = *v77;
    do
    {
      v23 = 0;
      do
      {
        if (*v77 != v54)
        {
          objc_enumerationMutation(v53);
        }

        v24 = *(*(&v76 + 1) + 8 * v23);
        selectedSeriesForRow2 = [v24 selectedSeriesForRow];
        [v24 yAxisRect];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        axisAnnotationHandler = [v24 axisAnnotationHandler];
        [axisAnnotationHandler startAnnotationSequence];

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v56 = v24;
        obja = [v24 overlaidSeries];
        v35 = [obja countByEnumeratingWithState:&v72 objects:v88 count:16];
        v57 = v23;
        if (v35)
        {
          v36 = v35;
          v37 = *v73;
          do
          {
            for (k = 0; k != v36; ++k)
            {
              if (*v73 != v37)
              {
                objc_enumerationMutation(obja);
              }

              v39 = *(*(&v72 + 1) + 8 * k);
              if (!((v39 != selectedSeriesForRow2) | v10 & 1))
              {
                [(HKGraphViewRenderer *)self _renderSelectionLineWithContext:context];
                v10 = 1;
              }

              v40 = [v39 resolutionForTimeScope:-[HKGraphViewRenderer xAxisDateZoom](self traitResolution:{"xAxisDateZoom"), -[HKGraphViewRenderer traitResolution](self, "traitResolution")}];
              xAxis = [(HKGraphViewRenderer *)self xAxis];
              [(HKGraphViewRenderer *)self zoomScale];
              v43 = v42;
              [(HKGraphViewRenderer *)self contentOffset];
              v46 = [v39 seriesCoordinatesWithXAxis:xAxis chartRect:v40 zoomScale:v27 contentOffset:v29 resolution:{v31, v33, v43, v44, v45}];

              v70 = 0u;
              v71 = 0u;
              v69 = 0u;
              [(HKGraphViewRenderer *)self xAxisCoordinateTransform];
              v67 = 0u;
              v68 = 0u;
              v66 = 0u;
              if (v39)
              {
                v63 = v69;
                v64 = v70;
                v65 = v71;
                [v39 coordinateTransformFromXAxisTransform:&v63 chartRect:{v27, v29, v31, v33}];
              }

              v63 = v66;
              v64 = v67;
              v65 = v68;
              [v39 drawWithChartRect:v46 seriesCoordinates:v60 zoomLevelConfiguration:&v63 coordinateTransform:context inContext:renderContextCopy secondaryRenderContext:self seriesRenderingDelegate:{v27, v29, v31, v33}];
              if ([v39 overlayType])
              {
                if (!v22)
                {
                  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }

                v47 = [HKGraphSeriesOverlayData alloc];
                v63 = v66;
                v64 = v67;
                v65 = v68;
                v48 = [(HKGraphSeriesOverlayData *)v47 initWithGraphSeries:v39 graphSeriesScreenRect:v46 graphSeriesCoordinates:&v63 graphSeriesPointTransform:v27, v29, v31, v33];
                [(NSMutableArray *)v22 addObject:v48];
              }
            }

            v36 = [obja countByEnumeratingWithState:&v72 objects:v88 count:16];
          }

          while (v36);
        }

        axisAnnotationHandler2 = [v56 axisAnnotationHandler];
        overlaidSeries2 = [v56 overlaidSeries];
        v51 = [axisAnnotationHandler2 applyAnnotationForSeries:overlaidSeries2];

        if ((v51 - 1) <= 1)
        {
          self->_postUpdates |= v51;
        }

        v23 = v57 + 1;
      }

      while (v57 + 1 != v55);
      v55 = [v53 countByEnumeratingWithState:&v76 objects:v89 count:16];
    }

    while (v55);
  }

  if ((v10 & 1) == 0)
  {
    [(HKGraphViewRenderer *)self _renderSelectionLineWithContext:context];
  }

  postOverlayData = self->_postOverlayData;
  self->_postOverlayData = v22;
}

- (void)_renderVirtualMarginsWithContext:(CGContext *)context
{
  [(HKGraphViewRenderer *)self insetDataArea];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  virtualMargins = [(HKGraphViewRenderer *)self virtualMargins];
  [virtualMargins virtualLeftMarginWidth];
  if (v14 <= 0.0)
  {
    goto LABEL_4;
  }

  virtualMargins2 = [(HKGraphViewRenderer *)self virtualMargins];
  virtualLeftMarginStyle = [virtualMargins2 virtualLeftMarginStyle];

  if (virtualLeftMarginStyle)
  {
    [(HKGraphViewRenderer *)self insetDataArea];
    v18 = v17;
    [(HKGraphViewRenderer *)self insetDataArea];
    v20 = v19;
    virtualMargins3 = [(HKGraphViewRenderer *)self virtualMargins];
    [virtualMargins3 virtualLeftMarginWidth];
    v23 = v22 - HKUIOnePixel();

    virtualMargins = [(HKGraphViewRenderer *)self virtualMargins];
    -[HKGraphViewRenderer _renderVirtualMarginInRect:context:marginStyle:](self, "_renderVirtualMarginInRect:context:marginStyle:", context, [virtualMargins virtualLeftMarginStyle], v18, v20, v23, v12);
LABEL_4:
  }

  virtualMargins4 = [(HKGraphViewRenderer *)self virtualMargins];
  [virtualMargins4 virtualRightMarginWidth];
  v26 = v25;
  [(HKGraphViewRenderer *)self rightHandInactiveArea];
  v28 = v26 + v27;

  if (v28 > 0.0)
  {
    virtualMargins5 = [(HKGraphViewRenderer *)self virtualMargins];
    virtualRightMarginStyle = [virtualMargins5 virtualRightMarginStyle];

    if (virtualRightMarginStyle)
    {
      virtualMargins6 = [(HKGraphViewRenderer *)self virtualMargins];
      -[HKGraphViewRenderer _renderVirtualMarginInRect:context:marginStyle:](self, "_renderVirtualMarginInRect:context:marginStyle:", context, [virtualMargins6 virtualRightMarginStyle], v6 + v10 - v28, v8, v28, v12);
    }
  }
}

- (void)_renderBaselineWithContext:(CGContext *)context chartRect:(CGRect)rect
{
  v35 = *MEMORY[0x1E69E9840];
  [(HKGraphViewRenderer *)self zoomScale:context];
  v6 = v5;
  [(HKGraphViewRenderer *)self contentOffset];
  v8 = v7;
  v10 = v9;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  seriesConfiguration = [(HKGraphViewRenderer *)self seriesConfiguration];
  seriesRows = [seriesConfiguration seriesRows];

  v13 = [seriesRows countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(seriesRows);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        mainSeriesForRow = [v17 mainSeriesForRow];
        [v17 yAxisRect];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        visibleValueRange = [mainSeriesForRow visibleValueRange];
        if (visibleValueRange)
        {
          yAxis = [mainSeriesForRow yAxis];
          renderingView = [(HKGraphViewRenderer *)self renderingView];
          [yAxis drawBaselineForModelRange:visibleValueRange chartRect:renderingView zoomScale:v20 contentOffset:v22 renderView:{v24, v26, v6, v8, v10}];
        }
      }

      v14 = [seriesRows countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }
}

- (void)_renderDataAreaDividersWithContext:(CGContext *)context
{
  CGContextSaveGState(context);
  [(HKGraphViewRenderer *)self insetDataArea];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(HKGraphViewRenderer *)self topBaselineY];
  if (v13 <= 0.00000011920929)
  {
    v14 = HKUIOnePixel();
    outlineColor = [(HKGraphViewRenderer *)self outlineColor];
    [HKBorderLineView drawBorderLinesInContext:context bounds:0 verticalDrawRanges:1 borderEdges:outlineColor borderLineWidth:v6 borderLineColor:v8 borderInsets:v10, v12, v14, 0x4010000000000000, 0, 0, 0];
  }

  CGContextRestoreGState(context);
}

- (void)_renderSelectionLineWithContext:(CGContext *)context
{
  v48 = *MEMORY[0x1E69E9840];
  if (![(HKGraphViewRenderer *)self drawingToTile])
  {
    [(HKGraphViewRenderer *)self insetDataArea];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(HKGraphViewRenderer *)self bottomBaselineY];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__HKGraphViewRenderer__renderSelectionLineWithContext___block_invoke;
    aBlock[3] = &__block_descriptor_64_e40___UIBezierPath_24__0d8__HKStrokeStyle_16l;
    if (v12 <= v7)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12 - v7;
    }

    aBlock[4] = v5;
    *&aBlock[5] = v7;
    aBlock[6] = v9;
    *&aBlock[7] = v13;
    v14 = _Block_copy(aBlock);
    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    selfCopy = self;
    seriesConfiguration = [(HKGraphViewRenderer *)self seriesConfiguration];
    seriesRows = [seriesConfiguration seriesRows];

    obj = seriesRows;
    v39 = [seriesRows countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v39)
    {
      v37 = *v43;
      v17 = (v14 + 2);
      do
      {
        v18 = 0;
        do
        {
          if (*v43 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v40 = v18;
          v19 = *(*(&v42 + 1) + 8 * v18);
          selectedRangeBoundariesXValue = [v19 selectedRangeBoundariesXValue];
          v21 = selectedRangeBoundariesXValue;
          if (selectedRangeBoundariesXValue)
          {
            if ([selectedRangeBoundariesXValue count])
            {
              [(NSMutableArray *)v35 addObjectsFromArray:v21];
              if ([v19 selectedTouchPointCount] >= 1)
              {
                v22 = 0;
                v41 = v21;
                do
                {
                  v23 = [v21 objectAtIndexedSubscript:v22];
                  [v23 doubleValue];
                  v25 = HKUIFloorToScreenScale(v24);

                  renderingView = [(HKGraphViewRenderer *)selfCopy renderingView];
                  selectionLineStyle = [(HKGraphViewRenderer *)selfCopy selectionLineStyle];
                  [selectionLineStyle selectedPointLineStrokeStyle];
                  v29 = v28 = v19;
                  v14[2](v14, v29, v25);
                  v31 = v30 = v17;
                  selectionLineColor = [(HKGraphViewRenderer *)selfCopy selectionLineColor];
                  LOBYTE(v34) = 1;
                  [renderingView drawPath:v31 strokeColor:selectionLineColor fillColor:0 markerImage:0 useGradientFill:0 blendMode:0 clipToAxes:v34];

                  v17 = v30;
                  v19 = v28;
                  v21 = v41;

                  ++v22;
                }

                while (v22 < [v19 selectedTouchPointCount]);
              }
            }
          }

          v18 = v40 + 1;
        }

        while (v40 + 1 != v39);
        v39 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v39);
    }

    postSelectionPoints = selfCopy->_postSelectionPoints;
    selfCopy->_postSelectionPoints = v35;
  }
}

id __55__HKGraphViewRenderer__renderSelectionLineWithContext___block_invoke(CGRect *a1, void *a2, double a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  [v6 moveToPoint:{a3, CGRectGetMinY(a1[1])}];
  [v6 addLineToPoint:{a3, CGRectGetMaxY(a1[1])}];
  [v5 lineWidth];
  v8 = v7;

  [v6 setLineWidth:v8];

  return v6;
}

- (void)_renderVirtualMarginInRect:(CGRect)rect context:(CGContext *)context marginStyle:(int64_t)style
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (style == 1)
  {
    v11 = 0;
  }

  else
  {
    if (style != 2)
    {
      return;
    }

    v11 = 18;
  }

  v15 = [MEMORY[0x1E69DC728] bezierPathWithRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  hk_chartAxisMajorGridColor = [MEMORY[0x1E69DC888] hk_chartAxisMajorGridColor];
  renderingView = [(HKGraphViewRenderer *)self renderingView];
  LOBYTE(v14) = 0;
  [renderingView drawPath:v15 strokeColor:0 fillColor:hk_chartAxisMajorGridColor markerImage:0 useGradientFill:0 blendMode:v11 clipToAxes:v14];

  [(HKGraphViewRenderer *)self _renderVirtualMarginGridLines:context context:x, y, width, height];
}

- (void)_renderVirtualMarginGridLines:(CGRect)lines context:(CGContext *)context
{
  height = lines.size.height;
  width = lines.size.width;
  y = lines.origin.y;
  x = lines.origin.x;
  [(HKGraphViewRenderer *)self insetDataArea];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  CGContextSaveGState(context);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  CGContextAddRect(context, v29);
  CGContextClip(context);
  renderingView = [(HKGraphViewRenderer *)self renderingView];
  [(HKGraphViewRenderer *)self zoomScale];
  v20 = v19;
  [(HKGraphViewRenderer *)self contentOffset];
  [(HKGraphViewRenderer *)self _renderYAxisGridlinesInContext:context renderingView:renderingView chartRect:17 withBlendMode:v11 zoomScale:v13 contentOffset:v15, v17, v20, v21, v22];

  renderingView2 = [(HKGraphViewRenderer *)self renderingView];
  [(HKGraphViewRenderer *)self zoomScale];
  v25 = v24;
  [(HKGraphViewRenderer *)self contentOffset];
  [(HKGraphViewRenderer *)self _renderYAxisGridlinesInContext:context renderingView:renderingView2 chartRect:17 withBlendMode:v11 zoomScale:v13 contentOffset:v15, v17, v25, v26, v27];

  [(HKGraphViewRenderer *)self _renderXAxisGridlinesInContext:context withBlendMode:17];

  CGContextRestoreGState(context);
}

- (UIEdgeInsets)virtualMarginInsets
{
  virtualMargins = [(HKGraphViewRenderer *)self virtualMargins];
  [virtualMargins virtualLeftMarginWidth];
  v5 = v4;
  virtualMargins2 = [(HKGraphViewRenderer *)self virtualMargins];
  [virtualMargins2 virtualRightMarginWidth];
  v8 = v7;
  [(HKGraphViewRenderer *)self rightHandInactiveArea];
  v10 = v8 + v9;

  v11 = 0.0;
  v12 = 0.0;
  v13 = v5;
  v14 = v10;
  result.right = v14;
  result.bottom = v12;
  result.left = v13;
  result.top = v11;
  return result;
}

- (CGRect)screenRectForSeries:(id)series
{
  v39 = *MEMORY[0x1E69E9840];
  seriesCopy = series;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  seriesConfiguration = [(HKGraphViewRenderer *)self seriesConfiguration];
  seriesRows = [seriesConfiguration seriesRows];

  v11 = [seriesRows countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(seriesRows);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        overlaidSeries = [v15 overlaidSeries];
        v17 = [overlaidSeries countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v30;
          while (2)
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v30 != v19)
              {
                objc_enumerationMutation(overlaidSeries);
              }

              if (*(*(&v29 + 1) + 8 * j) == seriesCopy)
              {
                [v15 yAxisRect];
                v5 = v21;
                v6 = v22;
                v7 = v23;
                v8 = v24;

                goto LABEL_18;
              }
            }

            v18 = [overlaidSeries countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }
      }

      v12 = [seriesRows countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v12);
  }

LABEL_18:

  v25 = v5;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (id)axisAnnotationDelegateForSeries:(id)series
{
  v29 = *MEMORY[0x1E69E9840];
  seriesCopy = series;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  seriesConfiguration = [(HKGraphViewRenderer *)self seriesConfiguration];
  seriesRows = [seriesConfiguration seriesRows];

  v7 = [seriesRows countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(seriesRows);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        overlaidSeries = [v11 overlaidSeries];
        v13 = [overlaidSeries countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v20;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v20 != v15)
              {
                objc_enumerationMutation(overlaidSeries);
              }

              if (*(*(&v19 + 1) + 8 * j) == seriesCopy)
              {
                axisAnnotationHandler = [v11 axisAnnotationHandler];

                goto LABEL_19;
              }
            }

            v14 = [overlaidSeries countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [seriesRows countByEnumeratingWithState:&v23 objects:v28 count:16];
      axisAnnotationHandler = 0;
    }

    while (v8);
  }

  else
  {
    axisAnnotationHandler = 0;
  }

LABEL_19:

  return axisAnnotationHandler;
}

- (BOOL)seriesDrawingAsTopOverlay:(id)overlay
{
  v18 = *MEMORY[0x1E69E9840];
  overlayCopy = overlay;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  seriesConfiguration = [(HKGraphViewRenderer *)self seriesConfiguration];
  seriesRows = [seriesConfiguration seriesRows];

  v7 = [seriesRows countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(seriesRows);
        }

        if ([(HKGraphViewRenderer *)self _lastSeriesInMultiSeriesRow:*(*(&v13 + 1) + 8 * i) series:overlayCopy])
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v8 = [seriesRows countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)_lastSeriesInMultiSeriesRow:(id)row series:(id)series
{
  rowCopy = row;
  seriesCopy = series;
  overlaidSeries = [rowCopy overlaidSeries];
  if ([overlaidSeries count] < 2)
  {
    v10 = 0;
  }

  else
  {
    overlaidSeries2 = [rowCopy overlaidSeries];
    lastObject = [overlaidSeries2 lastObject];
    v10 = lastObject == seriesCopy;
  }

  return v10;
}

- (CGRect)fullChartRect
{
  x = self->_fullChartRect.origin.x;
  y = self->_fullChartRect.origin.y;
  width = self->_fullChartRect.size.width;
  height = self->_fullChartRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)insetChartRect
{
  x = self->_insetChartRect.origin.x;
  y = self->_insetChartRect.origin.y;
  width = self->_insetChartRect.size.width;
  height = self->_insetChartRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)insetDataArea
{
  x = self->_insetDataArea.origin.x;
  y = self->_insetDataArea.origin.y;
  width = self->_insetDataArea.size.width;
  height = self->_insetDataArea.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)contentOffset
{
  x = self->_contentOffset.x;
  y = self->_contentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)xAxisCoordinateTransform
{
  v3 = *&self[7].tx;
  *&retstr->a = *&self[7].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[8].a;
  return self;
}

- (CGRect)scrollingAreaRect
{
  x = self->_scrollingAreaRect.origin.x;
  y = self->_scrollingAreaRect.origin.y;
  width = self->_scrollingAreaRect.size.width;
  height = self->_scrollingAreaRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end