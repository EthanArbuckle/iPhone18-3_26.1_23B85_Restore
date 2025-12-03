@interface CKVideoCancelActionMenuItemView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKVideoCancelActionMenuItemView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
@end

@implementation CKVideoCancelActionMenuItemView

- (CKVideoCancelActionMenuItemView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = CKVideoCancelActionMenuItemView;
  v3 = [(CKVideoCancelActionMenuItemView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD298]);
    v5 = [MEMORY[0x1E69DC730] effectWithStyle:1];
    v6 = [v4 initWithEffect:v5];

    [(CKVideoCancelActionMenuItemView *)v3 setBlurView:v6];
    [(CKVideoCancelActionMenuItemView *)v3 addSubview:v6];
    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    if (CKVideoCancelActionMenuItemViewMask_once != -1)
    {
      [CKVideoCancelActionMenuItemView initWithFrame:];
    }

    v8 = [v7 initWithImage:CKVideoCancelActionMenuItemViewMask_sMask];
    [(CKVideoCancelActionMenuItemView *)v3 setMaskView:v8];
    layer = [v6 layer];
    layer2 = [v8 layer];
    [layer setMask:layer2];

    v11 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"ActionMenuCancelGlyph"];
    v12 = [v11 imageWithRenderingMode:2];

    v13 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v12];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [v13 setTintColor:whiteColor];

    [(CKVideoCancelActionMenuItemView *)v3 setXView:v13];
    [(CKVideoCancelActionMenuItemView *)v3 addSubview:v13];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 36.0;
  v4 = 36.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = CKVideoCancelActionMenuItemView;
  [(CKVideoCancelActionMenuItemView *)&v15 layoutSubviews];
  [(CKVideoCancelActionMenuItemView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  blurView = [(CKVideoCancelActionMenuItemView *)self blurView];
  [blurView setFrame:{v4, v6, v8, v10}];

  maskView = [(CKVideoCancelActionMenuItemView *)self maskView];
  [maskView setFrame:{v4, v6, v8, v10}];

  xView = [(CKVideoCancelActionMenuItemView *)self xView];
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  MidX = CGRectGetMidX(v16);
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  [xView setCenter:{MidX, CGRectGetMidY(v17)}];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  if (self->_highlighted != highlighted)
  {
    v11 = v4;
    v12 = v5;
    animatedCopy = animated;
    self->_highlighted = highlighted;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__CKVideoCancelActionMenuItemView_setHighlighted_animated___block_invoke;
    v9[3] = &unk_1E72ED8D8;
    highlightedCopy = highlighted;
    v9[4] = self;
    v7 = _Block_copy(v9);
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

void __59__CKVideoCancelActionMenuItemView_setHighlighted_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0.4;
  }

  else
  {
    v2 = 1.0;
  }

  v3 = [*(a1 + 32) blurView];
  [v3 setAlpha:v2];

  v4 = [*(a1 + 32) xView];
  [v4 setAlpha:v2];
}

@end