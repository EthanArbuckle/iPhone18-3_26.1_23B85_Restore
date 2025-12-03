@interface SFMinibarRegistration.TrailingToken
- (id)viewForBarItem:(int64_t)item;
- (void)setBarItem:(int64_t)item enabled:(BOOL)enabled;
- (void)updateBarAnimated:(BOOL)animated;
@end

@implementation SFMinibarRegistration.TrailingToken

- (void)setBarItem:(int64_t)item enabled:(BOOL)enabled
{
  selfCopy = self;
  sub_215A0A7C8(item, enabled);
}

- (void)updateBarAnimated:(BOOL)animated
{
  selfCopy = self;
  v3 = sub_215A09BC4();
  v4 = sub_215A09EA0();
  [v3 setMenu_];
}

- (id)viewForBarItem:(int64_t)item
{
  selfCopy = self;
  v4 = sub_215A09BC4();

  return v4;
}

@end