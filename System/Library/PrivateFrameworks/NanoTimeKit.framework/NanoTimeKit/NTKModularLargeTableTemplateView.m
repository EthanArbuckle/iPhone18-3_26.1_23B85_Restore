@interface NTKModularLargeTableTemplateView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKModularLargeTableTemplateView)initWithFrame:(CGRect)a3;
- (void)_enumerateColumnRowsWithBlock:(id)a3;
- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3;
- (void)_enumerateSecondaryForegroundColoringViewsWithBlock:(id)a3;
- (void)_layoutContentView;
- (void)_update;
@end

@implementation NTKModularLargeTableTemplateView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NTKModularLargeTableTemplateView)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = NTKModularLargeTableTemplateView;
  v3 = [(NTKModuleView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(NTKModularLargeColumnTemplateView *)v3 _newHeaderLabelSubview];
    headerLabel = v4->_headerLabel;
    v4->_headerLabel = v5;

    v7 = [(NTKModularLargeColumnTemplateView *)v4 _newBodyLabelSubview];
    row1Column1Label = v4->_row1Column1Label;
    v4->_row1Column1Label = v7;

    v9 = [(NTKModularLargeColumnTemplateView *)v4 _newBodyLabelSubview];
    row1Column2Label = v4->_row1Column2Label;
    v4->_row1Column2Label = v9;

    v11 = [(NTKModularLargeColumnTemplateView *)v4 _newBodyLabelSubview];
    row2Column1Label = v4->_row2Column1Label;
    v4->_row2Column1Label = v11;

    v13 = [(NTKModularLargeColumnTemplateView *)v4 _newBodyLabelSubview];
    row2Column2Label = v4->_row2Column2Label;
    v4->_row2Column2Label = v13;
  }

  return v4;
}

- (void)_layoutContentView
{
  v3 = [(NTKModuleView *)self contentView];
  [v3 bounds];
  v5 = v4;

  v6 = [(NTKModuleView *)self device];
  ___LayoutConstants_block_invoke_55(v6, &v22);
  v7 = *(&v22 + 1);

  v8 = [(NTKModuleView *)self device];
  ___LayoutConstants_block_invoke_55(v8, &v20);
  v9 = v21;

  [(CDComplicationImageView *)self->_headerImageView sizeToFit];
  [(CDComplicationImageView *)self->_headerImageView frame];
  v11 = v5 - v7 - v9;
  if (v10 > 0.0)
  {
    v12 = v10;
    v13 = [(NTKModuleView *)self device];
    ___LayoutConstants_block_invoke_55(v13, &v18);
    v11 = v11 - (v12 + v19);
  }

  [(CLKUIColoringLabel *)self->_headerLabel setMaxWidth:v11];
  [(CLKUIColoringLabel *)self->_headerLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_headerLabel frame];
  [(CLKUIColoringLabel *)self->_headerLabel setFrame:?];
  headerImageView = self->_headerImageView;
  headerLabel = self->_headerLabel;
  v16 = [(NTKModuleView *)self device];
  [(NTKModularLargeColumnTemplateView *)self _positionLeadingAlignedImageView:headerImageView label:headerLabel withBaselineOffset:_LargeModularLayoutConstants(v16)];

  v17 = [(NTKModularTemplateView *)self complicationTemplate];
  -[NTKModularLargeColumnTemplateView _layoutRowsOfColumnsWithAlignment:](self, "_layoutRowsOfColumnsWithAlignment:", [v17 column2Alignment]);
}

- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
  (*v4)(v6, self->_headerLabel);
}

- (void)_enumerateSecondaryForegroundColoringViewsWithBlock:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
  (*v4)(v6, self->_row1Column2Label);
  (*v4)(v6, self->_row2Column1Label);
  (*v4)(v6, self->_row2Column2Label);
}

- (void)_enumerateColumnRowsWithBlock:(id)a3
{
  v12 = a3;
  v4 = [(NTKModuleView *)self device];
  v5 = _LargeModularLayoutConstants(v4);

  v6 = [(NTKModuleView *)self device];
  _LargeModularLayoutConstants(v6);
  v8 = v5 + v7;

  v12[2](v12, 0, self->_row1Column1Label, self->_row1Column2Label, v8);
  v9 = [(NTKModuleView *)self device];
  _LargeModularLayoutConstants(v9);
  v11 = v8 + v10;

  v12[2](v12, 0, self->_row2Column1Label, self->_row2Column2Label, v11);
}

- (void)_update
{
  v22 = [(NTKModularTemplateView *)self complicationTemplate];
  v3 = [v22 headerImageProvider];
  v4 = [off_27877BE78 existingImageView:self->_headerImageView supportsImageProvider:v3];
  headerImageView = self->_headerImageView;
  if ((v4 & 1) == 0)
  {
    [(CDComplicationImageView *)headerImageView removeFromSuperview];
    v6 = [off_27877BE78 viewForImageProvider:v3];
    v7 = self->_headerImageView;
    self->_headerImageView = v6;

    if (self->_headerImageView)
    {
      v8 = [(NTKModuleView *)self contentView];
      [v8 addSubview:self->_headerImageView];

      v9 = self->_headerImageView;
      v10 = [(NTKModuleView *)self foregroundColor];
      [(CDComplicationImageView *)v9 setColor:v10];

      headerImageView = self->_headerImageView;
    }

    else
    {
      headerImageView = 0;
    }
  }

  [(CDComplicationImageView *)headerImageView setImageProvider:v3];
  [(CDComplicationImageView *)self->_headerImageView setHidden:v3 == 0];
  headerLabel = self->_headerLabel;
  v12 = [v22 headerTextProvider];
  [(CLKUIColoringLabel *)headerLabel setTextProvider:v12];

  row1Column1Label = self->_row1Column1Label;
  v14 = [v22 row1Column1TextProvider];
  [(CLKUIColoringLabel *)row1Column1Label setTextProvider:v14];

  row1Column2Label = self->_row1Column2Label;
  v16 = [v22 row1Column2TextProvider];
  [(CLKUIColoringLabel *)row1Column2Label setTextProvider:v16];

  row2Column1Label = self->_row2Column1Label;
  v18 = [v22 row2Column1TextProvider];
  [(CLKUIColoringLabel *)row2Column1Label setTextProvider:v18];

  row2Column2Label = self->_row2Column2Label;
  v20 = [v22 row2Column2TextProvider];
  [(CLKUIColoringLabel *)row2Column2Label setTextProvider:v20];

  -[NTKModularLargeColumnTemplateView setUseNoColumnPadding:](self, "setUseNoColumnPadding:", [v22 useNoColumnPadding]);
  v21 = [(NTKModuleView *)self contentView];
  [v21 setNeedsLayout];
}

@end