@interface MRUPopoverPresentationController
- (MRUPopoverPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
@end

@implementation MRUPopoverPresentationController

- (MRUPopoverPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v7.receiver = self;
  v7.super_class = MRUPopoverPresentationController;
  v4 = [(MRUPopoverPresentationController *)&v7 initWithPresentedViewController:controller presentingViewController:viewController];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    [(MRUPopoverPresentationController *)v4 setOverrideTraitCollection:v5];

    [(UIPopoverPresentationController *)MRUPopoverPresentationController _setAlwaysAllowPopoverPresentations:1];
  }

  return v4;
}

@end