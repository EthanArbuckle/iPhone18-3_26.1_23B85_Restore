@interface CDRichComplicationCornerView
+ (CGSize)viewSizeForDevice:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CDRichComplicationCornerView)initWithFamily:(int64_t)a3;
- (CDRichComplicationCornerView)initWithFontFallback:(int64_t)a3;
- (id)_createAndAddColoringLabelWithFontSize:(double)a3;
- (id)_fontWithSize:(double)a3 fontWeight:(double)a4;
- (id)_fontWithSize:(double)a3 withFontDescriptor:(id)a4;
- (void)_createHitTestPathIfNecessary;
- (void)_layoutCurvedLabel:(id)a3 centerAngleInDegree:(double)a4 editingRotationInDegree:(double)a5;
- (void)_layoutView:(id)a3 origin:(CGPoint)a4 editingTranslation:(CGPoint)a5 editingRotationInDegree:(double)a6;
- (void)_transitToHighlightState:(BOOL)a3 fraction:(double)a4;
- (void)_updateColoringLabel:(id)a3 withFontWeight:(double)a4;
@end

@implementation CDRichComplicationCornerView

- (CDRichComplicationCornerView)initWithFontFallback:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CDRichComplicationCornerView;
  result = [(CDRichComplicationView *)&v5 initWithFamily:8];
  if (result)
  {
    result->_fontFallback = a3;
  }

  return result;
}

- (CDRichComplicationCornerView)initWithFamily:(int64_t)a3
{
  if (a3 == 8)
  {
    self = [(CDRichComplicationCornerView *)self init];
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(CDRichComplicationCornerView *)self _createHitTestPathIfNecessary];
  [(CDRichComplicationCornerView *)self bounds];
  v11.x = x;
  v11.y = y;
  v7 = CGRectContainsPoint(v12, v11);
  if (v7)
  {
    hitTestPath = self->_hitTestPath;

    LOBYTE(v7) = [(UIBezierPath *)hitTestPath containsPoint:x, y];
  }

  return v7;
}

- (void)_createHitTestPathIfNecessary
{
  if (!self->_hitTestPath || ([(CDRichComplicationCornerView *)self bounds], !CGRectEqualToRect(v19, self->_hitTestBounds)))
  {
    [(CDRichComplicationCornerView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    cornerComplicationPosition = self->_cornerComplicationPosition;
    v12 = [(CDRichComplicationView *)self device];
    v13 = [CDRichComplicationCornerUtilities hitTestPathWithViewBounds:cornerComplicationPosition position:v12 forDevice:v4, v6, v8, v10];
    hitTestPath = self->_hitTestPath;
    self->_hitTestPath = v13;

    [(CDRichComplicationCornerView *)self bounds];
    self->_hitTestBounds.origin.x = v15;
    self->_hitTestBounds.origin.y = v16;
    self->_hitTestBounds.size.width = v17;
    self->_hitTestBounds.size.height = v18;
  }
}

- (id)_createAndAddColoringLabelWithFontSize:(double)a3
{
  v5 = objc_opt_new();
  v6 = [(CDRichComplicationCornerView *)self _fontWithSize:a3 fontWeight:*MEMORY[0x277D74420]];
  [v5 setFont:v6];
  [v5 setUsesLegibility:0];
  [v5 setUppercase:1];
  [v5 setAlpha:1.0];
  v7 = [MEMORY[0x277D75348] whiteColor];
  [v5 setColor:v7];

  [v5 setUsesTextProviderTintColoring:1];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__CDRichComplicationCornerView__createAndAddColoringLabelWithFontSize___block_invoke;
  v11[3] = &unk_278DF36A0;
  objc_copyWeak(&v12, &location);
  [v5 setNowProvider:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__CDRichComplicationCornerView__createAndAddColoringLabelWithFontSize___block_invoke_2;
  v9[3] = &unk_278DF36C8;
  objc_copyWeak(&v10, &location);
  [v5 setNeedsResizeHandler:v9];
  [v5 setFilterProvider:self];
  [(CDRichComplicationCornerView *)self addSubview:v5];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v5;
}

id __71__CDRichComplicationCornerView__createAndAddColoringLabelWithFontSize___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
    WeakRetained = MEMORY[0x277CBBAD8];
  }

  v3 = [WeakRetained complicationDate];

  return v3;
}

void __71__CDRichComplicationCornerView__createAndAddColoringLabelWithFontSize___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
  v1 = [WeakRetained displayObserver];
  [v1 complicationDisplayNeedsResize:WeakRetained];
}

- (void)_updateColoringLabel:(id)a3 withFontWeight:(double)a4
{
  v5 = a3;
  v6 = [v5 font];
  [v6 pointSize];
  v7 = [CDRichComplicationCornerView _fontWithSize:"_fontWithSize:fontWeight:" fontWeight:?];
  [v5 setFont:v7];

  [(CDRichComplicationCornerView *)self setNeedsLayout];
}

- (id)_fontWithSize:(double)a3 fontWeight:(double)a4
{
  v5 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:a3 design:a4];
  v6 = [v5 CLKFontWithAlternativePunctuation];

  if (self->_fontFallback == 1)
  {
    v7 = [v6 CLKFontWithLooplessThaiFallback];

    v6 = v7;
  }

  return v6;
}

- (id)_fontWithSize:(double)a3 withFontDescriptor:(id)a4
{
  v9.receiver = self;
  v9.super_class = CDRichComplicationCornerView;
  v5 = [(CDRichComplicationView *)&v9 _fontWithSize:a4 withFontDescriptor:a3];
  v6 = v5;
  if (self->_fontFallback == 1)
  {
    v7 = [v5 CLKFontWithLooplessThaiFallback];

    v6 = v7;
  }

  return v6;
}

- (void)_layoutCurvedLabel:(id)a3 centerAngleInDegree:(double)a4 editingRotationInDegree:(double)a5
{
  v6 = a3;
  v7 = [v6 textProvider];
  if (v7)
  {

    goto LABEL_4;
  }

  v8 = [v6 imageView];

  if (v8)
  {
LABEL_4:
    v9 = *(MEMORY[0x277CBF2C0] + 16);
    *&v67.a = *MEMORY[0x277CBF2C0];
    *&v67.c = v9;
    *&v67.tx = *(MEMORY[0x277CBF2C0] + 32);
    [v6 setTransform:&v67];
    [v6 frame];
    [v6 sizeThatFits:{v10, v11}];
    [v6 setFrame:{0.0, 0.0, v12, v13}];
    v66 = *MEMORY[0x277CBF348];
    [v6 getTextCenter:&v66 startAngle:0 endAngle:0];
    v14 = [(CDRichComplicationView *)self device];
    [v14 screenBounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v68.origin.x = v16;
    v68.origin.y = v18;
    v68.size.width = v20;
    v68.size.height = v22;
    MidX = CGRectGetMidX(v68);
    v69.origin.x = v16;
    v69.origin.y = v18;
    v69.size.width = v20;
    v69.size.height = v22;
    MidY = CGRectGetMidY(v69);
    v25 = [(CDRichComplicationView *)self device];
    v26 = CDCornerComplicationSize(v25);
    v28 = v27;

    cornerComplicationPosition = self->_cornerComplicationPosition;
    if (cornerComplicationPosition <= 1)
    {
      if (!cornerComplicationPosition)
      {
        v48 = v66;
        v35 = MidX - *&v66;
        v49 = MidY - *(&v66 + 1);
        [v6 frame];
        v31 = *&v48 - v50 * 0.5;
        v51 = *(&v66 + 1);
        [v6 frame];
        v32 = v49;
        v30 = v51 - v52 * 0.5;
        goto LABEL_12;
      }

      v62 = MidY;
      v30 = 0.0;
      v31 = 0.0;
      v32 = 0.0;
      v33 = 0.0;
      if (cornerComplicationPosition == 1)
      {
        v34 = MidX - *&v66;
        v70.origin.x = v16;
        v70.origin.y = v18;
        v70.size.width = v20;
        v70.size.height = v22;
        v35 = v34 - (CGRectGetWidth(v70) - v26);
        v36 = v66;
        v37 = v62 - *(&v66 + 1);
        [v6 frame];
        v31 = *&v36 - v38 * 0.5;
        v39 = *(&v66 + 1);
        [v6 frame];
        v32 = v37;
        v30 = v39 - v40 * 0.5;
LABEL_12:
        v33 = v35;
      }

LABEL_15:
      memset(&v67, 0, sizeof(v67));
      CGAffineTransformMakeTranslation(&v67, v33, v32);
      v64 = v67;
      CGAffineTransformTranslate(&v65, &v64, v31, v30);
      v67 = v65;
      CLKDegreesToRadians();
      v64 = v67;
      CGAffineTransformRotate(&v65, &v64, v59);
      v67 = v65;
      v64 = v65;
      CGAffineTransformTranslate(&v65, &v64, -v31, -v30);
      v67 = v65;
      [v6 setTransform:&v65];
      goto LABEL_16;
    }

    if (cornerComplicationPosition == 2)
    {
      tx = MidX - *&v66;
      v53 = MidY - *(&v66 + 1);
      v73.origin.x = v16;
      v73.origin.y = v18;
      v73.size.width = v20;
      v73.size.height = v22;
      v54 = v53 - (CGRectGetHeight(v73) - v28);
      v55 = *&v66;
      [v6 frame];
      v31 = v55 - v56 * 0.5;
      v57 = *(&v66 + 1);
      [v6 frame];
      v32 = v54;
      v30 = v57 - v58 * 0.5;
    }

    else
    {
      v60 = v28;
      v63 = MidY;
      v30 = 0.0;
      v31 = 0.0;
      v32 = 0.0;
      v33 = 0.0;
      if (cornerComplicationPosition != 3)
      {
        goto LABEL_15;
      }

      v41 = MidX - *&v66;
      v71.origin.x = v16;
      v71.origin.y = v18;
      v71.size.width = v20;
      v71.size.height = v22;
      tx = v41 - (CGRectGetWidth(v71) - v26);
      v42 = v63 - *(&v66 + 1);
      v72.origin.x = v16;
      v72.origin.y = v18;
      v72.size.width = v20;
      v72.size.height = v22;
      v43 = v42 - (CGRectGetHeight(v72) - v60);
      v44 = *&v66;
      [v6 frame];
      v31 = v44 - v45 * 0.5;
      v46 = *(&v66 + 1);
      [v6 frame];
      v32 = v43;
      v30 = v46 - v47 * 0.5;
    }

    v33 = tx;
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_layoutView:(id)a3 origin:(CGPoint)a4 editingTranslation:(CGPoint)a5 editingRotationInDegree:(double)a6
{
  y = a4.y;
  x = a4.x;
  v9 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  cornerComplicationPosition = self->_cornerComplicationPosition;
  if (cornerComplicationPosition <= 1)
  {
    if (cornerComplicationPosition)
    {
      if (cornerComplicationPosition == 1)
      {
        v9 = -a5.x;
        v8 = a5.y;
      }

      goto LABEL_11;
    }

    v8 = a5.y;
LABEL_10:
    v9 = a5.x;
    goto LABEL_11;
  }

  if (cornerComplicationPosition == 2)
  {
    v8 = -a5.y;
    goto LABEL_10;
  }

  if (cornerComplicationPosition == 3)
  {
    v9 = -a5.x;
    v8 = -a5.y;
  }

LABEL_11:
  v11 = *(MEMORY[0x277CBF2C0] + 16);
  *&v17.a = *MEMORY[0x277CBF2C0];
  *&v17.c = v11;
  *&v17.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v16.a = *&v17.a;
  *&v16.c = v11;
  *&v16.tx = *&v17.tx;
  v12 = a3;
  CGAffineTransformTranslate(&v17, &v16, x, y);
  v15 = v17;
  CGAffineTransformTranslate(&v16, &v15, v9, v8);
  v17 = v16;
  CLKDegreesToRadians();
  v15 = v17;
  CGAffineTransformRotate(&v16, &v15, v13);
  v17 = v16;
  v15 = v16;
  CGAffineTransformTranslate(&v16, &v15, -v9, -v8);
  v17 = v16;
  CLKDegreesToRadians();
  v15 = v17;
  CGAffineTransformRotate(&v16, &v15, -v14);
  v17 = v16;
  [v12 setTransform:&v16];
}

- (void)_transitToHighlightState:(BOOL)a3 fraction:(double)a4
{
  CLKInterpolateBetweenFloatsClipped();
  CGAffineTransformMakeScale(&v7, v5, v5);
  v6 = v7;
  [(CDRichComplicationCornerView *)self setTransform:&v6];
}

+ (CGSize)viewSizeForDevice:(id)a3
{
  v3 = CDCornerComplicationSize(a3);
  result.height = v4;
  result.width = v3;
  return result;
}

@end