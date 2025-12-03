@interface NTKRichComplicationBaseCircularStackImageView
- (id)line1View;
- (int64_t)tritiumUpdateMode;
- (void)setPaused:(BOOL)paused;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationBaseCircularStackImageView

- (id)line1View
{
  line1ImageView = self->_line1ImageView;
  if (!line1ImageView)
  {
    device = [(CDRichComplicationView *)self device];
    v5 = NTKShowGossamerUI(device);

    v6 = [off_27877BEB0 alloc];
    device2 = [(CDRichComplicationView *)self device];
    v8 = [v6 initWithDevice:device2 useAccentColor:v5];
    v9 = self->_line1ImageView;
    self->_line1ImageView = v8;

    [(CDRichComplicationImageView *)self->_line1ImageView setPaused:[(CDRichComplicationView *)self paused]];
    [(CDRichComplicationImageView *)self->_line1ImageView setFilterProvider:self];
    line1ImageView = self->_line1ImageView;
  }

  return line1ImageView;
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularStackImageView;
  [(CDRichComplicationView *)&v5 setPaused:?];
  [(CDRichComplicationImageView *)self->_line1ImageView setPaused:pausedCopy];
}

- (int64_t)tritiumUpdateMode
{
  tritiumUpdateMode = [(CDRichComplicationImageView *)self->_line1ImageView tritiumUpdateMode];
  v4 = tritiumUpdateMode;
  if (tritiumUpdateMode)
  {
    integerValue = [tritiumUpdateMode integerValue];
    if (integerValue >= 2)
    {
      tritiumUpdateMode2 = 2;
    }

    else
    {
      tritiumUpdateMode2 = integerValue;
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKRichComplicationBaseCircularStackImageView;
    tritiumUpdateMode2 = [(CDRichComplicationTemplateView *)&v8 tritiumUpdateMode];
  }

  return tritiumUpdateMode2;
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularStackImageView;
  [(NTKRichComplicationCircularStackContentTextView *)&v5 transitionToMonochromeWithFraction:?];
  [(CDRichComplicationImageView *)self->_line1ImageView transitionToMonochromeWithFraction:fraction];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationBaseCircularStackImageView;
  [(NTKRichComplicationCircularStackContentTextView *)&v3 updateMonochromeColor];
  [(CDRichComplicationImageView *)self->_line1ImageView updateMonochromeColor];
}

@end