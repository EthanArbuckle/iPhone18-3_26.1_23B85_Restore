@interface NTKModularLargeColumnsOnlyTemplateView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKModularLargeColumnsOnlyTemplateView)initWithFrame:(CGRect)a3;
- (void)_enumerateColumnRowsWithBlock:(id)a3;
- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3;
- (void)_enumerateSecondaryForegroundColoringViewsWithBlock:(id)a3;
- (void)_layoutContentView;
- (void)_update;
@end

@implementation NTKModularLargeColumnsOnlyTemplateView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NTKModularLargeColumnsOnlyTemplateView)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = NTKModularLargeColumnsOnlyTemplateView;
  v3 = [(NTKModuleView *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(NTKModularLargeColumnTemplateView *)v3 _newHeaderLabelSubview];
    row1Column1Label = v4->_row1Column1Label;
    v4->_row1Column1Label = v5;

    v7 = [(NTKModularLargeColumnTemplateView *)v4 _newHeaderLabelSubview];
    row2Column1Label = v4->_row2Column1Label;
    v4->_row2Column1Label = v7;

    v9 = [(NTKModularLargeColumnTemplateView *)v4 _newHeaderLabelSubview];
    row3Column1Label = v4->_row3Column1Label;
    v4->_row3Column1Label = v9;

    v11 = [(NTKModularLargeColumnTemplateView *)v4 _newBodyLabelSubview];
    row1Column2Label = v4->_row1Column2Label;
    v4->_row1Column2Label = v11;

    v13 = [(NTKModularLargeColumnTemplateView *)v4 _newBodyLabelSubview];
    row2Column2Label = v4->_row2Column2Label;
    v4->_row2Column2Label = v13;

    v15 = [(NTKModularLargeColumnTemplateView *)v4 _newBodyLabelSubview];
    row3Column2Label = v4->_row3Column2Label;
    v4->_row3Column2Label = v15;
  }

  return v4;
}

- (void)_layoutContentView
{
  v3 = [(NTKModularTemplateView *)self complicationTemplate];
  -[NTKModularLargeColumnTemplateView _layoutRowsOfColumnsWithAlignment:](self, "_layoutRowsOfColumnsWithAlignment:", [v3 column2Alignment]);
}

- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
  (*v4)(v6, self->_row2ImageView);
  (*v4)(v6, self->_row3ImageView);
  (*v4)(v6, self->_row1Column1Label);
  (*v4)(v6, self->_row2Column1Label);
  (*v4)(v6, self->_row3Column1Label);
}

- (void)_enumerateSecondaryForegroundColoringViewsWithBlock:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
  (*v4)(v6, self->_row2Column2Label);
  (*v4)(v6, self->_row3Column2Label);
}

- (void)_enumerateColumnRowsWithBlock:(id)a3
{
  v12 = a3;
  v4 = [(NTKModuleView *)self device];
  v5 = _LargeModularLayoutConstants(v4);

  v12[2](v12, self->_row1ImageView, self->_row1Column1Label, self->_row1Column2Label, v5);
  v6 = [(NTKModuleView *)self device];
  _LargeModularLayoutConstants(v6);
  v8 = v5 + v7;

  v12[2](v12, self->_row2ImageView, self->_row2Column1Label, self->_row2Column2Label, v8);
  v9 = [(NTKModuleView *)self device];
  _LargeModularLayoutConstants(v9);
  v11 = v8 + v10;

  v12[2](v12, self->_row3ImageView, self->_row3Column1Label, self->_row3Column2Label, v11);
}

- (void)_update
{
  v41 = [(NTKModularTemplateView *)self complicationTemplate];
  v3 = [v41 row1ImageProvider];
  v4 = [off_27877BE78 existingImageView:self->_row1ImageView supportsImageProvider:v3];
  row1ImageView = self->_row1ImageView;
  if ((v4 & 1) == 0)
  {
    [(CDComplicationImageView *)self->_row1ImageView removeFromSuperview];
    v6 = [off_27877BE78 viewForImageProvider:v3];
    v7 = self->_row1ImageView;
    self->_row1ImageView = v6;

    v8 = self->_row1ImageView;
    v9 = [(NTKModuleView *)self foregroundColor];
    [(CDComplicationImageView *)v8 setColor:v9];

    if (self->_row1ImageView)
    {
      v10 = [(NTKModuleView *)self contentView];
      [v10 addSubview:self->_row1ImageView];

      row1ImageView = self->_row1ImageView;
    }

    else
    {
      row1ImageView = 0;
    }
  }

  v11 = [v41 row1ImageProvider];
  [(CDComplicationImageView *)row1ImageView setImageProvider:v11];

  [(CDComplicationImageView *)self->_row1ImageView setHidden:v3 == 0];
  v12 = [v41 row2ImageProvider];
  v13 = [off_27877BE78 existingImageView:self->_row2ImageView supportsImageProvider:v12];
  row2ImageView = self->_row2ImageView;
  if ((v13 & 1) == 0)
  {
    [(CDComplicationImageView *)row2ImageView removeFromSuperview];
    v15 = [off_27877BE78 viewForImageProvider:v12];
    v16 = self->_row2ImageView;
    self->_row2ImageView = v15;

    v17 = self->_row2ImageView;
    v18 = [(NTKModuleView *)self foregroundColor];
    [(CDComplicationImageView *)v17 setColor:v18];

    if (self->_row2ImageView)
    {
      v19 = [(NTKModuleView *)self contentView];
      [v19 addSubview:self->_row2ImageView];

      row2ImageView = self->_row2ImageView;
    }

    else
    {
      row2ImageView = 0;
    }
  }

  [(CDComplicationImageView *)row2ImageView setImageProvider:v12];
  [(CDComplicationImageView *)self->_row2ImageView setHidden:v12 == 0];
  v20 = [v41 row3ImageProvider];
  v21 = [off_27877BE78 existingImageView:self->_row3ImageView supportsImageProvider:v20];
  row3ImageView = self->_row3ImageView;
  if ((v21 & 1) == 0)
  {
    [(CDComplicationImageView *)row3ImageView removeFromSuperview];
    v23 = [off_27877BE78 viewForImageProvider:v20];
    v24 = self->_row3ImageView;
    self->_row3ImageView = v23;

    v25 = self->_row3ImageView;
    v26 = [(NTKModuleView *)self foregroundColor];
    [(CDComplicationImageView *)v25 setColor:v26];

    if (self->_row3ImageView)
    {
      v27 = [(NTKModuleView *)self contentView];
      [v27 addSubview:self->_row3ImageView];

      row3ImageView = self->_row3ImageView;
    }

    else
    {
      row3ImageView = 0;
    }
  }

  [(CDComplicationImageView *)row3ImageView setImageProvider:v20];
  [(CDComplicationImageView *)self->_row3ImageView setHidden:v20 == 0];
  row1Column1Label = self->_row1Column1Label;
  v29 = [v41 row1Column1TextProvider];
  [(CLKUIColoringLabel *)row1Column1Label setTextProvider:v29];

  row1Column2Label = self->_row1Column2Label;
  v31 = [v41 row1Column2TextProvider];
  [(CLKUIColoringLabel *)row1Column2Label setTextProvider:v31];

  row2Column1Label = self->_row2Column1Label;
  v33 = [v41 row2Column1TextProvider];
  [(CLKUIColoringLabel *)row2Column1Label setTextProvider:v33];

  row2Column2Label = self->_row2Column2Label;
  v35 = [v41 row2Column2TextProvider];
  [(CLKUIColoringLabel *)row2Column2Label setTextProvider:v35];

  row3Column1Label = self->_row3Column1Label;
  v37 = [v41 row3Column1TextProvider];
  [(CLKUIColoringLabel *)row3Column1Label setTextProvider:v37];

  row3Column2Label = self->_row3Column2Label;
  v39 = [v41 row3Column2TextProvider];
  [(CLKUIColoringLabel *)row3Column2Label setTextProvider:v39];

  -[NTKModularLargeColumnTemplateView setUseNoColumnPadding:](self, "setUseNoColumnPadding:", [v41 useNoColumnPadding]);
  v40 = [(NTKModuleView *)self contentView];
  [v40 setNeedsLayout];
}

@end