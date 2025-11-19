@interface PodcastsPlayActivityFeedConsumer
+ (NSString)identifier;
- (void)subscribeToEventStream:(id)a3;
- (void)unsubscribeFromEventStream:(id)a3;
@end

@implementation PodcastsPlayActivityFeedConsumer

- (void)subscribeToEventStream:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1C5C7F7C4(a3);
  swift_unknownObjectRelease();
}

+ (NSString)identifier
{
  sub_1C5C7FB54();
  v2 = sub_1C6016900();

  return v2;
}

- (void)unsubscribeFromEventStream:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1C5CBE7E8();
  swift_unknownObjectRelease();
}

@end