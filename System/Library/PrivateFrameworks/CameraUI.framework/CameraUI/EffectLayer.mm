@interface EffectLayer
- (CGRect)bounds;
- (_TtC8CameraUIP33_B4AB758274177FA425381CC8A1577C4311EffectLayer)initWithCoder:(id)a3;
- (_TtC8CameraUIP33_B4AB758274177FA425381CC8A1577C4311EffectLayer)initWithLayer:(id)a3;
- (void)setBounds:(CGRect)a3;
@end

@implementation EffectLayer

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for EffectLayer();
  [(EffectLayer *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for EffectLayer();
  v7 = v10.receiver;
  [(EffectLayer *)&v10 setBounds:x, y, width, height];
  v8 = objc_opt_self();
  [v8 begin];
  [v8 setAnimationDuration_];
  v9 = v7;
  sub_1A39900D0(v9, v9);

  [v8 commit];
}

- (_TtC8CameraUIP33_B4AB758274177FA425381CC8A1577C4311EffectLayer)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8CameraUIP33_B4AB758274177FA425381CC8A1577C4311EffectLayer_warpBackdrop;
  *(&self->super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  *(&self->super.super.isa + OBJC_IVAR____TtC8CameraUIP33_B4AB758274177FA425381CC8A1577C4311EffectLayer_configuration) = xmmword_1A3A6A8C0;
  result = sub_1A3A32070();
  __break(1u);
  return result;
}

- (_TtC8CameraUIP33_B4AB758274177FA425381CC8A1577C4311EffectLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_1A3A31E60();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end