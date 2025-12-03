@interface CKTapbackPickerViewController
- (CKTapbackPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CKTapbackPickerViewControllerDelegate)tapbackPickerViewControllerDelegate;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)loadView;
- (void)scrollViewDidScroll:(id)scroll;
- (void)tapbackPickerCellCenterPointDidChange:(id)change;
- (void)tapbackPreviewDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation CKTapbackPickerViewController

- (void)tapbackPreviewDidChange:(id)change
{
  v4 = sub_190D50FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  selfCopy = self;
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
  selfCopy = self;
  v2 = sub_19098B380();
  [(CKTapbackPickerViewController *)selfCopy setView:v2];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_19098B858();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TapbackPickerViewController();
  v4 = v5.receiver;
  [(CKTapbackPickerViewController *)&v5 viewDidAppear:appearCopy];
  sub_190AEA8BC();
}

- (void)tapbackPickerCellCenterPointDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_19098C934(changeCopy);
}

- (CKTapbackPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_190D51C00();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51BC0();
  viewCopy = view;
  selfCopy = self;
  TapbackPickerViewController.collectionView(_:didSelectItemAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)scrollViewDidScroll:(id)scroll
{
  selfCopy = self;
  TapbackPickerViewController.updateVisibleCellsForScrollPosition()();
  sub_19098C7B0();
  sub_19098C20C();
}

@end