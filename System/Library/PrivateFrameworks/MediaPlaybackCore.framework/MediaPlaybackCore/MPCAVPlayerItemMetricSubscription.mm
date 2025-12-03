@interface MPCAVPlayerItemMetricSubscription
- (void)publisher:(id)publisher didReceiveEvent:(id)event;
@end

@implementation MPCAVPlayerItemMetricSubscription

- (void)publisher:(id)publisher didReceiveEvent:(id)event
{
  swift_unknownObjectRetain();
  eventCopy = event;
  selfCopy = self;
  sub_1C5E438CC();
  swift_unknownObjectRelease();
}

@end