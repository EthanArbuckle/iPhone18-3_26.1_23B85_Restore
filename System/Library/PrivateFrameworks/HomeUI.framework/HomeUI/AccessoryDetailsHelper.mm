@interface AccessoryDetailsHelper
- (_TtC6HomeUI22AccessoryDetailsHelper)init;
- (void)editRoomViewControllerDidFinish:(id)a3 withNewRoom:(id)a4;
@end

@implementation AccessoryDetailsHelper

- (void)editRoomViewControllerDidFinish:(id)a3 withNewRoom:(id)a4
{
  swift_getKeyPath();
  sub_20D056AEC(&qword_27C81FE10, type metadata accessor for AccessoryDetailsHelper);
  v6 = self;
  v7 = a4;
  sub_20D563908();

  v8 = *(&v6->super.isa + OBJC_IVAR____TtC6HomeUI22AccessoryDetailsHelper__roomEditorDidFinish);
  if (v8)
  {

    v8(v7);

    sub_20CEC8164(v8);
  }

  else
  {
  }
}

- (_TtC6HomeUI22AccessoryDetailsHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end