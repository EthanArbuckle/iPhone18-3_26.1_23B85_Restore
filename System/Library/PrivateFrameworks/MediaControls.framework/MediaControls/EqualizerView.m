@interface EqualizerView
- (_TtC13MediaControls13EqualizerView)init;
- (_TtC13MediaControls13EqualizerView)initWithCoder:(id)a3;
- (_TtC13MediaControls13EqualizerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation EqualizerView

- (_TtC13MediaControls13EqualizerView)init
{
  ObjectType = swift_getObjectType();
  v3 = (*(ObjectType + 288))(6, 1.2, 0.5);
  swift_deallocPartialClassInstance();
  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for EqualizerView();
  v2 = v4.receiver;
  v3 = [(EqualizerView *)&v4 layoutSubviews];
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0xD0))(v3))
  {
    sub_1A2261D48();
  }
}

- (_TtC13MediaControls13EqualizerView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaControls13EqualizerView_isAnimating) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaControls13EqualizerView_hidesWhenStopped) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaControls13EqualizerView_barViews) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaControls13EqualizerView_stylingProvider) = 0;
  result = sub_1A22E7028();
  __break(1u);
  return result;
}

- (_TtC13MediaControls13EqualizerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end