@interface CKAutoloopMovieReplyPreviewBalloonView
- (CKAutoloopMovieReplyPreviewBalloonView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)updateContentAlpha;
@end

@implementation CKAutoloopMovieReplyPreviewBalloonView

- (CKAutoloopMovieReplyPreviewBalloonView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKAutoloopMovieReplyPreviewBalloonView;
  v3 = [(CKAutoloopMovieBalloonView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  v4.super_class = CKAutoloopMovieReplyPreviewBalloonView;
  [(CKAutoloopMovieBalloonView *)&v4 layoutSubviews];
  muteButton = [(CKAutoloopMovieBalloonView *)self muteButton];
  [muteButton setHidden:1];

  [(CKAutoloopMovieReplyPreviewBalloonView *)self updateContentAlpha];
}

- (void)prepareForDisplay
{
  v3.receiver = self;
  v3.super_class = CKAutoloopMovieReplyPreviewBalloonView;
  [(CKAutoloopMovieBalloonView *)&v3 prepareForDisplay];
  [(CKAutoloopMovieReplyPreviewBalloonView *)self updateContentAlpha];
}

- (void)updateContentAlpha
{
  traitCollection = [(CKAutoloopMovieReplyPreviewBalloonView *)self traitCollection];
  isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];

  if (isTranscriptBackgroundActive)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 replyPreviewBalloonImageAlpha];
    [(CKAutoloopMovieBalloonView *)self setContentAlpha:?];

    [(CKAutoloopMovieReplyPreviewBalloonView *)self setAlpha:1.0];
  }

  else
  {
    [(CKAutoloopMovieBalloonView *)self setContentAlpha:1.0];
    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 replyPreviewBalloonImageAlpha];
    [(CKAutoloopMovieReplyPreviewBalloonView *)self setAlpha:?];
  }
}

@end