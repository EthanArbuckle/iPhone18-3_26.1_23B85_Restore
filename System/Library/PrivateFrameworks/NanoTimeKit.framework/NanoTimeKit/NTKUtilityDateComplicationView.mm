@interface NTKUtilityDateComplicationView
- (NTKUtilityDateComplicationView)initWithFrame:(CGRect)frame;
- (void)_invalidateLabelSize;
- (void)layoutSubviews;
- (void)setDateComplicationText:(id)text withDayRange:(_NSRange)range forDateStyle:(unint64_t)style;
- (void)setFont:(id)font;
- (void)setForegroundColor:(id)color;
@end

@implementation NTKUtilityDateComplicationView

- (NTKUtilityDateComplicationView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = NTKUtilityDateComplicationView;
  v3 = [(NTKUtilityComplicationView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [NTKDateComplicationLabel alloc];
    device = [(NTKUtilityComplicationView *)v3 device];
    v6 = [(NTKDateComplicationLabel *)v4 initWithSizeStyle:1 accentType:0 forDevice:device];
    label = v3->_label;
    v3->_label = v6;

    v8 = v3->_label;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(NTKDateComplicationLabel *)v8 setTextColor:whiteColor];

    v10 = v3->_label;
    device2 = [(NTKUtilityComplicationView *)v3 device];
    [(NTKDateComplicationLabel *)v10 setAlpha:1.0];

    [(NTKUtilityDateComplicationView *)v3 addSubview:v3->_label];
  }

  return v3;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NTKUtilityDateComplicationView;
  [(NTKUtilityComplicationView *)&v12 layoutSubviews];
  [(NTKDateComplicationLabel *)self->_label frame];
  [(NTKUtilityDateComplicationView *)self bounds];
  device = [(NTKUtilityComplicationView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(NTKDateComplicationLabel *)self->_label setFrame:v5, v7, v9, v11];
}

- (void)setDateComplicationText:(id)text withDayRange:(_NSRange)range forDateStyle:(unint64_t)style
{
  [(NTKDateComplicationLabel *)self->_label setDateComplicationText:text withDayRange:range.location forDateStyle:range.length];
  self->_dateStyle = style;

  [(NTKUtilityDateComplicationView *)self _invalidateLabelSize];
}

- (void)setFont:(id)font
{
  fontCopy = font;
  font = [(NTKUtilityComplicationView *)self font];
  v6 = NTKEqualObjects(fontCopy, font);

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = NTKUtilityDateComplicationView;
    [(NTKUtilityComplicationView *)&v7 setFont:fontCopy];
    [(NTKDateComplicationLabel *)self->_label setFont:fontCopy];
    [(NTKUtilityDateComplicationView *)self _invalidateLabelSize];
  }
}

- (void)_invalidateLabelSize
{
  [(NTKDateComplicationLabel *)self->_label sizeToFit];
  displayObserver = [(NTKUtilityComplicationView *)self displayObserver];
  [displayObserver complicationDisplayNeedsResize:self];
}

- (void)setForegroundColor:(id)color
{
  v6.receiver = self;
  v6.super_class = NTKUtilityDateComplicationView;
  [(NTKUtilityComplicationView *)&v6 setForegroundColor:color];
  label = self->_label;
  _computedForegroundColor = [(NTKUtilityComplicationView *)self _computedForegroundColor];
  [(NTKDateComplicationLabel *)label setTextColor:_computedForegroundColor];
}

@end