@interface CKRichLinkReplyPreviewBalloonView
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CKRichLinkReplyPreviewBalloonView)initWithFrame:(CGRect)a3;
- (id)description;
- (void)configureForTranscriptPlugin:(id)a3;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setDataSource:(id)a3;
@end

@implementation CKRichLinkReplyPreviewBalloonView

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v6.receiver = self;
  v6.super_class = CKRichLinkReplyPreviewBalloonView;
  v3 = [(CKColoredBalloonView *)&v6 description];
  v4 = [v2 stringWithFormat:@"[CKRichLinkReplyPreviewBalloonView %@]", v3];

  return v4;
}

- (CKRichLinkReplyPreviewBalloonView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CKRichLinkReplyPreviewBalloonView;
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
  v4.super_class = CKRichLinkReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v4 layoutSubviews];
  v3 = [(CKRichLinkReplyPreviewBalloonView *)self linkView];
  [(CKRichLinkReplyPreviewBalloonView *)self bounds];
  [v3 setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  height = a3.height;
  width = a3.width;
  v19.receiver = self;
  v19.super_class = CKRichLinkReplyPreviewBalloonView;
  [(CKBalloonView *)&v19 sizeThatFits:a4 textAlignmentInsets:a5 tailInsets:?];
  v8 = [(CKRichLinkReplyPreviewBalloonView *)self linkView];
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
  v6.super_class = CKRichLinkReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v6 prepareForDisplay];
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isCAShapeLayerBalloonsEnabled];

  linkView = self->_linkView;
  if (v4)
  {
    [(CKRichLinkReplyPreviewBalloonView *)self addSubview:linkView];
  }

  else
  {
    [(CKRichLinkReplyPreviewBalloonView *)self insertSubview:linkView atIndex:0];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKRichLinkReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v3 prepareForReuse];
  [(CKRichLinkReplyPreviewBalloonView *)self setLinkMetadata:0];
}

- (void)setDataSource:(id)a3
{
  v5 = a3;
  if (self->_dataSource != v5)
  {
    v20 = v5;
    objc_storeStrong(&self->_dataSource, a3);
    if ([(LPLinkView *)self->_linkView isDescendantOfView:self])
    {
      [(LPLinkView *)self->_linkView removeFromSuperview];
    }

    v6 = [(IMBalloonPluginDataSource *)self->_dataSource richLinkMetadata];
    v7 = objc_alloc(MEMORY[0x1E696ECC8]);
    v8 = [(IMBalloonPluginDataSource *)self->_dataSource url];
    v9 = [v7 initWithURL:v8];

    [(LPLinkView *)v9 setMetadata:v6];
    [(LPLinkView *)v9 _setPreferredSizeClass:6];
    [(LPLinkView *)v9 _setApplyCornerRadius:0];
    [(LPLinkView *)v9 _setDisableTapGesture:1];
    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 thumbnailContentAlignmentInsetsForOrientation:{-[CKBalloonView orientation](self, "orientation")}];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [(LPLinkView *)v9 setContentInset:v12, v14, v16, v18];
    linkView = self->_linkView;
    self->_linkView = v9;

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    v5 = v20;
  }
}

- (void)configureForTranscriptPlugin:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CKRichLinkReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v10 configureForMessagePart:v4];
  if (v4)
  {
    [v4 balloonDescriptor];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  [(CKColoredBalloonView *)self setBalloonDescriptor:v9];
  v5 = [v4 message];
  v6 = [v4 IMChatItem];
  v7 = [v6 chatContext];

  v8 = [v5 richLinkDataSourceWithChatContext:v7];
  [(CKRichLinkReplyPreviewBalloonView *)self setDataSource:v8];
}

@end