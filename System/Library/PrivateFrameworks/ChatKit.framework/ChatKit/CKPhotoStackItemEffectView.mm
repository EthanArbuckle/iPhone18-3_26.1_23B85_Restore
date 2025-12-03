@interface CKPhotoStackItemEffectView
- (CKBalloonDescriptor_t)contentBalloonDescriptorForCurrentTraitCollection;
- (CKPhotoStackItemEffectView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setContentView:(id)view;
@end

@implementation CKPhotoStackItemEffectView

- (CKPhotoStackItemEffectView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CKPhotoStackItemEffectView;
  v3 = [(CKPhotoStackItemEffectView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(CKPhotoStackItemEffectView *)v3 setBackgroundColor:clearColor];

    v5 = [_TtC7ChatKit37CKPhotoStackPhotoContentContainerView alloc];
    [(CKPhotoStackItemEffectView *)v3 bounds];
    v6 = [(CKPhotoStackPhotoContentContainerView *)v5 initWithFrame:?];
    contentContainerView = v3->_contentContainerView;
    v3->_contentContainerView = v6;

    [(CKPhotoStackItemEffectView *)v3 addSubview:v3->_contentContainerView];
  }

  return v3;
}

- (CKBalloonDescriptor_t)contentBalloonDescriptorForCurrentTraitCollection
{
  traitCollection = [(CKPhotoStackItemEffectView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];
  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = *MEMORY[0x1E69A6E08];
  v8 = *(MEMORY[0x1E69A6E08] + 8);
  v9 = *(MEMORY[0x1E69A6E08] + 16);
  v10 = *(MEMORY[0x1E69A6E08] + 24);
  [v6 balloonCornerRadius];
  *&retstr->var0 = 0u;
  *&retstr->var5 = 0u;
  *&retstr->var7.red = 0u;
  *&retstr->var7.blue = 0u;
  *&retstr->var8.red = 0u;
  *&retstr->var8.blue = 0u;
  *&retstr->var9 = 0u;
  *&retstr->var11 = 0u;
  retstr->var3 = 1;
  retstr->var4 = -1;
  retstr->var5 = v11;
  retstr->var6 = -1;
  retstr->var7.red = v7;
  retstr->var7.green = v8;
  retstr->var7.blue = v9;
  retstr->var7.alpha = v10;
  retstr->var8.red = v7;
  retstr->var8.green = v8;
  retstr->var8.blue = v9;
  retstr->var8.alpha = v10;
  retstr->var9 = isTranscriptBackgroundActive;
  *(&retstr->var11 + 5) = 0;
  retstr->var10 = userInterfaceStyle;
  retstr->var11 = 0;

  return result;
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = CKPhotoStackItemEffectView;
  [(CKPhotoStackItemEffectView *)&v33 layoutSubviews];
  traitCollection = [(CKPhotoStackItemEffectView *)self traitCollection];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  [(CKPhotoStackItemEffectView *)self contentBalloonDescriptorForCurrentTraitCollection];
  contentBackdropLayer = self->_contentBackdropLayer;
  if (!contentBackdropLayer)
  {
    v5 = [_TtC7ChatKit14CKBalloonLayer alloc];
    v21 = v29;
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v17 = v25;
    v18 = v26;
    v19 = v27;
    v20 = v28;
    v6 = [(CKBalloonLayer *)v5 initWithDescriptor:&v17 traitCollection:traitCollection];
    v7 = self->_contentBackdropLayer;
    self->_contentBackdropLayer = v6;

    contentBackdropLayer = self->_contentBackdropLayer;
  }

  superlayer = [(CKBalloonLayer *)contentBackdropLayer superlayer];
  layer = [(CKPhotoStackItemEffectView *)self layer];

  layer2 = [(CKPhotoStackItemEffectView *)self layer];
  layer3 = layer2;
  if (superlayer != layer)
  {
    goto LABEL_6;
  }

  sublayers = [layer2 sublayers];
  firstObject = [sublayers firstObject];
  v14 = self->_contentBackdropLayer;

  if (firstObject != v14)
  {
    layer3 = [(CKPhotoStackItemEffectView *)self layer];
LABEL_6:
    [layer3 insertSublayer:self->_contentBackdropLayer atIndex:0];
  }

  v15 = self->_contentBackdropLayer;
  v21 = v29;
  v22 = v30;
  v23 = v31;
  v24 = v32;
  v17 = v25;
  v18 = v26;
  v19 = v27;
  v20 = v28;
  [(CKBalloonLayer *)v15 updateDescriptor:&v17 traitCollection:traitCollection];
  layer4 = [(CKPhotoStackItemEffectView *)self layer];
  [layer4 bounds];
  [(CKBalloonLayer *)self->_contentBackdropLayer setFrame:?];

  [(CKPhotoStackItemEffectView *)self bounds];
  [(CKPhotoStackPhotoContentContainerView *)self->_contentContainerView setFrame:?];
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = [(CKPhotoStackPhotoContentContainerView *)self->_contentContainerView contentView];

  v5 = viewCopy;
  if (contentView != viewCopy)
  {
    [(CKPhotoStackPhotoContentContainerView *)self->_contentContainerView setContentView:viewCopy];
    [(CKPhotoStackItemEffectView *)self setNeedsLayout];
    v5 = viewCopy;
  }
}

@end