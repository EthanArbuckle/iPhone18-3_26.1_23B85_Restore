@interface SFMinibarRegistration.LeadingToken
- (id)viewForBarItem:(int64_t)a3;
- (void)setBarItem:(int64_t)a3 enabled:(BOOL)a4;
- (void)setBarItem:(int64_t)a3 menu:(id)a4;
- (void)updateBarAnimated:(BOOL)a3;
@end

@implementation SFMinibarRegistration.LeadingToken

- (void)setBarItem:(int64_t)a3 enabled:(BOOL)a4
{
  v6 = self;
  sub_215A095A8(a3, a4);
}

- (void)setBarItem:(int64_t)a3 menu:(id)a4
{
  if (sub_215828ED8(a3, *(&self->super.super.isa + OBJC_IVAR____TtCE14MobileSafariUICSo21SFMinibarRegistration5Token_items)))
  {
    v7 = a4;
    v9 = self;
    v8 = sub_215A09188(a3);
    [v8 setMenu_];
  }
}

- (void)updateBarAnimated:(BOOL)a3
{
  v3 = self;
  sub_215A0BBC4();
}

- (id)viewForBarItem:(int64_t)a3
{
  v4 = self;
  v5 = sub_215A09188(a3);

  return v5;
}

@end