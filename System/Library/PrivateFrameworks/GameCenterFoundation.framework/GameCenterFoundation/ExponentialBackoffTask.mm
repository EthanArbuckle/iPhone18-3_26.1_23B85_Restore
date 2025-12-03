@interface ExponentialBackoffTask
- (_TtP20GameCenterFoundation30ExponentialBackoffTaskDelegate_)delegate;
- (void)cancel;
- (void)setDelegate:(id)delegate;
- (void)startWithTask:(id)task successCondition:(id)condition;
@end

@implementation ExponentialBackoffTask

- (_TtP20GameCenterFoundation30ExponentialBackoffTaskDelegate_)delegate
{
  v2 = sub_227A2C7E8();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_227A2C888();
}

- (void)startWithTask:(id)task successCondition:(id)condition
{
  v6 = _Block_copy(task);
  v7 = _Block_copy(condition);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  selfCopy = self;
  sub_227A2CBD8(sub_227A2EB04, v8, sub_227A2EB0C, v9);
}

- (void)cancel
{
  selfCopy = self;
  sub_227A2E0F0();
}

@end