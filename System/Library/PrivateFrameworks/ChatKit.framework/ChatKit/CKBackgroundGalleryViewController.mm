@interface CKBackgroundGalleryViewController
- (_TtC7ChatKit33CKBackgroundGalleryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)editingViewController:(id)controller didFinishWithConfiguration:(id)configuration;
- (void)handleSceneDidEnterBackgroundFrom:(id)from;
- (void)picker:(id)picker didFinishPicking:(id)picking;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation CKBackgroundGalleryViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_190A8F69C();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_190A8FE50(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_190A8FFCC(disappear);
}

- (void)handleSceneDidEnterBackgroundFrom:(id)from
{
  v4 = sub_190D50FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  selfCopy = self;
  sub_190A91088();

  (*(v5 + 8))(v7, v4);
}

- (_TtC7ChatKit33CKBackgroundGalleryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)editingViewController:(id)controller didFinishWithConfiguration:(id)configuration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  selfCopy = self;
  CKBackgroundGalleryViewController.editingViewController(_:didFinishWith:)(controllerCopy, configuration);
}

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  sub_1902188FC(0, &unk_1EAD5BC70);
  v6 = sub_190D57180();
  pickerCopy = picker;
  selfCopy = self;
  CKBackgroundGalleryViewController.picker(_:didFinishPicking:)(pickerCopy, v6);
}

@end