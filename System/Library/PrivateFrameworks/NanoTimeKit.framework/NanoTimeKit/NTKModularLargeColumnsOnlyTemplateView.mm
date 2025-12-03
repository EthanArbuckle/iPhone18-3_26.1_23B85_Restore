@interface NTKModularLargeColumnsOnlyTemplateView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKModularLargeColumnsOnlyTemplateView)initWithFrame:(CGRect)frame;
- (void)_enumerateColumnRowsWithBlock:(id)block;
- (void)_enumerateForegroundColoringViewsWithBlock:(id)block;
- (void)_enumerateSecondaryForegroundColoringViewsWithBlock:(id)block;
- (void)_layoutContentView;
- (void)_update;
@end

@implementation NTKModularLargeColumnsOnlyTemplateView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NTKModularLargeColumnsOnlyTemplateView)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = NTKModularLargeColumnsOnlyTemplateView;
  v3 = [(NTKModuleView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _newHeaderLabelSubview = [(NTKModularLargeColumnTemplateView *)v3 _newHeaderLabelSubview];
    row1Column1Label = v4->_row1Column1Label;
    v4->_row1Column1Label = _newHeaderLabelSubview;

    _newHeaderLabelSubview2 = [(NTKModularLargeColumnTemplateView *)v4 _newHeaderLabelSubview];
    row2Column1Label = v4->_row2Column1Label;
    v4->_row2Column1Label = _newHeaderLabelSubview2;

    _newHeaderLabelSubview3 = [(NTKModularLargeColumnTemplateView *)v4 _newHeaderLabelSubview];
    row3Column1Label = v4->_row3Column1Label;
    v4->_row3Column1Label = _newHeaderLabelSubview3;

    _newBodyLabelSubview = [(NTKModularLargeColumnTemplateView *)v4 _newBodyLabelSubview];
    row1Column2Label = v4->_row1Column2Label;
    v4->_row1Column2Label = _newBodyLabelSubview;

    _newBodyLabelSubview2 = [(NTKModularLargeColumnTemplateView *)v4 _newBodyLabelSubview];
    row2Column2Label = v4->_row2Column2Label;
    v4->_row2Column2Label = _newBodyLabelSubview2;

    _newBodyLabelSubview3 = [(NTKModularLargeColumnTemplateView *)v4 _newBodyLabelSubview];
    row3Column2Label = v4->_row3Column2Label;
    v4->_row3Column2Label = _newBodyLabelSubview3;
  }

  return v4;
}

- (void)_layoutContentView
{
  complicationTemplate = [(NTKModularTemplateView *)self complicationTemplate];
  -[NTKModularLargeColumnTemplateView _layoutRowsOfColumnsWithAlignment:](self, "_layoutRowsOfColumnsWithAlignment:", [complicationTemplate column2Alignment]);
}

- (void)_enumerateForegroundColoringViewsWithBlock:(id)block
{
  v4 = (block + 16);
  v5 = *(block + 2);
  blockCopy = block;
  v5();
  (*v4)(blockCopy, self->_row2ImageView);
  (*v4)(blockCopy, self->_row3ImageView);
  (*v4)(blockCopy, self->_row1Column1Label);
  (*v4)(blockCopy, self->_row2Column1Label);
  (*v4)(blockCopy, self->_row3Column1Label);
}

- (void)_enumerateSecondaryForegroundColoringViewsWithBlock:(id)block
{
  v4 = (block + 16);
  v5 = *(block + 2);
  blockCopy = block;
  v5();
  (*v4)(blockCopy, self->_row2Column2Label);
  (*v4)(blockCopy, self->_row3Column2Label);
}

- (void)_enumerateColumnRowsWithBlock:(id)block
{
  blockCopy = block;
  device = [(NTKModuleView *)self device];
  v5 = _LargeModularLayoutConstants(device);

  blockCopy[2](blockCopy, self->_row1ImageView, self->_row1Column1Label, self->_row1Column2Label, v5);
  device2 = [(NTKModuleView *)self device];
  _LargeModularLayoutConstants(device2);
  v8 = v5 + v7;

  blockCopy[2](blockCopy, self->_row2ImageView, self->_row2Column1Label, self->_row2Column2Label, v8);
  device3 = [(NTKModuleView *)self device];
  _LargeModularLayoutConstants(device3);
  v11 = v8 + v10;

  blockCopy[2](blockCopy, self->_row3ImageView, self->_row3Column1Label, self->_row3Column2Label, v11);
}

- (void)_update
{
  complicationTemplate = [(NTKModularTemplateView *)self complicationTemplate];
  row1ImageProvider = [complicationTemplate row1ImageProvider];
  v4 = [off_27877BE78 existingImageView:self->_row1ImageView supportsImageProvider:row1ImageProvider];
  row1ImageView = self->_row1ImageView;
  if ((v4 & 1) == 0)
  {
    [(CDComplicationImageView *)self->_row1ImageView removeFromSuperview];
    v6 = [off_27877BE78 viewForImageProvider:row1ImageProvider];
    v7 = self->_row1ImageView;
    self->_row1ImageView = v6;

    v8 = self->_row1ImageView;
    foregroundColor = [(NTKModuleView *)self foregroundColor];
    [(CDComplicationImageView *)v8 setColor:foregroundColor];

    if (self->_row1ImageView)
    {
      contentView = [(NTKModuleView *)self contentView];
      [contentView addSubview:self->_row1ImageView];

      row1ImageView = self->_row1ImageView;
    }

    else
    {
      row1ImageView = 0;
    }
  }

  row1ImageProvider2 = [complicationTemplate row1ImageProvider];
  [(CDComplicationImageView *)row1ImageView setImageProvider:row1ImageProvider2];

  [(CDComplicationImageView *)self->_row1ImageView setHidden:row1ImageProvider == 0];
  row2ImageProvider = [complicationTemplate row2ImageProvider];
  v13 = [off_27877BE78 existingImageView:self->_row2ImageView supportsImageProvider:row2ImageProvider];
  row2ImageView = self->_row2ImageView;
  if ((v13 & 1) == 0)
  {
    [(CDComplicationImageView *)row2ImageView removeFromSuperview];
    v15 = [off_27877BE78 viewForImageProvider:row2ImageProvider];
    v16 = self->_row2ImageView;
    self->_row2ImageView = v15;

    v17 = self->_row2ImageView;
    foregroundColor2 = [(NTKModuleView *)self foregroundColor];
    [(CDComplicationImageView *)v17 setColor:foregroundColor2];

    if (self->_row2ImageView)
    {
      contentView2 = [(NTKModuleView *)self contentView];
      [contentView2 addSubview:self->_row2ImageView];

      row2ImageView = self->_row2ImageView;
    }

    else
    {
      row2ImageView = 0;
    }
  }

  [(CDComplicationImageView *)row2ImageView setImageProvider:row2ImageProvider];
  [(CDComplicationImageView *)self->_row2ImageView setHidden:row2ImageProvider == 0];
  row3ImageProvider = [complicationTemplate row3ImageProvider];
  v21 = [off_27877BE78 existingImageView:self->_row3ImageView supportsImageProvider:row3ImageProvider];
  row3ImageView = self->_row3ImageView;
  if ((v21 & 1) == 0)
  {
    [(CDComplicationImageView *)row3ImageView removeFromSuperview];
    v23 = [off_27877BE78 viewForImageProvider:row3ImageProvider];
    v24 = self->_row3ImageView;
    self->_row3ImageView = v23;

    v25 = self->_row3ImageView;
    foregroundColor3 = [(NTKModuleView *)self foregroundColor];
    [(CDComplicationImageView *)v25 setColor:foregroundColor3];

    if (self->_row3ImageView)
    {
      contentView3 = [(NTKModuleView *)self contentView];
      [contentView3 addSubview:self->_row3ImageView];

      row3ImageView = self->_row3ImageView;
    }

    else
    {
      row3ImageView = 0;
    }
  }

  [(CDComplicationImageView *)row3ImageView setImageProvider:row3ImageProvider];
  [(CDComplicationImageView *)self->_row3ImageView setHidden:row3ImageProvider == 0];
  row1Column1Label = self->_row1Column1Label;
  row1Column1TextProvider = [complicationTemplate row1Column1TextProvider];
  [(CLKUIColoringLabel *)row1Column1Label setTextProvider:row1Column1TextProvider];

  row1Column2Label = self->_row1Column2Label;
  row1Column2TextProvider = [complicationTemplate row1Column2TextProvider];
  [(CLKUIColoringLabel *)row1Column2Label setTextProvider:row1Column2TextProvider];

  row2Column1Label = self->_row2Column1Label;
  row2Column1TextProvider = [complicationTemplate row2Column1TextProvider];
  [(CLKUIColoringLabel *)row2Column1Label setTextProvider:row2Column1TextProvider];

  row2Column2Label = self->_row2Column2Label;
  row2Column2TextProvider = [complicationTemplate row2Column2TextProvider];
  [(CLKUIColoringLabel *)row2Column2Label setTextProvider:row2Column2TextProvider];

  row3Column1Label = self->_row3Column1Label;
  row3Column1TextProvider = [complicationTemplate row3Column1TextProvider];
  [(CLKUIColoringLabel *)row3Column1Label setTextProvider:row3Column1TextProvider];

  row3Column2Label = self->_row3Column2Label;
  row3Column2TextProvider = [complicationTemplate row3Column2TextProvider];
  [(CLKUIColoringLabel *)row3Column2Label setTextProvider:row3Column2TextProvider];

  -[NTKModularLargeColumnTemplateView setUseNoColumnPadding:](self, "setUseNoColumnPadding:", [complicationTemplate useNoColumnPadding]);
  contentView4 = [(NTKModuleView *)self contentView];
  [contentView4 setNeedsLayout];
}

@end