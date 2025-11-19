@interface PlayerView
+ (Class)layerClass;
- (_TtC11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC10PlayerView)initWithCoder:(id)a3;
@end

@implementation PlayerView

+ (Class)layerClass
{
  sub_1C592535C(0, &qword_1EC1934A0);

  return swift_getObjCClassFromMetadata();
}

- (_TtC11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC10PlayerView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlayerView();
  v4 = a3;
  v5 = [(GeometryTrackingView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end