@interface PlaybackStatisticsConsumer
+ (NSString)identifier;
- (void)subscribeToEventStream:(id)a3;
- (void)unsubscribeFromEventStream:(id)a3;
@end

@implementation PlaybackStatisticsConsumer

- (void)subscribeToEventStream:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1C5C7EB7C(a3);
  swift_unknownObjectRelease();
}

+ (NSString)identifier
{
  sub_1C5C7EDAC();
  v2 = sub_1C6016900();

  return v2;
}

- (void)unsubscribeFromEventStream:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1C5CD0DD0();
  swift_unknownObjectRelease();
}

@end