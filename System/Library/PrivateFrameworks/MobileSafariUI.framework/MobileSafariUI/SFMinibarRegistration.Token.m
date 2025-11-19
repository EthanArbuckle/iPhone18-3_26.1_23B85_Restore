@interface SFMinibarRegistration.Token
- (_TtCE14MobileSafariUICSo21SFMinibarRegistration5Token)init;
- (id)popoverSourceInfoForItem:(int64_t)a3;
- (void)setBarItem:(int64_t)a3 enabled:(BOOL)a4;
@end

@implementation SFMinibarRegistration.Token

- (void)setBarItem:(int64_t)a3 enabled:(BOOL)a4
{
  v4 = a4;
  if (sub_215828ED8(a3, *(&self->super.isa + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_items)))
  {
    swift_beginAccess();
    if (v4)
    {
      v7 = self;
      sub_2158283F4(&v8, a3);
    }

    else
    {
      v7 = self;
      sub_215828C20(a3);
    }

    swift_endAccess();
  }
}

- (id)popoverSourceInfoForItem:(int64_t)a3
{
  if (sub_215828ED8(a3, *(&self->super.isa + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_items)))
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D28F68]) initWithView_];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_TtCE14MobileSafariUICSo21SFMinibarRegistration5Token)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end