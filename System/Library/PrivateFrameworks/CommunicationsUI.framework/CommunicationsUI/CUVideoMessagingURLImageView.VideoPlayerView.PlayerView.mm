@interface CUVideoMessagingURLImageView.VideoPlayerView.PlayerView
- (_TtCVV16CommunicationsUI28CUVideoMessagingURLImageView15VideoPlayerView10PlayerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CUVideoMessagingURLImageView.VideoPlayerView.PlayerView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CUVideoMessagingURLImageView.VideoPlayerView.PlayerView();
  v2 = v5.receiver;
  [(CUVideoMessagingURLImageView.VideoPlayerView.PlayerView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtCVV16CommunicationsUI28CUVideoMessagingURLImageView15VideoPlayerView10PlayerView_playerLayer];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame_];
  }
}

- (_TtCVV16CommunicationsUI28CUVideoMessagingURLImageView15VideoPlayerView10PlayerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCVV16CommunicationsUI28CUVideoMessagingURLImageView15VideoPlayerView10PlayerView_queuePlayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCVV16CommunicationsUI28CUVideoMessagingURLImageView15VideoPlayerView10PlayerView_playerLayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCVV16CommunicationsUI28CUVideoMessagingURLImageView15VideoPlayerView10PlayerView_looper) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CUVideoMessagingURLImageView.VideoPlayerView.PlayerView();
  return [(CUVideoMessagingURLImageView.VideoPlayerView.PlayerView *)&v8 initWithFrame:x, y, width, height];
}

@end