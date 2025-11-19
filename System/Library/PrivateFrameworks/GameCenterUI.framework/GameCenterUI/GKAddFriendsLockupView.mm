@interface GKAddFriendsLockupView
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtC12GameCenterUI22GKAddFriendsLockupView)initWithFrame:(CGRect)a3 friendState:(int64_t)a4 metricsPageId:(id)a5 metricsPageType:(id)a6;
- (id)addFriendsHandler;
- (void)didTapButton:(id)a3;
- (void)layoutSubviews;
- (void)setAddFriendsHandler:(id)a3;
@end

@implementation GKAddFriendsLockupView

- (_TtC12GameCenterUI22GKAddFriendsLockupView)initWithFrame:(CGRect)a3 friendState:(int64_t)a4 metricsPageId:(id)a5 metricsPageType:(id)a6
{
  v7 = sub_24E347CF8();
  v9 = v8;
  v10 = sub_24E347CF8();
  return GKAddFriendsLockupView.init(frame:friendState:metricsPageId:metricsPageType:)(a4, v7, v9, v10, v11);
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

- (void)setAddFriendsHandler:(id)a3
{
  v4 = _Block_copy(a3);
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

  v6 = self;
  GKAddFriendsLockupView.addFriendsHandler.setter(v4, v5);
}

- (void)layoutSubviews
{
  v2 = self;
  GKAddFriendsLockupView.layoutSubviews()();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  width = a3.width;
  swift_unknownObjectRetain();
  v6 = self;
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

- (void)didTapButton:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_24E3487A8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_24DFA07AC();

  sub_24DF8894C(v6);
}

@end