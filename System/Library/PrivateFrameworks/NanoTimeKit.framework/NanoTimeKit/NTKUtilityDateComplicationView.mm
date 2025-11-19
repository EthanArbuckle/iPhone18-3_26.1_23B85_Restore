@interface NTKUtilityDateComplicationView
- (NTKUtilityDateComplicationView)initWithFrame:(CGRect)a3;
- (void)_invalidateLabelSize;
- (void)layoutSubviews;
- (void)setDateComplicationText:(id)a3 withDayRange:(_NSRange)a4 forDateStyle:(unint64_t)a5;
- (void)setFont:(id)a3;
- (void)setForegroundColor:(id)a3;
@end

@implementation NTKUtilityDateComplicationView

- (NTKUtilityDateComplicationView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = NTKUtilityDateComplicationView;
  v3 = [(NTKUtilityComplicationView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [NTKDateComplicationLabel alloc];
    v5 = [(NTKUtilityComplicationView *)v3 device];
    v6 = [(NTKDateComplicationLabel *)v4 initWithSizeStyle:1 accentType:0 forDevice:v5];
    label = v3->_label;
    v3->_label = v6;

    v8 = v3->_label;
    v9 = [MEMORY[0x277D75348] whiteColor];
    [(NTKDateComplicationLabel *)v8 setTextColor:v9];

    v10 = v3->_label;
    v11 = [(NTKUtilityComplicationView *)v3 device];
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
  v3 = [(NTKUtilityComplicationView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(NTKDateComplicationLabel *)self->_label setFrame:v5, v7, v9, v11];
}

- (void)setDateComplicationText:(id)a3 withDayRange:(_NSRange)a4 forDateStyle:(unint64_t)a5
{
  [(NTKDateComplicationLabel *)self->_label setDateComplicationText:a3 withDayRange:a4.location forDateStyle:a4.length];
  self->_dateStyle = a5;

  [(NTKUtilityDateComplicationView *)self _invalidateLabelSize];
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(NTKUtilityComplicationView *)self font];
  v6 = NTKEqualObjects(v4, v5);

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = NTKUtilityDateComplicationView;
    [(NTKUtilityComplicationView *)&v7 setFont:v4];
    [(NTKDateComplicationLabel *)self->_label setFont:v4];
    [(NTKUtilityDateComplicationView *)self _invalidateLabelSize];
  }
}

- (void)_invalidateLabelSize
{
  [(NTKDateComplicationLabel *)self->_label sizeToFit];
  v3 = [(NTKUtilityComplicationView *)self displayObserver];
  [v3 complicationDisplayNeedsResize:self];
}

- (void)setForegroundColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKUtilityDateComplicationView;
  [(NTKUtilityComplicationView *)&v6 setForegroundColor:a3];
  label = self->_label;
  v5 = [(NTKUtilityComplicationView *)self _computedForegroundColor];
  [(NTKDateComplicationLabel *)label setTextColor:v5];
}

@end