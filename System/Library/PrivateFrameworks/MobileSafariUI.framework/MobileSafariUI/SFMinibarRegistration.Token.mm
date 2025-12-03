@interface SFMinibarRegistration.Token
- (_TtCE14MobileSafariUICSo21SFMinibarRegistration5Token)init;
- (id)popoverSourceInfoForItem:(int64_t)item;
- (void)setBarItem:(int64_t)item enabled:(BOOL)enabled;
@end

@implementation SFMinibarRegistration.Token

- (void)setBarItem:(int64_t)item enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (sub_215828ED8(item, *(&self->super.isa + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_items)))
  {
    swift_beginAccess();
    if (enabledCopy)
    {
      selfCopy2 = self;
      sub_2158283F4(&v8, item);
    }

    else
    {
      selfCopy2 = self;
      sub_215828C20(item);
    }

    swift_endAccess();
  }
}

- (id)popoverSourceInfoForItem:(int64_t)item
{
  if (sub_215828ED8(item, *(&self->super.isa + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_items)))
  {
    initWithView_ = [objc_allocWithZone(MEMORY[0x277D28F68]) initWithView_];
  }

  else
  {
    initWithView_ = 0;
  }

  return initWithView_;
}

- (_TtCE14MobileSafariUICSo21SFMinibarRegistration5Token)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end