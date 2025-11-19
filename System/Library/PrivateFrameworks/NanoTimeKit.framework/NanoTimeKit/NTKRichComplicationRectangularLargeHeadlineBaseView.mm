@interface NTKRichComplicationRectangularLargeHeadlineBaseView
- (NTKRichComplicationRectangularLargeHeadlineBaseView)init;
- (int64_t)tritiumUpdateMode;
- (void)_enumerateLabelsWithBlock:(id)a3;
- (void)_updateTemplateHeaderWithTextProvider:(id)a3 imageProvider:(id)a4 viewData:(id)a5 reason:(int64_t)a6;
- (void)layoutSubviews;
- (void)setPaused:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationRectangularLargeHeadlineBaseView

- (NTKRichComplicationRectangularLargeHeadlineBaseView)init
{
  v21.receiver = self;
  v21.super_class = NTKRichComplicationRectangularLargeHeadlineBaseView;
  v2 = [(NTKRichComplicationRectangularBaseView *)&v21 init];
  if (v2)
  {
    v3 = [off_27877BEB0 alloc];
    v4 = [(CDRichComplicationView *)v2 device];
    v5 = [v3 initWithDevice:v4 useAccentColor:1];
    headerImageView = v2->_headerImageView;
    v2->_headerImageView = v5;

    [(CDRichComplicationImageView *)v2->_headerImageView setPaused:[(CDRichComplicationView *)v2 paused]];
    [(CDRichComplicationImageView *)v2->_headerImageView setFilterProvider:v2];
    v7 = [off_27877BE70 async];
    headerSwiftUIView = v2->_headerSwiftUIView;
    v2->_headerSwiftUIView = v7;

    [(CDComplicationHostingView *)v2->_headerSwiftUIView setFilterProvider:v2];
    [(CDComplicationHostingView *)v2->_headerSwiftUIView setShouldAccentDesaturatedView:1];
    objc_initWeak(&location, v2);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __59__NTKRichComplicationRectangularLargeHeadlineBaseView_init__block_invoke;
    v18 = &unk_27877FDC8;
    objc_copyWeak(&v19, &location);
    [(CDComplicationHostingView *)v2->_headerSwiftUIView setRenderStatsHandler:&v15];
    v9 = [(CDRichComplicationView *)v2 device:v15];
    ___LayoutConstants_block_invoke_44(v9, v9);
    v11 = v10;

    v12 = [(NTKRichComplicationRectangularBaseView *)v2 _createAndAddColoringLabelWithFontSize:1 weight:v11 usesTextProviderTintColoring:*MEMORY[0x277D74420]];
    headerLabel = v2->_headerLabel;
    v2->_headerLabel = v12;

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __59__NTKRichComplicationRectangularLargeHeadlineBaseView_init__block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained displayObserver];
  [v5 complicationDisplay:WeakRetained renderStatsWithTime:a2 cost:a3];
}

- (void)layoutSubviews
{
  v59.receiver = self;
  v59.super_class = NTKRichComplicationRectangularLargeHeadlineBaseView;
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)&v59 layoutSubviews];
  v3 = [(CDRichComplicationView *)self device];
  v4 = ___LayoutConstants_block_invoke_44(v3, v3);
  v6 = v5;
  v58 = v7;

  IsRTL = CLKLayoutIsRTL();
  [(NTKRichComplicationRectangularLargeHeadlineBaseView *)self bounds];
  v55 = v9;
  v56 = v10;
  v12 = v11;
  rect = v13;
  [(NTKRichComplicationRectangularBaseView *)self contentMargin];
  v15 = v14;
  v16 = [(CLKUIColoringLabel *)self->_headerLabel font];
  [v16 ascender];
  v18 = v4 - v17;

  [(CLKUIColoringLabel *)self->_headerLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_headerLabel frame];
  v20 = v19;
  v22 = v21;
  v23 = [(CLKUIColoringLabel *)self->_headerLabel font];
  [v23 lineHeight];
  v25 = v24;

  v60.origin.x = v20;
  v60.origin.y = v18;
  v60.size.width = v22;
  v60.size.height = v25;
  MinY = CGRectGetMinY(v60);
  v61.origin.x = v20;
  v61.origin.y = v18;
  v61.size.width = v22;
  v61.size.height = v25;
  v27 = MinY + (CGRectGetHeight(v61) - v6) * 0.5;
  v28 = [(CDRichComplicationImageView *)self->_headerImageView superview];
  if (v28)
  {
  }

  else
  {
    v29 = [(CDComplicationHostingView *)self->_headerSwiftUIView superview];

    if (!v29)
    {
      goto LABEL_8;
    }
  }

  if (IsRTL)
  {
    v62.origin.x = v55;
    v62.origin.y = v56;
    v62.size.width = v12;
    v62.size.height = rect;
    v30 = CGRectGetWidth(v62) - v15;
    v63.origin.x = 0.0;
    v63.origin.y = v27;
    v63.size.width = v6;
    v63.size.height = v6;
    v31 = v30 - CGRectGetWidth(v63);
    v32 = v27;
    v33 = v6;
    v34 = v6;
  }

  else
  {
    v64.origin.x = v15;
    v64.origin.y = v27;
    v64.size.width = v6;
    v64.size.height = v6;
    MaxX = CGRectGetMaxX(v64);
    v65.size.height = rect;
    v36 = v58 + MaxX;
    v65.origin.x = v55;
    v65.origin.y = v56;
    v65.size.width = v12;
    CGRectGetWidth(v65);
    v31 = v36;
    v32 = v18;
    v33 = v22;
    v34 = v25;
  }

  CGRectGetMinX(*&v31);
LABEL_8:
  v37 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  [(CLKUIColoringLabel *)self->_headerLabel setFrame:v39, v41, v43, v45];
  v66.origin.x = v39;
  v66.origin.y = v41;
  v66.size.width = v43;
  v66.size.height = v45;
  [(CLKUIColoringLabel *)self->_headerLabel setMaxWidth:CGRectGetWidth(v66)];
  v46 = [(CDRichComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  [(CDRichComplicationImageView *)self->_headerImageView setFrame:v48, v50, v52, v54];
  [(CDComplicationHostingView *)self->_headerSwiftUIView setFrame:v48, v50, v52, v54];
}

- (void)_updateTemplateHeaderWithTextProvider:(id)a3 imageProvider:(id)a4 viewData:(id)a5 reason:(int64_t)a6
{
  v10 = a4;
  v11 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __123__NTKRichComplicationRectangularLargeHeadlineBaseView__updateTemplateHeaderWithTextProvider_imageProvider_viewData_reason___block_invoke;
  aBlock[3] = &unk_27877DB10;
  aBlock[4] = self;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __123__NTKRichComplicationRectangularLargeHeadlineBaseView__updateTemplateHeaderWithTextProvider_imageProvider_viewData_reason___block_invoke_2;
  v17[3] = &unk_2787805D8;
  v17[4] = self;
  v17[5] = a6;
  v14 = _Block_copy(v17);
  v15 = v14;
  if (v11)
  {
    [(CDComplicationHostingView *)self->_headerSwiftUIView setViewData:v11];
    [(NTKRichComplicationRectangularLargeHeadlineBaseView *)self addSubview:self->_headerSwiftUIView];
    v16 = v15;
  }

  else
  {
    if (v10)
    {
      [(CDRichComplicationImageView *)self->_headerImageView setImageProvider:v10 reason:a6];
      [(NTKRichComplicationRectangularLargeHeadlineBaseView *)self addSubview:self->_headerImageView];
    }

    else
    {
      (v14[2])(v14);
    }

    v16 = v13;
  }

  v16[2]();
  [(CLKUIColoringLabel *)self->_headerLabel setTextProvider:v12];
}

uint64_t __123__NTKRichComplicationRectangularLargeHeadlineBaseView__updateTemplateHeaderWithTextProvider_imageProvider_viewData_reason___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 536) setViewData:0];
  v2 = *(*(a1 + 32) + 536);

  return [v2 removeFromSuperview];
}

uint64_t __123__NTKRichComplicationRectangularLargeHeadlineBaseView__updateTemplateHeaderWithTextProvider_imageProvider_viewData_reason___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 528) setImageProvider:0 reason:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 528);

  return [v2 removeFromSuperview];
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = NTKRichComplicationRectangularLargeHeadlineBaseView;
  [(CDRichComplicationView *)&v5 setPaused:?];
  [(CDRichComplicationImageView *)self->_headerImageView setPaused:v3];
  [(CDComplicationHostingView *)self->_headerSwiftUIView setPaused:v3];
}

- (int64_t)tritiumUpdateMode
{
  v3 = [(CDRichComplicationImageView *)self->_headerImageView tritiumUpdateMode];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
    if (v5 >= 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKRichComplicationRectangularLargeHeadlineBaseView;
    v6 = [(CDRichComplicationTemplateView *)&v8 tritiumUpdateMode];
  }

  return v6;
}

- (void)_enumerateLabelsWithBlock:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationRectangularLargeHeadlineBaseView;
  v4 = a3;
  [(CDRichComplicationView *)&v5 _enumerateLabelsWithBlock:v4];
  v4[2](v4, self->_headerLabel);
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  [(CLKUIColoringLabel *)self->_headerLabel transitionToMonochromeWithFraction:2 style:?];
  [(CDRichComplicationImageView *)self->_headerImageView transitionToMonochromeWithFraction:a3];
  headerSwiftUIView = self->_headerSwiftUIView;

  [(CDComplicationHostingView *)headerSwiftUIView transitionToMonochromeWithFraction:a3];
}

- (void)updateMonochromeColor
{
  [(CLKUIColoringLabel *)self->_headerLabel updateMonochromeColorWithStyle:2];
  [(CDRichComplicationImageView *)self->_headerImageView updateMonochromeColor];
  headerSwiftUIView = self->_headerSwiftUIView;

  [(CDComplicationHostingView *)headerSwiftUIView updateMonochromeColor];
}

@end