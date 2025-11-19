@interface CKPhotoStackReplyPreviewBalloonView
- (void)layoutSubviews;
- (void)updateContentAlpha;
@end

@implementation CKPhotoStackReplyPreviewBalloonView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKPhotoStackReplyPreviewBalloonView;
  [(CKStaticPhotoStackBalloonView *)&v3 layoutSubviews];
  [(CKPhotoStackReplyPreviewBalloonView *)self updateContentAlpha];
}

- (void)updateContentAlpha
{
  v3 = [(CKPhotoStackReplyPreviewBalloonView *)self traitCollection];
  v4 = [v3 isTranscriptBackgroundActive];

  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 replyPreviewBalloonImageAlpha];
    [(CKStaticPhotoStackBalloonView *)self setStackAlpha:?];

    [(CKPhotoStackReplyPreviewBalloonView *)self setAlpha:1.0];
  }

  else
  {
    [(CKStaticPhotoStackBalloonView *)self setStackAlpha:1.0];
    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 replyPreviewBalloonImageAlpha];
    [(CKPhotoStackReplyPreviewBalloonView *)self setAlpha:?];
  }
}

@end