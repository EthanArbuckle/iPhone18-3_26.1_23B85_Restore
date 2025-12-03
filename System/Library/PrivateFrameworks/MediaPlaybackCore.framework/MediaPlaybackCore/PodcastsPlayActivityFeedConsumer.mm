@interface PodcastsPlayActivityFeedConsumer
+ (NSString)identifier;
- (void)subscribeToEventStream:(id)stream;
- (void)unsubscribeFromEventStream:(id)stream;
@end

@implementation PodcastsPlayActivityFeedConsumer

- (void)subscribeToEventStream:(id)stream
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5C7F7C4(stream);
  swift_unknownObjectRelease();
}

+ (NSString)identifier
{
  sub_1C5C7FB54();
  v2 = sub_1C6016900();

  return v2;
}

- (void)unsubscribeFromEventStream:(id)stream
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5CBE7E8();
  swift_unknownObjectRelease();
}

@end