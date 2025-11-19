@interface NTKModularSmallColumnTemplateView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKModularSmallColumnTemplateView)initWithFrame:(CGRect)a3;
- (id)_newLabelSubview;
- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3;
- (void)_enumerateSecondaryForegroundColoringViewsWithBlock:(id)a3;
- (void)_layoutContentView;
- (void)_update;
@end

@implementation NTKModularSmallColumnTemplateView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (NTKModularSmallColumnTemplateView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = NTKModularSmallColumnTemplateView;
  v3 = [(NTKModuleView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(NTKModularSmallColumnTemplateView *)v3 _newLabelSubview];
    row1Column1Label = v4->_row1Column1Label;
    v4->_row1Column1Label = v5;

    v7 = [(NTKModularSmallColumnTemplateView *)v4 _newLabelSubview];
    row2Column1Label = v4->_row2Column1Label;
    v4->_row2Column1Label = v7;

    v9 = [(NTKModularSmallColumnTemplateView *)v4 _newLabelSubview];
    row1Column2Label = v4->_row1Column2Label;
    v4->_row1Column2Label = v9;

    v11 = [(NTKModularSmallColumnTemplateView *)v4 _newLabelSubview];
    row2Column2Label = v4->_row2Column2Label;
    v4->_row2Column2Label = v11;
  }

  return v4;
}

- (id)_newLabelSubview
{
  v3 = objc_alloc_init(off_27877BEF8);
  v4 = [(NTKModularTemplateView *)self timeTravelDate];
  [v3 setInTimeTravel:v4 != 0];

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__NTKModularSmallColumnTemplateView__newLabelSubview__block_invoke;
  v9[3] = &unk_27877DC30;
  objc_copyWeak(&v10, &location);
  [v3 setNowProvider:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__NTKModularSmallColumnTemplateView__newLabelSubview__block_invoke_2;
  v7[3] = &unk_27877DC58;
  objc_copyWeak(&v8, &location);
  [v3 setNeedsResizeHandler:v7];
  v5 = [(NTKModuleView *)self contentView];
  [v5 addSubview:v3];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  return v3;
}

id __53__NTKModularSmallColumnTemplateView__newLabelSubview__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained timeTravelDate];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBBAD8] complicationDate];
  }

  v5 = v4;

  return v5;
}

void __53__NTKModularSmallColumnTemplateView__newLabelSubview__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained contentView];
  [v1 setNeedsLayout];
}

- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3
{
  v4 = a3;
  v8 = [(NTKModularTemplateView *)self complicationTemplate];
  v5 = [v8 highlightColumn2];
  v6 = &OBJC_IVAR___NTKModularSmallColumnTemplateView__row1Column1Label;
  if (v5)
  {
    v6 = &OBJC_IVAR___NTKModularSmallColumnTemplateView__row1Column2Label;
    v7 = &OBJC_IVAR___NTKModularSmallColumnTemplateView__row2Column2Label;
  }

  else
  {
    v7 = &OBJC_IVAR___NTKModularSmallColumnTemplateView__row2Column1Label;
  }

  v4[2](v4, *(&self->super.super.super.super.super.super.super.isa + *v6));
  v4[2](v4, *(&self->super.super.super.super.super.super.super.isa + *v7));
}

- (void)_enumerateSecondaryForegroundColoringViewsWithBlock:(id)a3
{
  v4 = a3;
  v8 = [(NTKModularTemplateView *)self complicationTemplate];
  v5 = [v8 highlightColumn2];
  v6 = &OBJC_IVAR___NTKModularSmallColumnTemplateView__row1Column2Label;
  if (v5)
  {
    v6 = &OBJC_IVAR___NTKModularSmallColumnTemplateView__row1Column1Label;
    v7 = &OBJC_IVAR___NTKModularSmallColumnTemplateView__row2Column1Label;
  }

  else
  {
    v7 = &OBJC_IVAR___NTKModularSmallColumnTemplateView__row2Column2Label;
  }

  v4[2](v4, *(&self->super.super.super.super.super.super.super.isa + *v6));
  v4[2](v4, *(&self->super.super.super.super.super.super.super.isa + *v7));
}

- (void)_layoutContentView
{
  v90 = 0u;
  *v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v87 = 0u;
  v3 = [(NTKModuleView *)self device];
  if ([(NTKComplicationModuleView *)self isXL])
  {
    ___LayoutConstantsExtraLarge_block_invoke_6(v3, &v87);
  }

  else
  {
    ___LayoutConstantsModularSmall_block_invoke_3(v3, &v87);
  }

  v4 = *&v90;
  v5 = *v91;
  v69 = v91[0];
  v72 = v89;
  v70 = *(&v88 + 1);
  v71 = *(&v90 + 1);
  v6 = *(&v90 + 1) + *&v89 * -2.0 - *(&v89 + 1);
  v7 = [(NTKModularTemplateView *)self complicationTemplate];
  v8 = [v7 column2Alignment];

  v9 = [(NTKModularTemplateView *)self complicationTemplate];
  v76 = [v9 highlightColumn2];

  v85 = 0.0;
  Width = 0.0;
  v83 = 0.0;
  v84 = 0.0;
  if (self->_calculatedFontSize)
  {
    [(CLKUIColoringLabel *)self->_row1Column1Label sizeToFit];
    [(CLKUIColoringLabel *)self->_row1Column1Label bounds];
    Width = CGRectGetWidth(v92);
    [(CLKUIColoringLabel *)self->_row2Column1Label sizeToFit];
    [(CLKUIColoringLabel *)self->_row2Column1Label bounds];
    v84 = CGRectGetWidth(v93);
    [(CLKUIColoringLabel *)self->_row1Column2Label sizeToFit];
    [(CLKUIColoringLabel *)self->_row1Column2Label bounds];
    v85 = CGRectGetWidth(v94);
    [(CLKUIColoringLabel *)self->_row2Column2Label sizeToFit];
    [(CLKUIColoringLabel *)self->_row2Column2Label bounds];
    v83 = CGRectGetWidth(v95);
    v10 = [(NTKModuleView *)self device];
    CLKCeilForDevice();
    v12 = v11;

    v13 = [(NTKModuleView *)self device];
    CLKCeilForDevice();
    v15 = v14;
  }

  else
  {
    v17 = *(&v87 + 1);
    v16 = *&v87;
    if (*&v87 >= *(&v87 + 1))
    {
      v19 = 0;
      v18 = 0;
      v73 = *&v88;
      do
      {
        v20 = [(NTKModularSmallColumnTemplateView *)self _headerFontOfSize:v16];
        v21 = [(NTKModularSmallColumnTemplateView *)self _bodyFontOfSize:v16];
        v22 = v21;
        if (v76)
        {
          v23 = v21;
        }

        else
        {
          v23 = v20;
        }

        if (v76)
        {
          v24 = v20;
        }

        else
        {
          v24 = v21;
        }

        v25 = v23;

        v26 = v24;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __55__NTKModularSmallColumnTemplateView__layoutContentView__block_invoke;
        aBlock[3] = &unk_278786348;
        v82 = v6;
        aBlock[4] = self;
        v19 = v25;
        v81 = v19;
        v27 = _Block_copy(aBlock);
        v77[0] = MEMORY[0x277D85DD0];
        v77[1] = 3221225472;
        v77[2] = __55__NTKModularSmallColumnTemplateView__layoutContentView__block_invoke_2;
        v77[3] = &unk_278786348;
        v79 = v6;
        v77[4] = self;
        v18 = v26;
        v78 = v18;
        v28 = _Block_copy(v77);
        v29 = v28;
        if (v76)
        {
          v15 = (*(v28 + 2))(v28, &v85, &v83, 0.0);
          v12 = v27[2](v27, &Width, &v84);
        }

        else
        {
          v12 = (v27[2])(v27, &Width, &v84, 0.0);
          v15 = (v29)[2](v29, &v85, &v83);
        }

        if (v15 + v12 <= v6)
        {
          v30 = 1;
        }

        else
        {
          v16 = v16 - v73;
          v30 = v16 < v17;
        }
      }

      while (!v30);
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v15 = 0.0;
      v12 = 0.0;
    }

    [(CLKUIColoringLabel *)self->_row1Column1Label setFont:v19];
    [(CLKUIColoringLabel *)self->_row1Column1Label sizeToFit];
    [(CLKUIColoringLabel *)self->_row1Column2Label setFont:v18];
    [(CLKUIColoringLabel *)self->_row1Column2Label sizeToFit];
    [(CLKUIColoringLabel *)self->_row2Column1Label setFont:v19];
    [(CLKUIColoringLabel *)self->_row2Column1Label sizeToFit];
    [(CLKUIColoringLabel *)self->_row2Column2Label setFont:v18];
    [(CLKUIColoringLabel *)self->_row2Column2Label sizeToFit];
    self->_calculatedFontSize = 1;
  }

  if (v15 + v12 > v6)
  {
    if (v76)
    {
      if (v15 > v4)
      {
        v15 = v4;
      }

      v12 = v6 - v15;
    }

    else
    {
      if (v12 > v4)
      {
        v12 = v4;
      }

      v15 = v6 - v12;
    }
  }

  [(CLKUIColoringLabel *)self->_row1Column1Label frame];
  v32 = v31;
  v34 = v33;
  [(CLKUIColoringLabel *)self->_row1Column1Label _lastLineBaseline];
  v36 = v69 - v35;
  v74 = v32;
  v75 = v34;
  rect = v69 - v35;
  [(CLKUIColoringLabel *)self->_row1Column1Label setFrame:v32, v69 - v35, v12, v34];
  [(CLKUIColoringLabel *)self->_row2Column1Label frame];
  v38 = v37;
  v66 = v37;
  v67 = v39;
  v40 = v39;
  [(CLKUIColoringLabel *)self->_row2Column1Label _lastLineBaseline];
  v42 = v69 + *(&v5 + 1) - v41;
  [(CLKUIColoringLabel *)self->_row2Column1Label setFrame:v38, v42, v12, v40];
  [(CLKUIColoringLabel *)self->_row1Column2Label frame];
  v44 = v43;
  v46 = v45;
  v96.origin.x = v32;
  v96.origin.y = v36;
  v96.size.width = v12;
  v96.size.height = v34;
  MinY = CGRectGetMinY(v96);
  if (v85 <= v15)
  {
    v48 = v85;
  }

  else
  {
    v48 = v15;
  }

  [(CLKUIColoringLabel *)self->_row1Column2Label setFrame:v44, MinY, v48, v46];
  [(CLKUIColoringLabel *)self->_row2Column2Label frame];
  v50 = v49;
  v52 = v51;
  v97.origin.x = v66;
  v97.size.height = v67;
  v97.origin.y = v42;
  v97.size.width = v12;
  v53 = CGRectGetMinY(v97);
  if (v83 <= v15)
  {
    v54 = v83;
  }

  else
  {
    v54 = v15;
  }

  [(CLKUIColoringLabel *)self->_row2Column2Label setFrame:v50, v53, v54, v52];
  v55 = [(NTKModuleView *)self device];
  CLKRoundForDevice();
  v57 = v56;

  if (v57 <= v70)
  {
    v58 = v57;
  }

  else
  {
    v58 = v70;
  }

  if (v58 >= *&v72)
  {
    v59 = v58;
  }

  else
  {
    v59 = *&v72;
  }

  v98.origin.x = v74;
  v98.size.height = v75;
  v98.origin.y = rect;
  v98.size.width = v12;
  v60 = *(&v72 + 1) + CGRectGetMaxX(v98);
  if (v60 < v71 - v70 - v15)
  {
    v60 = v71 - v70 - v15;
  }

  if (v60 <= v71 - *&v72 - v15)
  {
    v61 = v60;
  }

  else
  {
    v61 = v71 - *&v72 - v15;
  }

  v62 = v15 - v48;
  if (v8 == 1)
  {
    v63 = v15 - v54;
  }

  else
  {
    v62 = 0.0;
    v63 = 0.0;
  }

  v64 = [(NTKModuleView *)self viewsAndSpacingArrayForSpace:self->_row1Column1Label view:self->_row1Column2Label space:v59 view:v62 + v61];
  [(NTKModuleView *)self naturalHorizontalLayoutForViewsAndSpacing:v64 columnAlignmentSpacing:1];
  v65 = [(NTKModuleView *)self viewsAndSpacingArrayForSpace:self->_row2Column1Label view:self->_row2Column2Label space:v59 view:v63 + v61];
  [(NTKModuleView *)self naturalHorizontalLayoutForViewsAndSpacing:v65 columnAlignmentSpacing:1];
}

void __55__NTKModularSmallColumnTemplateView__layoutContentView__block_invoke(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = *(a1 + 48) - a4;
  [*(*(a1 + 32) + 608) widthForMaxWidth:*(a1 + 40) withFont:v7];
  v8 = [*(a1 + 32) device];
  CLKCeilForDevice();
  *a2 = v9;

  [*(*(a1 + 32) + 624) widthForMaxWidth:*(a1 + 40) withFont:v7];
  v10 = [*(a1 + 32) device];
  CLKCeilForDevice();
  *a3 = v11;
}

void __55__NTKModularSmallColumnTemplateView__layoutContentView__block_invoke_2(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = *(a1 + 48) - a4;
  [*(*(a1 + 32) + 616) widthForMaxWidth:*(a1 + 40) withFont:v7];
  v8 = [*(a1 + 32) device];
  CLKCeilForDevice();
  *a2 = v9;

  [*(*(a1 + 32) + 632) widthForMaxWidth:*(a1 + 40) withFont:v7];
  v10 = [*(a1 + 32) device];
  CLKCeilForDevice();
  *a3 = v11;
}

- (void)_update
{
  v12 = [(NTKModularTemplateView *)self complicationTemplate];
  self->_calculatedFontSize = 0;
  [(NTKModuleView *)self _updateColors];
  row1Column1Label = self->_row1Column1Label;
  v4 = [v12 row1Column1TextProvider];
  [(CLKUIColoringLabel *)row1Column1Label setTextProvider:v4];

  row1Column2Label = self->_row1Column2Label;
  v6 = [v12 row1Column2TextProvider];
  [(CLKUIColoringLabel *)row1Column2Label setTextProvider:v6];

  row2Column1Label = self->_row2Column1Label;
  v8 = [v12 row2Column1TextProvider];
  [(CLKUIColoringLabel *)row2Column1Label setTextProvider:v8];

  row2Column2Label = self->_row2Column2Label;
  v10 = [v12 row2Column2TextProvider];
  [(CLKUIColoringLabel *)row2Column2Label setTextProvider:v10];

  v11 = [(NTKModuleView *)self contentView];
  [v11 setNeedsLayout];
}

@end