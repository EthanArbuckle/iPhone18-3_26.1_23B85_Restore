@interface CKActionMenuItemImageView
- (CKActionMenuItemImageView)initWithImage:(id)a3 tintColor:(id)a4 highlightedTintColor:(id)a5;
- (void)setEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)updateTintColor;
@end

@implementation CKActionMenuItemImageView

- (CKActionMenuItemImageView)initWithImage:(id)a3 tintColor:(id)a4 highlightedTintColor:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CKActionMenuItemImageView;
  v11 = [(CKActionMenuItemImageView *)&v14 initWithImage:a3];
  v12 = v11;
  if (v11)
  {
    v11->_enabled = 1;
    objc_storeStrong(&v11->_unhighlightedTintColor, a4);
    objc_storeStrong(&v12->_highlightedTintColor, a5);
    [(CKActionMenuItemImageView *)v12 updateTintColor];
  }

  return v12;
}

- (void)setEnabled:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_enabled != a3)
  {
    aBlock[7] = v4;
    aBlock[8] = v5;
    v6 = a4;
    self->_enabled = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__CKActionMenuItemImageView_setEnabled_animated___block_invoke;
    aBlock[3] = &unk_1E72EBA18;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v8 = v7;
    if (v6)
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

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(CKActionMenuItemImageView *)self isHighlighted]!= a3)
  {
    v10.receiver = self;
    v10.super_class = CKActionMenuItemImageView;
    [(CKActionMenuItemImageView *)&v10 setHighlighted:v5];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__CKActionMenuItemImageView_setHighlighted_animated___block_invoke;
    aBlock[3] = &unk_1E72EBA18;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    v8 = v7;
    if (v4)
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
  v3 = [(CKActionMenuItemImageView *)self isHighlighted];
  v4 = &OBJC_IVAR___CKActionMenuItemImageView__unhighlightedTintColor;
  if (v3)
  {
    v4 = &OBJC_IVAR___CKActionMenuItemImageView__highlightedTintColor;
  }

  v5 = *(&self->super.super.super.super.isa + *v4);

  [(CKActionMenuItemImageView *)self setTintColor:v5];
}

@end