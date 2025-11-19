@interface MediaControlsModuleBackgroundView
- (_TtC13MediaControls33MediaControlsModuleBackgroundView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation MediaControlsModuleBackgroundView

- (_TtC13MediaControls33MediaControlsModuleBackgroundView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleBackgroundView_image) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleBackgroundView_layout) = 1;
  v4 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleBackgroundView_crossfadeView;
  type metadata accessor for CrossfadeImageView();
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_1A22E7028();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1A2222080();
}

@end