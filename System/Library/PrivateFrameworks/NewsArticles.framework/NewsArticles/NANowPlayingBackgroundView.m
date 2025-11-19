@interface NANowPlayingBackgroundView
- (NANowPlayingBackgroundView)initWithFrame:(CGRect)a3;
- (void)setImage:(id)a3;
@end

@implementation NANowPlayingBackgroundView

- (NANowPlayingBackgroundView)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = NANowPlayingBackgroundView;
  v3 = [(NANowPlayingBackgroundView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __44__NANowPlayingBackgroundView_initWithFrame___block_invoke;
    v14[3] = &unk_1E84EA1C0;
    v5 = v3;
    v15 = v5;
    v6 = __44__NANowPlayingBackgroundView_initWithFrame___block_invoke(v14);
    imageView = v5->_imageView;
    v5->_imageView = v6;

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__NANowPlayingBackgroundView_initWithFrame___block_invoke_2;
    v12[3] = &unk_1E84EA1E8;
    v8 = v5;
    v13 = v8;
    v9 = __44__NANowPlayingBackgroundView_initWithFrame___block_invoke_2(v12);
    visualEffectsView = v8->_visualEffectsView;
    v8->_visualEffectsView = v9;
  }

  return v4;
}

id __44__NANowPlayingBackgroundView_initWithFrame___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v3 setContentMode:2];
  [v3 setAutoresizingMask:18];
  [*(a1 + 32) addSubview:v3];

  return v3;
}

id __44__NANowPlayingBackgroundView_initWithFrame___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69DD298]);
  v3 = [MEMORY[0x1E69DC730] effectWithStyle:18];
  v4 = [v2 initWithEffect:v3];

  [v4 setAutoresizingMask:18];
  [*(a1 + 32) addSubview:v4];

  return v4;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69DD250];
  v6 = [(NANowPlayingBackgroundView *)self imageView];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__NANowPlayingBackgroundView_setImage___block_invoke;
  v8[3] = &unk_1E84EA210;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 transitionWithView:v6 duration:5242880 options:v8 animations:0 completion:0.25];
}

void __39__NANowPlayingBackgroundView_setImage___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) imageView];
  [v2 setImage:v1];
}

@end