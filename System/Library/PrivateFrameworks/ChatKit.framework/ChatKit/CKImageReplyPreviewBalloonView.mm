@interface CKImageReplyPreviewBalloonView
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKImageReplyPreviewBalloonView)initWithFrame:(CGRect)frame;
- (void)configureForMessagePart:(id)part;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)updateImageAlpha;
@end

@implementation CKImageReplyPreviewBalloonView

- (void)configureForMessagePart:(id)part
{
  partCopy = part;
  v9.receiver = self;
  v9.super_class = CKImageReplyPreviewBalloonView;
  [(CKImageBalloonView *)&v9 configureForMessagePart:partCopy];
  if (partCopy)
  {
    [partCopy balloonDescriptor];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  [(CKBalloonView *)self setBalloonDescriptor:v8];
  mediaObject = [partCopy mediaObject];
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 previewMaxWidth];
  -[CKImageBalloonView configureForMediaObject:previewWidth:orientation:](self, "configureForMediaObject:previewWidth:orientation:", mediaObject, [partCopy balloonOrientation], v7);
}

- (CKImageReplyPreviewBalloonView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKImageReplyPreviewBalloonView;
  v3 = [(CKImageBalloonView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  v4.super_class = CKImageReplyPreviewBalloonView;
  [(CKImageBalloonView *)&v4 layoutSubviews];
  irisBadgeView = [(CKImageBalloonView *)self irisBadgeView];
  [irisBadgeView setHidden:1];

  [(CKImageReplyPreviewBalloonView *)self updateImageAlpha];
}

- (void)prepareForDisplay
{
  v3.receiver = self;
  v3.super_class = CKImageReplyPreviewBalloonView;
  [(CKImageBalloonView *)&v3 prepareForDisplay];
  [(CKImageReplyPreviewBalloonView *)self updateImageAlpha];
}

- (void)updateImageAlpha
{
  traitCollection = [(CKImageReplyPreviewBalloonView *)self traitCollection];
  isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];

  if (isTranscriptBackgroundActive)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 replyPreviewBalloonImageAlpha];
    [(CKImageBalloonView *)self setImageAlpha:?];

    [(CKImageReplyPreviewBalloonView *)self setAlpha:1.0];
  }

  else
  {
    [(CKImageBalloonView *)self setImageAlpha:1.0];
    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 replyPreviewBalloonImageAlpha];
    [(CKImageReplyPreviewBalloonView *)self setAlpha:?];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  v21.receiver = self;
  v21.super_class = CKImageReplyPreviewBalloonView;
  [(CKImageBalloonView *)&v21 sizeThatFits:insets textAlignmentInsets:tailInsets tailInsets:fits.width, fits.height];
  v6 = v5;
  v8 = v7;
  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 textBalloonMinHeight];
  v11 = v10;

  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 replyPreviewBalloonMinWidth];
  v14 = v13;

  if (v14 < v6 || v11 < v8)
  {
    v16 = v14 / v6;
    v17 = 0.0;
    if (v6 == 0.0)
    {
      v16 = 0.0;
    }

    if (v8 != 0.0)
    {
      v17 = v11 / v8;
    }

    v18 = fmax(v16, v17);
    v14 = ceil(v6 * v18);
    v11 = ceil(v8 * v18);
  }

  v19 = v14;
  v20 = v11;
  result.height = v20;
  result.width = v19;
  return result;
}

@end