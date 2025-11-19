@interface NANowPlayingArtworkView
- (CGSize)artworkSize;
- (CGSize)artworkSizeForTitleViewWidth:(double)a3;
- (CGSize)sizeThatFits:(CGSize)result;
- (NANowPlayingArtworkView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setTrackImage:(id)a3 animated:(BOOL)a4;
@end

@implementation NANowPlayingArtworkView

- (NANowPlayingArtworkView)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = NANowPlayingArtworkView;
  v3 = [(NANowPlayingArtworkView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__NANowPlayingArtworkView_initWithFrame___block_invoke;
    v9[3] = &unk_1E84EA1C0;
    v5 = v3;
    v10 = v5;
    v6 = __41__NANowPlayingArtworkView_initWithFrame___block_invoke(v9);
    trackImageView = v5->_trackImageView;
    v5->_trackImageView = v6;
  }

  return v4;
}

id __41__NANowPlayingArtworkView_initWithFrame___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v3 setContentMode:1];
  [v3 setIsAccessibilityElement:1];
  [v3 setAccessibilityIgnoresInvertColors:1];
  [*(a1 + 32) addSubview:v3];

  return v3;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = NANowPlayingArtworkView;
  [(NANowPlayingArtworkView *)&v6 layoutSubviews];
  [(NANowPlayingArtworkView *)self bounds];
  Width = CGRectGetWidth(v7);
  [(NANowPlayingArtworkView *)self bounds];
  Height = CGRectGetHeight(v8);
  v5 = [(NANowPlayingArtworkView *)self trackImageView];
  [v5 setFrame:{0.0, 0.0, Width, Height}];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  width = result.width;
  result.height = width;
  return result;
}

- (void)setTrackImage:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = 0.25;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = MEMORY[0x1E69DD250];
  v9 = [(NANowPlayingArtworkView *)self trackImageView];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__NANowPlayingArtworkView_setTrackImage_animated___block_invoke;
  v11[3] = &unk_1E84EA210;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v8 transitionWithView:v9 duration:5242880 options:v11 animations:0 completion:v7];
}

void __50__NANowPlayingArtworkView_setTrackImage_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) trackImageView];
  [v2 setImage:v1];
}

- (CGSize)artworkSize
{
  v2 = [(NANowPlayingArtworkView *)self trackImageView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)artworkSizeForTitleViewWidth:(double)a3
{
  result.height = a3;
  result.width = a3;
  return result;
}

@end