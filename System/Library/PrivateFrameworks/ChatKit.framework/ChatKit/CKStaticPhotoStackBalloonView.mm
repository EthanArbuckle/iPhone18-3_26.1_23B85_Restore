@interface CKStaticPhotoStackBalloonView
- (void)configureForMessagePart:(id)part;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)setMediaObjects:(id)objects;
- (void)setStackAlpha:(double)alpha;
@end

@implementation CKStaticPhotoStackBalloonView

- (void)configureForMessagePart:(id)part
{
  v6.receiver = self;
  v6.super_class = CKStaticPhotoStackBalloonView;
  partCopy = part;
  [(CKBalloonView *)&v6 configureForMessagePart:partCopy];
  mediaObjects = [partCopy mediaObjects];

  [(CKStaticPhotoStackBalloonView *)self setMediaObjects:mediaObjects];
}

- (void)setMediaObjects:(id)objects
{
  objectsCopy = objects;
  mediaObjects = [(CKStaticPhotoStackBalloonView *)self mediaObjects];
  v6 = [objectsCopy isEqual:mediaObjects];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_mediaObjects, objects);
    stackView = [(CKStaticPhotoStackBalloonView *)self stackView];
    [stackView removeFromSuperview];

    [(CKStaticPhotoStackBalloonView *)self setStackView:0];
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)prepareForDisplay
{
  v11.receiver = self;
  v11.super_class = CKStaticPhotoStackBalloonView;
  [(CKBalloonView *)&v11 prepareForDisplay];
  stackView = [(CKStaticPhotoStackBalloonView *)self stackView];

  if (stackView)
  {
    [(CKStaticPhotoStackBalloonView *)self setNeedsLayout];
  }

  else
  {
    v4 = [CKStaticImageStackView alloc];
    mediaObjects = [(CKStaticPhotoStackBalloonView *)self mediaObjects];
    v6 = [(CKStaticImageStackView *)v4 initWithFrame:mediaObjects mediaObjects:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CKStaticPhotoStackBalloonView *)self setStackView:v6];

    [(CKStaticPhotoStackBalloonView *)self stackCornerRadius];
    v8 = v7;
    stackView2 = [(CKStaticPhotoStackBalloonView *)self stackView];
    [stackView2 setStackCornerRadius:v8];

    stackView3 = [(CKStaticPhotoStackBalloonView *)self stackView];
    [(CKStaticPhotoStackBalloonView *)self addSubview:stackView3];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CKStaticPhotoStackBalloonView;
  [(CKBalloonView *)&v4 layoutSubviews];
  stackView = [(CKStaticPhotoStackBalloonView *)self stackView];
  [(CKStaticPhotoStackBalloonView *)self bounds];
  [stackView setFrame:?];
}

- (void)setStackAlpha:(double)alpha
{
  stackView = [(CKStaticPhotoStackBalloonView *)self stackView];
  [stackView setAlpha:alpha];
}

@end