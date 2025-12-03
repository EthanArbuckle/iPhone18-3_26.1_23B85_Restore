@interface SFMinibarRegistration.LeadingToken
- (id)viewForBarItem:(int64_t)item;
- (void)setBarItem:(int64_t)item enabled:(BOOL)enabled;
- (void)setBarItem:(int64_t)item menu:(id)menu;
- (void)updateBarAnimated:(BOOL)animated;
@end

@implementation SFMinibarRegistration.LeadingToken

- (void)setBarItem:(int64_t)item enabled:(BOOL)enabled
{
  selfCopy = self;
  sub_215A095A8(item, enabled);
}

- (void)setBarItem:(int64_t)item menu:(id)menu
{
  if (sub_215828ED8(item, *(&self->super.super.isa + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_items)))
  {
    menuCopy = menu;
    selfCopy = self;
    v8 = sub_215A09188(item);
    [v8 setMenu_];
  }
}

- (void)updateBarAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_215A0BBC4();
}

- (id)viewForBarItem:(int64_t)item
{
  selfCopy = self;
  v5 = sub_215A09188(item);

  return v5;
}

@end