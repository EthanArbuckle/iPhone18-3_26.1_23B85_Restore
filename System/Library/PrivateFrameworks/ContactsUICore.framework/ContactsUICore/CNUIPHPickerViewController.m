@interface CNUIPHPickerViewController
- (CNUIPHPickerViewController)initWithConfiguration:(id)a3;
- (CNUIPHPickerViewControllerDelegate)delegate;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
@end

@implementation CNUIPHPickerViewController

- (CNUIPHPickerViewController)initWithConfiguration:(id)a3
{
  v29[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = CNUIPHPickerViewController;
  v5 = [(CNUIPHPickerViewController *)&v28 init];
  if (v5)
  {
    v6 = objc_alloc(getPHPickerViewControllerClass[0]());
    [v4 wrappedConfiguration];
    v7 = v27 = v4;
    v8 = [v6 initWithConfiguration:v7];
    wrappedViewController = v5->_wrappedViewController;
    v5->_wrappedViewController = v8;

    [(PHPickerViewController *)v5->_wrappedViewController setDelegate:v5];
    v10 = [(CNUIPHPickerViewController *)v5 view];
    v11 = [(PHPickerViewController *)v5->_wrappedViewController view];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNUIPHPickerViewController *)v5 addChildViewController:v5->_wrappedViewController];
    [v10 addSubview:v11];
    v21 = MEMORY[0x1E696ACD8];
    v26 = [v11 topAnchor];
    v25 = [v10 topAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v29[0] = v24;
    v23 = [v11 bottomAnchor];
    v22 = [v10 bottomAnchor];
    v20 = [v23 constraintEqualToAnchor:v22];
    v29[1] = v20;
    v19 = [v11 leadingAnchor];
    v12 = [v10 leadingAnchor];
    v13 = [v19 constraintEqualToAnchor:v12];
    v29[2] = v13;
    v14 = [v11 trailingAnchor];
    v15 = [v10 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v29[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
    [v21 activateConstraints:v17];

    [(PHPickerViewController *)v5->_wrappedViewController didMoveToParentViewController:v5];
    v4 = v27;
  }

  return v5;
}

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v6 = [a4 _cn_map:&__block_literal_global_299];
  v5 = [(CNUIPHPickerViewController *)self delegate];
  [v5 picker:self didFinishPicking:v6];
}

CNUIPHPickerResult *__54__CNUIPHPickerViewController_picker_didFinishPicking___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNUIPHPickerResult alloc] initWithWrappedResult:v2];

  return v3;
}

- (CNUIPHPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end