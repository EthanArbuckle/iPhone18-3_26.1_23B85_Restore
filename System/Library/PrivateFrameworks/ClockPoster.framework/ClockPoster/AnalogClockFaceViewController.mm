@interface AnalogClockFaceViewController
- (_TtC11ClockPoster29AnalogClockFaceViewController)initWithCoder:(id)coder;
- (void)viewDidLoad;
@end

@implementation AnalogClockFaceViewController

- (_TtC11ClockPoster29AnalogClockFaceViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace;
  type metadata accessor for AnalogClockFaceView();
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = sub_1E49986DC();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1E48D7E40();
}

@end