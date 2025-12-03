@interface PackageViewController
- (UIActivityIndicatorView)activityIndicator;
- (UILabel)errorLabel;
- (_TtC32com_apple_MLKit_MLPackagePreview21PackageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)preparePreviewOfFileAtURL:(id)l completionHandler:(id)handler;
- (void)viewDidLoad;
@end

@implementation PackageViewController

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
  selfCopy = self;
  sub_1000155F0();
}

- (_TtC32com_apple_MLKit_MLPackagePreview21PackageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100019D08();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1000156D0(v5, v7, bundle);
}

- (void)preparePreviewOfFileAtURL:(id)l completionHandler:(id)handler
{
  v6 = sub_100019958();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(handler);
  sub_100019938();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  selfCopy = self;
  sub_1000159B0(v10, sub_100016280, v12);

  (*(v7 + 8))(v10, v6);
}

@end