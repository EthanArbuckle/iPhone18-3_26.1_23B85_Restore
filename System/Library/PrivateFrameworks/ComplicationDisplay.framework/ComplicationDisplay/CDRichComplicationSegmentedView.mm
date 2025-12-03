@interface CDRichComplicationSegmentedView
- (double)_arcAngleWithOuterRadius:(double)radius segmentGapAngle:(double)angle numberOfSegments:(unint64_t)segments;
- (id)_colorForSegment:(id)segment;
- (int64_t)_segmentShapeStyleForIndex:(unint64_t)index angle:(double)angle;
- (void)_addSegmentsToLayer:(id)layer;
- (void)_updateSegmentsWithColors:(id)colors;
- (void)setProgress:(double)progress;
@end

@implementation CDRichComplicationSegmentedView

- (void)setProgress:(double)progress
{
  v4.receiver = self;
  v4.super_class = CDRichComplicationSegmentedView;
  [(CDRichComplicationShapeView *)&v4 setProgress:progress];
  [(CDRichComplicationSegmentedView *)self _updateSegmentsWithColors:0];
}

- (void)_updateSegmentsWithColors:(id)colors
{
  colorsCopy = colors;
  v5 = colorsCopy;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (colorsCopy)
  {
    if (![colorsCopy count])
    {
      goto LABEL_6;
    }

    *(v15 + 24) = 1;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    segments = self->_segments;
    self->_segments = v6;

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__CDRichComplicationSegmentedView__updateSegmentsWithColors___block_invoke;
    v13[3] = &unk_278DF3628;
    v13[4] = self;
    [v5 enumerateObjectsUsingBlock:v13];
  }

  [(CDRichComplicationShapeView *)self progress];
  v9 = v8 * [(NSMutableArray *)self->_segments count];
  v10 = self->_segments;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__CDRichComplicationSegmentedView__updateSegmentsWithColors___block_invoke_2;
  v12[3] = &unk_278DF3650;
  v12[4] = &v14;
  v12[5] = vcvtas_u32_f32(v9);
  [(NSMutableArray *)v10 enumerateObjectsUsingBlock:v12];
  if (*(v15 + 24) == 1)
  {
    shapeLayer = [(CDRichComplicationShapeView *)self shapeLayer];
    [(CDRichComplicationSegmentedView *)self _addSegmentsToLayer:shapeLayer];
  }

LABEL_6:
  _Block_object_dispose(&v14, 8);
}

void __61__CDRichComplicationSegmentedView__updateSegmentsWithColors___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  if (a3 < 9)
  {
    v6 = MEMORY[0x277CBBB30];
    v7 = a2;
    v8 = [[v6 alloc] initWithColor:v7 state:1];

    [*(*(a1 + 32) + 600) addObject:v8];
  }

  else
  {
    *a4 = 1;
  }
}

void __61__CDRichComplicationSegmentedView__updateSegmentsWithColors___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40) <= a3;
  v7 = v5;
  if ([v5 state] != v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    [v7 setState:v6];
  }
}

- (void)_addSegmentsToLayer:(id)layer
{
  v40 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  if (![(NSMutableArray *)self->_segments count])
  {
    v11 = _CDLoggingObjectForDomain(1, "CDLoggingDomainView");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v12 = "Cannot add segments to gauge shape layer when there are no segments.";
LABEL_9:
    _os_log_impl(&dword_243D74000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
    goto LABEL_19;
  }

  if (!layerCopy)
  {
    v11 = _CDLoggingObjectForDomain(1, "CDLoggingDomainView");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v12 = "Cannot add segments to gauge shape layer when the layer is nil.";
    goto LABEL_9;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  isXL = [objc_opt_class() isXL];
  _LayoutConstants___constants_0 = 0x3FFC000000000000;
  _LayoutConstants___constants_1 = 0x3FF4000000000000;
  if (isXL)
  {
    CLKComplicationGraphicExtraLargeCircularScalingFactor();
    v9 = v8 * *&_LayoutConstants___constants_0;
    *&_LayoutConstants___constants_0 = v8 * *&_LayoutConstants___constants_0;
    v10 = v8 * *&_LayoutConstants___constants_1;
    *&_LayoutConstants___constants_1 = v8 * *&_LayoutConstants___constants_1;
  }

  else
  {
    v9 = 1.75;
    v10 = 1.25;
  }

  [(CDRichComplicationCurveView *)self _outerRadius];
  v14 = v13;
  [(CDRichComplicationCurveView *)self _shapeLineWidth];
  v16 = v14 - v15;
  v17 = atan2(v9, v14);
  [(CDRichComplicationSegmentedView *)self _arcAngleWithOuterRadius:[(NSMutableArray *)self->_segments count] segmentGapAngle:v14 numberOfSegments:v17];
  segments = self->_segments;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __55__CDRichComplicationSegmentedView__addSegmentsToLayer___block_invoke;
  v30[3] = &unk_278DF3678;
  v30[4] = self;
  v32 = v19;
  v33 = v16;
  v34 = v14;
  v35 = v9;
  v36 = v10;
  v37 = v17;
  v20 = v5;
  v31 = v20;
  [(NSMutableArray *)segments enumerateObjectsUsingBlock:v30];
  [layerCopy setSublayers:0];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v20;
  v21 = [v11 countByEnumeratingWithState:&v26 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v11);
        }

        [layerCopy addSublayer:{*(*(&v26 + 1) + 8 * i), v26}];
      }

      v22 = [v11 countByEnumeratingWithState:&v26 objects:v39 count:16];
    }

    while (v22);
  }

LABEL_19:
  v25 = *MEMORY[0x277D85DE8];
}

void __55__CDRichComplicationSegmentedView__addSegmentsToLayer___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a3 + 1.0;
  v6 = *(*(a1 + 32) + 600);
  v7 = a2;
  v8 = v5 / [v6 count];
  v9 = v8 + 1.0 / [*(*(a1 + 32) + 600) count] * -0.5;
  *&v9 = v9;
  [*(a1 + 32) _angleAtProgress:v9];
  v11 = v10;
  v12 = -[CDCurvedRoundedRectShapeLayer initWithAngularWidth:innerRadius:outerRadius:cornerRadius:style:gapAngle:]([CDCurvedRoundedRectShapeLayer alloc], "initWithAngularWidth:innerRadius:outerRadius:cornerRadius:style:gapAngle:", [*(a1 + 32) _segmentShapeStyleForIndex:a3 angle:?], *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 80), *(a1 + 88));
  [*(a1 + 32) _centerPoint];
  [(CDCurvedRoundedRectShapeLayer *)v12 setPosition:?];
  CGAffineTransformMakeRotation(&v14, v11);
  [(CDCurvedRoundedRectShapeLayer *)v12 setAffineTransform:&v14];
  v13 = [*(a1 + 32) _colorForSegment:v7];

  -[CDCurvedRoundedRectShapeLayer setFillColor:](v12, "setFillColor:", [v13 CGColor]);
  [*(a1 + 40) addObject:v12];
}

- (id)_colorForSegment:(id)segment
{
  segmentCopy = segment;
  color = [segmentCopy color];
  state = [segmentCopy state];

  if (state == 1)
  {
    v6 = [color colorWithAlphaComponent:0.3];

    color = v6;
  }

  return color;
}

- (int64_t)_segmentShapeStyleForIndex:(unint64_t)index angle:(double)angle
{
  if ([(NSMutableArray *)self->_segments count]== 1)
  {
    return 3;
  }

  if (index)
  {
    return 2 * ([(NSMutableArray *)self->_segments count]- 1 == index);
  }

  return 1;
}

- (double)_arcAngleWithOuterRadius:(double)radius segmentGapAngle:(double)angle numberOfSegments:(unint64_t)segments
{
  v6 = (segments - 1) * angle;
  [(CDRichComplicationCurveView *)self _totalDrawableAngle];
  return (fabs(v7) - v6) / segments;
}

@end