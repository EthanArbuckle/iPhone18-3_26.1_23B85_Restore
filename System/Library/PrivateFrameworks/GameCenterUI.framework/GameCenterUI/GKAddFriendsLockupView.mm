@interface GKAddFriendsLockupView
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC12GameCenterUI22GKAddFriendsLockupView)initWithFrame:(CGRect)frame friendState:(int64_t)state metricsPageId:(id)id metricsPageType:(id)type;
- (id)addFriendsHandler;
- (void)didTapButton:(id)button;
- (void)layoutSubviews;
- (void)setAddFriendsHandler:(id)handler;
@end

@implementation GKAddFriendsLockupView

- (_TtC12GameCenterUI22GKAddFriendsLockupView)initWithFrame:(CGRect)frame friendState:(int64_t)state metricsPageId:(id)id metricsPageType:(id)type
{
  v7 = sub_24E347CF8();
  v9 = v8;
  v10 = sub_24E347CF8();
  return GKAddFriendsLockupView.init(frame:friendState:metricsPageId:metricsPageType:)(state, v7, v9, v10, v11);
}

- (id)addFriendsHandler
{
  v2 = GKAddFriendsLockupView.addFriendsHandler.getter();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_24E00B24C;
    v6[3] = &block_descriptor_0;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAddFriendsHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24DFA0D08;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  GKAddFriendsLockupView.addFriendsHandler.setter(v4, v5);
}

- (void)layoutSubviews
{
  selfCopy = self;
  GKAddFriendsLockupView.layoutSubviews()();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  width = fitting.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = GKAddFriendsLockupView.measurements(fitting:in:)(width);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.var3 = v17;
  result.var2 = v16;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (void)didTapButton:(id)button
{
  if (button)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_24E3487A8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_24DFA07AC();

  sub_24DF8894C(v6);
}

@end