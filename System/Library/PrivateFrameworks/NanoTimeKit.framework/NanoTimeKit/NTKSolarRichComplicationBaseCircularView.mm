@interface NTKSolarRichComplicationBaseCircularView
- (NTKSolarRichComplicationBaseCircularView)initWithFamily:(int64_t)family;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)layoutSubviews;
- (void)setTimeTravelDate:(id)date animated:(BOOL)animated;
@end

@implementation NTKSolarRichComplicationBaseCircularView

- (NTKSolarRichComplicationBaseCircularView)initWithFamily:(int64_t)family
{
  v13.receiver = self;
  v13.super_class = NTKSolarRichComplicationBaseCircularView;
  v4 = [(NTKRichComplicationCircularBaseView *)&v13 initWithFamily:?];
  if (v4)
  {
    v5 = [NTKSolarRichComplicationFullColorImageView alloc];
    device = [(CDRichComplicationView *)v4 device];
    v7 = [(NTKSolarRichComplicationFullColorImageView *)v5 initFullColorImageViewWithDevice:device family:family];
    solarImageView = v4->_solarImageView;
    v4->_solarImageView = v7;

    [(NTKSolarRichComplicationFullColorImageView *)v4->_solarImageView setFilterProvider:v4];
    [(NTKSolarRichComplicationFullColorImageView *)v4->_solarImageView setClipsToBounds:0];
    contentView = [(NTKRichComplicationCircularBaseView *)v4 contentView];
    [contentView addSubview:v4->_solarImageView];

    contentView2 = [(NTKRichComplicationCircularBaseView *)v4 contentView];
    layer = [contentView2 layer];
    [layer setMasksToBounds:1];
  }

  return v4;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = NTKSolarRichComplicationBaseCircularView;
  [(NTKRichComplicationCircularBaseView *)&v16 layoutSubviews];
  contentView = [(NTKRichComplicationCircularBaseView *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  Width = CGRectGetWidth(v17);
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  Height = CGRectGetHeight(v18);
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  MidX = CGRectGetMidX(v19);
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  MidY = CGRectGetMidY(v20);
  [(NTKSolarRichComplicationFullColorImageView *)self->_solarImageView setBounds:0.0, 0.0, Width, Height];
  [(NTKSolarRichComplicationFullColorImageView *)self->_solarImageView setCenter:MidX, MidY];
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  metadata = [template metadata];
  v6 = [metadata objectForKeyedSubscript:@"NTKSolarComplicationEntryLocationKey"];
  v7 = [metadata objectForKeyedSubscript:@"NTKSolarComplicationUseIdealizedTimeKey"];
  bOOLValue = [v7 BOOLValue];

  [(NTKSolarRichComplicationBaseCircularView *)self _updateWithLocation:v6 useIdealizedTime:bOOLValue forceUpdate:0 animated:[(NTKSolarRichComplicationBaseCircularView *)self _shouldAnimateWithTemplateUpdateReason:reason]];
}

- (void)setTimeTravelDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  solarImageView = self->_solarImageView;
  dateCopy = date;
  [(NTKSolarRichComplicationFullColorImageView *)solarImageView setTimeTravelDate:dateCopy];
  v8.receiver = self;
  v8.super_class = NTKSolarRichComplicationBaseCircularView;
  [(CDRichComplicationTemplateView *)&v8 setTimeTravelDate:dateCopy animated:animatedCopy];
}

@end