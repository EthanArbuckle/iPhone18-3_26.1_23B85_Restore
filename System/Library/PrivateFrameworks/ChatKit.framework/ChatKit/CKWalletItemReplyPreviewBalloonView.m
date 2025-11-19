@interface CKWalletItemReplyPreviewBalloonView
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CKWalletItemReplyPreviewBalloonView)initWithFrame:(CGRect)a3;
- (id)description;
- (void)configureForMessagePart:(id)a3;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)setMediaObject:(id)a3;
@end

@implementation CKWalletItemReplyPreviewBalloonView

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v6.receiver = self;
  v6.super_class = CKWalletItemReplyPreviewBalloonView;
  v3 = [(CKColoredBalloonView *)&v6 description];
  v4 = [v2 stringWithFormat:@"[CKWalletItemReplyPreviewBalloonView %@]", v3];

  return v4;
}

- (CKWalletItemReplyPreviewBalloonView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CKWalletItemReplyPreviewBalloonView;
  v3 = [(CKColoredBalloonView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CKBalloonView *)v3 doubleTapGestureRecognizer];
    [v5 setEnabled:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CKWalletItemReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v4 layoutSubviews];
  v3 = [(CKWalletItemReplyPreviewBalloonView *)self linkView];
  [(CKWalletItemReplyPreviewBalloonView *)self bounds];
  [v3 setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  height = a3.height;
  width = a3.width;
  v19.receiver = self;
  v19.super_class = CKWalletItemReplyPreviewBalloonView;
  [(CKBalloonView *)&v19 sizeThatFits:a4 textAlignmentInsets:a5 tailInsets:?];
  v8 = [(CKWalletItemReplyPreviewBalloonView *)self linkView];
  [v8 sizeThatFits:{width, height}];
  v10 = v9;
  v12 = v11;

  if (width < v10 || height < v12)
  {
    v14 = width / v10;
    v15 = 0.0;
    if (v10 == 0.0)
    {
      v14 = 0.0;
    }

    if (v12 != 0.0)
    {
      v15 = height / v12;
    }

    v16 = fmin(v14, v15);
    v10 = ceil(v10 * v16);
    v12 = ceil(v12 * v16);
  }

  v17 = v10;
  v18 = v12;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)prepareForDisplay
{
  v6.receiver = self;
  v6.super_class = CKWalletItemReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v6 prepareForDisplay];
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isCAShapeLayerBalloonsEnabled];

  linkView = self->_linkView;
  if (v4)
  {
    [(CKWalletItemReplyPreviewBalloonView *)self addSubview:linkView];
  }

  else
  {
    [(CKWalletItemReplyPreviewBalloonView *)self insertSubview:linkView atIndex:0];
  }
}

- (void)setMediaObject:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_mediaObject != v5)
  {
    v22 = v5;
    objc_storeStrong(&self->_mediaObject, a3);
    if ([(LPLinkView *)self->_linkView isDescendantOfView:self])
    {
      [(LPLinkView *)self->_linkView removeFromSuperview];
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = v22;
    if (isKindOfClass & 1) != 0 || (objc_opt_class(), v8 = objc_opt_isKindOfClass(), v6 = v22, (v8))
    {
      v9 = [(CKMediaObject *)v6 presentationPropertiesForReplyPreview];
      v6 = v22;
      if (v9)
      {
        v10 = v9;
        v11 = [objc_alloc(MEMORY[0x1E696ECC8]) initWithPresentationProperties:v9 URL:0];
        [(LPLinkView *)v11 _setPreferredSizeClass:6];
        [(LPLinkView *)v11 _setApplyCornerRadius:0];
        [(LPLinkView *)v11 _setDisableTapGesture:1];
        v12 = +[CKUIBehavior sharedBehaviors];
        [v12 thumbnailContentAlignmentInsetsForOrientation:{-[CKBalloonView orientation](self, "orientation")}];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;

        [(LPLinkView *)v11 setContentInset:v14, v16, v18, v20];
        linkView = self->_linkView;
        self->_linkView = v11;

        [(CKBalloonView *)self setNeedsPrepareForDisplay];
        v6 = v22;
      }
    }
  }
}

- (void)configureForMessagePart:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CKWalletItemReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v7 configureForMessagePart:v4];
  if (v4)
  {
    [v4 balloonDescriptor];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  [(CKColoredBalloonView *)self setBalloonDescriptor:v6];
  v5 = [v4 mediaObject];
  [(CKWalletItemReplyPreviewBalloonView *)self setMediaObject:v5];
}

@end