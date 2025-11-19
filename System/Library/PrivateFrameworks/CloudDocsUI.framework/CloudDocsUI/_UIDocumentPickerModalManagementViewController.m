@interface _UIDocumentPickerModalManagementViewController
- (_UIDocumentPickerModalManagementViewController)initWithCoder:(id)a3;
- (_UIDocumentPickerModalManagementViewController)initWithFileTypes:(id)a3 mode:(unint64_t)a4;
- (void)_donePressed:(id)a3;
@end

@implementation _UIDocumentPickerModalManagementViewController

- (_UIDocumentPickerModalManagementViewController)initWithFileTypes:(id)a3 mode:(unint64_t)a4
{
  v6 = a3;
  v7 = [[_UIDocumentPickerManagementViewController alloc] initWithFileTypes:v6 mode:a4];

  v12.receiver = self;
  v12.super_class = _UIDocumentPickerModalManagementViewController;
  v8 = [(_UIDocumentPickerModalManagementViewController *)&v12 initWithRootViewController:v7];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v8 action:sel__donePressed_];
    v10 = [(_UIDocumentPickerManagementViewController *)v7 navigationItem];
    [v10 setRightBarButtonItem:v9];
  }

  return v8;
}

- (_UIDocumentPickerModalManagementViewController)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIDocumentPickerModalManagementViewController;
  return [(_UIDocumentPickerModalManagementViewController *)&v4 initWithCoder:a3];
}

- (void)_donePressed:(id)a3
{
  v3 = [(_UIDocumentPickerModalManagementViewController *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

@end