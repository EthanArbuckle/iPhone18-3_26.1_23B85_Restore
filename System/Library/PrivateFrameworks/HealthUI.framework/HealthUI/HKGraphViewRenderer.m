@interface HKGraphViewRenderer
- (BOOL)_lastSeriesInMultiSeriesRow:(id)a3 series:(id)a4;
- (BOOL)seriesDrawingAsTopOverlay:(id)a3;
- (CGAffineTransform)xAxisCoordinateTransform;
- (CGPoint)contentOffset;
- (CGRect)fullChartRect;
- (CGRect)insetChartRect;
- (CGRect)insetDataArea;
- (CGRect)screenRectForSeries:(id)a3;
- (CGRect)scrollingAreaRect;
- (UIEdgeInsets)virtualMarginInsets;
- (double)_renderXAxisLabelsInContext:(CGContext *)a3;
- (id)axisAnnotationDelegateForSeries:(id)a3;
- (id)initWithRendererSeries:(double)a3 renderingView:(double)a4 fullChartRect:(double)a5 insetChartRect:(double)a6 insetDataArea:(double)a7 rightHandInactiveArea:(double)a8 zoomScale:(double)a9 traitResolution:(uint64_t)a10 contentOffset:(void *)a11 xAxisDateZoom:(void *)a12 drawingToTile:(void *)a13 tileColumn:(void *)a14 drawingDuringScrolling:(char)a15 drawingDuringAutoscale:(void *)a16 xAxis:(void *)a17 xAxisCoordinateTransform:(void *)a18 virtualMargins:(void *)a19 outlineColor:(void *)a20 tileBackgroundColor:(void *)a21 topBaselineY:(void *)a22 bottomBaselineY:(void *)a23 selectionLineColor:(void *)a24 selectionLineStyle:(char)a25 disableXAxis:(char)a26 currentXAxisHeight:(void *)a27 gridlineRanges:(__int128 *)a28 effectiveVisibleRangeCadence:(void *)a29 effectiveVisibleRangeActive:(void *)a30 actualVisibleRange:(void *)a31 scrollingAreaRect:(void *)a32 chartMeasuringStartupTime:(void *)a33;
- (void)_clearBackgroundInContext:(CGContext *)a3;
- (void)_renderBaselineWithContext:(CGContext *)a3 chartRect:(CGRect)a4;
- (void)_renderDataAreaDividersWithContext:(CGContext *)a3;
- (void)_renderSelectionLineWithContext:(CGContext *)a3;
- (void)_renderSeriesWithContext:(CGContext *)a3 secondaryRenderContext:(id)a4 chartRect:(CGRect)a5;
- (void)_renderVirtualMarginGridLines:(CGRect)a3 context:(CGContext *)a4;
- (void)_renderVirtualMarginInRect:(CGRect)a3 context:(CGContext *)a4 marginStyle:(int64_t)a5;
- (void)_renderVirtualMarginsWithContext:(CGContext *)a3;
- (void)_renderXAxisGridlinesInContext:(CGContext *)a3 withBlendMode:(int)a4;
- (void)_renderXAxisLabelAndGridsNeedsNewRendererInContext:(CGContext *)a3;
- (void)_renderYAxisGridlinesInContext:(CGContext *)a3 renderingView:(id)a4 chartRect:(CGRect)a5 withBlendMode:(int)a6 zoomScale:(double)a7 contentOffset:(CGPoint)a8;
- (void)renderContentToContext:(CGContext *)a3;
@end

@implementation HKGraphViewRenderer

- (id)initWithRendererSeries:(double)a3 renderingView:(double)a4 fullChartRect:(double)a5 insetChartRect:(double)a6 insetDataArea:(double)a7 rightHandInactiveArea:(double)a8 zoomScale:(double)a9 traitResolution:(uint64_t)a10 contentOffset:(void *)a11 xAxisDateZoom:(void *)a12 drawingToTile:(void *)a13 tileColumn:(void *)a14 drawingDuringScrolling:(char)a15 drawingDuringAutoscale:(void *)a16 xAxis:(void *)a17 xAxisCoordinateTransform:(void *)a18 virtualMargins:(void *)a19 outlineColor:(void *)a20 tileBackgroundColor:(void *)a21 topBaselineY:(void *)a22 bottomBaselineY:(void *)a23 selectionLineColor:(void *)a24 selectionLineStyle:(char)a25 disableXAxis:(char)a26 currentXAxisHeight:(void *)a27 gridlineRanges:(__int128 *)a28 effectiveVisibleRangeCadence:(void *)a29 effectiveVisibleRangeActive:(void *)a30 actualVisibleRange:(void *)a31 scrollingAreaRect:(void *)a32 chartMeasuringStartupTime:(void *)a33
{
  v78 = a11;
  v71 = a12;
  v77 = a12;
  v85 = a27;
  v84 = a29;
  v83 = a30;
  v82 = a31;
  v81 = a34;
  v80 = a35;
  v79 = a38;
  v55 = a39;
  v56 = a40;
  v57 = a41;
  v86.receiver = a1;
  v86.super_class = HKGraphViewRenderer;
  v58 = objc_msgSendSuper2(&v86, sel_init);
  v59 = v58;
  if (v58)
  {
    objc_storeStrong(v58 + 6, a11);
    objc_storeStrong(v59 + 7, v71);
    *(v59 + 28) = a2;
    *(v59 + 29) = a3;
    *(v59 + 30) = a4;
    *(v59 + 31) = a5;
    *(v59 + 32) = a6;
    *(v59 + 33) = a7;
    *(v59 + 34) = a8;
    *(v59 + 35) = a9;
    v59[36] = a17;
    v59[37] = a18;
    v59[38] = a19;
    v59[39] = a20;
    v59[8] = a21;
    v59[9] = a22;
    v59[26] = a23;
    v59[27] = a24;
    v59[10] = a13;
    v59[11] = a14;
    *(v59 + 8) = a15;
    v59[12] = a16;
    *(v59 + 9) = a25;
    *(v59 + 10) = a26;
    objc_storeStrong(v59 + 13, a27);
    v60 = *a28;
    v61 = a28[2];
    *(v59 + 23) = a28[1];
    *(v59 + 24) = v61;
    *(v59 + 22) = v60;
    objc_storeStrong(v59 + 14, a29);
    objc_storeStrong(v59 + 15, a30);
    objc_storeStrong(v59 + 16, a31);
    v59[17] = a32;
    v59[18] = a33;
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

- (void)renderContentToContext:(CGContext *)a3
{
  UIGraphicsPushContext(a3);
  if ([(HKGraphViewRenderer *)self drawingToTile])
  {
    [(HKGraphViewRenderer *)self _clearBackgroundInContext:a3];
  }

  [(HKGraphViewRenderer *)self _renderXAxisLabelAndGridsNeedsNewRendererInContext:a3];
  if (([(HKGraphViewRenderer *)self postUpdates]& 4) == 0)
  {
    v18 = objc_alloc_init(HKGraphSeriesSecondaryRenderContext);
    v5 = [(HKGraphViewRenderer *)self renderingView];
    [(HKGraphViewRenderer *)self insetChartRect];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(HKGraphViewRenderer *)self zoomScale];
    v15 = v14;
    [(HKGraphViewRenderer *)self contentOffset];
    [(HKGraphViewRenderer *)self _renderYAxisGridlinesInContext:a3 renderingView:v5 chartRect:0 withBlendMode:v7 zoomScale:v9 contentOffset:v11, v13, v15, v16, v17];

    [(HKGraphViewRenderer *)self insetChartRect];
    [(HKGraphViewRenderer *)self _renderSeriesWithContext:a3 secondaryRenderContext:v18 chartRect:?];
    [(HKGraphViewRenderer *)self _renderVirtualMarginsWithContext:a3];
    [(HKGraphViewRenderer *)self insetChartRect];
    [(HKGraphViewRenderer *)self _renderBaselineWithContext:a3 chartRect:?];
    [(HKGraphViewRenderer *)self _renderDataAreaDividersWithContext:a3];
    UIGraphicsPopContext();
  }
}

- (void)_clearBackgroundInContext:(CGContext *)a3
{
  v5 = [(HKGraphViewRenderer *)self tileBackgroundColor];
  v6 = [v5 CGColor];

  CGContextSetFillColorWithColor(a3, v6);
  [(HKGraphViewRenderer *)self fullChartRect];

  CGContextFillRect(a3, *&v7);
}

- (void)_renderXAxisLabelAndGridsNeedsNewRendererInContext:(CGContext *)a3
{
  [(HKGraphViewRenderer *)self _renderXAxisGridlinesInContext:a3 withBlendMode:0];
  if (![(HKGraphViewRenderer *)self disableXAxis])
  {
    [(HKGraphViewRenderer *)self _renderXAxisLabelsInContext:a3];
    v6 = v5;
    [(HKGraphViewRenderer *)self currentXAxisHeight];
    if (!HKUIEqualCGFloats(v6, v7) && ![(HKGraphViewRenderer *)self drawingToTile])
    {
      self->_postUpdates |= 4uLL;
      self->_postXAxisHeight = v6;
    }
  }
}

- (void)_renderXAxisGridlinesInContext:(CGContext *)a3 withBlendMode:(int)a4
{
  v4 = *&a4;
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
  v27 = [(HKGraphViewRenderer *)self effectiveVisibleRangeCadence];
  v25 = [(HKGraphViewRenderer *)self gridlineRanges];
  v26 = [(HKGraphViewRenderer *)self renderingView];
  [(HKAxis *)xAxis drawGridlinesForModelRange:v27 chartRect:v25 gridlineRanges:v26 zoomScale:v4 contentOffset:v13 renderView:v23 blendMode:v17, v22, v7, v9, v11];
}

- (double)_renderXAxisLabelsInContext:(CGContext *)a3
{
  [(HKGraphViewRenderer *)self zoomScale];
  v5 = v4;
  [(HKGraphViewRenderer *)self contentOffset];
  v7 = v6;
  v9 = v8;
  [(HKGraphViewRenderer *)self insetDataArea];
  v11 = v10;
  v13 = v12;
  v14 = [(HKGraphViewRenderer *)self drawingToTile];
  v22 = 16.0;
  [(HKGraphViewRenderer *)self scrollingAreaRect];
  MinY = CGRectGetMinY(v23);
  [(HKGraphViewRenderer *)self scrollingAreaRect];
  Height = CGRectGetHeight(v24);
  xAxis = self->_xAxis;
  effectiveVisibleRangeCadence = self->_effectiveVisibleRangeCadence;
  v19 = [(HKGraphViewRenderer *)self renderingView];
  [(HKAxis *)xAxis drawLabelsWithModelRange:effectiveVisibleRangeCadence chartRect:v19 zoomScale:&v21 contentOffset:!v14 renderView:v11 maximumLabelSize:MinY omitOffscreenLabels:v13, Height, v5, v7, v9];

  return HKUICeilToScreenScale(v22);
}

- (void)_renderYAxisGridlinesInContext:(CGContext *)a3 renderingView:(id)a4 chartRect:(CGRect)a5 withBlendMode:(int)a6 zoomScale:(double)a7 contentOffset:(CGPoint)a8
{
  y = a8.y;
  x = a8.x;
  v11 = *&a6;
  v37 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = [(HKGraphViewRenderer *)self seriesConfiguration];
  v15 = [v14 seriesRows];

  v16 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v32 + 1) + 8 * i);
        v21 = [v20 mainSeriesForRow];
        [v20 yAxisRect];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v30 = [v21 visibleValueRange];
        v31 = [v21 yAxis];
        [v31 drawGridlinesForModelRange:v30 chartRect:0 gridlineRanges:v13 zoomScale:v11 contentOffset:v23 renderView:v25 blendMode:{v27, v29, a7, x, y}];
      }

      v17 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v17);
  }
}

- (void)_renderSeriesWithContext:(CGContext *)a3 secondaryRenderContext:(id)a4 chartRect:(CGRect)a5
{
  v92 = *MEMORY[0x1E69E9840];
  v61 = a4;
  v60 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:[(HKGraphViewRenderer *)self xAxisDateZoom]];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v6 = [(HKGraphViewRenderer *)self seriesConfiguration];
  v7 = [v6 seriesRows];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v84 objects:v91 count:16];
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
        v14 = [v13 selectedSeriesForRow];
        if ([v14 drawSelectionLineBehindAllSeries])
        {
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v15 = [v13 overlaidSeries];
          v16 = [v15 countByEnumeratingWithState:&v80 objects:v90 count:16];
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
                  objc_enumerationMutation(v15);
                }

                if (!((*(*(&v80 + 1) + 8 * j) != v14) | v10 & 1))
                {
                  [(HKGraphViewRenderer *)self _renderSelectionLineWithContext:a3];
                  v10 = 1;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v80 objects:v90 count:16];
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
  v20 = [(HKGraphViewRenderer *)self seriesConfiguration];
  v21 = [v20 seriesRows];

  v53 = v21;
  v55 = [v21 countByEnumeratingWithState:&v76 objects:v89 count:16];
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
        v25 = [v24 selectedSeriesForRow];
        [v24 yAxisRect];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v34 = [v24 axisAnnotationHandler];
        [v34 startAnnotationSequence];

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
              if (!((v39 != v25) | v10 & 1))
              {
                [(HKGraphViewRenderer *)self _renderSelectionLineWithContext:a3];
                v10 = 1;
              }

              v40 = [v39 resolutionForTimeScope:-[HKGraphViewRenderer xAxisDateZoom](self traitResolution:{"xAxisDateZoom"), -[HKGraphViewRenderer traitResolution](self, "traitResolution")}];
              v41 = [(HKGraphViewRenderer *)self xAxis];
              [(HKGraphViewRenderer *)self zoomScale];
              v43 = v42;
              [(HKGraphViewRenderer *)self contentOffset];
              v46 = [v39 seriesCoordinatesWithXAxis:v41 chartRect:v40 zoomScale:v27 contentOffset:v29 resolution:{v31, v33, v43, v44, v45}];

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
              [v39 drawWithChartRect:v46 seriesCoordinates:v60 zoomLevelConfiguration:&v63 coordinateTransform:a3 inContext:v61 secondaryRenderContext:self seriesRenderingDelegate:{v27, v29, v31, v33}];
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

        v49 = [v56 axisAnnotationHandler];
        v50 = [v56 overlaidSeries];
        v51 = [v49 applyAnnotationForSeries:v50];

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
    [(HKGraphViewRenderer *)self _renderSelectionLineWithContext:a3];
  }

  postOverlayData = self->_postOverlayData;
  self->_postOverlayData = v22;
}

- (void)_renderVirtualMarginsWithContext:(CGContext *)a3
{
  [(HKGraphViewRenderer *)self insetDataArea];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(HKGraphViewRenderer *)self virtualMargins];
  [v13 virtualLeftMarginWidth];
  if (v14 <= 0.0)
  {
    goto LABEL_4;
  }

  v15 = [(HKGraphViewRenderer *)self virtualMargins];
  v16 = [v15 virtualLeftMarginStyle];

  if (v16)
  {
    [(HKGraphViewRenderer *)self insetDataArea];
    v18 = v17;
    [(HKGraphViewRenderer *)self insetDataArea];
    v20 = v19;
    v21 = [(HKGraphViewRenderer *)self virtualMargins];
    [v21 virtualLeftMarginWidth];
    v23 = v22 - HKUIOnePixel();

    v13 = [(HKGraphViewRenderer *)self virtualMargins];
    -[HKGraphViewRenderer _renderVirtualMarginInRect:context:marginStyle:](self, "_renderVirtualMarginInRect:context:marginStyle:", a3, [v13 virtualLeftMarginStyle], v18, v20, v23, v12);
LABEL_4:
  }

  v24 = [(HKGraphViewRenderer *)self virtualMargins];
  [v24 virtualRightMarginWidth];
  v26 = v25;
  [(HKGraphViewRenderer *)self rightHandInactiveArea];
  v28 = v26 + v27;

  if (v28 > 0.0)
  {
    v29 = [(HKGraphViewRenderer *)self virtualMargins];
    v30 = [v29 virtualRightMarginStyle];

    if (v30)
    {
      v31 = [(HKGraphViewRenderer *)self virtualMargins];
      -[HKGraphViewRenderer _renderVirtualMarginInRect:context:marginStyle:](self, "_renderVirtualMarginInRect:context:marginStyle:", a3, [v31 virtualRightMarginStyle], v6 + v10 - v28, v8, v28, v12);
    }
  }
}

- (void)_renderBaselineWithContext:(CGContext *)a3 chartRect:(CGRect)a4
{
  v35 = *MEMORY[0x1E69E9840];
  [(HKGraphViewRenderer *)self zoomScale:a3];
  v6 = v5;
  [(HKGraphViewRenderer *)self contentOffset];
  v8 = v7;
  v10 = v9;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = [(HKGraphViewRenderer *)self seriesConfiguration];
  v12 = [v11 seriesRows];

  v13 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        v18 = [v17 mainSeriesForRow];
        [v17 yAxisRect];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v27 = [v18 visibleValueRange];
        if (v27)
        {
          v28 = [v18 yAxis];
          v29 = [(HKGraphViewRenderer *)self renderingView];
          [v28 drawBaselineForModelRange:v27 chartRect:v29 zoomScale:v20 contentOffset:v22 renderView:{v24, v26, v6, v8, v10}];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }
}

- (void)_renderDataAreaDividersWithContext:(CGContext *)a3
{
  CGContextSaveGState(a3);
  [(HKGraphViewRenderer *)self insetDataArea];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(HKGraphViewRenderer *)self topBaselineY];
  if (v13 <= 0.00000011920929)
  {
    v14 = HKUIOnePixel();
    v15 = [(HKGraphViewRenderer *)self outlineColor];
    [HKBorderLineView drawBorderLinesInContext:a3 bounds:0 verticalDrawRanges:1 borderEdges:v15 borderLineWidth:v6 borderLineColor:v8 borderInsets:v10, v12, v14, 0x4010000000000000, 0, 0, 0];
  }

  CGContextRestoreGState(a3);
}

- (void)_renderSelectionLineWithContext:(CGContext *)a3
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
    v38 = self;
    v15 = [(HKGraphViewRenderer *)self seriesConfiguration];
    v16 = [v15 seriesRows];

    obj = v16;
    v39 = [v16 countByEnumeratingWithState:&v42 objects:v47 count:16];
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
          v20 = [v19 selectedRangeBoundariesXValue];
          v21 = v20;
          if (v20)
          {
            if ([v20 count])
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

                  v26 = [(HKGraphViewRenderer *)v38 renderingView];
                  v27 = [(HKGraphViewRenderer *)v38 selectionLineStyle];
                  [v27 selectedPointLineStrokeStyle];
                  v29 = v28 = v19;
                  v14[2](v14, v29, v25);
                  v31 = v30 = v17;
                  v32 = [(HKGraphViewRenderer *)v38 selectionLineColor];
                  LOBYTE(v34) = 1;
                  [v26 drawPath:v31 strokeColor:v32 fillColor:0 markerImage:0 useGradientFill:0 blendMode:0 clipToAxes:v34];

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

    postSelectionPoints = v38->_postSelectionPoints;
    v38->_postSelectionPoints = v35;
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

- (void)_renderVirtualMarginInRect:(CGRect)a3 context:(CGContext *)a4 marginStyle:(int64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a5 == 1)
  {
    v11 = 0;
  }

  else
  {
    if (a5 != 2)
    {
      return;
    }

    v11 = 18;
  }

  v15 = [MEMORY[0x1E69DC728] bezierPathWithRect:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  v12 = [MEMORY[0x1E69DC888] hk_chartAxisMajorGridColor];
  v13 = [(HKGraphViewRenderer *)self renderingView];
  LOBYTE(v14) = 0;
  [v13 drawPath:v15 strokeColor:0 fillColor:v12 markerImage:0 useGradientFill:0 blendMode:v11 clipToAxes:v14];

  [(HKGraphViewRenderer *)self _renderVirtualMarginGridLines:a4 context:x, y, width, height];
}

- (void)_renderVirtualMarginGridLines:(CGRect)a3 context:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(HKGraphViewRenderer *)self insetDataArea];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  CGContextSaveGState(a4);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  CGContextAddRect(a4, v29);
  CGContextClip(a4);
  v18 = [(HKGraphViewRenderer *)self renderingView];
  [(HKGraphViewRenderer *)self zoomScale];
  v20 = v19;
  [(HKGraphViewRenderer *)self contentOffset];
  [(HKGraphViewRenderer *)self _renderYAxisGridlinesInContext:a4 renderingView:v18 chartRect:17 withBlendMode:v11 zoomScale:v13 contentOffset:v15, v17, v20, v21, v22];

  v23 = [(HKGraphViewRenderer *)self renderingView];
  [(HKGraphViewRenderer *)self zoomScale];
  v25 = v24;
  [(HKGraphViewRenderer *)self contentOffset];
  [(HKGraphViewRenderer *)self _renderYAxisGridlinesInContext:a4 renderingView:v23 chartRect:17 withBlendMode:v11 zoomScale:v13 contentOffset:v15, v17, v25, v26, v27];

  [(HKGraphViewRenderer *)self _renderXAxisGridlinesInContext:a4 withBlendMode:17];

  CGContextRestoreGState(a4);
}

- (UIEdgeInsets)virtualMarginInsets
{
  v3 = [(HKGraphViewRenderer *)self virtualMargins];
  [v3 virtualLeftMarginWidth];
  v5 = v4;
  v6 = [(HKGraphViewRenderer *)self virtualMargins];
  [v6 virtualRightMarginWidth];
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

- (CGRect)screenRectForSeries:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = [(HKGraphViewRenderer *)self seriesConfiguration];
  v10 = [v9 seriesRows];

  v11 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v16 = [v15 overlaidSeries];
        v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
                objc_enumerationMutation(v16);
              }

              if (*(*(&v29 + 1) + 8 * j) == v4)
              {
                [v15 yAxisRect];
                v5 = v21;
                v6 = v22;
                v7 = v23;
                v8 = v24;

                goto LABEL_18;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
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

- (id)axisAnnotationDelegateForSeries:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(HKGraphViewRenderer *)self seriesConfiguration];
  v6 = [v5 seriesRows];

  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v12 = [v11 overlaidSeries];
        v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                objc_enumerationMutation(v12);
              }

              if (*(*(&v19 + 1) + 8 * j) == v4)
              {
                v17 = [v11 axisAnnotationHandler];

                goto LABEL_19;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v17 = 0;
    }

    while (v8);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (BOOL)seriesDrawingAsTopOverlay:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(HKGraphViewRenderer *)self seriesConfiguration];
  v6 = [v5 seriesRows];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        if ([(HKGraphViewRenderer *)self _lastSeriesInMultiSeriesRow:*(*(&v13 + 1) + 8 * i) series:v4])
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (BOOL)_lastSeriesInMultiSeriesRow:(id)a3 series:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 overlaidSeries];
  if ([v7 count] < 2)
  {
    v10 = 0;
  }

  else
  {
    v8 = [v5 overlaidSeries];
    v9 = [v8 lastObject];
    v10 = v9 == v6;
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