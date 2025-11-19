@interface NTKUtilityFlatComplicationView
+ (BOOL)handlesComplicationTemplate:(id)a3;
+ (void)circleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 interior:(BOOL *)a6 forPlacement:(unint64_t)a7 forDevice:(id)a8;
- (BOOL)_shouldLayoutWithImageView;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)boundingSizeOfCurrentComplicationTemplate;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKUtilityFlatComplicationView)initWithFrame:(CGRect)a3;
- (NTKUtilityFlatComplicationViewDelegate)delegate;
- (double)_widthThatFits;
- (double)circleRadius;
- (double)maxAngularWidth;
- (id)_backgroundPlatterImage;
- (id)backgroundColorForView:(id)a3;
- (id)colorForView:(id)a3 accented:(BOOL)a4;
- (id)filterForView:(id)a3 style:(int64_t)a4;
- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (id)filtersForView:(id)a3 style:(int64_t)a4;
- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (unint64_t)imagePlacement;
- (void)_enumerateColoringStackedImagesViewsWithBlock:(id)a3;
- (void)_enumerateColoringViewsWithBlock:(id)a3;
- (void)_updateForTemplateChange;
- (void)_updateHighlightViewCornerRadius;
- (void)_updateLabelMaxWidth;
- (void)layoutSubviews;
- (void)setCircleRadius:(double)a3;
- (void)setForegroundColor:(id)a3;
- (void)setMaxAngularWidth:(double)a3;
- (void)setPath:(id)a3;
- (void)setPlacement:(unint64_t)a3;
- (void)setShouldUseBackgroundPlatter:(BOOL)a3;
- (void)setTextLayoutStyle:(unint64_t)a3;
- (void)setTextWidthInRadians:(double)a3;
- (void)setUseBlockyHighlightCorners:(BOOL)a3;
- (void)updateTextWidthIfNeeded;
@end

@implementation NTKUtilityFlatComplicationView

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

- (NTKUtilityFlatComplicationView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = NTKUtilityFlatComplicationView;
  v3 = [(NTKUtilityComplicationView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(NTKUtilityComplicationView *)v3 _newStandardLabelSubview];
    label = v4->_label;
    v4->_label = v5;

    objc_storeStrong(&v4->_activeLabel, v4->_label);
    [(NTKUtilityFlatComplicationView *)v4 _updateHighlightViewCornerRadius];
  }

  return v4;
}

+ (void)circleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 interior:(BOOL *)a6 forPlacement:(unint64_t)a7 forDevice:(id)a8
{
  v8 = a7;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  memset(v26, 0, sizeof(v26));
  v21 = a8;
  ___LayoutConstants_block_invoke_70(v21, v26);
  if (a6)
  {
    *a6 = 0;
  }

  v13 = *&v28;
  v14 = *(&v27 + 1);
  v15 = *&v29;
  v16 = *(&v28 + 1);
  if (v8)
  {
    ___LayoutConstants_block_invoke_70(v21, v24);
    v18 = v25;
    v17 = 0;
    if ((v8 & 2) == 0)
    {
      if ((v8 & 8) != 0)
      {
        v14 = -v14;
      }

      else
      {
        v16 = v15;
        v14 = v13;
      }
    }

    if (a3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if ((v8 & 4) == 0)
    {
      v17 = 0;
      v16 = 0.0;
      v14 = 0.0;
      v18 = 0;
      if (!a3)
      {
        goto LABEL_13;
      }

LABEL_12:
      *a3 = v18;
      goto LABEL_13;
    }

    ___LayoutConstants_block_invoke_70(v21, v22);
    v18 = v23;
    if ((v8 & 8) != 0)
    {
      v19 = v16;
    }

    else
    {
      v19 = v15;
    }

    if ((v8 & 8) != 0)
    {
      v20 = v14;
    }

    else
    {
      v20 = v13;
    }

    v17 = 1;
    if ((v8 & 2) != 0)
    {
      v14 = -v14;
    }

    else
    {
      v16 = v19;
      v14 = v20;
    }

    if (a3)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  if (a4)
  {
    *a4 = v14;
  }

  if (a5)
  {
    *a5 = v16;
  }

  if (a6)
  {
    *a6 = v17;
  }
}

- (void)updateTextWidthIfNeeded
{
  v3 = [(CLKUICurvedColoringLabel *)self->_curvedLabel path];

  if (!v3)
  {
    v11 = 0.0;
    v12 = 0.0;
    [(CLKUICurvedColoringLabel *)self->_curvedLabel sizeToFit];
    [(CLKUICurvedColoringLabel *)self->_curvedLabel getTextCenter:0 startAngle:&v12 endAngle:&v11];
    v4 = fabs(v12);
    v5 = fabs(v11);
    v11 = v5;
    v12 = v4;
    if (v4 >= v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    if (v4 >= v5)
    {
      v4 = v5;
    }

    v7 = v6 - v4;
    v8 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v8, v9);
    [(NTKUtilityFlatComplicationView *)self setTextWidthInRadians:v7 + v10];
  }
}

- (void)setTextWidthInRadians:(double)a3
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_textWidthInRadians = a3;
    v5 = [(NTKUtilityFlatComplicationView *)self delegate];
    if (v5)
    {
      v6 = v5;
      v7 = [(NTKUtilityFlatComplicationView *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = [(NTKUtilityFlatComplicationView *)self delegate];
        [v9 utilityComplicationView:self didChangeTextWidth:self->_textWidthInRadians];
      }
    }
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  curvedLabel = self->_curvedLabel;
  if (curvedLabel)
  {
    v9 = [(CLKUICurvedColoringLabel *)curvedLabel path];

    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v28 = 0.0;
      v29 = 0.0;
      v26 = 0.0;
      v27 = 0.0;
      [(CLKUICurvedColoringLabel *)self->_curvedLabel getTextCenter:&v28 startAngle:&v27 endAngle:&v26];
      [(CLKUICurvedColoringLabel *)self->_curvedLabel convertPoint:self fromView:x, y];
      v15 = v14;
      v17 = v16;
      [(CLKUICurvedColoringLabel *)self->_curvedLabel circleRadius];
      v19 = v18;
      v20 = [(CLKUICurvedColoringLabel *)self->_curvedLabel interior];
      v22 = v26;
      v21 = v27;
      v23 = [(NTKUtilityComplicationView *)self device];
      ___LayoutConstants_block_invoke_70(v23, v31);
      v10 = NTKUtilityComplicationCurvedPointInside(v20, v15, v17, v19, v28, v29, v21, v22, v24, v32, v33, v34, v35);
    }
  }

  else
  {
    v11 = [(NTKUtilityComplicationView *)self complicationTemplate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(NTKUtilityFlatComplicationView *)self bounds];
      v38 = CGRectInset(v37, 0.0, -20.0);
      v36.x = x;
      v36.y = y;
      v13 = CGRectContainsPoint(v38, v36);
    }

    else
    {
      v30.receiver = self;
      v30.super_class = NTKUtilityFlatComplicationView;
      v13 = [(NTKUtilityComplicationView *)&v30 pointInside:v7 withEvent:x, y];
    }

    v10 = v13;
  }

  return v10;
}

- (void)setTextLayoutStyle:(unint64_t)a3
{
  v5 = [(NTKUtilityComplicationView *)self device];
  v6 = [v5 deviceCategory];

  if (v6 == 1)
  {
    a3 = 0;
  }

  v7 = [(NTKUtilityComplicationView *)self textLayoutStyle];
  v27.receiver = self;
  v27.super_class = NTKUtilityFlatComplicationView;
  [(NTKUtilityComplicationView *)&v27 setTextLayoutStyle:a3];
  if ([(NTKUtilityComplicationView *)self textLayoutStyle]!= v7)
  {
    if (a3 == 2)
    {
      label = self->_label;
      if (label)
      {
        [(CLKUIColoringLabel *)label removeFromSuperview];
        v15 = self->_label;
        self->_label = 0;

        v16 = [(NTKUtilityComplicationView *)self highlightView];
        [v16 removeFromSuperview];
      }

      v17 = [(NTKUtilityComplicationView *)self _newStandardCurvedLabelSubview];
      curvedLabel = self->_curvedLabel;
      self->_curvedLabel = v17;

      [(CLKUICurvedColoringLabel *)self->_curvedLabel setFilterProvider:self];
      objc_storeStrong(&self->_activeLabel, self->_curvedLabel);
      v13 = [(NTKUtilityComplicationView *)self _newCurvedPathHighlightView];
      goto LABEL_12;
    }

    if (a3 == 1)
    {
      v8 = self->_label;
      if (v8)
      {
        [(CLKUIColoringLabel *)v8 removeFromSuperview];
        v9 = self->_label;
        self->_label = 0;

        v10 = [(NTKUtilityComplicationView *)self highlightView];
        [v10 removeFromSuperview];
      }

      v11 = [(NTKUtilityComplicationView *)self _newStandardCurvedLabelSubview];
      v12 = self->_curvedLabel;
      self->_curvedLabel = v11;

      [(CLKUICurvedColoringLabel *)self->_curvedLabel setFilterProvider:self];
      objc_storeStrong(&self->_activeLabel, self->_curvedLabel);
      v13 = [(NTKUtilityComplicationView *)self _newCurvedCircularHighlightView];
LABEL_12:
      curvedHighlightView = self->_curvedHighlightView;
      self->_curvedHighlightView = v13;

      [(NTKUtilityComplicationView *)self setHighlightView:self->_curvedHighlightView];
      return;
    }

    v20 = self->_curvedLabel;
    if (v20)
    {
      [(CLKUICurvedColoringLabel *)v20 removeFromSuperview];
      v21 = self->_curvedLabel;
      self->_curvedLabel = 0;

      v22 = [(NTKUtilityComplicationView *)self highlightView];
      [v22 removeFromSuperview];

      v23 = self->_curvedHighlightView;
      self->_curvedHighlightView = 0;
    }

    v24 = [(NTKUtilityComplicationView *)self _newStandardLabelSubview];
    v25 = self->_label;
    self->_label = v24;

    objc_storeStrong(&self->_activeLabel, self->_label);
    v26 = [(NTKUtilityComplicationView *)self _newHighlightView];
    [(NTKUtilityComplicationView *)self setHighlightView:v26];
  }
}

- (void)setForegroundColor:(id)a3
{
  v4 = a3;
  v5 = [(NTKUtilityComplicationView *)self foregroundColor];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = NTKUtilityFlatComplicationView;
    [(NTKUtilityComplicationView *)&v7 setForegroundColor:v4];
  }
}

- (void)setPlacement:(unint64_t)a3
{
  v21.receiver = self;
  v21.super_class = NTKUtilityFlatComplicationView;
  [(NTKUtilityComplicationView *)&v21 setPlacement:?];
  if ([(NTKUtilityComplicationView *)self textLayoutStyle]== 1)
  {
    v19 = 0.0;
    v20 = 0.0;
    v18 = 0.0;
    v17 = 0;
    v5 = objc_opt_class();
    v6 = [(NTKUtilityComplicationView *)self device];
    [v5 circleRadius:&v20 centerAngle:&v19 maxAngularWidth:&v18 interior:&v17 forPlacement:a3 forDevice:v6];

    [(CLKUICurvedColoringLabel *)self->_curvedLabel setCircleRadius:v20];
    [(CLKUICurvedColoringLabel *)self->_curvedLabel setInterior:v17];
    [(CLKUICurvedColoringLabel *)self->_curvedLabel setCenterAngle:v19];
    [(CLKUICurvedColoringLabel *)self->_curvedLabel setMaxAngularWidth:v18];
    if (![(NTKUtilityComplicationView *)self isPlacementForTopBezelComplication])
    {
      v7 = v17;
      v8 = [(NTKUtilityComplicationView *)self device];
      v9 = v8;
      if (v7)
      {
        ___LayoutConstants_block_invoke_70(v8, v15);
        v10 = &v16;
      }

      else
      {
        ___LayoutConstants_block_invoke_70(v8, &v13);
        v10 = &v14;
      }

      [(CLKUICurvedColoringLabel *)self->_curvedLabel setTracking:*v10];
    }

    v11 = [(NTKUtilityFlatComplicationView *)self imagePlacement];
    curvedLabel = self->_curvedLabel;
  }

  else
  {
    if ([(NTKUtilityComplicationView *)self textLayoutStyle]!= 2)
    {
      return;
    }

    [(CLKUICurvedColoringLabel *)self->_curvedLabel setPath:self->_path];
    v11 = [(NTKUtilityFlatComplicationView *)self imagePlacement];
    curvedLabel = self->_curvedLabel;
  }

  [(CLKUICurvedColoringLabel *)curvedLabel setImagePlacement:v11];
}

- (void)setMaxAngularWidth:(double)a3
{
  v5 = [(CLKUICurvedColoringLabel *)self->_curvedLabel path];

  if (!v5)
  {
    curvedLabel = self->_curvedLabel;

    [(CLKUICurvedColoringLabel *)curvedLabel setMaxAngularWidth:a3];
  }
}

- (double)maxAngularWidth
{
  v3 = [(CLKUICurvedColoringLabel *)self->_curvedLabel path];

  if (v3)
  {
    return 0.0;
  }

  curvedLabel = self->_curvedLabel;

  [(CLKUICurvedColoringLabel *)curvedLabel maxAngularWidth];
  return result;
}

- (void)setCircleRadius:(double)a3
{
  v5 = [(CLKUICurvedColoringLabel *)self->_curvedLabel path];

  if (!v5)
  {
    curvedLabel = self->_curvedLabel;

    [(CLKUICurvedColoringLabel *)curvedLabel setCircleRadius:a3];
  }
}

- (double)circleRadius
{
  v3 = [(CLKUICurvedColoringLabel *)self->_curvedLabel path];

  if (v3)
  {
    return 0.0;
  }

  curvedLabel = self->_curvedLabel;

  [(CLKUICurvedColoringLabel *)curvedLabel circleRadius];
  return result;
}

- (void)setPath:(id)a3
{
  objc_storeStrong(&self->_path, a3);
  v5 = a3;
  [(CLKUICurvedColoringLabel *)self->_curvedLabel setPath:v5];
}

- (void)setUseBlockyHighlightCorners:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NTKUtilityFlatComplicationView;
  [(NTKUtilityComplicationView *)&v4 setUseBlockyHighlightCorners:a3];
  [(NTKUtilityFlatComplicationView *)self _updateHighlightViewCornerRadius];
}

- (unint64_t)imagePlacement
{
  if (([(NTKUtilityComplicationView *)self placement]& 8) != 0)
  {
    return 2;
  }

  if (([(NTKUtilityComplicationView *)self placement]& 4) == 0)
  {
    return 1;
  }

  if (CLKLayoutIsRTL())
  {
    return 2;
  }

  return 1;
}

- (void)setShouldUseBackgroundPlatter:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NTKUtilityFlatComplicationView;
  [(NTKUtilityComplicationView *)&v4 setShouldUseBackgroundPlatter:a3];
  [(NTKUtilityFlatComplicationView *)self _updateHighlightViewCornerRadius];
}

- (void)_updateHighlightViewCornerRadius
{
  v3 = [(NTKUtilityComplicationView *)self useBlockyHighlightCorners];
  v4 = [(NTKUtilityComplicationView *)self device];
  v9 = v4;
  if (v3)
  {
    ___LayoutConstants_block_invoke_70(v4, v12);
    v5 = v13;
  }

  else
  {
    v6 = [v4 deviceCategory];

    if (v6 == 1)
    {
      v9 = [(NTKUtilityComplicationView *)self highlightView];
      v7 = [v9 layer];
      [v7 setCornerRadius:0.0];
      goto LABEL_7;
    }

    v9 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v9, v10);
    v5 = v11;
  }

  v7 = [(NTKUtilityComplicationView *)self highlightView];
  v8 = [v7 layer];
  [v8 setCornerRadius:v5];

LABEL_7:
}

- (BOOL)_shouldLayoutWithImageView
{
  if ([(NTKUtilityComplicationView *)self textLayoutStyle]== 1 || [(NTKUtilityComplicationView *)self textLayoutStyle]== 2)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    imageView = self->_imageView;
    if (imageView)
    {
      v3 = [(CDComplicationImageView *)imageView isHidden]^ 1;
    }

    else
    {
      v3 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return [(CDComplicationImageView *)self->_imageView hasMonochromeImage]& v3;
    }
  }

  return v3;
}

- (void)_updateLabelMaxWidth
{
  [(NTKUtilityComplicationView *)self maxSize];
  v4 = v3;
  if ([(NTKUtilityFlatComplicationView *)self _shouldLayoutWithImageView])
  {
    [(CDComplicationImageView *)self->_imageView sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    v6 = v5;
    v7 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v7, v11);
    v4 = v4 - (v6 + v12);
  }

  if ([(NTKUtilityComplicationView *)self shouldUsePlatterInset])
  {
    v8 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v8, v10);
    v4 = v4 + v10[22] * -2.0;
  }

  activeLabel = self->_activeLabel;

  [(CLKUIColoringLabel *)activeLabel setMaxWidth:v4];
}

- (double)_widthThatFits
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  [(CLKUIColoringLabel *)self->_activeLabel sizeThatFits:*MEMORY[0x277CBF3A8], v4];
  if ([(NTKUtilityFlatComplicationView *)self _shouldLayoutWithImageView])
  {
    [(CDComplicationImageView *)self->_imageView sizeThatFits:v3, v4];
    v5 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v5, v12);
  }

  if ([(NTKUtilityComplicationView *)self shouldUsePlatterInset])
  {
    v6 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v6, &v11);
  }

  v7 = [(NTKUtilityComplicationView *)self device];
  CLKCeilForDevice();
  v9 = v8;

  return v9;
}

- (void)_updateForTemplateChange
{
  v21.receiver = self;
  v21.super_class = NTKUtilityFlatComplicationView;
  [(NTKUtilityComplicationView *)&v21 _updateForTemplateChange];
  v3 = [(NTKUtilityComplicationView *)self complicationTemplate];
  v4 = [v3 imageProvider];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NTKUtilityFlatComplicationView *)self setUseBlockyHighlightCorners:1];
  }

  v5 = [(NTKUtilityComplicationView *)self textLayoutStyle]== 1 || [(NTKUtilityComplicationView *)self textLayoutStyle]== 2;
  if (([off_27877BE78 existingImageView:self->_imageView supportsImageProvider:v4] & 1) == 0)
  {
    if (v5)
    {
      [(CLKUICurvedColoringLabel *)self->_curvedLabel setImageView:0];
    }

    else
    {
      [(CDComplicationImageView *)self->_imageView removeFromSuperview];
    }

    v6 = [off_27877BE78 viewForImageProvider:v4];
    imageView = self->_imageView;
    self->_imageView = v6;

    [(NTKUtilityComplicationView *)self _updateImageViewAlpha:self->_imageView];
    [(NTKUtilityComplicationView *)self _updateImageViewColor:self->_imageView];
  }

  [(CDComplicationImageView *)self->_imageView setImageProvider:v4];
  v8 = self->_imageView;
  if (v5)
  {
    if (!v8 || ([(CDComplicationImageView *)self->_imageView bounds], CGRectIsEmpty(v22)))
    {
      [(CLKUICurvedColoringLabel *)self->_curvedLabel setImageView:0];
    }

    else
    {
      curvedLabel = self->_curvedLabel;
      v10 = self->_imageView;
      v11 = [(NTKUtilityFlatComplicationView *)self imagePlacement];
      v12 = [(NTKUtilityComplicationView *)self device];
      ___LayoutConstants_block_invoke_70(v12, v19);
      [(CLKUICurvedColoringLabel *)curvedLabel setImageView:v10 placement:v11 padding:v20];
    }
  }

  else if (v8)
  {
    [(NTKUtilityFlatComplicationView *)self addSubview:?];
  }

  activeLabel = self->_activeLabel;
  v14 = [v3 textProvider];
  [(CLKUIColoringLabel *)activeLabel setTextProvider:v14];

  if (self->_curvedLabel)
  {
    [(NTKUtilityComplicationView *)self setBackgroundPlatter:0];
    [(UIImageView *)self->_curvedHighlightView setImage:0];
  }

  [(NTKUtilityFlatComplicationView *)self _updateLabelMaxWidth];
  v15 = [(NTKUtilityComplicationView *)self colorScheme];
  v16 = [v15 containsOverrideFaceColor];

  if (v16)
  {
    v17 = [(NTKUtilityComplicationView *)self colorScheme];
    [(NTKUtilityComplicationView *)self _applyColorScheme:v17];
  }

  [(NTKUtilityFlatComplicationView *)self setNeedsLayout];
  v18 = [(NTKUtilityComplicationView *)self displayObserver];
  [v18 complicationDisplayNeedsResize:self];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  curvedLabel = self->_curvedLabel;
  if (curvedLabel)
  {
    if (self->_label)
    {
      [(CLKUIColoringLabel *)self->_label sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
      width = v7;
      height = v8;
      if ([(NTKUtilityComplicationView *)self shouldUsePlatterInset])
      {
        v9 = [(NTKUtilityComplicationView *)self device];
        ___LayoutConstants_block_invoke_70(v9, v15);
        width = width + v16 * 2.0;
      }
    }

    else
    {
      v12 = [(CLKUICurvedColoringLabel *)curvedLabel path];

      if (!v12)
      {
        [(CLKUICurvedColoringLabel *)self->_curvedLabel centerAngle];
        v13 = CLKFloatEqualsFloat();
        [(NTKUtilityComplicationView *)self device];
        objc_claimAutoreleasedReturnValue();
        if (v13)
        {
          CLKUICurvedColoringLabelCenterSize();
        }

        CLKUICurvedColoringLabelCornerSize();
      }
    }

    [(NTKUtilityComplicationView *)self minimumWidth];
    if (width >= v10)
    {
      v10 = width;
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = NTKUtilityFlatComplicationView;
    [(NTKUtilityComplicationView *)&v17 sizeThatFits:a3.width, a3.height];
    height = v11;
  }

  v14 = height;
  result.height = v14;
  result.width = v10;
  return result;
}

- (CGSize)boundingSizeOfCurrentComplicationTemplate
{
  [(NTKUtilityFlatComplicationView *)self layoutIfNeeded];
  [(CLKUIColoringLabel *)self->_activeLabel frame];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v96.receiver = self;
  v96.super_class = NTKUtilityFlatComplicationView;
  [(NTKUtilityComplicationView *)&v96 layoutSubviews];
  v3 = [(NTKUtilityComplicationView *)self device];
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v80 = 0u;
  memset(v79, 0, sizeof(v79));
  ___LayoutConstants_block_invoke_70(v3, v79);
  [(NTKUtilityFlatComplicationView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(CLKUIColoringLabel *)self->_activeLabel sizeToFit];
  if (self->_label)
  {
    if ([(NTKUtilityComplicationView *)self shouldUsePlatterInset])
    {
      v9 = v9 + *&v85 * -2.0;
      v5 = v5 + *&v85;
    }

    [(NTKUtilityComplicationView *)self layoutLabelVertically:self->_activeLabel];
  }

  [(CLKUIColoringLabel *)self->_activeLabel frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if ([(NTKUtilityFlatComplicationView *)self _shouldLayoutWithImageView])
  {
    v74 = v7;
    v75 = v11;
    [(CDComplicationImageView *)self->_imageView sizeToFit];
    [(CDComplicationImageView *)self->_imageView frame];
    v21 = v20;
    v23 = v22;
    v76 = v19;
    [(NTKUtilityComplicationView *)self _imageViewOriginYWithBaseImageSize:v20 labelFrame:v22, v13, v15, v17, v19];
    v25 = v24;
    v26 = *&v80;
    if (v17 > v9 - v21 - *&v80)
    {
      v17 = v9 - v21 - *&v80;
    }

    v27 = [(NTKUtilityComplicationView *)self placement];
    if ((v27 & 2) != 0)
    {
      v99.origin.x = v5;
      v99.origin.y = v74;
      v99.size.height = v75;
      v99.size.width = v9;
      v100.origin.x = CGRectGetMinX(v99);
      v100.origin.y = v25;
      v100.size.width = v21;
      v100.size.height = v23;
      MaxX = CGRectGetMaxX(v100);
    }

    else if ((v27 & 8) != 0)
    {
      v101.origin.x = v5;
      v101.origin.y = v74;
      v101.size.height = v75;
      v101.size.width = v9;
      v102.origin.x = CGRectGetMaxX(v101) - v21;
      v102.origin.y = v25;
      v102.size.width = v21;
      v102.size.height = v23;
      MaxX = CGRectGetMinX(v102) - v26;
    }

    else
    {
      IsRTL = CLKLayoutIsRTL();
      if (IsRTL)
      {
        v29 = v76;
      }

      else
      {
        v29 = v23;
      }

      if (IsRTL)
      {
        v30 = v17;
      }

      else
      {
        v30 = v21;
      }

      v71 = v29;
      v72 = v30;
      if (IsRTL)
      {
        v31 = v15;
      }

      else
      {
        v31 = v25;
      }

      v73 = v31;
      CLKLayoutIsRTL();
      v97.origin.x = v5;
      v97.origin.y = v74;
      v97.size.height = v75;
      v97.size.width = v9;
      MinX = CGRectGetMinX(v97);
      CLKFloorForDevice();
      v98.origin.x = MinX + v33;
      v98.origin.y = v73;
      v98.size.width = v72;
      v98.size.height = v71;
      CGRectGetMaxX(v98);
      CLKLayoutIsRTL();
      CLKLayoutIsRTL();
      MaxX = v73;
    }

    v42 = [(NTKUtilityComplicationView *)self device];
    CLKPixelAlignRectForDevice();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    imageView = self->_imageView;
    v52 = [(NTKUtilityComplicationView *)self device];
    CLKPixelAlignRectForDevice();
    [(CDComplicationImageView *)imageView setFrame:?];
  }

  else
  {
    v35 = [(NTKUtilityComplicationView *)self placement];
    curvedLabel = self->_curvedLabel;
    if (curvedLabel)
    {
      v37 = [(CLKUICurvedColoringLabel *)curvedLabel path];

      if (v37)
      {
        [(NTKUtilityFlatComplicationView *)self bounds];
      }

      else if ([(NTKUtilityComplicationView *)self isPlacementForTopBezelComplication])
      {
        v77 = 0;
        v78 = 0;
        [(CLKUICurvedColoringLabel *)self->_curvedLabel getTextCenter:&v77 startAngle:0 endAngle:0];
        [(NTKUtilityFlatComplicationView *)self bounds];
        CGRectGetMidX(v103);
        v104.origin.x = v13;
        v104.origin.y = v15;
        v104.size.width = v17;
        v104.size.height = v19;
        CGRectGetWidth(v104);
        [(CLKUICurvedColoringLabel *)self->_curvedLabel bounds];
        CGRectGetMidX(v105);
        v53 = [(NTKUtilityComplicationView *)self device];
        CLKPointRoundForDevice();
      }

      else
      {
        [v3 screenBounds];
        v60 = v56;
        if (v35)
        {
          if ((v35 & 8) != 0)
          {
            CGRectGetWidth(*&v56);
            CLKUICurvedColoringLabelCornerSize();
          }
        }

        else if ((v35 & 4) != 0)
        {
          if ((v35 & 0xA) != 0)
          {
            CLKUICurvedColoringLabelCornerSize();
          }

          CLKUICurvedColoringLabelCenterSize();
        }

        v61 = v59;
        v62 = v58;
        v63 = v57;
        v77 = 0;
        v78 = 0;
        [(CLKUICurvedColoringLabel *)self->_curvedLabel getTextCenter:&v77 startAngle:0 endAngle:0];
        [(NTKUtilityComplicationView *)self placement];
        v106.origin.x = v60;
        v106.origin.y = v63;
        v106.size.width = v62;
        v106.size.height = v61;
        CGRectGetMaxY(v106);
        [(CLKUICurvedColoringLabel *)self->_curvedLabel circleRadius];
        v107.origin.x = v60;
        v107.origin.y = v63;
        v107.size.width = v62;
        v107.size.height = v61;
        CGRectGetMidX(v107);
      }
    }

    else
    {
      v38 = v5;
      v39 = v7;
      if ((v35 & 2) != 0)
      {
        v54 = v9;
        v55 = v11;
        CGRectGetMinX(*&v38);
      }

      else
      {
        v40 = v9;
        v41 = v11;
        if ((v35 & 8) != 0)
        {
          CGRectGetMaxX(*&v38);
        }

        else
        {
          CGRectGetMinX(*&v38);
          CLKFloorForDevice();
        }
      }
    }

    v52 = [(NTKUtilityComplicationView *)self device];
    CLKPixelAlignRectForDevice();
    v44 = v64;
    v46 = v65;
    v48 = v66;
    v50 = v67;
  }

  [(CLKUIColoringLabel *)self->_activeLabel setFrame:v44, v46, v48, v50];
  if (self->_curvedLabel)
  {
    v68 = [(UIImageView *)self->_curvedHighlightView image];

    if (!v68)
    {
      v69 = [(NTKUtilityFlatComplicationView *)self _backgroundPlatterImage];
      [(UIImageView *)self->_curvedHighlightView setImage:v69];
    }

    [(UIImageView *)self->_curvedHighlightView sizeToFit];
    [(UIImageView *)self->_curvedHighlightView frame];
    v70 = [(NTKUtilityComplicationView *)self device];
    CLKRectCenteredIntegralRectForDevice();
    [(UIImageView *)self->_curvedHighlightView setFrame:?];
  }

  [(NTKUtilityFlatComplicationView *)self updateTextWidthIfNeeded];
}

- (id)_backgroundPlatterImage
{
  if (self->_curvedLabel)
  {
    [(NTKUtilityFlatComplicationView *)self bounds];
    if (CGRectIsEmpty(v32) || ([(CLKUICurvedColoringLabel *)self->_curvedLabel bounds], CGRectIsEmpty(v33)))
    {
      v3 = 0;
    }

    else
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      memset(v25, 0, sizeof(v25));
      v4 = [(NTKUtilityComplicationView *)self device];
      ___LayoutConstants_block_invoke_70(v4, v25);

      v5 = [(CLKUICurvedColoringLabel *)self->_curvedLabel path];

      v3 = 0;
      if (!v5)
      {
        v6 = [(CLKUICurvedColoringLabel *)self->_curvedLabel interior];
        [(CLKUICurvedColoringLabel *)self->_curvedLabel circleRadius];
        v23 = 0.0;
        v24 = 0.0;
        v21 = 0;
        v22 = 0;
        [(CLKUICurvedColoringLabel *)self->_curvedLabel getTextCenter:&v23 startAngle:&v22 endAngle:&v21];
        [(CLKUICurvedColoringLabel *)self->_curvedLabel bounds];
        v7 = *&v26;
        v35 = CGRectInset(v34, -*&v26, -*&v26);
        x = v35.origin.x;
        y = v35.origin.y;
        width = v35.size.width;
        height = v35.size.height;
        v12 = CGRectGetWidth(v35);
        [(CLKUICurvedColoringLabel *)self->_curvedLabel bounds];
        v23 = v23 + (v12 - CGRectGetWidth(v36)) * 0.5;
        v37.origin.x = x;
        v37.origin.y = y;
        v37.size.width = width;
        v37.size.height = height;
        v13 = CGRectGetHeight(v37);
        [(CLKUICurvedColoringLabel *)self->_curvedLabel bounds];
        v24 = v24 + (v13 - CGRectGetHeight(v38)) * 0.5;
        v14 = [MEMORY[0x277D75208] bezierPathWithArcCenter:v6 ^ 1u radius:v23 startAngle:? endAngle:? clockwise:?];
        [v14 setLineWidth:v7];
        [v14 setLineCapStyle:1];
        v15 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{width, height}];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __57__NTKUtilityFlatComplicationView__backgroundPlatterImage__block_invoke;
        v19[3] = &unk_2787820A8;
        v20 = v14;
        v16 = v14;
        v17 = [v15 imageWithActions:v19];
        v3 = [v17 imageWithRenderingMode:2];
      }
    }
  }

  else
  {
    v30.receiver = self;
    v30.super_class = NTKUtilityFlatComplicationView;
    v3 = [(NTKUtilityComplicationView *)&v30 _backgroundPlatterImage];
  }

  return v3;
}

uint64_t __57__NTKUtilityFlatComplicationView__backgroundPlatterImage__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75348] whiteColor];
  [v2 set];

  v3 = *(a1 + 32);

  return [v3 stroke];
}

- (void)_enumerateColoringViewsWithBlock:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
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

- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v8 = [(NTKUtilityFlatComplicationView *)self filterProvider];
  v9 = [v8 filtersForView:self style:a4 fraction:a5];

  return v9;
}

- (id)filtersForView:(id)a3 style:(int64_t)a4
{
  v6 = [(NTKUtilityFlatComplicationView *)self filterProvider];
  v7 = [v6 filtersForView:self style:a4];

  return v7;
}

- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v8 = [(NTKUtilityFlatComplicationView *)self filterProvider];
  v9 = [v8 filterForView:self style:a4 fraction:a5];

  return v9;
}

- (id)filterForView:(id)a3 style:(int64_t)a4
{
  v6 = [(NTKUtilityFlatComplicationView *)self filterProvider];
  v7 = [v6 filterForView:self style:a4];

  return v7;
}

- (id)colorForView:(id)a3 accented:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NTKUtilityFlatComplicationView *)self filterProvider];
  v8 = [v7 colorForView:v6 accented:v4];

  return v8;
}

- (id)backgroundColorForView:(id)a3
{
  v4 = a3;
  v5 = [(NTKUtilityFlatComplicationView *)self filterProvider];
  v6 = [v5 backgroundColorForView:v4];

  return v6;
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

- (NTKUtilityFlatComplicationViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end