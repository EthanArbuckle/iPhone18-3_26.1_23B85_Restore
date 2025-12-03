@interface HearingFitNoiseVideoLoopPlayer
- (_TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HearingFitNoiseVideoLoopPlayer

- (void)layoutSubviews
{
  selfCopy = self;
  sub_252034754();
}

- (_TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_videoContainerLayoutGuide;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_heightConstraint) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13HearingModeUI30HearingFitNoiseVideoLoopPlayer_widthConstraint) = 0;
  result = sub_252064A74();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_252034AD4(change);
}

@end