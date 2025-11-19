@interface UIDocumentPickerContainerViewController
@end

@implementation UIDocumentPickerContainerViewController

void __93___UIDocumentPickerContainerViewController__startSearchWithQueryString_becomeFirstResponder___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setText:*(a1 + 40)];
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 text];
  [v4 searchBar:v2 textDidChange:v3];
}

uint64_t __76___UIDocumentPickerContainerViewController_setChildViewController_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didMoveToParentViewController:*(a1 + 40)];
  [*(a1 + 32) endAppearanceTransition];
  [*(a1 + 48) removeFromParentViewController];
  v2 = *(a1 + 48);

  return [v2 didMoveToParentViewController:0];
}

@end