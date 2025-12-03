@interface DOCInterface
+ (_TtP26DocumentManagerExecutables28DOCInterfaceSystemAppearance_)general;
+ (void)setGeneral:(id)general;
- (_TtC26DocumentManagerExecutables12DOCInterface)init;
@end

@implementation DOCInterface

+ (_TtP26DocumentManagerExecutables28DOCInterfaceSystemAppearance_)general
{
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

+ (void)setGeneral:(id)general
{
  v4 = one-time initialization token for general;
  swift_unknownObjectRetain();
  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCInterface.general = general;
  swift_unknownObjectRelease();
}

- (_TtC26DocumentManagerExecutables12DOCInterface)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCInterface();
  return [(DOCInterface *)&v3 init];
}

@end