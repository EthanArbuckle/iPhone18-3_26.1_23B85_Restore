@interface PlayerView
+ (Class)layerClass;
- (_TtC11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC10PlayerView)initWithCoder:(id)coder;
@end

@implementation PlayerView

+ (Class)layerClass
{
  sub_1C592535C(0, &qword_1EC1934A0);

  return swift_getObjCClassFromMetadata();
}

- (_TtC11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC10PlayerView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PlayerView();
  coderCopy = coder;
  v5 = [(GeometryTrackingView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end