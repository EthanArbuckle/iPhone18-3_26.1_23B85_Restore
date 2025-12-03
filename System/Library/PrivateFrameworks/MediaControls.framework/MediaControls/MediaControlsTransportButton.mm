@interface MediaControlsTransportButton
- (MediaControlsTransportButton)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation MediaControlsTransportButton

- (MediaControlsTransportButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MediaControlsTransportButton;
  v3 = [(MPButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MediaControlsTransportButton *)v3 setPointerInteractionEnabled:1];
    [(MediaControlsTransportButton *)v4 setPointerStyleProvider:&__block_literal_global_18];
  }

  return v4;
}

id __46__MediaControlsTransportButton_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 cursorScale];
  [v2 bounds];
  CGRectGetWidth(v18);
  [v2 bounds];
  CGRectGetHeight(v19);
  [v2 bounds];
  UIRectCenteredRect();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  v12 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v4, v6, v8, v10}];
  [v11 setVisiblePath:v12];

  v13 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v2 parameters:v11];
  v14 = [MEMORY[0x1E69DCDA0] effectWithPreview:v13];
  v15 = [MEMORY[0x1E69DCDD0] styleWithEffect:v14 shape:0];

  return v15;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v17.receiver = self;
  v17.super_class = MediaControlsTransportButton;
  [(MediaControlsTransportButton *)&v17 setHighlighted:?];
  if (highlightedCopy)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __47__MediaControlsTransportButton_setHighlighted___block_invoke;
    v15 = &unk_1E7663898;
    selfCopy = self;
    v5 = 0.2;
    v6 = &v12;
  }

  else
  {
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __47__MediaControlsTransportButton_setHighlighted___block_invoke_2;
    v10 = &unk_1E7663898;
    selfCopy2 = self;
    v5 = 0.47;
    v6 = &v7;
  }

  [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v6 options:0 animations:v5 completion:{0.0, v7, v8, v9, v10, selfCopy2, v12, v13, v14, v15, selfCopy}];
}

void __47__MediaControlsTransportButton_setHighlighted___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v4, 0.8, 0.8);
  v2 = [*(a1 + 32) _imageView];
  v3 = v4;
  [v2 setTransform:&v3];
}

void __47__MediaControlsTransportButton_setHighlighted___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _imageView];
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v3[0] = *MEMORY[0x1E695EFD0];
  v3[1] = v2;
  v3[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v1 setTransform:v3];
}

@end