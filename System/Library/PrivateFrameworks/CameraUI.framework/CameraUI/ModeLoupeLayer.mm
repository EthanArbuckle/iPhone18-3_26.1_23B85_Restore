@interface ModeLoupeLayer
- (_TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer)initWithCoder:(id)a3;
- (_TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer)initWithLayer:(id)a3;
- (double)cornerRadius;
- (void)layoutSublayers;
- (void)setCornerRadius:(double)a3;
@end

@implementation ModeLoupeLayer

- (double)cornerRadius
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ModeLoupeLayer();
  [(ModeLoupeLayer *)&v3 cornerRadius];
  return result;
}

- (void)setCornerRadius:(double)a3
{
  v5 = type metadata accessor for ModeLoupeLayer();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  [(ModeLoupeLayer *)&v9 cornerRadius];
  if (v7 != a3)
  {
    v8.receiver = v6;
    v8.super_class = v5;
    [(ModeLoupeLayer *)&v8 setCornerRadius:a3];
    [(ModeLoupeLayer *)v6 setNeedsLayout];
  }
}

- (void)layoutSublayers
{
  v2 = self;
  sub_1A39CDBC0();
}

- (_TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer_loupeInset) = 0;
  result = sub_1A3A32070();
  __break(1u);
  return result;
}

- (_TtC8CameraUIP33_CE78B0301EE90AA87CD509B48328452714ModeLoupeLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_1A3A31E60();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end