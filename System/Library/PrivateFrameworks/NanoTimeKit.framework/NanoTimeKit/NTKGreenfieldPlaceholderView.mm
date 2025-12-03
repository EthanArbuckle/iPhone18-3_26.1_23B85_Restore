@interface NTKGreenfieldPlaceholderView
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKGreenfieldPlaceholderView)initWithFrame:(CGRect)frame;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
- (void)setImageProvider:(id)provider;
@end

@implementation NTKGreenfieldPlaceholderView

- (NTKGreenfieldPlaceholderView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = NTKGreenfieldPlaceholderView;
  v3 = [(NTKGreenfieldPlaceholderView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D755E8]);
    iconView = v3->_iconView;
    v3->_iconView = v4;

    [(UIImageView *)v3->_iconView setContentMode:1];
    [(NTKGreenfieldPlaceholderView *)v3 addSubview:v3->_iconView];
    v6 = objc_alloc_init(_NTKPieChartView);
    uncompletedPieChartView = v3->_uncompletedPieChartView;
    v3->_uncompletedPieChartView = v6;

    [(NTKGreenfieldPlaceholderView *)v3 addSubview:v3->_uncompletedPieChartView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = NTKGreenfieldPlaceholderView;
  [(NTKGreenfieldPlaceholderView *)&v13 layoutSubviews];
  [(NTKGreenfieldPlaceholderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NTKGreenfieldPlaceholderView *)self bounds];
  v12 = v11 * 0.75;
  [(UIImageView *)self->_iconView setFrame:v4, v6, v8, v10];
  [(_NTKPieChartView *)self->_uncompletedPieChartView setFrame:v8 * 0.25 * 0.5, v8 * 0.25 * 0.5, v12, v12];
}

- (void)setImageProvider:(id)provider
{
  providerCopy = provider;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = providerCopy;
    [v4 progress];
    [(NTKGreenfieldPlaceholderView *)self setProgress:1 animated:?];
    appIcon = [v4 appIcon];

    [(NTKGreenfieldPlaceholderView *)self setAppIcon:appIcon];
  }
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  metadata = [provider metadata];
  v6 = [metadata objectForKeyedSubscript:@"NTKGreenfieldPlaceholderTimelineEntryModelProgressKey"];
  v7 = [(NTKGreenfieldPlaceholderView *)self _shouldAnimateWithTemplateUpdateReason:reason];
  [v6 floatValue];
  [(NTKGreenfieldPlaceholderView *)self setProgress:v7 animated:v8];
  v9 = [metadata objectForKeyedSubscript:@"NTKGreenfieldPlaceholderTimelineEntryModelIconKey"];
  if (v9)
  {
    [(NTKGreenfieldPlaceholderView *)self setAppIcon:v9];
  }
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end