@interface CAMOrientationInstructionView
- (CAMOrientationInstructionView)initWithFrame:(CGRect)a3;
- (void)_formatLabel;
- (void)layoutSubviews;
- (void)setHasBlurredBackground:(BOOL)a3 animated:(BOOL)a4;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMOrientationInstructionView

- (CAMOrientationInstructionView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = CAMOrientationInstructionView;
  v3 = [(CAMOrientationInstructionView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMOrientationInstructionView *)v3 setUserInteractionEnabled:0];
    v4->__interfaceOrientation = 1;
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    label = v4->__label;
    v4->__label = v5;

    [(UILabel *)v4->__label setNumberOfLines:0];
    v7 = objc_alloc(MEMORY[0x1E69DD298]);
    v8 = [MEMORY[0x1E69DC730] effectWithBlurRadius:25.0];
    v9 = [v7 initWithEffect:v8];
    effectView = v4->__effectView;
    v4->__effectView = v9;

    v4->_hasBlurredBackground = 1;
    [(CAMOrientationInstructionView *)v4 addSubview:v4->__effectView];
    [(CAMOrientationInstructionView *)v4 addSubview:v4->__label];
    [(CAMOrientationInstructionView *)v4 _formatLabel];
  }

  return v4;
}

- (void)_formatLabel
{
  v30[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v2 setAlignment:1];
  [v2 setLineBreakMode:0];
  [v2 setLineBreakStrategy:0xFFFFLL];
  v3 = objc_alloc_init(MEMORY[0x1E69DB7D8]);
  v4 = [MEMORY[0x1E69DC888] blackColor];
  v5 = [v4 colorWithAlphaComponent:0.35];
  [v3 setShadowColor:v5];

  [v3 setShadowOffset:{0.0, 0.0}];
  [v3 setShadowBlurRadius:2.0];
  v24 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.portrait.rotate"];
  v23 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v24];
  v6 = objc_alloc(MEMORY[0x1E696AD40]);
  v7 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v23];
  v8 = [v6 initWithAttributedString:v7];

  v22 = [CAMFont cameraMonospacedFontOfSize:42.0 weight:*MEMORY[0x1E69DB988]];
  v10 = *MEMORY[0x1E69DB688];
  v28[0] = *MEMORY[0x1E69DB648];
  v9 = v28[0];
  v28[1] = v10;
  v30[0] = v22;
  v30[1] = v2;
  v29 = *MEMORY[0x1E69DB6A8];
  v11 = v29;
  v30[2] = v3;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v28 count:3];
  [v8 addAttributes:v12 range:{0, objc_msgSend(v8, "length")}];
  v13 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:@"\n"];
  v14 = objc_alloc(MEMORY[0x1E696AAB0]);
  v15 = CAMLocalizedFrameworkString(@"SPATIAL_VIDEO_LANDSCAPE_ORIENTATION_INSTRUCTION_LABEL", 0);
  v16 = [v14 initWithString:v15];
  [v13 appendAttributedString:v16];

  v17 = [CAMFont cameraFontForContentSize:*MEMORY[0x1E69DDC60]];
  v18 = [CAMFont cameraKerningForFont:v17];
  v19 = *MEMORY[0x1E69DB660];
  v26[0] = v9;
  v26[1] = v19;
  v27[0] = v17;
  v27[1] = v18;
  v26[2] = v10;
  v26[3] = v11;
  v27[2] = v2;
  v27[3] = v3;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];
  [v13 addAttributes:v20 range:{0, objc_msgSend(v13, "length")}];
  [v8 appendAttributedString:v13];
  v21 = [(CAMOrientationInstructionView *)self _label];
  [v21 setAttributedText:v8];
}

- (void)setHasBlurredBackground:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_hasBlurredBackground != a3)
  {
    v8 = v4;
    v9 = v5;
    self->_hasBlurredBackground = a3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__CAMOrientationInstructionView_setHasBlurredBackground_animated___block_invoke;
    v6[3] = &unk_1E76F7850;
    v6[4] = self;
    v7 = a3;
    [CAMView animateIfNeededWithDuration:v6 animations:0 completion:0.25];
  }
}

void __66__CAMOrientationInstructionView_setHasBlurredBackground_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = [*(a1 + 32) _effectView];
  [v2 setAlpha:v1];
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_orientation != a3)
  {
    v5 = a4;
    self->_orientation = a3;
    if ((a3 - 1) <= 1)
    {
      [(CAMOrientationInstructionView *)self set_interfaceOrientation:?];
    }

    v7 = [(CAMOrientationInstructionView *)self _label];
    [CAMView rotateView:v7 toInterfaceOrientation:[(CAMOrientationInstructionView *)self _interfaceOrientation] animated:v5];
  }
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = CAMOrientationInstructionView;
  [(CAMOrientationInstructionView *)&v20 layoutSubviews];
  [(CAMOrientationInstructionView *)self bounds];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  CGRectGetMidX(v21);
  UIRoundToViewScale();
  v19 = v7;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  CGRectGetMidY(v22);
  UIRoundToViewScale();
  v18 = v8;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v24 = CGRectInset(v23, 16.0, 0.0);
  v9 = v24.origin.x;
  v10 = v24.origin.y;
  v11 = v24.size.width;
  v12 = v24.size.height;
  v13 = [(CAMOrientationInstructionView *)self _label];
  [v13 setBounds:{v9, v10, v11, v12}];

  v14 = [(CAMOrientationInstructionView *)self _label];
  [v14 setCenter:{v19, v18}];

  v15 = [(CAMOrientationInstructionView *)self _effectView];
  [v15 setCenter:{v19, v18}];

  v16 = [(CAMOrientationInstructionView *)self _effectView];
  [v16 setBounds:{x, y, width, height}];

  v17 = [(CAMOrientationInstructionView *)self _label];
  [CAMView rotateView:v17 toInterfaceOrientation:[(CAMOrientationInstructionView *)self _interfaceOrientation] animated:0];
}

@end