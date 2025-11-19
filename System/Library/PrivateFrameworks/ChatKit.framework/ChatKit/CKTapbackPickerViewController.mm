@interface CKTapbackPickerViewController
- (CKTapbackPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (CKTapbackPickerViewControllerDelegate)tapbackPickerViewControllerDelegate;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)loadView;
- (void)scrollViewDidScroll:(id)a3;
- (void)tapbackPickerCellCenterPointDidChange:(id)a3;
- (void)tapbackPreviewDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation CKTapbackPickerViewController

- (void)tapbackPreviewDidChange:(id)a3
{
  v4 = sub_190D50FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  v8 = self;
  TapbackPickerViewController.tapbackPreviewDidChange(_:)();

  (*(v5 + 8))(v7, v4);
}

- (CKTapbackPickerViewControllerDelegate)tapbackPickerViewControllerDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)loadView
{
  v3 = self;
  v2 = sub_19098B380();
  [(CKTapbackPickerViewController *)v3 setView:v2];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_19098B858();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TapbackPickerViewController();
  v4 = v5.receiver;
  [(CKTapbackPickerViewController *)&v5 viewDidAppear:v3];
  sub_190AEA8BC();
}

- (void)tapbackPickerCellCenterPointDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19098C934(v4);
}

- (CKTapbackPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_190D51C00();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51BC0();
  v10 = a3;
  v11 = self;
  TapbackPickerViewController.collectionView(_:didSelectItemAt:)(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = self;
  TapbackPickerViewController.updateVisibleCellsForScrollPosition()();
  sub_19098C7B0();
  sub_19098C20C();
}

@end