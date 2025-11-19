@interface TypographyPanel
- (TypographyPanel)initWithNibName:(id)a3 bundle:(id)a4;
- (TypographyPanelDelegate)delegate;
- (void)setSelectedFont:(id)a3;
- (void)viewDidLoad;
@end

@implementation TypographyPanel

- (void)viewDidLoad
{
  v2 = self;
  sub_572B4();
}

- (TypographyPanelDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setSelectedFont:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_57A48(v4);
}

- (TypographyPanel)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_598E0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_57C8C(v5, v7, a4);
}

@end