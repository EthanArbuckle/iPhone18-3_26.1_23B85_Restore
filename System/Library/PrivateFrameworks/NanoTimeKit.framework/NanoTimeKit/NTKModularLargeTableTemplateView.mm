@interface NTKModularLargeTableTemplateView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKModularLargeTableTemplateView)initWithFrame:(CGRect)frame;
- (void)_enumerateColumnRowsWithBlock:(id)block;
- (void)_enumerateForegroundColoringViewsWithBlock:(id)block;
- (void)_enumerateSecondaryForegroundColoringViewsWithBlock:(id)block;
- (void)_layoutContentView;
- (void)_update;
@end

@implementation NTKModularLargeTableTemplateView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NTKModularLargeTableTemplateView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = NTKModularLargeTableTemplateView;
  v3 = [(NTKModuleView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _newHeaderLabelSubview = [(NTKModularLargeColumnTemplateView *)v3 _newHeaderLabelSubview];
    headerLabel = v4->_headerLabel;
    v4->_headerLabel = _newHeaderLabelSubview;

    _newBodyLabelSubview = [(NTKModularLargeColumnTemplateView *)v4 _newBodyLabelSubview];
    row1Column1Label = v4->_row1Column1Label;
    v4->_row1Column1Label = _newBodyLabelSubview;

    _newBodyLabelSubview2 = [(NTKModularLargeColumnTemplateView *)v4 _newBodyLabelSubview];
    row1Column2Label = v4->_row1Column2Label;
    v4->_row1Column2Label = _newBodyLabelSubview2;

    _newBodyLabelSubview3 = [(NTKModularLargeColumnTemplateView *)v4 _newBodyLabelSubview];
    row2Column1Label = v4->_row2Column1Label;
    v4->_row2Column1Label = _newBodyLabelSubview3;

    _newBodyLabelSubview4 = [(NTKModularLargeColumnTemplateView *)v4 _newBodyLabelSubview];
    row2Column2Label = v4->_row2Column2Label;
    v4->_row2Column2Label = _newBodyLabelSubview4;
  }

  return v4;
}

- (void)_layoutContentView
{
  contentView = [(NTKModuleView *)self contentView];
  [contentView bounds];
  v5 = v4;

  device = [(NTKModuleView *)self device];
  ___LayoutConstants_block_invoke_55(device, &v22);
  v7 = *(&v22 + 1);

  device2 = [(NTKModuleView *)self device];
  ___LayoutConstants_block_invoke_55(device2, &v20);
  v9 = v21;

  [(CDComplicationImageView *)self->_headerImageView sizeToFit];
  [(CDComplicationImageView *)self->_headerImageView frame];
  v11 = v5 - v7 - v9;
  if (v10 > 0.0)
  {
    v12 = v10;
    device3 = [(NTKModuleView *)self device];
    ___LayoutConstants_block_invoke_55(device3, &v18);
    v11 = v11 - (v12 + v19);
  }

  [(CLKUIColoringLabel *)self->_headerLabel setMaxWidth:v11];
  [(CLKUIColoringLabel *)self->_headerLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_headerLabel frame];
  [(CLKUIColoringLabel *)self->_headerLabel setFrame:?];
  headerImageView = self->_headerImageView;
  headerLabel = self->_headerLabel;
  device4 = [(NTKModuleView *)self device];
  [(NTKModularLargeColumnTemplateView *)self _positionLeadingAlignedImageView:headerImageView label:headerLabel withBaselineOffset:_LargeModularLayoutConstants(device4)];

  complicationTemplate = [(NTKModularTemplateView *)self complicationTemplate];
  -[NTKModularLargeColumnTemplateView _layoutRowsOfColumnsWithAlignment:](self, "_layoutRowsOfColumnsWithAlignment:", [complicationTemplate column2Alignment]);
}

- (void)_enumerateForegroundColoringViewsWithBlock:(id)block
{
  v4 = (block + 16);
  v5 = *(block + 2);
  blockCopy = block;
  v5();
  (*v4)(blockCopy, self->_headerLabel);
}

- (void)_enumerateSecondaryForegroundColoringViewsWithBlock:(id)block
{
  v4 = (block + 16);
  v5 = *(block + 2);
  blockCopy = block;
  v5();
  (*v4)(blockCopy, self->_row1Column2Label);
  (*v4)(blockCopy, self->_row2Column1Label);
  (*v4)(blockCopy, self->_row2Column2Label);
}

- (void)_enumerateColumnRowsWithBlock:(id)block
{
  blockCopy = block;
  device = [(NTKModuleView *)self device];
  v5 = _LargeModularLayoutConstants(device);

  device2 = [(NTKModuleView *)self device];
  _LargeModularLayoutConstants(device2);
  v8 = v5 + v7;

  blockCopy[2](blockCopy, 0, self->_row1Column1Label, self->_row1Column2Label, v8);
  device3 = [(NTKModuleView *)self device];
  _LargeModularLayoutConstants(device3);
  v11 = v8 + v10;

  blockCopy[2](blockCopy, 0, self->_row2Column1Label, self->_row2Column2Label, v11);
}

- (void)_update
{
  complicationTemplate = [(NTKModularTemplateView *)self complicationTemplate];
  headerImageProvider = [complicationTemplate headerImageProvider];
  v4 = [off_27877BE78 existingImageView:self->_headerImageView supportsImageProvider:headerImageProvider];
  headerImageView = self->_headerImageView;
  if ((v4 & 1) == 0)
  {
    [(CDComplicationImageView *)headerImageView removeFromSuperview];
    v6 = [off_27877BE78 viewForImageProvider:headerImageProvider];
    v7 = self->_headerImageView;
    self->_headerImageView = v6;

    if (self->_headerImageView)
    {
      contentView = [(NTKModuleView *)self contentView];
      [contentView addSubview:self->_headerImageView];

      v9 = self->_headerImageView;
      foregroundColor = [(NTKModuleView *)self foregroundColor];
      [(CDComplicationImageView *)v9 setColor:foregroundColor];

      headerImageView = self->_headerImageView;
    }

    else
    {
      headerImageView = 0;
    }
  }

  [(CDComplicationImageView *)headerImageView setImageProvider:headerImageProvider];
  [(CDComplicationImageView *)self->_headerImageView setHidden:headerImageProvider == 0];
  headerLabel = self->_headerLabel;
  headerTextProvider = [complicationTemplate headerTextProvider];
  [(CLKUIColoringLabel *)headerLabel setTextProvider:headerTextProvider];

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

  -[NTKModularLargeColumnTemplateView setUseNoColumnPadding:](self, "setUseNoColumnPadding:", [complicationTemplate useNoColumnPadding]);
  contentView2 = [(NTKModuleView *)self contentView];
  [contentView2 setNeedsLayout];
}

@end