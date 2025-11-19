@interface GKMultiplayerButtonHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtC12GameCenterUI29GKMultiplayerButtonHeaderView)initWithCancelButtonHandler:(id)a3;
- (_TtC12GameCenterUI29GKMultiplayerButtonHeaderView)initWithMinimumValue:(int64_t)a3 maximumValue:(int64_t)a4 initialValue:(int64_t)a5 cancelButtonHandler:(id)a6;
- (void)applyGame:(id)a3;
- (void)cancelPressed:(id)a3;
- (void)layoutSubviews;
- (void)updateCountWithMinPlayers:(int64_t)a3 maxPlayers:(int64_t)a4;
- (void)wantsMaterialBackgroundWithScrollOffset:(double)a3;
@end

@implementation GKMultiplayerButtonHeaderView

- (_TtC12GameCenterUI29GKMultiplayerButtonHeaderView)initWithCancelButtonHandler:(id)a3
{
  v3 = _Block_copy(a3);
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v3 = sub_24E00CEE0;
  }

  else
  {
    v5 = 0;
  }

  return GKMultiplayerButtonHeaderView.init(cancelButtonHandler:)(v3, v5);
}

- (_TtC12GameCenterUI29GKMultiplayerButtonHeaderView)initWithMinimumValue:(int64_t)a3 maximumValue:(int64_t)a4 initialValue:(int64_t)a5 cancelButtonHandler:(id)a6
{
  v8 = _Block_copy(a6);
  if (v8)
  {
    v10 = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v12 = sub_24DFA0D08;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  return GKMultiplayerButtonHeaderView.init(minimumValue:maximumValue:initialValue:cancelButtonHandler:)(a3, a4, v9, v12, v11);
}

- (void)wantsMaterialBackgroundWithScrollOffset:(double)a3
{
  v4 = self;
  GKMultiplayerButtonHeaderView.wantsMaterialBackground(scrollOffset:)(a3);
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  width = a3.width;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_24E00CB4C(a4, v7, width);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  swift_unknownObjectRelease();

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.var3 = v18;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = GKMultiplayerButtonHeaderView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  GKMultiplayerButtonHeaderView.layoutSubviews()();
}

- (void)applyGame:(id)a3
{
  v4 = a3;
  v5 = self;
  GKMultiplayerButtonHeaderView.apply(game:)(v4);
}

- (void)updateCountWithMinPlayers:(int64_t)a3 maxPlayers:(int64_t)a4
{
  v6 = self;
  GKMultiplayerButtonHeaderView.updateCount(minPlayers:maxPlayers:)(a3, a4);
}

- (void)cancelPressed:(id)a3
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

  sub_24E00C924();

  sub_24DF8894C(v6);
}

@end