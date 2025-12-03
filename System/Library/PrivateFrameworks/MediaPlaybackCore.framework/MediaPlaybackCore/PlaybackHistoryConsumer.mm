@interface PlaybackHistoryConsumer
+ (NSString)identifier;
- (void)subscribeToEventStream:(id)stream;
- (void)unsubscribeFromEventStream:(id)stream;
@end

@implementation PlaybackHistoryConsumer

- (void)subscribeToEventStream:(id)stream
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5C7E940(stream);
  swift_unknownObjectRelease();
}

+ (NSString)identifier
{
  sub_1C5C7EAF8();
  v2 = sub_1C6016900();

  return v2;
}

- (void)unsubscribeFromEventStream:(id)stream
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5CCB2F4();
  swift_unknownObjectRelease();
}

@end