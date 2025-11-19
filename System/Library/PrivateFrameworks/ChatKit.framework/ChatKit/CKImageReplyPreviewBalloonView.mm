@interface CKImageReplyPreviewBalloonView
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CKImageReplyPreviewBalloonView)initWithFrame:(CGRect)a3;
- (void)configureForMessagePart:(id)a3;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)updateImageAlpha;
@end

@implementation CKImageReplyPreviewBalloonView

- (void)configureForMessagePart:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKImageReplyPreviewBalloonView;
  [(CKImageBalloonView *)&v9 configureForMessagePart:v4];
  if (v4)
  {
    [v4 balloonDescriptor];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  [(CKBalloonView *)self setBalloonDescriptor:v8];
  v5 = [v4 mediaObject];
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 previewMaxWidth];
  -[CKImageBalloonView configureForMediaObject:previewWidth:orientation:](self, "configureForMediaObject:previewWidth:orientation:", v5, [v4 balloonOrientation], v7);
}

- (CKImageReplyPreviewBalloonView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CKImageReplyPreviewBalloonView;
  v3 = [(CKImageBalloonView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v4.super_class = CKImageReplyPreviewBalloonView;
  [(CKImageBalloonView *)&v4 layoutSubviews];
  v3 = [(CKImageBalloonView *)self irisBadgeView];
  [v3 setHidden:1];

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
  v3 = [(CKImageReplyPreviewBalloonView *)self traitCollection];
  v4 = [v3 isTranscriptBackgroundActive];

  if (v4)
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

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  v21.receiver = self;
  v21.super_class = CKImageReplyPreviewBalloonView;
  [(CKImageBalloonView *)&v21 sizeThatFits:a4 textAlignmentInsets:a5 tailInsets:a3.width, a3.height];
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