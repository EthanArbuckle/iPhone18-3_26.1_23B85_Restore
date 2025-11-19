@interface MUFeatureDiscoveryAnnotationView
- (MUFeatureDiscoveryAnnotationView)initWithFrame:(CGRect)a3;
- (double)_upAndDownStartingXLocationForBounds:(CGRect)a3;
- (double)arrowOffset;
- (void)_addArrowCurveToPath:(id)a3 direction:(unint64_t)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 peakPoint:(CGPoint)a7;
- (void)_addLineWithSlightTrailingAndLeadingCurveToPath:(id)a3 startPoint:(CGPoint)a4 endPoint:(CGPoint)a5 leadingEdge:(BOOL)a6 isVertical:(BOOL)a7;
- (void)_setupSubviews;
- (void)_updateBackground;
- (void)_updateShapeLayerPath;
- (void)_updateUI;
- (void)layoutSubviews;
- (void)setBubblePosition:(unint64_t)a3;
- (void)setCornerRadius:(double)a3;
- (void)setDrawsBackground:(BOOL)a3;
- (void)setFloatingIndicator:(BOOL)a3;
- (void)setShowBubbleIndicator:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation MUFeatureDiscoveryAnnotationView

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MUFeatureDiscoveryAnnotationView;
  [(MUFeatureDiscoveryAnnotationView *)&v11 traitCollectionDidChange:v4];
  v5 = [(MUFeatureDiscoveryAnnotationView *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  if (v6 == [v4 userInterfaceStyle])
  {
    v7 = [(MUFeatureDiscoveryAnnotationView *)self traitCollection];
    v8 = [v7 preferredContentSizeCategory];
    v9 = [v4 preferredContentSizeCategory];
    v10 = UIContentSizeCategoryCompareToCategory(v8, v9);

    if (v10 == NSOrderedSame)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(MUFeatureDiscoveryAnnotationView *)self _updateUI];
LABEL_6:
}

- (void)_addArrowCurveToPath:(id)a3 direction:(unint64_t)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 peakPoint:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  v9 = a6.y;
  v10 = a6.x;
  v11 = a5.y;
  v12 = a5.x;
  v14 = a7.x + 2.0;
  v15 = a7.y + 1.0;
  v16 = a3;
  [(MUFeatureDiscoveryAnnotationView *)self _addLineWithSlightTrailingAndLeadingCurveToPath:v16 startPoint:1 endPoint:0 leadingEdge:v10 isVertical:v9, v14, v15];
  [v16 addCurveToPoint:x + -2.0 controlPoint1:v15 controlPoint2:{x, y, x, y}];
  [(MUFeatureDiscoveryAnnotationView *)self _addLineWithSlightTrailingAndLeadingCurveToPath:v16 startPoint:0 endPoint:0 leadingEdge:x + -2.0 isVertical:v15, v12, v11];
}

- (void)_addLineWithSlightTrailingAndLeadingCurveToPath:(id)a3 startPoint:(CGPoint)a4 endPoint:(CGPoint)a5 leadingEdge:(BOOL)a6 isVertical:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  y = a5.y;
  x = a5.x;
  v11 = a4.y;
  v12 = a4.x;
  v13 = (a5.x - a4.x) * 0.5;
  v14 = (a5.y - a4.y) * 0.5;
  v19 = a3;
  if (v8)
  {
    v15 = v11 - v14;
    v16 = v12 - v13;
    if (v7)
    {
      v16 = v12;
    }

    else
    {
      v15 = v11;
    }

    [v19 moveToPoint:{v16, v15}];
    [v19 addCurveToPoint:v13 + v12 controlPoint1:v14 + v11 controlPoint2:{v12, v11, v12, v11}];
    [v19 addLineToPoint:{x, y}];
  }

  else
  {
    if (v7)
    {
      v17 = x;
    }

    else
    {
      v17 = v13 + x;
    }

    if (v7)
    {
      v18 = v14 + y;
    }

    else
    {
      v18 = y;
    }

    [v19 addLineToPoint:{x - v13, y - v14, v14 + y}];
    [v19 addCurveToPoint:v17 controlPoint1:v18 controlPoint2:{x, y, x, y}];
  }
}

- (double)_upAndDownStartingXLocationForBounds:(CGRect)a3
{
  width = a3.size.width;
  x = a3.origin.x;
  [(MUFeatureDiscoveryAnnotationView *)self arrowBase:a3.origin.x];
  v7 = v6;
  [(MUFeatureDiscoveryAnnotationView *)self arrowOffset];
  return fmin(fmax(x, v8 + x + (width - v7) * 0.5), x + width - v7);
}

- (void)_updateShapeLayerPath
{
  v3 = [(MUFeatureDiscoveryAnnotationView *)self backgroundView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [MEMORY[0x1E69DC728] bezierPath];
  if ([(MUFeatureDiscoveryAnnotationView *)self showBubbleIndicator])
  {
    [(MUFeatureDiscoveryAnnotationView *)self arrowHeight];
    v14 = v13 + v7;
    [(MUFeatureDiscoveryAnnotationView *)self arrowHeight];
    v16 = v11 - v15;
    [(MUFeatureDiscoveryAnnotationView *)self _upAndDownStartingXLocationForBounds:v5, v14, v9, v16];
    bubblePosition = self->_bubblePosition;
    if (bubblePosition == 1)
    {
      v17 = v5 + 30.0;
    }

    if (bubblePosition == 2)
    {
      v17 = v9 * 0.5 + -13.0;
    }

    if (bubblePosition == 3)
    {
      v19 = v9 + -30.0;
    }

    else
    {
      v19 = v17;
    }

    [(MUFeatureDiscoveryAnnotationView *)self arrowBase:v17];
    v21 = v20 + v19;
    [(MUFeatureDiscoveryAnnotationView *)self arrowBase];
    v23 = v19 + v22 * 0.5;
    [(MUFeatureDiscoveryAnnotationView *)self arrowHeight];
    v25 = v14 - v24;
    [(MUFeatureDiscoveryAnnotationView *)self cornerRadius];
    v31 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:-1 byRoundingCorners:v5 cornerRadii:{v14, v9, v16, v26, v26}];

    [(MUFeatureDiscoveryAnnotationView *)self _addArrowCurveToPath:v31 direction:1 startPoint:v19 endPoint:v14 peakPoint:v21, v14, v23, v25];
  }

  else
  {
    [(MUFeatureDiscoveryAnnotationView *)self cornerRadius];
    v31 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:-1 byRoundingCorners:v5 cornerRadii:{v7, v9, v11, v27, v27}];
  }

  v28 = [(MUFeatureDiscoveryAnnotationView *)self tipMaskView];
  v29 = [v28 layer];

  v30 = v31;
  [v29 setPath:{objc_msgSend(v31, "CGPath")}];
}

- (void)setBubblePosition:(unint64_t)a3
{
  if (self->_bubblePosition != a3)
  {
    self->_bubblePosition = a3;
    [(MUFeatureDiscoveryAnnotationView *)self _updateShapeLayerPath];
  }
}

- (void)_updateBackground
{
  if (self->_drawsBackground)
  {
    [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v4 = ;
  v3 = [(MUFeatureDiscoveryAnnotationView *)self backgroundView];
  [v3 setBackgroundColor:v4];
}

- (void)_updateUI
{
  v3 = [(MUFeatureDiscoveryAnnotationView *)self traitCollection];
  [v3 userInterfaceStyle];

  v4 = [MEMORY[0x1E69DC888] clearColor];
  [(MUFeatureDiscoveryAnnotationView *)self setBackgroundColor:v4];

  [(MUFeatureDiscoveryAnnotationView *)self _updateBackground];
  v5 = 0.0;
  if ([(MUFeatureDiscoveryAnnotationView *)self showBubbleIndicator]&& [(MUFeatureDiscoveryAnnotationView *)self floatingIndicator])
  {
    [(MUFeatureDiscoveryAnnotationView *)self arrowHeight];
    v5 = -v6;
    [(MUFeatureDiscoveryAnnotationView *)self setClipsToBounds:0];
  }

  topLayoutConstraint = self->_topLayoutConstraint;

  [(NSLayoutConstraint *)topLayoutConstraint setConstant:v5];
}

- (void)setFloatingIndicator:(BOOL)a3
{
  if (self->_floatingIndicator != a3)
  {
    self->_floatingIndicator = a3;
    [(MUFeatureDiscoveryAnnotationView *)self _updateUI];
  }
}

- (void)setShowBubbleIndicator:(BOOL)a3
{
  if (self->_showBubbleIndicator != a3)
  {
    self->_showBubbleIndicator = a3;
    [(MUFeatureDiscoveryAnnotationView *)self _updateUI];
  }
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    [(MUFeatureDiscoveryAnnotationView *)self setNeedsLayout];
  }
}

- (void)setDrawsBackground:(BOOL)a3
{
  if (self->_drawsBackground != a3)
  {
    self->_drawsBackground = a3;
    [(MUFeatureDiscoveryAnnotationView *)self _updateBackground];
  }
}

- (void)_setupSubviews
{
  v23[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(_TipMaskView);
  tipMaskView = self->_tipMaskView;
  self->_tipMaskView = v3;

  v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
  backgroundView = self->_backgroundView;
  self->_backgroundView = v5;

  [(UIView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUFeatureDiscoveryAnnotationView *)self addSubview:self->_backgroundView];
  v7 = [(UIView *)self->_backgroundView topAnchor];
  v8 = [(MUFeatureDiscoveryAnnotationView *)self topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  topLayoutConstraint = self->_topLayoutConstraint;
  self->_topLayoutConstraint = v9;

  v22 = MEMORY[0x1E696ACD8];
  v23[0] = self->_topLayoutConstraint;
  v11 = [(UIView *)self->_backgroundView bottomAnchor];
  v12 = [(MUFeatureDiscoveryAnnotationView *)self bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v23[1] = v13;
  v14 = [(UIView *)self->_backgroundView leadingAnchor];
  v15 = [(MUFeatureDiscoveryAnnotationView *)self leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v23[2] = v16;
  v17 = [(UIView *)self->_backgroundView trailingAnchor];
  v18 = [(MUFeatureDiscoveryAnnotationView *)self trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v23[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  [v22 activateConstraints:v20];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = MUFeatureDiscoveryAnnotationView;
  [(MUFeatureDiscoveryAnnotationView *)&v5 layoutSubviews];
  v3 = [(MUFeatureDiscoveryAnnotationView *)self tipMaskView];
  v4 = [(MUFeatureDiscoveryAnnotationView *)self backgroundView];
  [v4 setMaskView:v3];

  [(MUFeatureDiscoveryAnnotationView *)self _updateShapeLayerPath];
}

- (double)arrowOffset
{
  sourceView = self->_sourceView;
  if (!sourceView)
  {
    return 0.0;
  }

  [(UIView *)sourceView frame];
  v5 = v4;
  [(UIView *)self->_sourceView frame];
  v7 = v6;
  [(MUFeatureDiscoveryAnnotationView *)self frame];
  v9 = v8;
  [(MUFeatureDiscoveryAnnotationView *)self frame];
  return v5 - v9 + (v7 - v10) * 0.5;
}

- (MUFeatureDiscoveryAnnotationView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MUFeatureDiscoveryAnnotationView;
  v3 = [(MUFeatureDiscoveryAnnotationView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_bubblePosition = 0;
    v3->_drawsBackground = 1;
    [(MUFeatureDiscoveryAnnotationView *)v3 _setupSubviews];
    [(MUFeatureDiscoveryAnnotationView *)v4 _updateUI];
  }

  return v4;
}

@end