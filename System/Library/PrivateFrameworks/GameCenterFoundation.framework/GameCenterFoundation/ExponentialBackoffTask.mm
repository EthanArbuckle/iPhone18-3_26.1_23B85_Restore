@interface ExponentialBackoffTask
- (_TtP20GameCenterFoundation30ExponentialBackoffTaskDelegate_)delegate;
- (void)cancel;
- (void)setDelegate:(id)a3;
- (void)startWithTask:(id)a3 successCondition:(id)a4;
@end

@implementation ExponentialBackoffTask

- (_TtP20GameCenterFoundation30ExponentialBackoffTaskDelegate_)delegate
{
  v2 = sub_227A2C7E8();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_227A2C888();
}

- (void)startWithTask:(id)a3 successCondition:(id)a4
{
  v6 = _Block_copy(a3);
  v7 = _Block_copy(a4);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = self;
  sub_227A2CBD8(sub_227A2EB04, v8, sub_227A2EB0C, v9);
}

- (void)cancel
{
  v2 = self;
  sub_227A2E0F0();
}

@end