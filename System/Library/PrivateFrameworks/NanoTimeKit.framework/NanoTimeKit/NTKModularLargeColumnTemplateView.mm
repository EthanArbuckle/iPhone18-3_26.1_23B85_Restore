@interface NTKModularLargeColumnTemplateView
- (id)_newBodyLabelSubview;
- (id)_newHeaderLabelSubview;
- (id)_newLabelSubviewWithFont:(id)font;
- (void)_layoutRowsOfColumnsWithAlignment:(int64_t)alignment;
- (void)_positionLeadingAlignedImageView:(id)view label:(id)label withBaselineOffset:(double)offset;
@end

@implementation NTKModularLargeColumnTemplateView

- (void)_positionLeadingAlignedImageView:(id)view label:(id)label withBaselineOffset:(double)offset
{
  viewCopy = view;
  labelCopy = label;
  if (viewCopy)
  {
    [viewCopy frame];
    if (v9 > 0.0)
    {
      font = [labelCopy font];
      [font capHeight];
      device = [(NTKModuleView *)self device];
      CLKRoundForDevice();
      v13 = offset - v12;

      [viewCopy setCenter:{0.0, v13}];
    }
  }

  [labelCopy frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  font2 = [labelCopy font];
  [font2 ascender];
  v22 = offset - v21;

  [labelCopy setFrame:{v15, v22, v17, v19}];
  device2 = [(NTKModuleView *)self device];
  ___LayoutConstants_block_invoke_55(device2, &v30);
  v24 = *(&v30 + 1);
  device3 = [(NTKModuleView *)self device];
  ___LayoutConstants_block_invoke_55(device3, &v28);
  v26 = [(NTKModuleView *)self viewsAndSpacingArrayForSpace:viewCopy view:labelCopy space:v24 view:v29];

  [(NTKModuleView *)self naturalHorizontalLayoutForViewsAndSpacing:v26 columnAlignmentSpacing:0];
}

- (void)_layoutRowsOfColumnsWithAlignment:(int64_t)alignment
{
  device = [(NTKModuleView *)self device];
  ___LayoutConstants_block_invoke_55(device, &v40);
  v6 = v41;

  device2 = [(NTKModuleView *)self device];
  ___LayoutConstants_block_invoke_55(device2, &v39);
  v8 = *(&v39 + 1);

  device3 = [(NTKModuleView *)self device];
  ___LayoutConstants_block_invoke_55(device3, &v37);
  v10 = v38;

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __71__NTKModularLargeColumnTemplateView__layoutRowsOfColumnsWithAlignment___block_invoke;
  v24[3] = &unk_278786208;
  v24[8] = v10;
  v24[9] = v6;
  v24[4] = self;
  v24[5] = &v33;
  v24[6] = &v29;
  v24[7] = &v25;
  [(NTKModularLargeColumnTemplateView *)self _enumerateColumnRowsWithBlock:v24];
  contentView = [(NTKModuleView *)self contentView];
  [contentView bounds];
  v13 = v12;

  device4 = [(NTKModuleView *)self device];
  ___LayoutConstants_block_invoke_55(device4, &v22);
  v15 = v23;

  v16 = 0.0;
  if (!self->_useNoColumnPadding)
  {
    device5 = [(NTKModuleView *)self device];
    ___LayoutConstants_block_invoke_55(device5, &v20);
    v16 = v21;
  }

  v18 = v34[3];
  if (v15 + v16 + v8 + v18 + v26[3] > v13)
  {
    v18 = v30[3];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__NTKModularLargeColumnTemplateView__layoutRowsOfColumnsWithAlignment___block_invoke_2;
  v19[3] = &unk_278786230;
  v19[5] = v10;
  *&v19[6] = v18;
  v19[4] = self;
  *&v19[7] = v13 - v8 - v18 - v16 - v15;
  v19[8] = alignment;
  *&v19[9] = v8;
  *&v19[10] = v16;
  *&v19[11] = v13;
  *&v19[12] = v15;
  [(NTKModularLargeColumnTemplateView *)self _enumerateColumnRowsWithBlock:v19];
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
}

void __71__NTKModularLargeColumnTemplateView__layoutRowsOfColumnsWithAlignment___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = a2;
  v7 = a3;
  v8 = a4;
  v9 = 0.0;
  if (v28)
  {
    [v28 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    if (v10 > 0.0)
    {
      v9 = v10 + *(a1 + 64);
    }
  }

  [v7 widthForMaxWidth:*(a1 + 72) - v9];
  v11 = [*(a1 + 32) device];
  CLKCeilForDevice();
  v13 = v12;

  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 24);
  v16 = *(a1 + 72);
  if (v13 <= v16)
  {
    v16 = v13;
  }

  if (v15 < v16)
  {
    v15 = v16;
  }

  *(v14 + 24) = v15;
  [v7 minimumWidth];
  v17 = [*(a1 + 32) device];
  CLKCeilForDevice();
  v19 = v18;

  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 24);
  v22 = *(a1 + 72);
  if (v19 <= v22)
  {
    v22 = v19;
  }

  if (v21 < v22)
  {
    v21 = v22;
  }

  *(v20 + 24) = v21;
  [v8 minimumWidth];
  v23 = [*(a1 + 32) device];
  CLKCeilForDevice();
  v25 = v24;

  v26 = *(*(a1 + 56) + 8);
  v27 = *(v26 + 24);
  if (v27 < v25)
  {
    v27 = v25;
  }

  *(v26 + 24) = v27;
}

void __71__NTKModularLargeColumnTemplateView__layoutRowsOfColumnsWithAlignment___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, double a5)
{
  v23 = a2;
  v9 = a4;
  v10 = a3;
  [v23 sizeToFit];
  v11 = 0.0;
  if (v23)
  {
    [v23 frame];
    if (v12 > 0.0)
    {
      v11 = v12 + *(a1 + 40);
    }
  }

  [v10 setMaxWidth:*(a1 + 48) - v11];
  [v10 sizeToFit];
  [v10 frame];
  [v10 setFrame:?];
  [*(a1 + 32) _positionLeadingAlignedImageView:v23 label:v10 withBaselineOffset:a5];

  [v9 setMaxWidth:*(a1 + 56)];
  [v9 sizeToFit];
  [v9 frame];
  x = v25.origin.x;
  height = v25.size.height;
  Width = CGRectGetWidth(v25);
  if (Width <= *(a1 + 56))
  {
    v16 = Width;
  }

  else
  {
    v16 = *(a1 + 56);
  }

  v17 = [v9 font];
  [v17 ascender];
  v19 = a5 - v18;

  [v9 setFrame:{x, v19, v16, height}];
  if (*(a1 + 64))
  {
    v20 = *(a1 + 88) - *(a1 + 96);
    v26.origin.x = x;
    v26.origin.y = v19;
    v26.size.width = v16;
    v26.size.height = height;
    v21 = v20 - CGRectGetWidth(v26);
  }

  else
  {
    v21 = *(a1 + 72) + *(a1 + 48) + *(a1 + 80);
  }

  v22 = [*(a1 + 32) viewsAndSpacingArrayForSpace:v9 view:v21];
  [*(a1 + 32) naturalHorizontalLayoutForViewsAndSpacing:v22 columnAlignmentSpacing:1];
}

- (id)_newLabelSubviewWithFont:(id)font
{
  fontCopy = font;
  v5 = objc_alloc_init(off_27877BEF8);
  [v5 setFont:fontCopy];
  [v5 setUppercase:0];
  timeTravelDate = [(NTKModularTemplateView *)self timeTravelDate];
  [v5 setInTimeTravel:timeTravelDate != 0];

  [v5 setNowProvider:&__block_literal_global_141];
  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __62__NTKModularLargeColumnTemplateView__newLabelSubviewWithFont___block_invoke_2;
  v12 = &unk_27877DC58;
  objc_copyWeak(&v13, &location);
  [v5 setNeedsResizeHandler:&v9];
  v7 = [(NTKModuleView *)self contentView:v9];
  [v7 addSubview:v5];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v5;
}

void __62__NTKModularLargeColumnTemplateView__newLabelSubviewWithFont___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained contentView];
  [v1 setNeedsLayout];
}

- (id)_newHeaderLabelSubview
{
  v3 = MEMORY[0x277CBBB08];
  device = [(NTKModuleView *)self device];
  ___LayoutConstants_block_invoke_55(device, v8);
  v5 = [v3 systemFontOfSize:v8[0] weight:*MEMORY[0x277D74410]];

  v6 = [(NTKModularLargeColumnTemplateView *)self _newLabelSubviewWithFont:v5];
  return v6;
}

- (id)_newBodyLabelSubview
{
  v3 = MEMORY[0x277CBBB08];
  device = [(NTKModuleView *)self device];
  ___LayoutConstants_block_invoke_55(device, v8);
  v5 = [v3 systemFontOfSize:v8[0]];

  v6 = [(NTKModularLargeColumnTemplateView *)self _newLabelSubviewWithFont:v5];
  return v6;
}

@end