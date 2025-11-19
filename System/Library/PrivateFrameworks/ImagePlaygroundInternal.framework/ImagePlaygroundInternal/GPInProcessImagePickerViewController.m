@interface GPInProcessImagePickerViewController
- (BOOL)isLoadingRecipe;
- (GPAppleConnectTokenProvider)appleConnectTokenProvider;
- (GPImagePickerViewControllerDelegate)delegate;
- (GPInProcessImagePickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (GPRecipe)recipe;
- (NSArray)selectedAssets;
- (NSString)localizedCreateButtonTitle;
- (int64_t)style;
- (void)closeComposingViewIfNeeded;
- (void)delegate:(id)a3 didDismissPickerWithStagedAssets:(id)a4;
- (void)setAppleConnectTokenProvider:(id)a3;
- (void)setIsLoadingRecipe:(BOOL)a3;
- (void)setLocalizedCreateButtonTitle:(id)a3;
- (void)setRecipe:(id)a3;
- (void)setSelectedAssets:(id)a3;
- (void)setStyle:(int64_t)a3;
@end

@implementation GPInProcessImagePickerViewController

- (int64_t)style
{
  v3 = OBJC_IVAR___GPInProcessImagePickerViewController_style;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setStyle:(int64_t)a3
{
  v5 = OBJC_IVAR___GPInProcessImagePickerViewController_style;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSArray)selectedAssets
{
  swift_beginAccess();
  sub_1D2878C28();
  sub_1D2870F68();
  v2 = sub_1D28783C8();

  return v2;
}

- (void)setSelectedAssets:(id)a3
{
  sub_1D2878C28();
  v4 = sub_1D28783E8();
  v5 = OBJC_IVAR___GPInProcessImagePickerViewController_selectedAssets;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (GPImagePickerViewControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (GPAppleConnectTokenProvider)appleConnectTokenProvider
{
  v3 = OBJC_IVAR___GPInProcessImagePickerViewController_appleConnectTokenProvider;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAppleConnectTokenProvider:(id)a3
{
  v5 = OBJC_IVAR___GPInProcessImagePickerViewController_appleConnectTokenProvider;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

  if (*(self + v5))
  {
    sub_1D2792380();
    v9 = v7;
  }

  else
  {
    v9 = v8;
    v8 = v7;
  }
}

- (BOOL)isLoadingRecipe
{
  v2 = *(self + OBJC_IVAR___GPInProcessImagePickerViewController_imagePickerViewController);
  if (v2)
  {
    return *(v2 + qword_1EC6E0108);
  }

  else
  {
    return 0;
  }
}

- (void)setIsLoadingRecipe:(BOOL)a3
{
  v4 = self;
  GPInProcessImagePickerViewController.isLoadingRecipe.setter(a3);
}

- (GPRecipe)recipe
{
  v3 = *(self + OBJC_IVAR___GPInProcessImagePickerViewController_imagePickerViewController);
  if (v3)
  {
    v4 = *(v3 + qword_1EC6E0110);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setRecipe:(id)a3
{
  v5 = a3;
  v6 = self;
  GPInProcessImagePickerViewController.recipe.setter(a3);
}

- (void)closeComposingViewIfNeeded
{
  v2 = self;
  GPInProcessImagePickerViewController.closeComposingViewIfNeeded()();
}

- (void)delegate:(id)a3 didDismissPickerWithStagedAssets:(id)a4
{
  v5 = sub_1D28783E8();
  swift_unknownObjectRetain();
  v6 = self;
  sub_1D2794764(v5);
  swift_unknownObjectRelease();
}

- (NSString)localizedCreateButtonTitle
{
  if (*(self + OBJC_IVAR___GPInProcessImagePickerViewController_localizedCreateButtonTitle + 8))
  {
    sub_1D2870F68();
    v2 = sub_1D2878068();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setLocalizedCreateButtonTitle:(id)a3
{
  if (a3)
  {
    v4 = sub_1D28780A8();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___GPInProcessImagePickerViewController_localizedCreateButtonTitle);
  *v6 = v4;
  v6[1] = v5;
  v7 = self;

  sub_1D2872678();
}

- (GPInProcessImagePickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end