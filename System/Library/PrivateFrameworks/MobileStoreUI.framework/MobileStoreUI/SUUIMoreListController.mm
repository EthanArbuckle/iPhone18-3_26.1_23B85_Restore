@interface SUUIMoreListController
- (SUUIMoreListController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SUUIMoreListController

- (SUUIMoreListController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = SUUIMoreListController;
  v4 = [(SUUIMoreListController *)&v8 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    navigationItem = [(SUUIMoreListController *)v4 navigationItem];
    [navigationItem setBackButtonTitle:&stru_286AECDE0];
  }

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([MEMORY[0x277D75738] instancesRespondToSelector:a2])
  {
    v11.receiver = self;
    v11.super_class = SUUIMoreListController;
    [(UIMoreListController *)&v11 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }

  navigationController = [(SUUIMoreListController *)self navigationController];
  storeKitDelegate = [navigationController storeKitDelegate];
  if (objc_opt_respondsToSelector())
  {
    [storeKitDelegate moreNavigationController:navigationController didSelectItemAtIndex:{objc_msgSend(pathCopy, "row")}];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  if (SUUIAllowsLandscapePhone())
  {
    return 26;
  }

  return 2;
}

@end