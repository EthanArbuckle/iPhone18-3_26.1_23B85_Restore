@interface CNUIPHPickerViewController
- (CNUIPHPickerViewController)initWithConfiguration:(id)configuration;
- (CNUIPHPickerViewControllerDelegate)delegate;
- (void)picker:(id)picker didFinishPicking:(id)picking;
@end

@implementation CNUIPHPickerViewController

- (CNUIPHPickerViewController)initWithConfiguration:(id)configuration
{
  v29[4] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v28.receiver = self;
  v28.super_class = CNUIPHPickerViewController;
  v5 = [(CNUIPHPickerViewController *)&v28 init];
  if (v5)
  {
    v6 = objc_alloc(getPHPickerViewControllerClass[0]());
    [configurationCopy wrappedConfiguration];
    v7 = v27 = configurationCopy;
    v8 = [v6 initWithConfiguration:v7];
    wrappedViewController = v5->_wrappedViewController;
    v5->_wrappedViewController = v8;

    [(PHPickerViewController *)v5->_wrappedViewController setDelegate:v5];
    view = [(CNUIPHPickerViewController *)v5 view];
    view2 = [(PHPickerViewController *)v5->_wrappedViewController view];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNUIPHPickerViewController *)v5 addChildViewController:v5->_wrappedViewController];
    [view addSubview:view2];
    v21 = MEMORY[0x1E696ACD8];
    topAnchor = [view2 topAnchor];
    topAnchor2 = [view topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v29[0] = v24;
    bottomAnchor = [view2 bottomAnchor];
    bottomAnchor2 = [view bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v29[1] = v20;
    leadingAnchor = [view2 leadingAnchor];
    leadingAnchor2 = [view leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v29[2] = v13;
    trailingAnchor = [view2 trailingAnchor];
    trailingAnchor2 = [view trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v29[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
    [v21 activateConstraints:v17];

    [(PHPickerViewController *)v5->_wrappedViewController didMoveToParentViewController:v5];
    configurationCopy = v27;
  }

  return v5;
}

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  v6 = [picking _cn_map:&__block_literal_global_299];
  delegate = [(CNUIPHPickerViewController *)self delegate];
  [delegate picker:self didFinishPicking:v6];
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