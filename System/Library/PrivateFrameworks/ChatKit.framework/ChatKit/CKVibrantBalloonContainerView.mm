@interface CKVibrantBalloonContainerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKVibrantBalloonContainerView)initWithAudioBallonView:(id)a3 frame:(CGRect)a4;
- (CKVibrantBalloonContainerView)initWithTextBalloonView:(id)a3 frame:(CGRect)a4;
- (void)_commonInitWithVibrantBalloon:(id)a3;
- (void)_setupVisualEffectViews;
- (void)layoutSubviews;
- (void)setBlurEffect:(id)a3;
@end

@implementation CKVibrantBalloonContainerView

- (CKVibrantBalloonContainerView)initWithTextBalloonView:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v13.receiver = self;
  v13.super_class = CKVibrantBalloonContainerView;
  v10 = [(CKVibrantBalloonContainerView *)&v13 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(CKVibrantBalloonContainerView *)v10 _commonInitWithVibrantBalloon:v9];
  }

  return v11;
}

- (CKVibrantBalloonContainerView)initWithAudioBallonView:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v13.receiver = self;
  v13.super_class = CKVibrantBalloonContainerView;
  v10 = [(CKVibrantBalloonContainerView *)&v13 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(CKVibrantBalloonContainerView *)v10 _commonInitWithVibrantBalloon:v9];
  }

  return v11;
}

- (void)_commonInitWithVibrantBalloon:(id)a3
{
  objc_storeStrong(&self->_vibrantBalloonView, a3);

  [(CKVibrantBalloonContainerView *)self _setupVisualEffectViews];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = CKVibrantBalloonContainerView;
  [(CKVibrantBalloonContainerView *)&v6 layoutSubviews];
  blurView = self->_blurView;
  [(CKVibrantBalloonContainerView *)self bounds];
  [(UIVisualEffectView *)blurView setFrame:?];
  vibrantView = self->_vibrantView;
  [(CKVibrantBalloonContainerView *)self bounds];
  [(UIVisualEffectView *)vibrantView setFrame:?];
  vibrantBalloonView = self->_vibrantBalloonView;
  [(CKVibrantBalloonContainerView *)self bounds];
  [(CKBalloonVibrancy *)vibrantBalloonView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(CKBalloonVibrancy *)self->_vibrantBalloonView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(CKBalloonVibrancy *)self->_vibrantBalloonView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_setupVisualEffectViews
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD298]);
  v4 = [MEMORY[0x1E69DC730] effectWithStyle:10];
  [v3 setEffect:v4];
  v17 = v3;
  objc_storeStrong(&self->_blurView, v3);
  [(CKVibrantBalloonContainerView *)self addSubview:self->_blurView];
  v5 = objc_alloc_init(MEMORY[0x1E69DD298]);
  v16 = v4;
  v6 = [MEMORY[0x1E69DD248] effectForBlurEffect:v4 style:2];
  [v5 setEffect:v6];

  objc_storeStrong(&self->_vibrantView, v5);
  v7 = [(UIVisualEffectView *)self->_blurView contentView];
  [v7 addSubview:self->_vibrantView];

  v8 = [(CKBalloonVibrancy *)self->_vibrantBalloonView nonVibrantSubViews];
  [(CKBalloonVibrancy *)self->_vibrantBalloonView vibrantContainerWillReparentNonVibrantSubviews:v8];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        [v14 removeFromSuperview];
        [(CKVibrantBalloonContainerView *)self addSubview:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [(UIVisualEffectView *)self->_vibrantView contentView];
  [v15 addSubview:self->_vibrantBalloonView];

  [(UIVisualEffectView *)self->_blurView setMaskView:self->_vibrantBalloonView];
}

- (void)setBlurEffect:(id)a3
{
  blurView = self->_blurView;
  v5 = a3;
  [(UIVisualEffectView *)blurView setEffect:v5];
  [(UIVisualEffectView *)self->_vibrantView setEffect:v5];
}

@end