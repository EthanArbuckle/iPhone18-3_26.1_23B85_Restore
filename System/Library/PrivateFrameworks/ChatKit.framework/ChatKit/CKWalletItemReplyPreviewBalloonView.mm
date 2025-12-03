@interface CKWalletItemReplyPreviewBalloonView
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKWalletItemReplyPreviewBalloonView)initWithFrame:(CGRect)frame;
- (id)description;
- (void)configureForMessagePart:(id)part;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)setMediaObject:(id)object;
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

- (CKWalletItemReplyPreviewBalloonView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKWalletItemReplyPreviewBalloonView;
  v3 = [(CKColoredBalloonView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    doubleTapGestureRecognizer = [(CKBalloonView *)v3 doubleTapGestureRecognizer];
    [doubleTapGestureRecognizer setEnabled:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CKWalletItemReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v4 layoutSubviews];
  linkView = [(CKWalletItemReplyPreviewBalloonView *)self linkView];
  [(CKWalletItemReplyPreviewBalloonView *)self bounds];
  [linkView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  height = fits.height;
  width = fits.width;
  v19.receiver = self;
  v19.super_class = CKWalletItemReplyPreviewBalloonView;
  [(CKBalloonView *)&v19 sizeThatFits:insets textAlignmentInsets:tailInsets tailInsets:?];
  linkView = [(CKWalletItemReplyPreviewBalloonView *)self linkView];
  [linkView sizeThatFits:{width, height}];
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isCAShapeLayerBalloonsEnabled = [mEMORY[0x1E69A8070] isCAShapeLayerBalloonsEnabled];

  linkView = self->_linkView;
  if (isCAShapeLayerBalloonsEnabled)
  {
    [(CKWalletItemReplyPreviewBalloonView *)self addSubview:linkView];
  }

  else
  {
    [(CKWalletItemReplyPreviewBalloonView *)self insertSubview:linkView atIndex:0];
  }
}

- (void)setMediaObject:(id)object
{
  objectCopy = object;
  v6 = objectCopy;
  if (self->_mediaObject != objectCopy)
  {
    v22 = objectCopy;
    objc_storeStrong(&self->_mediaObject, object);
    if ([(LPLinkView *)self->_linkView isDescendantOfView:self])
    {
      [(LPLinkView *)self->_linkView removeFromSuperview];
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = v22;
    if (isKindOfClass & 1) != 0 || (objc_opt_class(), v8 = objc_opt_isKindOfClass(), v6 = v22, (v8))
    {
      presentationPropertiesForReplyPreview = [(CKMediaObject *)v6 presentationPropertiesForReplyPreview];
      v6 = v22;
      if (presentationPropertiesForReplyPreview)
      {
        v10 = presentationPropertiesForReplyPreview;
        v11 = [objc_alloc(MEMORY[0x1E696ECC8]) initWithPresentationProperties:presentationPropertiesForReplyPreview URL:0];
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

- (void)configureForMessagePart:(id)part
{
  partCopy = part;
  v7.receiver = self;
  v7.super_class = CKWalletItemReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v7 configureForMessagePart:partCopy];
  if (partCopy)
  {
    [partCopy balloonDescriptor];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  [(CKColoredBalloonView *)self setBalloonDescriptor:v6];
  mediaObject = [partCopy mediaObject];
  [(CKWalletItemReplyPreviewBalloonView *)self setMediaObject:mediaObject];
}

@end