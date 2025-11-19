@interface AssetReaderImplementation
+ (NSString)identifier;
- (void)engine:(id)a3 didChangeToItem:(id)a4;
- (void)subscribeToEventStream:(id)a3;
- (void)unsubscribeFromEventStream:(id)a3;
@end

@implementation AssetReaderImplementation

- (void)subscribeToEventStream:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1C5C7FC08(a3);
  swift_unknownObjectRelease();
}

+ (NSString)identifier
{
  sub_1C5C7FD90();
  v2 = sub_1C6016900();

  return v2;
}

- (void)unsubscribeFromEventStream:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1C5CE0B00();
  swift_unknownObjectRelease();
}

- (void)engine:(id)a3 didChangeToItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1C5CE0B74(v6, a4);
}

@end