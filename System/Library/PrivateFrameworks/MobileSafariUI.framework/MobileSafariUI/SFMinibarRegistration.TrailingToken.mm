@interface SFMinibarRegistration.TrailingToken
- (id)viewForBarItem:(int64_t)a3;
- (void)setBarItem:(int64_t)a3 enabled:(BOOL)a4;
- (void)updateBarAnimated:(BOOL)a3;
@end

@implementation SFMinibarRegistration.TrailingToken

- (void)setBarItem:(int64_t)a3 enabled:(BOOL)a4
{
  v6 = self;
  sub_215A0A7C8(a3, a4);
}

- (void)updateBarAnimated:(BOOL)a3
{
  v5 = self;
  v3 = sub_215A09BC4();
  v4 = sub_215A09EA0();
  [v3 setMenu_];
}

- (id)viewForBarItem:(int64_t)a3
{
  v3 = self;
  v4 = sub_215A09BC4();

  return v4;
}

@end