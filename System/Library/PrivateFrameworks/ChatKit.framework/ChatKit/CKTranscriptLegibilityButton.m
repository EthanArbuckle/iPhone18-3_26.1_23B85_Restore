@interface CKTranscriptLegibilityButton
+ (CKTranscriptLegibilityButton)buttonWithConfiguration:(id)a3 primaryAction:(id)a4;
+ (CKTranscriptLegibilityButton)buttonWithType:(int64_t)a3;
- (BOOL)isLegibilityViewRequired;
- (CGRect)legibilityViewFrame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKTranscriptLegibilityButton)initWithFrame:(CGRect)a3;
- (CKTranscriptLegibilityButton)initWithFrame:(CGRect)a3 internalButton:(id)a4;
- (UIEdgeInsets)contentEdgeInsets;
- (id)_createLegibilityView;
- (id)_lazyLoadedLegibilityView;
- (int64_t)titleLabelLineBreakMode;
- (int64_t)titleLabelNumberOfLines;
- (void)_registerForTraitCollectionChanges;
- (void)_removeLegibilityViewIfNecessary;
- (void)_setTouchInsets:(UIEdgeInsets)a3;
- (void)_updateLegibilityView;
- (void)deferredUpdateLegibilityView;
- (void)layoutSubviews;
- (void)setAttributedTitle:(id)a3 forState:(unint64_t)a4;
- (void)setConfiguration:(id)a3;
- (void)setContentEdgeInsets:(UIEdgeInsets)a3;
- (void)setContentHorizontalAlignment:(int64_t)a3;
- (void)setTitleLabelLineBreakMode:(int64_t)a3;
- (void)setTitleLabelNumberOfLines:(int64_t)a3;
- (void)updateWantsExtendedDynamicRangeContent;
@end

@implementation CKTranscriptLegibilityButton

- (CKTranscriptLegibilityButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [[CKTranscriptLegibilityInternalButton alloc] initWithFrame:0.0, 0.0, a3.size.width, a3.size.height];
  v9 = [(CKTranscriptLegibilityButton *)self initWithFrame:v8 internalButton:x, y, width, height];

  return v9;
}

- (CKTranscriptLegibilityButton)initWithFrame:(CGRect)a3 internalButton:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CKTranscriptLegibilityButton;
  v11 = [(CKTranscriptLegibilityButton *)&v14 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_button, a4);
    [(CKTranscriptLegibilityButton *)v12 addSubview:v12->_button];
    [(CKTranscriptLegibilityButton *)v12 updateWantsExtendedDynamicRangeContent];
    [(CKTranscriptLegibilityButton *)v12 _registerForTraitCollectionChanges];
  }

  return v12;
}

- (void)_setTouchInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8.receiver = self;
  v8.super_class = CKTranscriptLegibilityButton;
  [(CKTranscriptLegibilityButton *)&v8 _setTouchInsets:?];
  [(CKTranscriptLegibilityInternalButton *)self->_button _setTouchInsets:top, left, bottom, right];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(CKTranscriptLegibilityInternalButton *)self->_button sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)updateWantsExtendedDynamicRangeContent
{
  v3 = [(CKTranscriptLegibilityButton *)self traitCollection];
  v4 = [v3 isTranscriptBackgroundActive];

  v5 = [(CKTranscriptLegibilityInternalButton *)self->_button layer];
  [v5 setWantsExtendedDynamicRangeContent:v4];

  v7 = [(CKTranscriptLegibilityInternalButton *)self->_button titleLabel];
  v6 = [v7 layer];
  [v6 setWantsExtendedDynamicRangeContent:v4];
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
  v3 = [(CKTranscriptLegibilityInternalButton *)self->_button titleLabel];
  [v3 bounds];
  [(CKTranscriptLegibilityButton *)self convertRect:v3 fromView:?];
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
  v2 = [(CKTranscriptLegibilityButton *)self traitCollection];
  v3 = [v2 isTranscriptBackgroundActive];

  return v3;
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
    v6 = [(CKTranscriptLegibilityInternalButton *)self->_button titleLabel];
    if (v6)
    {
      v3 = [(CKTranscriptLegibilityButton *)self legibilityDescriptor];
      v4 = [MEMORY[0x1E69C5420] legibilityContentForLabel:v6 legibilityDescriptor:v3];
      if (v4)
      {
        v5 = [(CKTranscriptLegibilityButton *)self _lazyLoadedLegibilityView];
        [v5 setContent:v4];
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
    v4 = [(CKTranscriptLegibilityButton *)self _createLegibilityView];
    v5 = self->_legibilityView;
    self->_legibilityView = v4;

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

+ (CKTranscriptLegibilityButton)buttonWithType:(int64_t)a3
{
  v3 = [CKTranscriptLegibilityInternalButton buttonWithType:a3];
  v4 = [CKTranscriptLegibilityButton alloc];
  v5 = [(CKTranscriptLegibilityButton *)v4 initWithFrame:v3 internalButton:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v5;
}

+ (CKTranscriptLegibilityButton)buttonWithConfiguration:(id)a3 primaryAction:(id)a4
{
  v4 = [CKTranscriptLegibilityInternalButton buttonWithConfiguration:a3 primaryAction:a4];
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

- (void)setContentEdgeInsets:(UIEdgeInsets)a3
{
  [(CKTranscriptLegibilityInternalButton *)self->_button setContentEdgeInsets:a3.top, a3.left, a3.bottom, a3.right];

  [(CKTranscriptLegibilityButton *)self deferredUpdateLegibilityView];
}

- (void)setConfiguration:(id)a3
{
  [(CKTranscriptLegibilityInternalButton *)self->_button setConfiguration:a3];

  [(CKTranscriptLegibilityButton *)self deferredUpdateLegibilityView];
}

- (void)setAttributedTitle:(id)a3 forState:(unint64_t)a4
{
  [(CKTranscriptLegibilityInternalButton *)self->_button setAttributedTitle:a3 forState:a4];

  [(CKTranscriptLegibilityButton *)self deferredUpdateLegibilityView];
}

- (void)setContentHorizontalAlignment:(int64_t)a3
{
  [(CKTranscriptLegibilityInternalButton *)self->_button setContentHorizontalAlignment:a3];

  [(CKTranscriptLegibilityButton *)self deferredUpdateLegibilityView];
}

- (int64_t)titleLabelLineBreakMode
{
  v2 = [(CKTranscriptLegibilityInternalButton *)self->_button titleLabel];
  v3 = [v2 lineBreakMode];

  return v3;
}

- (void)setTitleLabelLineBreakMode:(int64_t)a3
{
  v5 = [(CKTranscriptLegibilityInternalButton *)self->_button titleLabel];
  [v5 setLineBreakMode:a3];

  [(CKTranscriptLegibilityButton *)self deferredUpdateLegibilityView];
}

- (int64_t)titleLabelNumberOfLines
{
  v2 = [(CKTranscriptLegibilityInternalButton *)self->_button titleLabel];
  v3 = [v2 numberOfLines];

  return v3;
}

- (void)setTitleLabelNumberOfLines:(int64_t)a3
{
  v5 = [(CKTranscriptLegibilityInternalButton *)self->_button titleLabel];
  [v5 setNumberOfLines:a3];

  [(CKTranscriptLegibilityButton *)self deferredUpdateLegibilityView];
}

@end