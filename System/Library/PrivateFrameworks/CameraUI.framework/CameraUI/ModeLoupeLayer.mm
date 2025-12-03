@interface ModeLoupeLayer
- (_TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer)initWithCoder:(id)coder;
- (_TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer)initWithLayer:(id)layer;
- (double)cornerRadius;
- (void)layoutSublayers;
- (void)setCornerRadius:(double)radius;
@end

@implementation ModeLoupeLayer

- (double)cornerRadius
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ModeLoupeLayer();
  [(ModeLoupeLayer *)&v3 cornerRadius];
  return result;
}

- (void)setCornerRadius:(double)radius
{
  v5 = type metadata accessor for ModeLoupeLayer();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  [(ModeLoupeLayer *)&v9 cornerRadius];
  if (v7 != radius)
  {
    v8.receiver = selfCopy;
    v8.super_class = v5;
    [(ModeLoupeLayer *)&v8 setCornerRadius:radius];
    [(ModeLoupeLayer *)selfCopy setNeedsLayout];
  }
}

- (void)layoutSublayers
{
  selfCopy = self;
  sub_1A39CDBC0();
}

- (_TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer_loupeInset) = 0;
  result = sub_1A3A32070();
  __break(1u);
  return result;
}

- (_TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_1A3A31E60();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end