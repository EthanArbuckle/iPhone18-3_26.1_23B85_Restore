@interface PlaybackStatisticsConsumer
+ (NSString)identifier;
- (void)subscribeToEventStream:(id)stream;
- (void)unsubscribeFromEventStream:(id)stream;
@end

@implementation PlaybackStatisticsConsumer

- (void)subscribeToEventStream:(id)stream
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5C7EB7C(stream);
  swift_unknownObjectRelease();
}

+ (NSString)identifier
{
  sub_1C5C7EDAC();
  v2 = sub_1C6016900();

  return v2;
}

- (void)unsubscribeFromEventStream:(id)stream
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5CD0DD0();
  swift_unknownObjectRelease();
}

@end