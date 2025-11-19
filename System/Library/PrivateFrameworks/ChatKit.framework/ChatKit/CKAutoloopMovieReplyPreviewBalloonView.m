@interface CKAutoloopMovieReplyPreviewBalloonView
- (CKAutoloopMovieReplyPreviewBalloonView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)updateContentAlpha;
@end

@implementation CKAutoloopMovieReplyPreviewBalloonView

- (CKAutoloopMovieReplyPreviewBalloonView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CKAutoloopMovieReplyPreviewBalloonView;
  v3 = [(CKAutoloopMovieBalloonView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v4.super_class = CKAutoloopMovieReplyPreviewBalloonView;
  [(CKAutoloopMovieBalloonView *)&v4 layoutSubviews];
  v3 = [(CKAutoloopMovieBalloonView *)self muteButton];
  [v3 setHidden:1];

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
  v3 = [(CKAutoloopMovieReplyPreviewBalloonView *)self traitCollection];
  v4 = [v3 isTranscriptBackgroundActive];

  if (v4)
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