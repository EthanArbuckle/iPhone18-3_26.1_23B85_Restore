@interface MediaControlsModuleNowPlayingView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)didSelectArtworkControlWithControl:(id)control;
- (void)didSelectHeaderViewWithHeaderView:(id)view;
- (void)didSelectRouteButtonWithButton:(id)button;
- (void)layoutSubviews;
@end

@implementation MediaControlsModuleNowPlayingView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1A211D330();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_1A2230E10(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)didSelectArtworkControlWithControl:(id)control
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xE8);
  controlCopy = control;
  selfCopy = self;
  if (v4())
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(selfCopy, controlCopy, ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

- (void)didSelectHeaderViewWithHeaderView:(id)view
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xE8);
  viewCopy = view;
  selfCopy = self;
  if (v4())
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(selfCopy, viewCopy, ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

- (void)didSelectRouteButtonWithButton:(id)button
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xE8);
  buttonCopy = button;
  selfCopy = self;
  if (v4())
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    (*(v7 + 24))(selfCopy, buttonCopy, ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

@end