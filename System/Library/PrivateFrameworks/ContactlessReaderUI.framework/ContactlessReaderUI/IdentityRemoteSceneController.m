@interface IdentityRemoteSceneController
- (_TtC19ContactlessReaderUI29IdentityRemoteSceneController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation IdentityRemoteSceneController

- (_TtC19ContactlessReaderUI29IdentityRemoteSceneController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_2440D2FB0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return IdentityRemoteSceneController.init(nibName:bundle:)(v5, v7, a4);
}

@end