@interface AssetReaderImplementation
+ (NSString)identifier;
- (void)engine:(id)engine didChangeToItem:(id)item;
- (void)subscribeToEventStream:(id)stream;
- (void)unsubscribeFromEventStream:(id)stream;
@end

@implementation AssetReaderImplementation

- (void)subscribeToEventStream:(id)stream
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5C7FC08(stream);
  swift_unknownObjectRelease();
}

+ (NSString)identifier
{
  sub_1C5C7FD90();
  v2 = sub_1C6016900();

  return v2;
}

- (void)unsubscribeFromEventStream:(id)stream
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5CE0B00();
  swift_unknownObjectRelease();
}

- (void)engine:(id)engine didChangeToItem:(id)item
{
  engineCopy = engine;
  itemCopy = item;
  selfCopy = self;
  sub_1C5CE0B74(engineCopy, item);
}

@end