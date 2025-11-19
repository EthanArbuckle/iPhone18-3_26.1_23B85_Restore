@interface NTKRichComplicationBaseCircularStackImageView
- (id)line1View;
- (int64_t)tritiumUpdateMode;
- (void)setPaused:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationBaseCircularStackImageView

- (id)line1View
{
  line1ImageView = self->_line1ImageView;
  if (!line1ImageView)
  {
    v4 = [(CDRichComplicationView *)self device];
    v5 = NTKShowGossamerUI(v4);

    v6 = [off_27877BEB0 alloc];
    v7 = [(CDRichComplicationView *)self device];
    v8 = [v6 initWithDevice:v7 useAccentColor:v5];
    v9 = self->_line1ImageView;
    self->_line1ImageView = v8;

    [(CDRichComplicationImageView *)self->_line1ImageView setPaused:[(CDRichComplicationView *)self paused]];
    [(CDRichComplicationImageView *)self->_line1ImageView setFilterProvider:self];
    line1ImageView = self->_line1ImageView;
  }

  return line1ImageView;
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularStackImageView;
  [(CDRichComplicationView *)&v5 setPaused:?];
  [(CDRichComplicationImageView *)self->_line1ImageView setPaused:v3];
}

- (int64_t)tritiumUpdateMode
{
  v3 = [(CDRichComplicationImageView *)self->_line1ImageView tritiumUpdateMode];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
    if (v5 >= 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKRichComplicationBaseCircularStackImageView;
    v6 = [(CDRichComplicationTemplateView *)&v8 tritiumUpdateMode];
  }

  return v6;
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularStackImageView;
  [(NTKRichComplicationCircularStackContentTextView *)&v5 transitionToMonochromeWithFraction:?];
  [(CDRichComplicationImageView *)self->_line1ImageView transitionToMonochromeWithFraction:a3];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationBaseCircularStackImageView;
  [(NTKRichComplicationCircularStackContentTextView *)&v3 updateMonochromeColor];
  [(CDRichComplicationImageView *)self->_line1ImageView updateMonochromeColor];
}

@end