@interface CDRichComplicationCornerBaseGaugeView
+ (BOOL)isMeteredProgressView;
- (CDRichComplicationCornerBaseGaugeView)initWithFontFallback:(int64_t)a3;
- (double)_calculateProgressWidthWithLeftLabelWidth:(double)a3 rightLabelWidth:(double)a4;
- (double)_layoutLabel:(id)a3 withLabelCenter:(CGPoint)a4 labelWidthInRadius:(double)a5 leftInRadius:(double)a6;
- (double)_layoutProgressViewWithBeginAngle:(double)a3 widthInRadius:(double)a4 bottomPadding:(double)a5;
- (double)_progressViewHorizontalPaddingInRadius;
- (void)_calculateLabel:(id)a3 center:(CGPoint *)a4 widthInRadius:(double *)a5;
- (void)_editingDidEnd;
- (void)_enumerateLabelsWithBlock:(id)a3;
- (void)_layoutSubviewsWithoutAnimation;
- (void)_replaceProgressView:(int64_t)a3;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3;
- (void)_updateLabelMaxWidths;
- (void)handleGaugeProvider:(id)a3 leftLabelProvider:(id)a4 rightLabelProvider:(id)a5;
- (void)handleGaugeProvider:(id)a3 leftTextProvider:(id)a4 rightTextProvider:(id)a5;
- (void)layoutSubviews;
- (void)setCornerComplicationPosition:(int64_t)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation CDRichComplicationCornerBaseGaugeView

+ (BOOL)isMeteredProgressView
{
  v2 = [a1 progressFillStyle];

  return CDRichComplicationProgressFillStyleIsMetered(v2);
}

- (CDRichComplicationCornerBaseGaugeView)initWithFontFallback:(int64_t)a3
{
  v17.receiver = self;
  v17.super_class = CDRichComplicationCornerBaseGaugeView;
  v3 = [(CDRichComplicationCornerView *)&v17 initWithFontFallback:a3];
  v4 = v3;
  if (v3)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    v5 = [(CDRichComplicationView *)v3 device:0];
    ___LayoutConstants_block_invoke_8(v5, &v12);

    -[CDRichComplicationCornerBaseGaugeView _replaceProgressView:](v4, "_replaceProgressView:", [objc_opt_class() progressFillStyle]);
    v6 = *(&v13 + 1);
    v7 = [(CDRichComplicationCornerView *)v4 _createAndAddColoringLabelWithFontSize:*(&v13 + 1)];
    leftLabel = v4->_leftLabel;
    v4->_leftLabel = v7;

    [(CLKUICurvedColoringLabel *)v4->_leftLabel setImagePlacement:1];
    v9 = [(CDRichComplicationCornerView *)v4 _createAndAddColoringLabelWithFontSize:v6];
    rightLabel = v4->_rightLabel;
    v4->_rightLabel = v9;

    [(CLKUICurvedColoringLabel *)v4->_rightLabel setImagePlacement:2];
  }

  return v4;
}

- (void)_replaceProgressView:(int64_t)a3
{
  [(CDRichComplicationCurvedProgressView *)self->_progressView removeFromSuperview];
  v5 = [(CDRichComplicationView *)self device:0];
  ___LayoutConstants_block_invoke_8(v5, &v12);

  if ([objc_opt_class() isMeteredProgressView])
  {
    v6 = &v13;
  }

  else
  {
    v6 = &v12;
  }

  v7 = *v6;
  v8 = [CDRichComplicationCurvedProgressView alloc];
  v9 = [(CDRichComplicationView *)self device];
  v10 = [(CDRichComplicationCurvedProgressView *)v8 initWithFamily:10 curveWidth:v9 padding:2 beginAngle:a3 endAngle:v7 forDevice:0.0 withFilterStyle:0.0 progressFillStyle:0.0];
  progressView = self->_progressView;
  self->_progressView = v10;

  [(CDRichComplicationCornerBaseGaugeView *)self addSubview:self->_progressView];
  [(CDRichComplicationProgressView *)self->_progressView setFilterProvider:self];

  [(CDRichComplicationCornerBaseGaugeView *)self setNeedsLayout];
}

- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3
{
  v12[0] = a3->var0;
  v5 = a3->var1;
  var2 = a3->var2;
  v13 = v5;
  v14 = var2;
  v11.receiver = self;
  v11.super_class = CDRichComplicationCornerBaseGaugeView;
  [(CDRichComplicationView *)&v11 _setFontConfiguration:v12];
  v7 = a3->var1;
  if (v7)
  {
    v8 = a3->var2;
    [(CDRichComplicationView *)self _updateColoringLabel:self->_leftLabel withFontDescriptor:v7 andSizeFactor:v8];
    [(CDRichComplicationView *)self _updateColoringLabel:self->_rightLabel withFontDescriptor:v7 andSizeFactor:v8];
  }

  else
  {
    if (a3->var0)
    {
      v9 = MEMORY[0x277D74410];
    }

    else
    {
      v9 = MEMORY[0x277D74420];
    }

    v10 = *v9;
    [(CDRichComplicationCornerView *)self _updateColoringLabel:self->_leftLabel withFontWeight:*v9];
    [(CDRichComplicationCornerView *)self _updateColoringLabel:self->_rightLabel withFontWeight:v10];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CDRichComplicationCornerBaseGaugeView;
  [(CDRichComplicationCornerBaseGaugeView *)&v4 layoutSubviews];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__CDRichComplicationCornerBaseGaugeView_layoutSubviews__block_invoke;
  v3[3] = &unk_278DF3558;
  v3[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v3];
}

- (void)setCornerComplicationPosition:(int64_t)a3
{
  v19.receiver = self;
  v19.super_class = CDRichComplicationCornerBaseGaugeView;
  [(CDRichComplicationCornerView *)&v19 setCornerComplicationPosition:?];
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  memset(v15, 0, sizeof(v15));
  v5 = [(CDRichComplicationView *)self device];
  ___LayoutConstants_block_invoke_8(v5, v15);

  v6 = 0;
  if (a3 < 2)
  {
    v11 = &v17;
    v10 = &v16;
    v9 = 1;
    goto LABEL_6;
  }

  if (a3 == 3 || (v7 = 0, v8 = 0, a3 == 2))
  {
    v9 = 0;
    v10 = &v16 + 1;
    v11 = &v17 + 1;
    v6 = 1;
LABEL_6:
    v8 = *v10;
    v7 = *v11;
    [(CDRichComplicationCurvedProgressView *)self->_progressView setClockwise:v9];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__CDRichComplicationCornerBaseGaugeView_setCornerComplicationPosition___block_invoke;
  aBlock[3] = &__block_descriptor_49_e34_v16__0__CLKUICurvedColoringLabel_8l;
  v14 = v6;
  aBlock[4] = v8;
  aBlock[5] = v7;
  v12 = _Block_copy(aBlock);
  v12[2](v12, self->_leftLabel);
  v12[2](v12, self->_rightLabel);
}

void __71__CDRichComplicationCornerBaseGaugeView_setCornerComplicationPosition___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setCircleRadius:v3];
  [v4 setInterior:*(a1 + 48)];
  [v4 setTracking:*(a1 + 40)];
  [v4 setCenterAngle:0.0];
}

- (void)handleGaugeProvider:(id)a3 leftTextProvider:(id)a4 rightTextProvider:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [[CDLabelProvider alloc] initWithTextProvider:v9 imageProvider:0];

  v11 = [[CDLabelProvider alloc] initWithTextProvider:v8 imageProvider:0];
  [(CDRichComplicationCornerBaseGaugeView *)self handleGaugeProvider:v10 leftLabelProvider:v12 rightLabelProvider:v11];
}

- (void)handleGaugeProvider:(id)a3 leftLabelProvider:(id)a4 rightLabelProvider:(id)a5
{
  v31 = a4;
  v8 = a5;
  [(CDRichComplicationProgressView *)self->_progressView setGaugeProvider:a3];
  v9 = [v31 textProvider];

  if (v9)
  {
    v10 = [v31 textProvider];
    [(CLKUICurvedColoringLabel *)self->_leftLabel setTextProvider:v10];

    [(CLKUICurvedColoringLabel *)self->_leftLabel setImageView:0];
    leftLabel = self->_leftLabel;
    v12 = 0;
LABEL_3:
    [(CLKUICurvedColoringLabel *)leftLabel setHidden:v12];
    goto LABEL_11;
  }

  v13 = [v31 imageProvider];

  if (!v13)
  {
    [(CLKUICurvedColoringLabel *)self->_leftLabel setTextProvider:0];
    [(CLKUICurvedColoringLabel *)self->_leftLabel setImageView:0];
    leftLabel = self->_leftLabel;
    v12 = 1;
    goto LABEL_3;
  }

  v14 = [v31 imageProvider];
  if ([v14 conformsToProtocol:&unk_285718B28])
  {
    v15 = self->_leftLabel;
    v16 = v14;
    v17 = [(CLKUICurvedColoringLabel *)v15 font];
    [v16 setFont:v17];

    [v16 setScale:2];
  }

  v18 = [(CLKUICurvedColoringLabel *)self->_leftLabel imageView];
  if (![v18 conformsToProtocol:&unk_285717968] || !+[CDComplicationImageViewProvider existingImageView:supportsImageProvider:](CDComplicationImageViewProvider, "existingImageView:supportsImageProvider:", v18, v14))
  {
    v19 = [CDComplicationImageViewProvider viewForImageProvider:v14];

    [(CLKUICurvedColoringLabel *)self->_leftLabel setImageView:v19];
    v18 = v19;
  }

  [v18 setImageProvider:v14];
  [(CLKUICurvedColoringLabel *)self->_leftLabel setTextProvider:0];
  [(CLKUICurvedColoringLabel *)self->_leftLabel setText:@"​"];
  [(CLKUICurvedColoringLabel *)self->_leftLabel setHidden:0];

LABEL_11:
  v20 = [v8 textProvider];

  if (v20)
  {
    v21 = [v8 textProvider];
    [(CLKUICurvedColoringLabel *)self->_rightLabel setTextProvider:v21];

    [(CLKUICurvedColoringLabel *)self->_rightLabel setImageView:0];
    rightLabel = self->_rightLabel;
    v23 = 0;
LABEL_13:
    [(CLKUICurvedColoringLabel *)rightLabel setHidden:v23];
    goto LABEL_21;
  }

  v24 = [v8 imageProvider];

  if (!v24)
  {
    [(CLKUICurvedColoringLabel *)self->_rightLabel setTextProvider:0];
    [(CLKUICurvedColoringLabel *)self->_rightLabel setImageView:0];
    rightLabel = self->_rightLabel;
    v23 = 1;
    goto LABEL_13;
  }

  v25 = [v8 imageProvider];
  if ([v25 conformsToProtocol:&unk_285718B28])
  {
    v26 = self->_rightLabel;
    v27 = v25;
    v28 = [(CLKUICurvedColoringLabel *)v26 font];
    [v27 setFont:v28];

    [v27 setScale:2];
  }

  v29 = [(CLKUICurvedColoringLabel *)self->_rightLabel imageView];
  if (![v29 conformsToProtocol:&unk_285717968] || !+[CDComplicationImageViewProvider existingImageView:supportsImageProvider:](CDComplicationImageViewProvider, "existingImageView:supportsImageProvider:", v29, v25))
  {
    v30 = [CDComplicationImageViewProvider viewForImageProvider:v25];

    [(CLKUICurvedColoringLabel *)self->_rightLabel setImageView:v30];
    v29 = v30;
  }

  [v29 setImageProvider:v25];
  [(CLKUICurvedColoringLabel *)self->_rightLabel setTextProvider:0];
  [(CLKUICurvedColoringLabel *)self->_rightLabel setText:@"​"];
  [(CLKUICurvedColoringLabel *)self->_rightLabel setHidden:0];

LABEL_21:
}

- (double)_progressViewHorizontalPaddingInRadius
{
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v2 = [(CDRichComplicationView *)self device:0];
  ___LayoutConstants_block_invoke_8(v2, &v4);

  return *(&v5 + 1);
}

- (double)_layoutProgressViewWithBeginAngle:(double)a3 widthInRadius:(double)a4 bottomPadding:(double)a5
{
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  memset(v40, 0, sizeof(v40));
  v7 = [(CDRichComplicationView *)self device];
  ___LayoutConstants_block_invoke_8(v7, v40);

  v8 = [(CDRichComplicationView *)self device];
  [v8 screenBounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = *MEMORY[0x277CBF348];
  v18 = *(MEMORY[0x277CBF348] + 8);
  v19 = [(CDRichComplicationView *)self device];
  v20 = CDCornerComplicationSize(v19);
  v34 = v21;
  v35 = v20;

  v22 = [(CDRichComplicationCornerView *)self cornerComplicationPosition];
  v23 = 0.0;
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = a3 - a4;
      v46.origin.x = v10;
      v46.origin.y = v12;
      v46.size.width = v14;
      v46.size.height = v16;
      v18 = CGRectGetHeight(v46) - v34;
      v17 = 0.0;
    }

    else
    {
      v26 = a3;
      v39 = 0.0;
      a3 = 0.0;
      if (v22 != 3)
      {
        goto LABEL_11;
      }

      a3 = v26;
      v23 = v26 - a4;
      v44.origin.x = v10;
      v44.origin.y = v12;
      v44.size.width = v14;
      v44.size.height = v16;
      v17 = CGRectGetWidth(v44) - v35;
      v45.origin.x = v10;
      v45.origin.y = v12;
      v45.size.width = v14;
      v45.size.height = v16;
      v18 = CGRectGetHeight(v45) - v34;
    }

    v39 = v23;
  }

  else if (v22)
  {
    v24 = a3;
    v39 = 0.0;
    a3 = 0.0;
    if (v22 == 1)
    {
      v25 = v24;
      a3 = v24 + 3.14159265;
      v39 = v24 + 3.14159265 + a4;
      v43.origin.x = v10;
      v43.origin.y = v12;
      v43.size.width = v14;
      v43.size.height = v16;
      v17 = CGRectGetWidth(v43) - v35;
      v23 = v25 + a4;
      v18 = 0.0;
    }
  }

  else
  {
    v27 = a3;
    a3 = a3 + 3.14159265;
    v39 = a3 + a4;
    v23 = v27 + a4;
    v18 = 0.0;
    v17 = 0.0;
  }

LABEL_11:
  v37 = v23;
  v47.origin.x = v10;
  v47.origin.y = v12;
  v47.size.width = v14;
  v47.size.height = v16;
  v28 = a3;
  MidX = CGRectGetMidX(v47);
  v48.origin.x = v10;
  v48.origin.y = v12;
  v48.size.width = v14;
  v48.size.height = v16;
  v30 = CGRectGetMidY(v48) - v18;
  v31 = [objc_opt_class() isMeteredProgressView];
  v32 = v40;
  if (v31)
  {
    v32 = v41;
  }

  [(CDRichComplicationCurvedProgressView *)self->_progressView setFrame:MidX - v17 - (*v32 + *(v40 + 1) + a5) * 0.5, v30 - (*v32 + *(v40 + 1) + a5) * 0.5, *v32 + *(v40 + 1) + a5, *v32 + *(v40 + 1) + a5];
  [(CDRichComplicationCurvedProgressView *)self->_progressView setBeginAngle:v28];
  [(CDRichComplicationCurvedProgressView *)self->_progressView setEndAngle:v39];
  return v37;
}

- (void)_calculateLabel:(id)a3 center:(CGPoint *)a4 widthInRadius:(double *)a5
{
  v7 = a3;
  v8 = [v7 textProvider];
  if (v8)
  {
  }

  else
  {
    v9 = [v7 imageView];

    if (!v9)
    {
      *a4 = *MEMORY[0x277CBF348];
      *a5 = 0.0;
      goto LABEL_10;
    }
  }

  [v7 sizeToFit];
  v13 = 0.0;
  v14 = 0.0;
  [v7 getTextCenter:a4 startAngle:&v14 endAngle:&v13];
  v10 = fabs(v14);
  v11 = fabs(v13);
  if (v10 >= v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v10 >= v11)
  {
    v10 = v11;
  }

  *a5 = v12 - v10;
LABEL_10:
}

- (double)_calculateProgressWidthWithLeftLabelWidth:(double)a3 rightLabelWidth:(double)a4
{
  if (a3 > 0.0 && a4 > 0.0)
  {
    CLKDegreesToRadians();
    v8 = v7 - a3 - a4;
    [(CDRichComplicationCornerBaseGaugeView *)self _progressViewHorizontalPaddingInRadius];
    return v8 + v9 * -2.0;
  }

  if (a3 > 0.0)
  {
    CLKDegreesToRadians();
    v12 = v11 - a3;
LABEL_8:
    [(CDRichComplicationCornerBaseGaugeView *)self _progressViewHorizontalPaddingInRadius];
    return v12 - v14;
  }

  if (a4 > 0.0)
  {
    CLKDegreesToRadians();
    v12 = v13 - a4;
    goto LABEL_8;
  }

  CLKDegreesToRadians();
  return result;
}

- (double)_layoutLabel:(id)a3 withLabelCenter:(CGPoint)a4 labelWidthInRadius:(double)a5 leftInRadius:(double)a6
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = [(CDRichComplicationView *)self device];
  [v10 screenBounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v65.origin.x = v12;
  v65.origin.y = v14;
  v65.size.width = v16;
  v65.size.height = v18;
  tx = CGRectGetMidX(v65);
  v66.origin.x = v12;
  v66.origin.y = v14;
  v66.size.width = v16;
  v66.size.height = v18;
  MidY = CGRectGetMidY(v66);
  v20 = *(MEMORY[0x277CBF2C0] + 16);
  *&v64.a = *MEMORY[0x277CBF2C0];
  *&v64.c = v20;
  *&v64.tx = *(MEMORY[0x277CBF2C0] + 32);
  [v9 setTransform:&v64];
  [v9 frame];
  [v9 sizeThatFits:{v21, v22}];
  [v9 setFrame:{0.0, 0.0, v23, v24}];
  v25 = [(CDRichComplicationView *)self device];
  v57 = CDCornerComplicationSize(v25);
  v27 = v26;

  v28 = [(CDRichComplicationCornerView *)self cornerComplicationPosition];
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      txa = tx - x;
      v45 = MidY - y;
    }

    else
    {
      v54 = y;
      v56 = MidY;
      v43 = x;
      v31 = 0.0;
      v32 = 0.0;
      v33 = 0.0;
      v34 = 0.0;
      v35 = 0.0;
      v36 = 0.0;
      if (v28 != 3)
      {
        goto LABEL_12;
      }

      x = v43;
      v44 = tx - v43;
      v68.origin.x = v12;
      v68.origin.y = v14;
      v68.size.width = v16;
      v68.size.height = v18;
      txa = v44 - (CGRectGetWidth(v68) - v57);
      y = v54;
      v45 = v56 - v54;
    }

    v69.origin.x = v12;
    v69.origin.y = v14;
    v69.size.width = v16;
    v69.size.height = v18;
    v49 = v45 - (CGRectGetHeight(v69) - v27);
    [v9 frame];
    v34 = x - v50 * 0.5;
    [v9 frame];
    v35 = v49;
    v32 = y - v51 * 0.5;
    v31 = a6 - a5 * 0.5;
    v33 = a6 - a5;
    v36 = txa;
    goto LABEL_12;
  }

  if (!v28)
  {
    v39 = tx - x;
    v46 = MidY - y;
    [v9 frame];
    v40 = 0.5;
    v34 = x - v47 * 0.5;
    [v9 frame];
    v35 = v46;
    v32 = y - v48 * 0.5;
    goto LABEL_9;
  }

  v55 = MidY;
  v29 = x;
  v30 = y;
  v31 = 0.0;
  v32 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  v35 = 0.0;
  v36 = 0.0;
  if (v28 == 1)
  {
    v37 = v29;
    v38 = tx - v29;
    v67.origin.x = v12;
    v67.origin.y = v14;
    v67.size.width = v16;
    v67.size.height = v18;
    v39 = v38 - (CGRectGetWidth(v67) - v57);
    [v9 frame];
    v40 = 0.5;
    v34 = v37 - v41 * 0.5;
    [v9 frame];
    v35 = v55 - v30;
    v32 = v30 - v42 * 0.5;
LABEL_9:
    v31 = a5 * v40 + a6;
    v33 = a5 + a6;
    v36 = v39;
  }

LABEL_12:
  memset(&v64, 0, sizeof(v64));
  v52 = v33;
  CGAffineTransformMakeTranslation(&v64, v36, v35);
  v62 = v64;
  CGAffineTransformTranslate(&v63, &v62, v34, v32);
  v64 = v63;
  v62 = v63;
  CGAffineTransformRotate(&v63, &v62, v31);
  v64 = v63;
  v62 = v63;
  CGAffineTransformTranslate(&v63, &v62, -v34, -v32);
  v64 = v63;
  [v9 setTransform:&v63];

  return v52;
}

- (void)_layoutSubviewsWithoutAnimation
{
  v33 = 0.0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v3 = [(CDRichComplicationView *)self device];
  ___LayoutConstants_block_invoke_8(v3, &v28);

  [(CDRichComplicationCornerBaseGaugeView *)self _updateLabelMaxWidths];
  v4 = [(CDRichComplicationCornerView *)self cornerComplicationPosition];
  v5 = 0.0;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      goto LABEL_8;
    }

    if (v4 != 3)
    {
      goto LABEL_9;
    }

LABEL_7:
    v5 = -v33;
    goto LABEL_9;
  }

  if (!v4)
  {
    goto LABEL_7;
  }

  if (v4 == 1)
  {
LABEL_8:
    v5 = v33;
  }

LABEL_9:
  [(CDRichComplicationCornerView *)self innerComponentRotationInDegree];
  CLKDegreesToRadians();
  v7 = v6;
  v26 = 0.0;
  v27 = 0.0;
  v25 = 0.0;
  [(CDRichComplicationCornerBaseGaugeView *)self _calculateLabel:self->_leftLabel center:&v26 widthInRadius:&v25];
  v23 = 0.0;
  v24 = 0.0;
  v22 = 0.0;
  [(CDRichComplicationCornerBaseGaugeView *)self _calculateLabel:self->_rightLabel center:&v23 widthInRadius:&v22];
  [(CDRichComplicationCornerBaseGaugeView *)self _calculateProgressWidthWithLeftLabelWidth:v25 rightLabelWidth:v22];
  v9 = v8;
  v10 = v22;
  v11 = v9 + v25 + v22;
  if (v25 > 0.0)
  {
    [(CDRichComplicationCornerBaseGaugeView *)self _progressViewHorizontalPaddingInRadius];
    v11 = v11 + v12;
    v10 = v22;
  }

  if (v10 > 0.0)
  {
    [(CDRichComplicationCornerBaseGaugeView *)self _progressViewHorizontalPaddingInRadius];
    v11 = v11 + v13;
  }

  v14 = v5 + v7;
  v15 = [(CDRichComplicationCornerView *)self cornerComplicationPosition];
  if (v15 - 2 < 2)
  {
    v16 = v14 + v11 * 0.5;
    [(CDRichComplicationCornerBaseGaugeView *)self _progressViewHorizontalPaddingInRadius];
    v18 = -v19;
  }

  else if (v15 > 1)
  {
    v16 = 0.0;
    v18 = 0.0;
  }

  else
  {
    v16 = v14 + v11 * -0.5;
    [(CDRichComplicationCornerBaseGaugeView *)self _progressViewHorizontalPaddingInRadius];
    v18 = v17;
  }

  if (v25 > 0.0)
  {
    [(CDRichComplicationCornerBaseGaugeView *)self _layoutLabel:self->_leftLabel withLabelCenter:v26 labelWidthInRadius:v27 leftInRadius:v25, v16];
    v16 = v18 + v20;
  }

  [(CDRichComplicationCornerBaseGaugeView *)self _layoutProgressViewWithBeginAngle:v16 widthInRadius:v9 bottomPadding:*&v29];
  if (v22 > 0.0)
  {
    [(CDRichComplicationCornerBaseGaugeView *)self _layoutLabel:self->_rightLabel withLabelCenter:v23 labelWidthInRadius:v24 leftInRadius:v22, v18 + v21];
  }
}

- (void)_updateLabelMaxWidths
{
  p_leftLabel = &self->_leftLabel;
  v4 = [(CLKUICurvedColoringLabel *)self->_leftLabel textProvider];
  if (v4 && (v5 = v4, [(CLKUICurvedColoringLabel *)self->_rightLabel textProvider], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    CLKDegreesToRadians();
    [(CLKUICurvedColoringLabel *)*p_leftLabel setMaxAngularWidth:?];
    p_leftLabel = &self->_rightLabel;
  }

  else
  {
    v7 = [(CLKUICurvedColoringLabel *)*p_leftLabel textProvider];

    if (!v7)
    {
      p_leftLabel = &self->_rightLabel;
      v8 = [(CLKUICurvedColoringLabel *)self->_rightLabel textProvider];

      if (!v8)
      {
        return;
      }
    }
  }

  CLKDegreesToRadians();
  v9 = *p_leftLabel;

  [(CLKUICurvedColoringLabel *)v9 setMaxAngularWidth:?];
}

- (void)_enumerateLabelsWithBlock:(id)a3
{
  v5.receiver = self;
  v5.super_class = CDRichComplicationCornerBaseGaugeView;
  v4 = a3;
  [(CDRichComplicationView *)&v5 _enumerateLabelsWithBlock:v4];
  v4[2](v4, self->_leftLabel);
  v4[2](v4, self->_rightLabel);
}

- (void)_editingDidEnd
{
  [(CLKUICurvedColoringLabel *)self->_leftLabel editingDidEnd];
  rightLabel = self->_rightLabel;

  [(CLKUICurvedColoringLabel *)rightLabel editingDidEnd];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  [(CLKUICurvedColoringLabel *)self->_leftLabel transitionToMonochromeWithFraction:2 style:?];
  [(CLKUICurvedColoringLabel *)self->_rightLabel transitionToMonochromeWithFraction:2 style:a3];
  progressView = self->_progressView;

  [(CDRichComplicationProgressView *)progressView transitionToMonochromeWithFraction:a3];
}

- (void)updateMonochromeColor
{
  [(CLKUICurvedColoringLabel *)self->_leftLabel updateMonochromeColorWithStyle:2];
  [(CLKUICurvedColoringLabel *)self->_rightLabel updateMonochromeColorWithStyle:2];
  progressView = self->_progressView;

  [(CDRichComplicationProgressView *)progressView updateMonochromeColor];
}

@end