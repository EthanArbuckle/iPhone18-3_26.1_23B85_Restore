@interface CKActionMenuItemImageView
- (CKActionMenuItemImageView)initWithImage:(id)image tintColor:(id)color highlightedTintColor:(id)tintColor;
- (void)setEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)updateTintColor;
@end

@implementation CKActionMenuItemImageView

- (CKActionMenuItemImageView)initWithImage:(id)image tintColor:(id)color highlightedTintColor:(id)tintColor
{
  colorCopy = color;
  tintColorCopy = tintColor;
  v14.receiver = self;
  v14.super_class = CKActionMenuItemImageView;
  v11 = [(CKActionMenuItemImageView *)&v14 initWithImage:image];
  v12 = v11;
  if (v11)
  {
    v11->_enabled = 1;
    objc_storeStrong(&v11->_unhighlightedTintColor, color);
    objc_storeStrong(&v12->_highlightedTintColor, tintColor);
    [(CKActionMenuItemImageView *)v12 updateTintColor];
  }

  return v12;
}

- (void)setEnabled:(BOOL)enabled animated:(BOOL)animated
{
  if (self->_enabled != enabled)
  {
    aBlock[7] = v4;
    aBlock[8] = v5;
    animatedCopy = animated;
    self->_enabled = enabled;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__CKActionMenuItemImageView_setEnabled_animated___block_invoke;
    aBlock[3] = &unk_1E72EBA18;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v8 = v7;
    if (animatedCopy)
    {
      [CKActionMenuItem animate:v7 completion:0];
    }

    else
    {
      (*(v7 + 2))(v7);
    }
  }
}

uint64_t __49__CKActionMenuItemImageView_setEnabled_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0.4;
  if (v1[528])
  {
    v2 = 1.0;
  }

  return [v1 setAlpha:v2];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  highlightedCopy = highlighted;
  if ([(CKActionMenuItemImageView *)self isHighlighted]!= highlighted)
  {
    v10.receiver = self;
    v10.super_class = CKActionMenuItemImageView;
    [(CKActionMenuItemImageView *)&v10 setHighlighted:highlightedCopy];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__CKActionMenuItemImageView_setHighlighted_animated___block_invoke;
    aBlock[3] = &unk_1E72EBA18;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v8 = v7;
    if (animatedCopy)
    {
      [CKActionMenuItem animate:v7 completion:0];
    }

    else
    {
      (*(v7 + 2))(v7);
    }
  }
}

- (void)updateTintColor
{
  isHighlighted = [(CKActionMenuItemImageView *)self isHighlighted];
  v4 = &OBJC_IVAR___CKActionMenuItemImageView__unhighlightedTintColor;
  if (isHighlighted)
  {
    v4 = &OBJC_IVAR___CKActionMenuItemImageView__highlightedTintColor;
  }

  v5 = *(&self->super.super.super.super.isa + *v4);

  [(CKActionMenuItemImageView *)self setTintColor:v5];
}

@end