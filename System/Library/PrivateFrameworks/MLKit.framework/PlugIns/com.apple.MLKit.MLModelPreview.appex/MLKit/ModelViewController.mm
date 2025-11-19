@interface ModelViewController
- (UIActivityIndicatorView)activityIndicator;
- (UILabel)errorLabel;
- (_TtC30com_apple_MLKit_MLModelPreview19ModelViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)preparePreviewOfFileAtURL:(id)a3 completionHandler:(id)a4;
- (void)viewDidLoad;
@end

@implementation ModelViewController

- (UIActivityIndicatorView)activityIndicator
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UILabel)errorLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100015B94();
}

- (_TtC30com_apple_MLKit_MLModelPreview19ModelViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_100019D08();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100015C74(v5, v7, a4);
}

- (void)preparePreviewOfFileAtURL:(id)a3 completionHandler:(id)a4
{
  v6 = sub_100019958();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_100019938();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self;
  sub_100015F54(v10, sub_100016824, v12);

  (*(v7 + 8))(v10, v6);
}

@end