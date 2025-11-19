@interface BookmarkingConsumer
+ (NSString)identifier;
- (void)subscribeToEventStream:(id)a3;
- (void)unsubscribeFromEventStream:(id)a3;
@end

@implementation BookmarkingConsumer

- (void)subscribeToEventStream:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1C5C7E3E4(a3);
  swift_unknownObjectRelease();
}

+ (NSString)identifier
{
  sub_1C5C7E8A8();
  v2 = sub_1C6016900();

  return v2;
}

- (void)unsubscribeFromEventStream:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1C5CC7484();
  swift_unknownObjectRelease();
}

@end