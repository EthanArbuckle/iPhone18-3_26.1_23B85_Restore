@interface FMPFRingView
+ (Class)layerClass;
- (NSString)description;
- (_TtC11FMFindingUI12FMPFRingView)initWithCoder:(id)a3;
- (_TtC11FMFindingUI12FMPFRingView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation FMPFRingView

- (_TtC11FMFindingUI12FMPFRingView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_style;
  if (qword_27EF4EA00 != -1)
  {
    swift_once();
  }

  v5 = self + v4;
  v6 = qword_27EF50E28;
  v7 = qword_27EF50E30;
  *v5 = xmmword_27EF50E18;
  *(v5 + 2) = v6;
  *(v5 + 3) = v7;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_additionalRadiusScale) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_startAngle) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11FMFindingUI12FMPFRingView_endAngle) = 0;
  result = sub_24A62F444();
  __break(1u);
  return result;
}

+ (Class)layerClass
{
  sub_24A50D7EC(0, &qword_27EF50E90, 0x277CD9F90);

  return swift_getObjCClassFromMetadata();
}

- (NSString)description
{
  v2 = self;
  sub_24A5100E8();

  v3 = sub_24A62EBE4();

  return v3;
}

- (void)drawRect:(CGRect)a3
{
  v3 = self;
  sub_24A59EA20();
}

- (_TtC11FMFindingUI12FMPFRingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end