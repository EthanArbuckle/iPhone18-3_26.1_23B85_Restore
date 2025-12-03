@interface CKTranscriptLegibilityButton
+ (CKTranscriptLegibilityButton)buttonWithConfiguration:(id)configuration primaryAction:(id)action;
+ (CKTranscriptLegibilityButton)buttonWithType:(int64_t)type;
- (BOOL)isLegibilityViewRequired;
- (CGRect)legibilityViewFrame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKTranscriptLegibilityButton)initWithFrame:(CGRect)frame;
- (CKTranscriptLegibilityButton)initWithFrame:(CGRect)frame internalButton:(id)button;
- (UIEdgeInsets)contentEdgeInsets;
- (id)_createLegibilityView;
- (id)_lazyLoadedLegibilityView;
- (int64_t)titleLabelLineBreakMode;
- (int64_t)titleLabelNumberOfLines;
- (void)_registerForTraitCollectionChanges;
- (void)_removeLegibilityViewIfNecessary;
- (void)_setTouchInsets:(UIEdgeInsets)insets;
- (void)_updateLegibilityView;
- (void)deferredUpdateLegibilityView;
- (void)layoutSubviews;
- (void)setAttributedTitle:(id)title forState:(unint64_t)state;
- (void)setConfiguration:(id)configuration;
- (void)setContentEdgeInsets:(UIEdgeInsets)insets;
- (void)setContentHorizontalAlignment:(int64_t)alignment;
- (void)setTitleLabelLineBreakMode:(int64_t)mode;
- (void)setTitleLabelNumberOfLines:(int64_t)lines;
- (void)updateWantsExtendedDynamicRangeContent;
@end

@implementation CKTranscriptLegibilityButton

- (CKTranscriptLegibilityButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = [[CKTranscriptLegibilityInternalButton alloc] initWithFrame:0.0, 0.0, frame.size.width, frame.size.height];
  height = [(CKTranscriptLegibilityButton *)self initWithFrame:v8 internalButton:x, y, width, height];

  return height;
}

- (CKTranscriptLegibilityButton)initWithFrame:(CGRect)frame internalButton:(id)button
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  buttonCopy = button;
  v14.receiver = self;
  v14.super_class = CKTranscriptLegibilityButton;
  height = [(CKTranscriptLegibilityButton *)&v14 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_button, button);
    [(CKTranscriptLegibilityButton *)v12 addSubview:v12->_button];
    [(CKTranscriptLegibilityButton *)v12 updateWantsExtendedDynamicRangeContent];
    [(CKTranscriptLegibilityButton *)v12 _registerForTraitCollectionChanges];
  }

  return v12;
}

- (void)_setTouchInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v8.receiver = self;
  v8.super_class = CKTranscriptLegibilityButton;
  [(CKTranscriptLegibilityButton *)&v8 _setTouchInsets:?];
  [(CKTranscriptLegibilityInternalButton *)self->_button _setTouchInsets:top, left, bottom, right];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(CKTranscriptLegibilityInternalButton *)self->_button sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)updateWantsExtendedDynamicRangeContent
{
  traitCollection = [(CKTranscriptLegibilityButton *)self traitCollection];
  isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];

  layer = [(CKTranscriptLegibilityInternalButton *)self->_button layer];
  [layer setWantsExtendedDynamicRangeContent:isTranscriptBackgroundActive];

  titleLabel = [(CKTranscriptLegibilityInternalButton *)self->_button titleLabel];
  layer2 = [titleLabel layer];
  [layer2 setWantsExtendedDynamicRangeContent:isTranscriptBackgroundActive];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = CKTranscriptLegibilityButton;
  [(CKTranscriptLegibilityButton *)&v15 layoutSubviews];
  [(CKTranscriptLegibilityButton *)self bounds];
  [(CKTranscriptLegibilityInternalButton *)self->_button setFrame:?];
  if (self->_legibilityView || ([(CKTranscriptLegibilityButton *)self deferredUpdateLegibilityView], self->_legibilityView))
  {
    [(CKTranscriptLegibilityButton *)self legibilityViewFrame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(PLKLegibilityView *)self->_legibilityView frame];
    v12 = v11;
    v14 = v13;
    [(PLKLegibilityView *)self->_legibilityView setFrame:v4, v6, v8, v10];
    if (!CKSizeApproximatelyEqualToSizeWithTolerance(v12, v14, v8, v10, 0.1))
    {
      [(CKTranscriptLegibilityButton *)self deferredUpdateLegibilityView];
    }
  }
}

- (void)_registerForTraitCollectionChanges
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v4 = [(CKTranscriptLegibilityButton *)self registerForTraitChanges:v3 withHandler:&__block_literal_global_279];
}

void __66__CKTranscriptLegibilityButton__registerForTraitCollectionChanges__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 updateWantsExtendedDynamicRangeContent];
  [v2 deferredUpdateLegibilityView];
}

- (CGRect)legibilityViewFrame
{
  [(CKTranscriptLegibilityInternalButton *)self->_button layoutIfNeeded];
  titleLabel = [(CKTranscriptLegibilityInternalButton *)self->_button titleLabel];
  [titleLabel bounds];
  [(CKTranscriptLegibilityButton *)self convertRect:titleLabel fromView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)isLegibilityViewRequired
{
  traitCollection = [(CKTranscriptLegibilityButton *)self traitCollection];
  isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];

  return isTranscriptBackgroundActive;
}

- (void)deferredUpdateLegibilityView
{
  v4[1] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__updateLegibilityView object:0];
  v4[0] = *MEMORY[0x1E695DA28];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [(CKTranscriptLegibilityButton *)self performSelector:sel__updateLegibilityView withObject:0 afterDelay:v3 inModes:0.0];
}

- (void)_updateLegibilityView
{
  if ([(CKTranscriptLegibilityButton *)self isLegibilityViewRequired]&& ([(CKTranscriptLegibilityButton *)self legibilityViewFrame], !CGRectIsEmpty(v8)))
  {
    titleLabel = [(CKTranscriptLegibilityInternalButton *)self->_button titleLabel];
    if (titleLabel)
    {
      legibilityDescriptor = [(CKTranscriptLegibilityButton *)self legibilityDescriptor];
      v4 = [MEMORY[0x1E69C5420] legibilityContentForLabel:titleLabel legibilityDescriptor:legibilityDescriptor];
      if (v4)
      {
        _lazyLoadedLegibilityView = [(CKTranscriptLegibilityButton *)self _lazyLoadedLegibilityView];
        [_lazyLoadedLegibilityView setContent:v4];
      }

      else
      {
        [(CKTranscriptLegibilityButton *)self _removeLegibilityViewIfNecessary];
      }
    }

    else
    {
      [(CKTranscriptLegibilityButton *)self _removeLegibilityViewIfNecessary];
    }
  }

  else
  {

    [(CKTranscriptLegibilityButton *)self _removeLegibilityViewIfNecessary];
  }
}

- (id)_createLegibilityView
{
  v2 = objc_alloc_init(MEMORY[0x1E69C5440]);
  [v2 setHideForegroundContent:1];

  return v2;
}

- (id)_lazyLoadedLegibilityView
{
  legibilityView = self->_legibilityView;
  if (!legibilityView)
  {
    _createLegibilityView = [(CKTranscriptLegibilityButton *)self _createLegibilityView];
    v5 = self->_legibilityView;
    self->_legibilityView = _createLegibilityView;

    [(CKTranscriptLegibilityButton *)self insertSubview:self->_legibilityView belowSubview:self->_button];
    [(CKTranscriptLegibilityButton *)self legibilityViewFrame];
    [(PLKLegibilityView *)self->_legibilityView setFrame:?];
    legibilityView = self->_legibilityView;
  }

  return legibilityView;
}

- (void)_removeLegibilityViewIfNecessary
{
  legibilityView = self->_legibilityView;
  if (legibilityView)
  {
    [(PLKLegibilityView *)legibilityView removeFromSuperview];
    v4 = self->_legibilityView;
    self->_legibilityView = 0;
  }
}

+ (CKTranscriptLegibilityButton)buttonWithType:(int64_t)type
{
  v3 = [CKTranscriptLegibilityInternalButton buttonWithType:type];
  v4 = [CKTranscriptLegibilityButton alloc];
  v5 = [(CKTranscriptLegibilityButton *)v4 initWithFrame:v3 internalButton:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v5;
}

+ (CKTranscriptLegibilityButton)buttonWithConfiguration:(id)configuration primaryAction:(id)action
{
  v4 = [CKTranscriptLegibilityInternalButton buttonWithConfiguration:configuration primaryAction:action];
  v5 = [CKTranscriptLegibilityButton alloc];
  v6 = [(CKTranscriptLegibilityButton *)v5 initWithFrame:v4 internalButton:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v6;
}

- (UIEdgeInsets)contentEdgeInsets
{
  [(CKTranscriptLegibilityInternalButton *)self->_button contentEdgeInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setContentEdgeInsets:(UIEdgeInsets)insets
{
  [(CKTranscriptLegibilityInternalButton *)self->_button setContentEdgeInsets:insets.top, insets.left, insets.bottom, insets.right];

  [(CKTranscriptLegibilityButton *)self deferredUpdateLegibilityView];
}

- (void)setConfiguration:(id)configuration
{
  [(CKTranscriptLegibilityInternalButton *)self->_button setConfiguration:configuration];

  [(CKTranscriptLegibilityButton *)self deferredUpdateLegibilityView];
}

- (void)setAttributedTitle:(id)title forState:(unint64_t)state
{
  [(CKTranscriptLegibilityInternalButton *)self->_button setAttributedTitle:title forState:state];

  [(CKTranscriptLegibilityButton *)self deferredUpdateLegibilityView];
}

- (void)setContentHorizontalAlignment:(int64_t)alignment
{
  [(CKTranscriptLegibilityInternalButton *)self->_button setContentHorizontalAlignment:alignment];

  [(CKTranscriptLegibilityButton *)self deferredUpdateLegibilityView];
}

- (int64_t)titleLabelLineBreakMode
{
  titleLabel = [(CKTranscriptLegibilityInternalButton *)self->_button titleLabel];
  lineBreakMode = [titleLabel lineBreakMode];

  return lineBreakMode;
}

- (void)setTitleLabelLineBreakMode:(int64_t)mode
{
  titleLabel = [(CKTranscriptLegibilityInternalButton *)self->_button titleLabel];
  [titleLabel setLineBreakMode:mode];

  [(CKTranscriptLegibilityButton *)self deferredUpdateLegibilityView];
}

- (int64_t)titleLabelNumberOfLines
{
  titleLabel = [(CKTranscriptLegibilityInternalButton *)self->_button titleLabel];
  numberOfLines = [titleLabel numberOfLines];

  return numberOfLines;
}

- (void)setTitleLabelNumberOfLines:(int64_t)lines
{
  titleLabel = [(CKTranscriptLegibilityInternalButton *)self->_button titleLabel];
  [titleLabel setNumberOfLines:lines];

  [(CKTranscriptLegibilityButton *)self deferredUpdateLegibilityView];
}

@end