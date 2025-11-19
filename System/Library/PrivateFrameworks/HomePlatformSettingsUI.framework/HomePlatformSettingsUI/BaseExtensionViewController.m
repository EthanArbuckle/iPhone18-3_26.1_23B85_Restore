@interface BaseExtensionViewController
- (_TtC22HomePlatformSettingsUI27BaseExtensionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation BaseExtensionViewController

- (_TtC22HomePlatformSettingsUI27BaseExtensionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_2542AD71C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_2542A7084(v5, v7, a4);
}

- (void)viewDidLoad
{
  v4 = self;
  sub_2542A72F0(v4, v2, v3);
}

@end