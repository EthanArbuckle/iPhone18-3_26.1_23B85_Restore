@interface BaseExtensionViewController
- (_TtC22HomePlatformSettingsUI27BaseExtensionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation BaseExtensionViewController

- (_TtC22HomePlatformSettingsUI27BaseExtensionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_2542AD71C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_2542A7084(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2542A72F0(selfCopy, v2, v3);
}

@end