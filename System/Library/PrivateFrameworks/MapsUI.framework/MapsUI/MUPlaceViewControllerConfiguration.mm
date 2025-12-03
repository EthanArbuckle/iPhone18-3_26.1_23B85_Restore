@interface MUPlaceViewControllerConfiguration
- (CNContactViewControllerPrivateDelegate)contactsNavigationController;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MUPlaceViewControllerConfiguration

- (CNContactViewControllerPrivateDelegate)contactsNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_contactsNavigationController);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MUPlaceViewControllerConfiguration);
  contactsNavigationController = [(MUPlaceViewControllerConfiguration *)self contactsNavigationController];
  [(MUPlaceViewControllerConfiguration *)v4 setContactsNavigationController:contactsNavigationController];

  contactsViewController = [(MUPlaceViewControllerConfiguration *)self contactsViewController];
  [(MUPlaceViewControllerConfiguration *)v4 setContactsViewController:contactsViewController];

  headerViewController = [(MUPlaceViewControllerConfiguration *)self headerViewController];
  [(MUPlaceViewControllerConfiguration *)v4 setHeaderViewController:headerViewController];

  [(MUPlaceViewControllerConfiguration *)v4 setOptions:[(MUPlaceViewControllerConfiguration *)self options]];
  return v4;
}

@end