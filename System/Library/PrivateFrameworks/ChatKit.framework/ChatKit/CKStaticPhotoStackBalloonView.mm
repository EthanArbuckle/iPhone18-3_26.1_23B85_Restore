@interface CKStaticPhotoStackBalloonView
- (void)configureForMessagePart:(id)a3;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)setMediaObjects:(id)a3;
- (void)setStackAlpha:(double)a3;
@end

@implementation CKStaticPhotoStackBalloonView

- (void)configureForMessagePart:(id)a3
{
  v6.receiver = self;
  v6.super_class = CKStaticPhotoStackBalloonView;
  v4 = a3;
  [(CKBalloonView *)&v6 configureForMessagePart:v4];
  v5 = [v4 mediaObjects];

  [(CKStaticPhotoStackBalloonView *)self setMediaObjects:v5];
}

- (void)setMediaObjects:(id)a3
{
  v8 = a3;
  v5 = [(CKStaticPhotoStackBalloonView *)self mediaObjects];
  v6 = [v8 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_mediaObjects, a3);
    v7 = [(CKStaticPhotoStackBalloonView *)self stackView];
    [v7 removeFromSuperview];

    [(CKStaticPhotoStackBalloonView *)self setStackView:0];
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)prepareForDisplay
{
  v11.receiver = self;
  v11.super_class = CKStaticPhotoStackBalloonView;
  [(CKBalloonView *)&v11 prepareForDisplay];
  v3 = [(CKStaticPhotoStackBalloonView *)self stackView];

  if (v3)
  {
    [(CKStaticPhotoStackBalloonView *)self setNeedsLayout];
  }

  else
  {
    v4 = [CKStaticImageStackView alloc];
    v5 = [(CKStaticPhotoStackBalloonView *)self mediaObjects];
    v6 = [(CKStaticImageStackView *)v4 initWithFrame:v5 mediaObjects:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CKStaticPhotoStackBalloonView *)self setStackView:v6];

    [(CKStaticPhotoStackBalloonView *)self stackCornerRadius];
    v8 = v7;
    v9 = [(CKStaticPhotoStackBalloonView *)self stackView];
    [v9 setStackCornerRadius:v8];

    v10 = [(CKStaticPhotoStackBalloonView *)self stackView];
    [(CKStaticPhotoStackBalloonView *)self addSubview:v10];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CKStaticPhotoStackBalloonView;
  [(CKBalloonView *)&v4 layoutSubviews];
  v3 = [(CKStaticPhotoStackBalloonView *)self stackView];
  [(CKStaticPhotoStackBalloonView *)self bounds];
  [v3 setFrame:?];
}

- (void)setStackAlpha:(double)a3
{
  v4 = [(CKStaticPhotoStackBalloonView *)self stackView];
  [v4 setAlpha:a3];
}

@end