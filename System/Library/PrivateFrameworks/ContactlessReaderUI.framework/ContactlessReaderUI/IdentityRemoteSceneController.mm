@interface IdentityRemoteSceneController
- (_TtC19ContactlessReaderUI29IdentityRemoteSceneController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation IdentityRemoteSceneController

- (_TtC19ContactlessReaderUI29IdentityRemoteSceneController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_2440D2FB0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return IdentityRemoteSceneController.init(nibName:bundle:)(v5, v7, bundle);
}

@end