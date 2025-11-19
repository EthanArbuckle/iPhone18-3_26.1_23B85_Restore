@interface NTKUtilityImageAndLabelsComplicationView
- (BOOL)_isViewVisible:(id)a3;
- (BOOL)_shouldLayoutWithImageView;
- (NTKUtilityImageAndLabelsComplicationView)initWithFrame:(CGRect)a3;
- (double)_gapBetweenView:(id)a3 nextView:(id)a4;
- (double)_widthThatFits;
- (void)_enumerateColoringStackedImagesViewsWithBlock:(id)a3;
- (void)_enumerateColoringViewsWithBlock:(id)a3;
- (void)_layoutSubviewsHorizontally:(id)a3;
- (void)_setLabelAttributedText:(id)a3;
- (void)_setLabelText:(id)a3;
- (void)_setLabelTextProvider:(id)a3;
- (void)_setSecondLabelText:(id)a3;
- (void)_updateFirstLabelMaxSize;
- (void)_updateWithImageProvider:(id)a3;
- (void)layoutSubviews;
@end

@implementation NTKUtilityImageAndLabelsComplicationView

- (NTKUtilityImageAndLabelsComplicationView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = NTKUtilityImageAndLabelsComplicationView;
  v3 = [(NTKUtilityComplicationView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(NTKUtilityComplicationView *)v3 _newStandardLabelSubview];
    [(NTKUtilityImageAndLabelsComplicationView *)v4 setFirstLabel:v5];

    v6 = [(NTKUtilityComplicationView *)v4 _newStandardLabelSubview];
    [(NTKUtilityImageAndLabelsComplicationView *)v4 setSecondLabel:v6];
  }

  return v4;
}

- (void)layoutSubviews
{
  v49.receiver = self;
  v49.super_class = NTKUtilityImageAndLabelsComplicationView;
  [(NTKUtilityComplicationView *)&v49 layoutSubviews];
  [(NTKUtilityImageAndLabelsComplicationView *)self bounds];
  v4 = v3;
  v5 = [(NTKUtilityImageAndLabelsComplicationView *)self firstLabel];
  [v5 sizeToFit];

  v6 = [(NTKUtilityImageAndLabelsComplicationView *)self secondLabel];
  [v6 sizeToFit];

  v7 = [(NTKUtilityImageAndLabelsComplicationView *)self imageView];
  [v7 sizeToFit];

  [(NTKUtilityComplicationView *)self layoutLabelVertically:self->_firstLabel];
  [(NTKUtilityComplicationView *)self layoutLabelVertically:self->_secondLabel];
  v8 = [(NTKUtilityImageAndLabelsComplicationView *)self firstLabel];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [(NTKUtilityImageAndLabelsComplicationView *)self secondLabel];
  [v17 frame];

  v18 = [(NTKUtilityImageAndLabelsComplicationView *)self imageView];
  [v18 frame];
  v20 = v19;
  v22 = v21;

  [(NTKUtilityComplicationView *)self _imageViewOriginYWithBaseImageSize:v20 labelFrame:v22, v10, v12, v14, v16];
  if ([(NTKUtilityComplicationView *)self shouldUsePlatterInset])
  {
    v23 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v23, v47);
    v4 = v4 + v48 * -2.0;
  }

  if (v20 > 0.0)
  {
    v24 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v24, v45);
    v4 = v4 - (v20 - v46);
  }

  v25 = [(NTKUtilityComplicationView *)self device];
  ___LayoutConstants_block_invoke_70(v25, v43);
  v26 = v4 - v14 - v44;

  if (v26 >= 0.0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0.0;
  }

  if (v14 >= v4)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v27;
  }

  v29 = [(NTKUtilityImageAndLabelsComplicationView *)self imageView];
  v30 = [(NTKUtilityComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [v29 setFrame:?];

  v31 = [(NTKUtilityImageAndLabelsComplicationView *)self firstLabel];
  v32 = [(NTKUtilityComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [v31 setFrame:?];

  v33 = [(NTKUtilityImageAndLabelsComplicationView *)self secondLabel];
  v34 = [(NTKUtilityComplicationView *)self device];
  CLKPixelAlignRectForDevice();
  [v33 setFrame:?];

  v35 = [(NTKUtilityImageAndLabelsComplicationView *)self secondLabel];
  [v35 setMaxWidth:v28];

  IsRTL = CLKLayoutIsRTL();
  if (IsRTL)
  {
    p_secondLabel = &self->_secondLabel;
  }

  else
  {
    p_secondLabel = &self->_firstLabel;
  }

  if (IsRTL)
  {
    p_firstLabel = &self->_firstLabel;
  }

  else
  {
    p_firstLabel = &self->_secondLabel;
  }

  v39 = [MEMORY[0x277CBEB18] arrayWithObjects:{*p_secondLabel, *p_firstLabel, 0}];
  if (self->_imageView)
  {
    v40 = [(NTKUtilityComplicationView *)self placement];
    if ((v40 & 8) != 0 || (v41 = CLKLayoutIsRTL(), v42 = 0, (v40 & 2) == 0) && v41)
    {
      v42 = [v39 count];
    }

    [v39 insertObject:self->_imageView atIndex:v42];
  }

  [(NTKUtilityImageAndLabelsComplicationView *)self _layoutSubviewsHorizontally:v39];
}

- (BOOL)_shouldLayoutWithImageView
{
  v3 = [(CDComplicationImageView *)self->_imageView isHidden]^ 1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [(CDComplicationImageView *)self->_imageView hasMonochromeImage]& v3;
  }

  return v3;
}

- (void)_updateFirstLabelMaxSize
{
  [(NTKUtilityComplicationView *)self maxSize];
  v4 = v3;
  if ([(NTKUtilityImageAndLabelsComplicationView *)self _shouldLayoutWithImageView])
  {
    [(CDComplicationImageView *)self->_imageView sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    v6 = v5;
    v7 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v7, v9);
    v4 = v4 - (v6 + v10);
  }

  firstLabel = self->_firstLabel;

  [(CLKUIColoringLabel *)firstLabel setMaxWidth:v4];
}

- (double)_widthThatFits
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  [(CLKUIColoringLabel *)self->_firstLabel sizeThatFits:*MEMORY[0x277CBF3A8], v4];
  v6 = v5;
  if ([(NTKUtilityImageAndLabelsComplicationView *)self _shouldLayoutWithImageView])
  {
    [(CDComplicationImageView *)self->_imageView sizeThatFits:v3, v4];
    v8 = v7;
    v9 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v9, v18);
    v6 = v6 + v8 + v19;
  }

  v10 = [(CLKUIColoringLabel *)self->_secondLabel text];
  if (v10)
  {
    v11 = v10;
    v12 = [(CLKUIColoringLabel *)self->_secondLabel isHidden];

    if ((v12 & 1) == 0)
    {
      [(CLKUIColoringLabel *)self->_secondLabel sizeThatFits:v3, v4];
      v14 = v13;
      v15 = [(NTKUtilityComplicationView *)self device];
      ___LayoutConstants_block_invoke_70(v15, v17);
      v6 = v6 + v14 + v17[13];
    }
  }

  return v6;
}

- (void)_layoutSubviewsHorizontally:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NTKUtilityImageAndLabelsComplicationView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([(NTKUtilityComplicationView *)self shouldUsePlatterInset])
  {
    v13 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v13, v49);
    v14 = v50;

    v6 = v6 + v14;
    v10 = v10 + v14 * -2.0;
  }

  if (([(NTKUtilityComplicationView *)self placement]& 2) == 0)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v15 = v4;
    v16 = [v15 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v46;
      v20 = 0.0;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v46 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v45 + 1) + 8 * i);
          if ([(NTKUtilityImageAndLabelsComplicationView *)self _isViewVisible:v22, v45])
          {
            [v22 frame];
            v20 = v20 + v23;
            if (v18)
            {
              [(NTKUtilityImageAndLabelsComplicationView *)self _gapBetweenView:v18 nextView:v22];
              v20 = v20 + v24;
            }

            v25 = v22;

            v18 = v25;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
      v20 = 0.0;
    }

    v26 = [(NTKUtilityComplicationView *)self placement];
    v27 = v6;
    v28 = v8;
    v29 = v10;
    v30 = v12;
    if ((v26 & 8) != 0)
    {
      v6 = CGRectGetMaxX(*&v27) - v20;
    }

    else
    {
      MinX = CGRectGetMinX(*&v27);
      v32 = [(NTKUtilityComplicationView *)self device];
      CLKFloorForDevice();
      v6 = MinX + v33;
    }
  }

  if ([v4 count])
  {
    v34 = 0;
    v35 = 0;
    v36 = 0.0;
    v37 = 0.0;
    do
    {
      v38 = [v4 objectAtIndexedSubscript:v34];
      if ([(NTKUtilityImageAndLabelsComplicationView *)self _isViewVisible:v38])
      {
        [v38 frame];
        v40 = v39;
        v41 = v6;
        if (v35)
        {
          [(NTKUtilityImageAndLabelsComplicationView *)self _gapBetweenView:v35 nextView:v38];
          v41 = v37 + v36 + v42;
        }

        v43 = [(NTKUtilityComplicationView *)self device];
        CLKPixelAlignRectForDevice();
        [v38 setFrame:?];

        v44 = v38;
        v35 = v44;
        v37 = v41;
        v36 = v40;
      }

      ++v34;
    }

    while ([v4 count] > v34);
  }
}

- (double)_gapBetweenView:(id)a3 nextView:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();
  v10 = &unk_28A87A610;
  if (isKindOfClass & 1) != 0 && (v9)
  {
    v11 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v11, v17);
    v12 = &v18;
LABEL_8:
    v13 = *v12;

    goto LABEL_9;
  }

  v13 = 0.0;
  if (((isKindOfClass | v9) & 1) != 0 && (([v6 conformsToProtocol:v10] & 1) != 0 || objc_msgSend(v7, "conformsToProtocol:", v10)))
  {
    v11 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v11, &v15);
    v12 = &v16;
    goto LABEL_8;
  }

LABEL_9:

  return v13;
}

- (BOOL)_isViewVisible:(id)a3
{
  v3 = a3;
  if ([v3 isHidden])
  {
    v4 = 0;
  }

  else
  {
    [v3 bounds];
    v4 = v5 > 0.0;
  }

  return v4;
}

- (void)_setLabelTextProvider:(id)a3
{
  v4 = a3;
  v5 = [(NTKUtilityImageAndLabelsComplicationView *)self firstLabel];
  [v5 setTextProvider:v4];

  [(NTKUtilityImageAndLabelsComplicationView *)self setNeedsLayout];
  v6 = [(NTKUtilityComplicationView *)self displayObserver];
  [v6 complicationDisplayNeedsResize:self];
}

- (void)_setLabelText:(id)a3
{
  v4 = a3;
  v5 = [(NTKUtilityImageAndLabelsComplicationView *)self firstLabel];
  [v5 setTextProvider:0];

  v6 = [(NTKUtilityImageAndLabelsComplicationView *)self firstLabel];
  [v6 setText:v4];

  [(NTKUtilityImageAndLabelsComplicationView *)self setNeedsLayout];
  v7 = [(NTKUtilityComplicationView *)self displayObserver];
  [v7 complicationDisplayNeedsResize:self];
}

- (void)_setLabelAttributedText:(id)a3
{
  v4 = a3;
  v5 = [(NTKUtilityImageAndLabelsComplicationView *)self firstLabel];
  [v5 setTextProvider:0];

  v6 = [(NTKUtilityImageAndLabelsComplicationView *)self firstLabel];
  [v6 setAttributedText:v4];

  [(NTKUtilityImageAndLabelsComplicationView *)self setNeedsLayout];
  v7 = [(NTKUtilityComplicationView *)self displayObserver];
  [v7 complicationDisplayNeedsResize:self];
}

- (void)_setSecondLabelText:(id)a3
{
  v4 = a3;
  v5 = [(NTKUtilityImageAndLabelsComplicationView *)self secondLabel];
  [v5 setTextProvider:0];

  v6 = [(NTKUtilityImageAndLabelsComplicationView *)self secondLabel];
  [v6 setText:v4];

  [(NTKUtilityImageAndLabelsComplicationView *)self setNeedsLayout];
  v7 = [(NTKUtilityComplicationView *)self displayObserver];
  [v7 complicationDisplayNeedsResize:self];
}

- (void)_updateWithImageProvider:(id)a3
{
  v8 = a3;
  v4 = [off_27877BE78 existingImageView:self->_imageView supportsImageProvider:?];
  imageView = self->_imageView;
  if ((v4 & 1) == 0)
  {
    [(CDComplicationImageView *)self->_imageView removeFromSuperview];
    v6 = [off_27877BE78 viewForImageProvider:v8];
    v7 = self->_imageView;
    self->_imageView = v6;

    imageView = self->_imageView;
    if (imageView)
    {
      [(NTKUtilityComplicationView *)self _updateImageViewAlpha:?];
      [(NTKUtilityImageAndLabelsComplicationView *)self addSubview:self->_imageView];
      imageView = self->_imageView;
    }
  }

  [(NTKUtilityComplicationView *)self _updateImageViewColor:imageView];
  [(CDComplicationImageView *)self->_imageView setImageProvider:v8];
  [(NTKUtilityImageAndLabelsComplicationView *)self _updateFirstLabelMaxSize];
}

- (void)_enumerateColoringViewsWithBlock:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
  (*v4)(v6, self->_secondLabel);
  (*v4)(v6, self->_imageView);
}

- (void)_enumerateColoringStackedImagesViewsWithBlock:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4[2](v4, self->_imageView);
  }
}

@end