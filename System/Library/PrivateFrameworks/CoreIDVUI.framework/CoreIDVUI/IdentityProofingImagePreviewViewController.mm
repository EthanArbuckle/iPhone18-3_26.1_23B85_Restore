@interface IdentityProofingImagePreviewViewController
- (_TtC9CoreIDVUI42IdentityProofingImagePreviewViewController)initWithCoder:(id)a3;
- (_TtC9CoreIDVUI42IdentityProofingImagePreviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation IdentityProofingImagePreviewViewController

- (_TtC9CoreIDVUI42IdentityProofingImagePreviewViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingImagePreviewViewController____lazy_storage___imageView) = 0;
  type metadata accessor for IdentityProofingImagePreviewViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2457D3834();
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for IdentityProofingImagePreviewViewController();
  v2 = v14.receiver;
  [(IdentityProofingImagePreviewViewController *)&v14 viewDidLayoutSubviews];
  v3 = sub_2457D355C();
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v15.origin.x = v7;
    v15.origin.y = v9;
    v15.size.width = v11;
    v15.size.height = v13;
    v16 = CGRectOffset(v15, 0.0, 20.0);
    [v3 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC9CoreIDVUI42IdentityProofingImagePreviewViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end