@interface SFTabSwitcherProfile
- (NSString)title;
- (SFTabSwitcherProfile)init;
- (SFTabSwitcherProfile)initWithTitle:(id)title;
- (void)setImage:(id)image;
- (void)setTintColor:(id)color;
- (void)setTitle:(id)title;
@end

@implementation SFTabSwitcherProfile

- (SFTabSwitcherProfile)initWithTitle:(id)title
{
  v4 = sub_18BC20BD8();
  v5 = (&self->super.isa + OBJC_IVAR___SFTabSwitcherProfile_wrapped);
  *v5 = 0;
  v5[1] = 0;
  v5[2] = v4;
  v5[3] = v6;
  v8.receiver = self;
  v8.super_class = SFTabSwitcherProfile;
  return [(SFTabSwitcherProfile *)&v8 init];
}

- (SFTabSwitcherProfile)init
{
  v2 = (&self->super.isa + OBJC_IVAR___SFTabSwitcherProfile_wrapped);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0xE000000000000000;
  v4.receiver = self;
  v4.super_class = SFTabSwitcherProfile;
  return [(SFTabSwitcherProfile *)&v4 init];
}

- (void)setImage:(id)image
{
  v4 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherProfile_wrapped);
  *(&self->super.isa + OBJC_IVAR___SFTabSwitcherProfile_wrapped) = image;
  imageCopy = image;
}

- (void)setTintColor:(id)color
{
  v4 = *&self->wrapped[OBJC_IVAR___SFTabSwitcherProfile_wrapped];
  *&self->wrapped[OBJC_IVAR___SFTabSwitcherProfile_wrapped] = color;
  colorCopy = color;
}

- (NSString)title
{
  sub_18BC1E3F8();
  v2 = sub_18BC20B98();

  return v2;
}

- (void)setTitle:(id)title
{
  v4 = sub_18BC20BD8();
  v5 = self + OBJC_IVAR___SFTabSwitcherProfile_wrapped;
  *(v5 + 2) = v4;
  *(v5 + 3) = v6;
}

@end