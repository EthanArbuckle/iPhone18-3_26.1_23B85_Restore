@interface EmotionShape.Coordinator
- (_TtCV14MentalHealthUI12EmotionShape11Coordinator)init;
- (void)handlePanWithSender:(id)sender;
@end

@implementation EmotionShape.Coordinator

- (void)handlePanWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_258AFBBA4(senderCopy);
}

- (_TtCV14MentalHealthUI12EmotionShape11Coordinator)init
{
  *(&self->super.isa + OBJC_IVAR____TtCV14MentalHealthUI12EmotionShape11Coordinator_parent) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for EmotionShape.Coordinator();
  return [(EmotionShape.Coordinator *)&v3 init];
}

@end