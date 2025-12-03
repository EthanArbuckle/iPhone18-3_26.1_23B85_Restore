@interface CKRichLinkReplyPreviewBalloonView
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKRichLinkReplyPreviewBalloonView)initWithFrame:(CGRect)frame;
- (id)description;
- (void)configureForTranscriptPlugin:(id)plugin;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setDataSource:(id)source;
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

- (CKRichLinkReplyPreviewBalloonView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKRichLinkReplyPreviewBalloonView;
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
  v4.super_class = CKRichLinkReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v4 layoutSubviews];
  linkView = [(CKRichLinkReplyPreviewBalloonView *)self linkView];
  [(CKRichLinkReplyPreviewBalloonView *)self bounds];
  [linkView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  height = fits.height;
  width = fits.width;
  v19.receiver = self;
  v19.super_class = CKRichLinkReplyPreviewBalloonView;
  [(CKBalloonView *)&v19 sizeThatFits:insets textAlignmentInsets:tailInsets tailInsets:?];
  linkView = [(CKRichLinkReplyPreviewBalloonView *)self linkView];
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
  v6.super_class = CKRichLinkReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v6 prepareForDisplay];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isCAShapeLayerBalloonsEnabled = [mEMORY[0x1E69A8070] isCAShapeLayerBalloonsEnabled];

  linkView = self->_linkView;
  if (isCAShapeLayerBalloonsEnabled)
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

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  if (self->_dataSource != sourceCopy)
  {
    v20 = sourceCopy;
    objc_storeStrong(&self->_dataSource, source);
    if ([(LPLinkView *)self->_linkView isDescendantOfView:self])
    {
      [(LPLinkView *)self->_linkView removeFromSuperview];
    }

    richLinkMetadata = [(IMBalloonPluginDataSource *)self->_dataSource richLinkMetadata];
    v7 = objc_alloc(MEMORY[0x1E696ECC8]);
    v8 = [(IMBalloonPluginDataSource *)self->_dataSource url];
    v9 = [v7 initWithURL:v8];

    [(LPLinkView *)v9 setMetadata:richLinkMetadata];
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
    sourceCopy = v20;
  }
}

- (void)configureForTranscriptPlugin:(id)plugin
{
  pluginCopy = plugin;
  v10.receiver = self;
  v10.super_class = CKRichLinkReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v10 configureForMessagePart:pluginCopy];
  if (pluginCopy)
  {
    [pluginCopy balloonDescriptor];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  [(CKColoredBalloonView *)self setBalloonDescriptor:v9];
  message = [pluginCopy message];
  iMChatItem = [pluginCopy IMChatItem];
  chatContext = [iMChatItem chatContext];

  v8 = [message richLinkDataSourceWithChatContext:chatContext];
  [(CKRichLinkReplyPreviewBalloonView *)self setDataSource:v8];
}

@end