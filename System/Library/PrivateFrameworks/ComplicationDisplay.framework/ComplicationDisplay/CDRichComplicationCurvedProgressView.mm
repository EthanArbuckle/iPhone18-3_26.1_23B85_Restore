@interface CDRichComplicationCurvedProgressView
- (CDRichComplicationCurvedProgressView)initWithFamily:(int64_t)a3 curveWidth:(double)a4 padding:(double)a5 beginAngle:(double)a6 endAngle:(double)a7 forDevice:(id)a8 withFilterStyle:(int64_t)a9 progressFillStyle:(int64_t)a10;
- (id)filterForView:(id)a3 style:(int64_t)a4;
- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (id)filtersForView:(id)a3 style:(int64_t)a4;
- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (id)overrideBackgroundGradientColorsForGradientColors:(id)a3;
- (id)overrideBackgroundGradientColorsForGradientColors:(id)a3 locations:(id)a4;
- (void)setBeginAngle:(double)a3;
- (void)setEndAngle:(double)a3;
- (void)setProgress:(double)a3;
@end

@implementation CDRichComplicationCurvedProgressView

- (CDRichComplicationCurvedProgressView)initWithFamily:(int64_t)a3 curveWidth:(double)a4 padding:(double)a5 beginAngle:(double)a6 endAngle:(double)a7 forDevice:(id)a8 withFilterStyle:(int64_t)a9 progressFillStyle:(int64_t)a10
{
  v18 = a8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __138__CDRichComplicationCurvedProgressView_initWithFamily_curveWidth_padding_beginAngle_endAngle_forDevice_withFilterStyle_progressFillStyle___block_invoke;
  aBlock[3] = &unk_278DF35C0;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v19 = v18;
  v30 = v19;
  v35 = a9;
  v20 = _Block_copy(aBlock);
  if (a10 <= 7 && ((0xFDu >> a10) & 1) != 0)
  {
    v21 = *off_278DF35E0[a10];
    v22 = objc_opt_class();
  }

  else
  {
    v22 = 0;
  }

  self->_progressFillStyle = a10;
  v23 = v20[2](v20, v22);
  v24 = v20[2](v20, v22);
  v28.receiver = self;
  v28.super_class = CDRichComplicationCurvedProgressView;
  v25 = [(CDRichComplicationProgressView *)&v28 initForFamily:a3 device:v19 backgroundShapeView:v23 foregroundShapeView:v24];
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

- (void)setBeginAngle:(double)a3
{
  self->_beginAngle = a3;
  [(CDRichComplicationCurveView *)self->_backgroundView setBeginAngle:?];
  [(CDRichComplicationCurveView *)self->_foregroundView setBeginAngle:a3];

  [(CDRichComplicationCurvedProgressView *)self setNeedsLayout];
}

- (void)setEndAngle:(double)a3
{
  self->_endAngle = a3;
  [(CDRichComplicationCurveView *)self->_backgroundView setEndAngle:?];
  [(CDRichComplicationCurveView *)self->_foregroundView setEndAngle:a3];

  [(CDRichComplicationCurvedProgressView *)self setNeedsLayout];
}

- (void)setProgress:(double)a3
{
  if (CDRichComplicationProgressFillStyleIsMetered(self->_progressFillStyle))
  {
    [(CDRichComplicationShapeView *)self->_backgroundView setProgress:1.0];
  }

  v5.receiver = self;
  v5.super_class = CDRichComplicationCurvedProgressView;
  [(CDRichComplicationProgressView *)&v5 setProgress:a3];
}

- (id)overrideBackgroundGradientColorsForGradientColors:(id)a3
{
  v4 = a3;
  if (CDRichComplicationProgressFillStyleIsMetered(self->_progressFillStyle) && [v4 count])
  {
    v5 = CDGenerateMeterBackgroundGradientColors([v4 count]);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CDRichComplicationCurvedProgressView;
    v5 = [(CDRichComplicationProgressView *)&v8 overrideBackgroundGradientColorsForGradientColors:v4];
  }

  v6 = v5;

  return v6;
}

- (id)overrideBackgroundGradientColorsForGradientColors:(id)a3 locations:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (CDRichComplicationProgressFillStyleIsMetered(self->_progressFillStyle) && [v6 count])
  {
    v8 = CDGenerateMeterBackgroundGradientColors([v6 count]);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CDRichComplicationCurvedProgressView;
    v8 = [(CDRichComplicationProgressView *)&v11 overrideBackgroundGradientColorsForGradientColors:v6 locations:v7];
  }

  v9 = v8;

  return v9;
}

- (id)filtersForView:(id)a3 style:(int64_t)a4
{
  v6 = [(CDRichComplicationProgressView *)self filterProvider];
  v7 = [v6 filtersForView:self style:a4];

  return v7;
}

- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v8 = [(CDRichComplicationProgressView *)self filterProvider];
  v9 = [v8 filtersForView:self style:a4 fraction:a5];

  return v9;
}

- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v8 = [(CDRichComplicationProgressView *)self filterProvider];
  v9 = [v8 filterForView:self style:a4 fraction:a5];

  return v9;
}

- (id)filterForView:(id)a3 style:(int64_t)a4
{
  v6 = [(CDRichComplicationProgressView *)self filterProvider];
  v7 = [v6 filterForView:self style:a4];

  return v7;
}

@end