@interface _UIDocumentPickerModalManagementViewController
- (_UIDocumentPickerModalManagementViewController)initWithCoder:(id)coder;
- (_UIDocumentPickerModalManagementViewController)initWithFileTypes:(id)types mode:(unint64_t)mode;
- (void)_donePressed:(id)pressed;
@end

@implementation _UIDocumentPickerModalManagementViewController

- (_UIDocumentPickerModalManagementViewController)initWithFileTypes:(id)types mode:(unint64_t)mode
{
  typesCopy = types;
  v7 = [[_UIDocumentPickerManagementViewController alloc] initWithFileTypes:typesCopy mode:mode];

  v12.receiver = self;
  v12.super_class = _UIDocumentPickerModalManagementViewController;
  v8 = [(_UIDocumentPickerModalManagementViewController *)&v12 initWithRootViewController:v7];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v8 action:sel__donePressed_];
    navigationItem = [(_UIDocumentPickerManagementViewController *)v7 navigationItem];
    [navigationItem setRightBarButtonItem:v9];
  }

  return v8;
}

- (_UIDocumentPickerModalManagementViewController)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _UIDocumentPickerModalManagementViewController;
  return [(_UIDocumentPickerModalManagementViewController *)&v4 initWithCoder:coder];
}

- (void)_donePressed:(id)pressed
{
  presentingViewController = [(_UIDocumentPickerModalManagementViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

@end