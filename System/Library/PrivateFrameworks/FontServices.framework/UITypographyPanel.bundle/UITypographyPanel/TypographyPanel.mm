@interface TypographyPanel
- (TypographyPanel)initWithNibName:(id)name bundle:(id)bundle;
- (TypographyPanelDelegate)delegate;
- (void)setSelectedFont:(id)font;
- (void)viewDidLoad;
@end

@implementation TypographyPanel

- (void)viewDidLoad
{
  selfCopy = self;
  sub_572B4();
}

- (TypographyPanelDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setSelectedFont:(id)font
{
  fontCopy = font;
  selfCopy = self;
  sub_57A48(fontCopy);
}

- (TypographyPanel)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_598E0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_57C8C(v5, v7, bundle);
}

@end