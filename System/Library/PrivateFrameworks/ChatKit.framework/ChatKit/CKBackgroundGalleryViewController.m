@interface CKBackgroundGalleryViewController
- (_TtC7ChatKit33CKBackgroundGalleryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)editingViewController:(id)a3 didFinishWithConfiguration:(id)a4;
- (void)handleSceneDidEnterBackgroundFrom:(id)a3;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation CKBackgroundGalleryViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_190A8F69C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_190A8FE50(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_190A8FFCC(a3);
}

- (void)handleSceneDidEnterBackgroundFrom:(id)a3
{
  v4 = sub_190D50FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  v8 = self;
  sub_190A91088();

  (*(v5 + 8))(v7, v4);
}

- (_TtC7ChatKit33CKBackgroundGalleryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)editingViewController:(id)a3 didFinishWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CKBackgroundGalleryViewController.editingViewController(_:didFinishWith:)(v6, a4);
}

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  sub_1902188FC(0, &unk_1EAD5BC70);
  v6 = sub_190D57180();
  v7 = a3;
  v8 = self;
  CKBackgroundGalleryViewController.picker(_:didFinishPicking:)(v7, v6);
}

@end