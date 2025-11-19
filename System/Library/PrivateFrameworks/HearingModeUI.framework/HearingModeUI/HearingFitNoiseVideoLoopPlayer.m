@interface HearingFitNoiseVideoLoopPlayer
- (_TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HearingFitNoiseVideoLoopPlayer

- (void)layoutSubviews
{
  v2 = self;
  sub_252034754();
}

- (_TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_videoContainerLayoutGuide;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_heightConstraint) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_widthConstraint) = 0;
  result = sub_252064A74();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_252034AD4(a3);
}

@end