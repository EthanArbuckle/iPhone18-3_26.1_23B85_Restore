@interface MUFeatureDiscoveryAnnotationView
- (MUFeatureDiscoveryAnnotationView)initWithFrame:(CGRect)frame;
- (double)_upAndDownStartingXLocationForBounds:(CGRect)bounds;
- (double)arrowOffset;
- (void)_addArrowCurveToPath:(id)path direction:(unint64_t)direction startPoint:(CGPoint)point endPoint:(CGPoint)endPoint peakPoint:(CGPoint)peakPoint;
- (void)_addLineWithSlightTrailingAndLeadingCurveToPath:(id)path startPoint:(CGPoint)point endPoint:(CGPoint)endPoint leadingEdge:(BOOL)edge isVertical:(BOOL)vertical;
- (void)_setupSubviews;
- (void)_updateBackground;
- (void)_updateShapeLayerPath;
- (void)_updateUI;
- (void)layoutSubviews;
- (void)setBubblePosition:(unint64_t)position;
- (void)setCornerRadius:(double)radius;
- (void)setDrawsBackground:(BOOL)background;
- (void)setFloatingIndicator:(BOOL)indicator;
- (void)setShowBubbleIndicator:(BOOL)indicator;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MUFeatureDiscoveryAnnotationView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v11.receiver = self;
  v11.super_class = MUFeatureDiscoveryAnnotationView;
  [(MUFeatureDiscoveryAnnotationView *)&v11 traitCollectionDidChange:changeCopy];
  traitCollection = [(MUFeatureDiscoveryAnnotationView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  if (userInterfaceStyle == [changeCopy userInterfaceStyle])
  {
    traitCollection2 = [(MUFeatureDiscoveryAnnotationView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v10 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2);

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

- (void)_addArrowCurveToPath:(id)path direction:(unint64_t)direction startPoint:(CGPoint)point endPoint:(CGPoint)endPoint peakPoint:(CGPoint)peakPoint
{
  y = peakPoint.y;
  x = peakPoint.x;
  v9 = endPoint.y;
  v10 = endPoint.x;
  v11 = point.y;
  v12 = point.x;
  v14 = peakPoint.x + 2.0;
  v15 = peakPoint.y + 1.0;
  pathCopy = path;
  [(MUFeatureDiscoveryAnnotationView *)self _addLineWithSlightTrailingAndLeadingCurveToPath:pathCopy startPoint:1 endPoint:0 leadingEdge:v10 isVertical:v9, v14, v15];
  [pathCopy addCurveToPoint:x + -2.0 controlPoint1:v15 controlPoint2:{x, y, x, y}];
  [(MUFeatureDiscoveryAnnotationView *)self _addLineWithSlightTrailingAndLeadingCurveToPath:pathCopy startPoint:0 endPoint:0 leadingEdge:x + -2.0 isVertical:v15, v12, v11];
}

- (void)_addLineWithSlightTrailingAndLeadingCurveToPath:(id)path startPoint:(CGPoint)point endPoint:(CGPoint)endPoint leadingEdge:(BOOL)edge isVertical:(BOOL)vertical
{
  verticalCopy = vertical;
  edgeCopy = edge;
  y = endPoint.y;
  x = endPoint.x;
  v11 = point.y;
  v12 = point.x;
  v13 = (endPoint.x - point.x) * 0.5;
  v14 = (endPoint.y - point.y) * 0.5;
  pathCopy = path;
  if (edgeCopy)
  {
    v15 = v11 - v14;
    v16 = v12 - v13;
    if (verticalCopy)
    {
      v16 = v12;
    }

    else
    {
      v15 = v11;
    }

    [pathCopy moveToPoint:{v16, v15}];
    [pathCopy addCurveToPoint:v13 + v12 controlPoint1:v14 + v11 controlPoint2:{v12, v11, v12, v11}];
    [pathCopy addLineToPoint:{x, y}];
  }

  else
  {
    if (verticalCopy)
    {
      v17 = x;
    }

    else
    {
      v17 = v13 + x;
    }

    if (verticalCopy)
    {
      v18 = v14 + y;
    }

    else
    {
      v18 = y;
    }

    [pathCopy addLineToPoint:{x - v13, y - v14, v14 + y}];
    [pathCopy addCurveToPoint:v17 controlPoint1:v18 controlPoint2:{x, y, x, y}];
  }
}

- (double)_upAndDownStartingXLocationForBounds:(CGRect)bounds
{
  width = bounds.size.width;
  x = bounds.origin.x;
  [(MUFeatureDiscoveryAnnotationView *)self arrowBase:bounds.origin.x];
  v7 = v6;
  [(MUFeatureDiscoveryAnnotationView *)self arrowOffset];
  return fmin(fmax(x, v8 + x + (width - v7) * 0.5), x + width - v7);
}

- (void)_updateShapeLayerPath
{
  backgroundView = [(MUFeatureDiscoveryAnnotationView *)self backgroundView];
  [backgroundView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
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

  tipMaskView = [(MUFeatureDiscoveryAnnotationView *)self tipMaskView];
  layer = [tipMaskView layer];

  v30 = v31;
  [layer setPath:{objc_msgSend(v31, "CGPath")}];
}

- (void)setBubblePosition:(unint64_t)position
{
  if (self->_bubblePosition != position)
  {
    self->_bubblePosition = position;
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
  backgroundView = [(MUFeatureDiscoveryAnnotationView *)self backgroundView];
  [backgroundView setBackgroundColor:v4];
}

- (void)_updateUI
{
  traitCollection = [(MUFeatureDiscoveryAnnotationView *)self traitCollection];
  [traitCollection userInterfaceStyle];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(MUFeatureDiscoveryAnnotationView *)self setBackgroundColor:clearColor];

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

- (void)setFloatingIndicator:(BOOL)indicator
{
  if (self->_floatingIndicator != indicator)
  {
    self->_floatingIndicator = indicator;
    [(MUFeatureDiscoveryAnnotationView *)self _updateUI];
  }
}

- (void)setShowBubbleIndicator:(BOOL)indicator
{
  if (self->_showBubbleIndicator != indicator)
  {
    self->_showBubbleIndicator = indicator;
    [(MUFeatureDiscoveryAnnotationView *)self _updateUI];
  }
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(MUFeatureDiscoveryAnnotationView *)self setNeedsLayout];
  }
}

- (void)setDrawsBackground:(BOOL)background
{
  if (self->_drawsBackground != background)
  {
    self->_drawsBackground = background;
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
  topAnchor = [(UIView *)self->_backgroundView topAnchor];
  topAnchor2 = [(MUFeatureDiscoveryAnnotationView *)self topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  topLayoutConstraint = self->_topLayoutConstraint;
  self->_topLayoutConstraint = v9;

  v22 = MEMORY[0x1E696ACD8];
  v23[0] = self->_topLayoutConstraint;
  bottomAnchor = [(UIView *)self->_backgroundView bottomAnchor];
  bottomAnchor2 = [(MUFeatureDiscoveryAnnotationView *)self bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v23[1] = v13;
  leadingAnchor = [(UIView *)self->_backgroundView leadingAnchor];
  leadingAnchor2 = [(MUFeatureDiscoveryAnnotationView *)self leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v23[2] = v16;
  trailingAnchor = [(UIView *)self->_backgroundView trailingAnchor];
  trailingAnchor2 = [(MUFeatureDiscoveryAnnotationView *)self trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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
  tipMaskView = [(MUFeatureDiscoveryAnnotationView *)self tipMaskView];
  backgroundView = [(MUFeatureDiscoveryAnnotationView *)self backgroundView];
  [backgroundView setMaskView:tipMaskView];

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

- (MUFeatureDiscoveryAnnotationView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUFeatureDiscoveryAnnotationView;
  v3 = [(MUFeatureDiscoveryAnnotationView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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