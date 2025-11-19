@interface PreferencesModalController
- (_TtC12GameCenterUIP33_C2AB98B87AF2030AFF6D71CAC9E6FA9326PreferencesModalController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (void)didTapDone;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)viewDidLoad;
@end

@implementation PreferencesModalController

- (void)viewDidLoad
{
  v2 = self;
  sub_24E057C1C();
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_24E057D28(v7, v8);
}

- (void)didTapDone
{
  v2 = self;
  sub_24E057EAC();
}

- (_TtC12GameCenterUIP33_C2AB98B87AF2030AFF6D71CAC9E6FA9326PreferencesModalController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  if (a3)
  {
    swift_getObjCClassMetadata();
    if (!a4)
    {
      goto LABEL_5;
    }
  }

  else if (!a4)
  {
LABEL_5:
    sub_24E058048();
  }

  swift_getObjCClassMetadata();
  goto LABEL_5;
}

@end