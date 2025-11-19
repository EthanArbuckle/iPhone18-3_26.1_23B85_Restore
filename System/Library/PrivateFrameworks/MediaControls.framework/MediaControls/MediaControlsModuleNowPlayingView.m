@interface MediaControlsModuleNowPlayingView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)didSelectArtworkControlWithControl:(id)a3;
- (void)didSelectHeaderViewWithHeaderView:(id)a3;
- (void)didSelectRouteButtonWithButton:(id)a3;
- (void)layoutSubviews;
@end

@implementation MediaControlsModuleNowPlayingView

- (void)layoutSubviews
{
  v2 = self;
  sub_1A211D330();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_1A2230E10(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)didSelectArtworkControlWithControl:(id)a3
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xE8);
  v5 = a3;
  v9 = self;
  if (v4())
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v9, v5, ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

- (void)didSelectHeaderViewWithHeaderView:(id)a3
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xE8);
  v5 = a3;
  v9 = self;
  if (v4())
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(v9, v5, ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

- (void)didSelectRouteButtonWithButton:(id)a3
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xE8);
  v5 = a3;
  v9 = self;
  if (v4())
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    (*(v7 + 24))(v9, v5, ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

@end