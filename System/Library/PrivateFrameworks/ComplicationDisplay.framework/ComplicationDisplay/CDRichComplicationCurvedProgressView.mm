@interface CDRichComplicationCurvedProgressView
- (CDRichComplicationCurvedProgressView)initWithFamily:(int64_t)family curveWidth:(double)width padding:(double)padding beginAngle:(double)angle endAngle:(double)endAngle forDevice:(id)device withFilterStyle:(int64_t)style progressFillStyle:(int64_t)self0;
- (id)filterForView:(id)view style:(int64_t)style;
- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (id)filtersForView:(id)view style:(int64_t)style;
- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (id)overrideBackgroundGradientColorsForGradientColors:(id)colors;
- (id)overrideBackgroundGradientColorsForGradientColors:(id)colors locations:(id)locations;
- (void)setBeginAngle:(double)angle;
- (void)setEndAngle:(double)angle;
- (void)setProgress:(double)progress;
@end

@implementation CDRichComplicationCurvedProgressView

- (CDRichComplicationCurvedProgressView)initWithFamily:(int64_t)family curveWidth:(double)width padding:(double)padding beginAngle:(double)angle endAngle:(double)endAngle forDevice:(id)device withFilterStyle:(int64_t)style progressFillStyle:(int64_t)self0
{
  deviceCopy = device;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __138__CDRichComplicationCurvedProgressView_initWithFamily_curveWidth_padding_beginAngle_endAngle_forDevice_withFilterStyle_progressFillStyle___block_invoke;
  aBlock[3] = &unk_278DF35C0;
  widthCopy = width;
  paddingCopy = padding;
  angleCopy = angle;
  endAngleCopy = endAngle;
  v19 = deviceCopy;
  v30 = v19;
  styleCopy = style;
  v20 = _Block_copy(aBlock);
  if (fillStyle <= 7 && ((0xFDu >> fillStyle) & 1) != 0)
  {
    v21 = *off_278DF35E0[fillStyle];
    v22 = objc_opt_class();
  }

  else
  {
    v22 = 0;
  }

  self->_progressFillStyle = fillStyle;
  v23 = v20[2](v20, v22);
  v24 = v20[2](v20, v22);
  v28.receiver = self;
  v28.super_class = CDRichComplicationCurvedProgressView;
  v25 = [(CDRichComplicationProgressView *)&v28 initForFamily:family device:v19 backgroundShapeView:v23 foregroundShapeView:v24];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(v25 + 67, v23);
    objc_storeStrong(&v26->_foregroundView, v24);
  }

  return v26;
}

id __138__CDRichComplicationCurvedProgressView_initWithFamily_curveWidth_padding_beginAngle_endAngle_forDevice_withFilterStyle_progressFillStyle___block_invoke(uint64_t a1, Class a2)
{
  v2 = [[a2 alloc] initWithCurveWidth:*(a1 + 32) padding:*(a1 + 72) beginAngle:*(a1 + 40) endAngle:*(a1 + 48) forDevice:*(a1 + 56) withFilterStyle:*(a1 + 64)];

  return v2;
}

- (void)setBeginAngle:(double)angle
{
  self->_beginAngle = angle;
  [(CDRichComplicationCurveView *)self->_backgroundView setBeginAngle:?];
  [(CDRichComplicationCurveView *)self->_foregroundView setBeginAngle:angle];

  [(CDRichComplicationCurvedProgressView *)self setNeedsLayout];
}

- (void)setEndAngle:(double)angle
{
  self->_endAngle = angle;
  [(CDRichComplicationCurveView *)self->_backgroundView setEndAngle:?];
  [(CDRichComplicationCurveView *)self->_foregroundView setEndAngle:angle];

  [(CDRichComplicationCurvedProgressView *)self setNeedsLayout];
}

- (void)setProgress:(double)progress
{
  if (CDRichComplicationProgressFillStyleIsMetered(self->_progressFillStyle))
  {
    [(CDRichComplicationShapeView *)self->_backgroundView setProgress:1.0];
  }

  v5.receiver = self;
  v5.super_class = CDRichComplicationCurvedProgressView;
  [(CDRichComplicationProgressView *)&v5 setProgress:progress];
}

- (id)overrideBackgroundGradientColorsForGradientColors:(id)colors
{
  colorsCopy = colors;
  if (CDRichComplicationProgressFillStyleIsMetered(self->_progressFillStyle) && [colorsCopy count])
  {
    v5 = CDGenerateMeterBackgroundGradientColors([colorsCopy count]);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CDRichComplicationCurvedProgressView;
    v5 = [(CDRichComplicationProgressView *)&v8 overrideBackgroundGradientColorsForGradientColors:colorsCopy];
  }

  v6 = v5;

  return v6;
}

- (id)overrideBackgroundGradientColorsForGradientColors:(id)colors locations:(id)locations
{
  colorsCopy = colors;
  locationsCopy = locations;
  if (CDRichComplicationProgressFillStyleIsMetered(self->_progressFillStyle) && [colorsCopy count])
  {
    v8 = CDGenerateMeterBackgroundGradientColors([colorsCopy count]);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CDRichComplicationCurvedProgressView;
    v8 = [(CDRichComplicationProgressView *)&v11 overrideBackgroundGradientColorsForGradientColors:colorsCopy locations:locationsCopy];
  }

  v9 = v8;

  return v9;
}

- (id)filtersForView:(id)view style:(int64_t)style
{
  filterProvider = [(CDRichComplicationProgressView *)self filterProvider];
  v7 = [filterProvider filtersForView:self style:style];

  return v7;
}

- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  filterProvider = [(CDRichComplicationProgressView *)self filterProvider];
  v9 = [filterProvider filtersForView:self style:style fraction:fraction];

  return v9;
}

- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  filterProvider = [(CDRichComplicationProgressView *)self filterProvider];
  v9 = [filterProvider filterForView:self style:style fraction:fraction];

  return v9;
}

- (id)filterForView:(id)view style:(int64_t)style
{
  filterProvider = [(CDRichComplicationProgressView *)self filterProvider];
  v7 = [filterProvider filterForView:self style:style];

  return v7;
}

@end