@interface BookmarkingConsumer
+ (NSString)identifier;
- (void)subscribeToEventStream:(id)stream;
- (void)unsubscribeFromEventStream:(id)stream;
@end

@implementation BookmarkingConsumer

- (void)subscribeToEventStream:(id)stream
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5C7E3E4(stream);
  swift_unknownObjectRelease();
}

+ (NSString)identifier
{
  sub_1C5C7E8A8();
  v2 = sub_1C6016900();

  return v2;
}

- (void)unsubscribeFromEventStream:(id)stream
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5CC7484();
  swift_unknownObjectRelease();
}

@end