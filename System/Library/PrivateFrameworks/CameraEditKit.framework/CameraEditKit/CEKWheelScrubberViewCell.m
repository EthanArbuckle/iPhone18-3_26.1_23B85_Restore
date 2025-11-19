@interface CEKWheelScrubberViewCell
+ (CGSize)defaultContentSize;
+ (CGSize)defaultScreenScaleContentSize;
+ (CGSize)defaultSize;
- (CEKWheelScrubberViewCell)initWithFrame:(CGRect)a3;
- (void)_updateSelectionDot;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContentInsetWidth:(double)a3;
- (void)setDotPlacement:(int64_t)a3;
- (void)setOverlayView:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSelectionDotCenterTopSpacing:(double)a3;
@end

@implementation CEKWheelScrubberViewCell

+ (CGSize)defaultScreenScaleContentSize
{
  [a1 defaultContentSize];
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 scale];

  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  UIRoundToScreenScale();
  v5 = v4;
  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  UIRoundToScreenScale();
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGSize)defaultContentSize
{
  v2 = CEKIsSmallPhone();
  v3 = 52.0;
  if (v2)
  {
    v3 = 41.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CEKWheelScrubberViewCell)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = CEKWheelScrubberViewCell;
  v3 = [(CEKWheelScrubberViewCell *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    [objc_opt_class() defaultContentInsetWidth];
    v3->_contentInsetWidth = v4;
    v5 = [(CEKWheelScrubberViewCell *)v3 contentView];
    [v5 setAutoresizingMask:18];
    [(CEKWheelScrubberViewCell *)v3 bounds];
    v21 = CGRectInset(v20, v3->_contentInsetWidth, v3->_contentInsetWidth);
    v6 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];
    clippingView = v3->__clippingView;
    v3->__clippingView = v6;

    [(UIView *)v3->__clippingView setAutoresizingMask:18];
    [(UIView *)v3->__clippingView setClipsToBounds:1];
    [v5 addSubview:v3->__clippingView];
    [(UIView *)v3->__clippingView bounds];
    v12 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
    itemView = v3->_itemView;
    v3->_itemView = v12;

    [(UIView *)v3->_itemView setAutoresizingMask:18];
    [(UIView *)v3->_itemView setClipsToBounds:1];
    [(UIView *)v3->__clippingView addSubview:v3->_itemView];
    v14 = objc_alloc(MEMORY[0x1E69DD250]);
    v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    selectionDotView = v3->__selectionDotView;
    v3->__selectionDotView = v15;

    [v5 addSubview:v3->__selectionDotView];
    [(CEKWheelScrubberViewCell *)v3 _updateSelectionDot];
    v3->_dotPlacement = 0;
    v17 = v3;
  }

  return v3;
}

- (void)_updateSelectionDot
{
  if ([(CEKWheelScrubberViewCell *)self isSelected])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  +[CEKWheelScrubberUtilities dotIndicatorDiameter];
  v5 = v4;
  v10 = +[CEKWheelScrubberUtilities dotIndicatorBackgroundColor];
  v6 = [(CEKWheelScrubberViewCell *)self _selectionDotView];
  [v6 setBackgroundColor:v10];

  v7 = [(CEKWheelScrubberViewCell *)self _selectionDotView];
  v8 = [v7 layer];
  [v8 setCornerRadius:v5 * 0.5];

  v9 = [(CEKWheelScrubberViewCell *)self _selectionDotView];
  [v9 setAlpha:v3];
}

- (void)setSelectionDotCenterTopSpacing:(double)a3
{
  if (self->_selectionDotCenterTopSpacing != a3)
  {
    self->_selectionDotCenterTopSpacing = a3;
    [(CEKWheelScrubberViewCell *)self setNeedsLayout];
  }
}

- (void)setDotPlacement:(int64_t)a3
{
  if (self->_dotPlacement != a3)
  {
    self->_dotPlacement = a3;
    [(CEKWheelScrubberViewCell *)self setNeedsLayout];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(CEKWheelScrubberViewCell *)self isSelected];
  v6.receiver = self;
  v6.super_class = CEKWheelScrubberViewCell;
  [(CEKWheelScrubberViewCell *)&v6 setSelected:v3];
  if (v5 != v3)
  {
    [(CEKWheelScrubberViewCell *)self _updateSelectionDot];
  }
}

- (void)setContentInsetWidth:(double)a3
{
  if (self->_contentInsetWidth != a3)
  {
    self->_contentInsetWidth = a3;
    [(CEKWheelScrubberViewCell *)self setNeedsLayout];
  }
}

- (void)setOverlayView:(id)a3
{
  v5 = a3;
  overlayView = self->_overlayView;
  if (overlayView != v5)
  {
    v7 = v5;
    [(UIView *)overlayView removeFromSuperview];
    objc_storeStrong(&self->_overlayView, a3);
    overlayView = [(CEKWheelScrubberViewCell *)self addSubview:self->_overlayView];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](overlayView, v5);
}

- (void)layoutSubviews
{
  v35.receiver = self;
  v35.super_class = CEKWheelScrubberViewCell;
  [(CEKWheelScrubberViewCell *)&v35 layoutSubviews];
  [(CEKWheelScrubberViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CEKWheelScrubberViewCell *)self contentInsetWidth];
  v12 = v11;
  v36.origin.x = v4;
  v36.origin.y = v6;
  v36.size.width = v8;
  v36.size.height = v10;
  v37 = CGRectInset(v36, v12, v12);
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  v17 = [(CEKWheelScrubberViewCell *)self _clippingView];
  v34 = x;
  [v17 setFrame:{x, y, width, height}];

  +[CEKWheelScrubberUtilities dotIndicatorDiameter];
  v19 = v18;
  [(CEKWheelScrubberViewCell *)self selectionDotCenterTopSpacing];
  v20 = [(CEKWheelScrubberViewCell *)self dotPlacement];
  if (v20 == 2 || v20 == 1)
  {
    v40.origin.x = v4;
    v40.origin.y = v6;
    v40.size.width = v8;
    v40.size.height = v10;
    CGRectGetMidX(v40);
    UIRoundToViewScale();
    v25 = v26;
    v23 = v34;
    v41.origin.x = v34;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    CGRectGetMinX(v41);
    UIRoundToViewScale();
    v22 = v27;
  }

  else if (v20)
  {
    v22 = *MEMORY[0x1E695F058];
    v25 = *(MEMORY[0x1E695F058] + 8);
    v23 = v34;
  }

  else
  {
    v38.origin.x = v4;
    v38.origin.y = v6;
    v38.size.width = v8;
    v38.size.height = v10;
    CGRectGetMidX(v38);
    UIRoundToViewScale();
    v22 = v21;
    v23 = v34;
    v39.origin.x = v34;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    CGRectGetMinY(v39);
    UIRoundToViewScale();
    v25 = v24;
  }

  v28 = [(CEKWheelScrubberViewCell *)self _selectionDotView];
  [v28 setFrame:{v22, v25, v19, v19}];

  v29 = [(CEKWheelScrubberViewCell *)self overlayView];

  if (v29)
  {
    v30 = [(CEKWheelScrubberViewCell *)self overlayView];
    [v30 setBounds:{0.0, 0.0, width, height}];

    v42.origin.x = v23;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    MidX = CGRectGetMidX(v42);
    v43.origin.x = v23;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    MidY = CGRectGetMidY(v43);
    v33 = [(CEKWheelScrubberViewCell *)self overlayView];
    [v33 setCenter:{MidX, MidY}];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CEKWheelScrubberViewCell;
  [(CEKWheelScrubberViewCell *)&v3 prepareForReuse];
  [(CEKWheelScrubberViewCell *)self setOverlayView:0];
}

+ (CGSize)defaultSize
{
  [a1 defaultContentInsetWidth];
  v4 = v3;
  [a1 defaultContentSize];
  v6 = v5 + v4 * 2.0;
  v8 = v7 + v4 * 2.0;
  result.height = v8;
  result.width = v6;
  return result;
}

@end