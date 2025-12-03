@interface GKMultiplayerButtonHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (_TtC12GameCenterUI29GKMultiplayerButtonHeaderView)initWithCancelButtonHandler:(id)handler;
- (_TtC12GameCenterUI29GKMultiplayerButtonHeaderView)initWithMinimumValue:(int64_t)value maximumValue:(int64_t)maximumValue initialValue:(int64_t)initialValue cancelButtonHandler:(id)handler;
- (void)applyGame:(id)game;
- (void)cancelPressed:(id)pressed;
- (void)layoutSubviews;
- (void)updateCountWithMinPlayers:(int64_t)players maxPlayers:(int64_t)maxPlayers;
- (void)wantsMaterialBackgroundWithScrollOffset:(double)offset;
@end

@implementation GKMultiplayerButtonHeaderView

- (_TtC12GameCenterUI29GKMultiplayerButtonHeaderView)initWithCancelButtonHandler:(id)handler
{
  v3 = _Block_copy(handler);
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

- (_TtC12GameCenterUI29GKMultiplayerButtonHeaderView)initWithMinimumValue:(int64_t)value maximumValue:(int64_t)maximumValue initialValue:(int64_t)initialValue cancelButtonHandler:(id)handler
{
  v8 = _Block_copy(handler);
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

  return GKMultiplayerButtonHeaderView.init(minimumValue:maximumValue:initialValue:cancelButtonHandler:)(value, maximumValue, v9, v12, v11);
}

- (void)wantsMaterialBackgroundWithScrollOffset:(double)offset
{
  selfCopy = self;
  GKMultiplayerButtonHeaderView.wantsMaterialBackground(scrollOffset:)(offset);
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  width = fitting.width;
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_24E00CB4C(in, selfCopy, width);
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = GKMultiplayerButtonHeaderView.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  GKMultiplayerButtonHeaderView.layoutSubviews()();
}

- (void)applyGame:(id)game
{
  gameCopy = game;
  selfCopy = self;
  GKMultiplayerButtonHeaderView.apply(game:)(gameCopy);
}

- (void)updateCountWithMinPlayers:(int64_t)players maxPlayers:(int64_t)maxPlayers
{
  selfCopy = self;
  GKMultiplayerButtonHeaderView.updateCount(minPlayers:maxPlayers:)(players, maxPlayers);
}

- (void)cancelPressed:(id)pressed
{
  if (pressed)
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

  sub_24E00C924();

  sub_24DF8894C(v6);
}

@end