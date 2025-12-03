@interface CEKWheelScrubberViewCell
+ (CGSize)defaultContentSize;
+ (CGSize)defaultScreenScaleContentSize;
+ (CGSize)defaultSize;
- (CEKWheelScrubberViewCell)initWithFrame:(CGRect)frame;
- (void)_updateSelectionDot;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContentInsetWidth:(double)width;
- (void)setDotPlacement:(int64_t)placement;
- (void)setOverlayView:(id)view;
- (void)setSelected:(BOOL)selected;
- (void)setSelectionDotCenterTopSpacing:(double)spacing;
@end

@implementation CEKWheelScrubberViewCell

+ (CGSize)defaultScreenScaleContentSize
{
  [self defaultContentSize];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];

  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  UIRoundToScreenScale();
  v5 = v4;
  mainScreen3 = [MEMORY[0x1E69DCEB0] mainScreen];
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

- (CEKWheelScrubberViewCell)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = CEKWheelScrubberViewCell;
  v3 = [(CEKWheelScrubberViewCell *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    [objc_opt_class() defaultContentInsetWidth];
    v3->_contentInsetWidth = v4;
    contentView = [(CEKWheelScrubberViewCell *)v3 contentView];
    [contentView setAutoresizingMask:18];
    [(CEKWheelScrubberViewCell *)v3 bounds];
    v21 = CGRectInset(v20, v3->_contentInsetWidth, v3->_contentInsetWidth);
    v6 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];
    clippingView = v3->__clippingView;
    v3->__clippingView = v6;

    [(UIView *)v3->__clippingView setAutoresizingMask:18];
    [(UIView *)v3->__clippingView setClipsToBounds:1];
    [contentView addSubview:v3->__clippingView];
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

    [contentView addSubview:v3->__selectionDotView];
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
  _selectionDotView = [(CEKWheelScrubberViewCell *)self _selectionDotView];
  [_selectionDotView setBackgroundColor:v10];

  _selectionDotView2 = [(CEKWheelScrubberViewCell *)self _selectionDotView];
  layer = [_selectionDotView2 layer];
  [layer setCornerRadius:v5 * 0.5];

  _selectionDotView3 = [(CEKWheelScrubberViewCell *)self _selectionDotView];
  [_selectionDotView3 setAlpha:v3];
}

- (void)setSelectionDotCenterTopSpacing:(double)spacing
{
  if (self->_selectionDotCenterTopSpacing != spacing)
  {
    self->_selectionDotCenterTopSpacing = spacing;
    [(CEKWheelScrubberViewCell *)self setNeedsLayout];
  }
}

- (void)setDotPlacement:(int64_t)placement
{
  if (self->_dotPlacement != placement)
  {
    self->_dotPlacement = placement;
    [(CEKWheelScrubberViewCell *)self setNeedsLayout];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  isSelected = [(CEKWheelScrubberViewCell *)self isSelected];
  v6.receiver = self;
  v6.super_class = CEKWheelScrubberViewCell;
  [(CEKWheelScrubberViewCell *)&v6 setSelected:selectedCopy];
  if (isSelected != selectedCopy)
  {
    [(CEKWheelScrubberViewCell *)self _updateSelectionDot];
  }
}

- (void)setContentInsetWidth:(double)width
{
  if (self->_contentInsetWidth != width)
  {
    self->_contentInsetWidth = width;
    [(CEKWheelScrubberViewCell *)self setNeedsLayout];
  }
}

- (void)setOverlayView:(id)view
{
  viewCopy = view;
  overlayView = self->_overlayView;
  if (overlayView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)overlayView removeFromSuperview];
    objc_storeStrong(&self->_overlayView, view);
    overlayView = [(CEKWheelScrubberViewCell *)self addSubview:self->_overlayView];
    viewCopy = v7;
  }

  MEMORY[0x1EEE66BB8](overlayView, viewCopy);
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
  _clippingView = [(CEKWheelScrubberViewCell *)self _clippingView];
  v34 = x;
  [_clippingView setFrame:{x, y, width, height}];

  +[CEKWheelScrubberUtilities dotIndicatorDiameter];
  v19 = v18;
  [(CEKWheelScrubberViewCell *)self selectionDotCenterTopSpacing];
  dotPlacement = [(CEKWheelScrubberViewCell *)self dotPlacement];
  if (dotPlacement == 2 || dotPlacement == 1)
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

  else if (dotPlacement)
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

  _selectionDotView = [(CEKWheelScrubberViewCell *)self _selectionDotView];
  [_selectionDotView setFrame:{v22, v25, v19, v19}];

  overlayView = [(CEKWheelScrubberViewCell *)self overlayView];

  if (overlayView)
  {
    overlayView2 = [(CEKWheelScrubberViewCell *)self overlayView];
    [overlayView2 setBounds:{0.0, 0.0, width, height}];

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
    overlayView3 = [(CEKWheelScrubberViewCell *)self overlayView];
    [overlayView3 setCenter:{MidX, MidY}];
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
  [self defaultContentInsetWidth];
  v4 = v3;
  [self defaultContentSize];
  v6 = v5 + v4 * 2.0;
  v8 = v7 + v4 * 2.0;
  result.height = v8;
  result.width = v6;
  return result;
}

@end