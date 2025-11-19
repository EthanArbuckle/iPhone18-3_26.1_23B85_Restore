@interface MUPlaceViewControllerConfiguration
- (CNContactViewControllerPrivateDelegate)contactsNavigationController;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MUPlaceViewControllerConfiguration

- (CNContactViewControllerPrivateDelegate)contactsNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_contactsNavigationController);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MUPlaceViewControllerConfiguration);
  v5 = [(MUPlaceViewControllerConfiguration *)self contactsNavigationController];
  [(MUPlaceViewControllerConfiguration *)v4 setContactsNavigationController:v5];

  v6 = [(MUPlaceViewControllerConfiguration *)self contactsViewController];
  [(MUPlaceViewControllerConfiguration *)v4 setContactsViewController:v6];

  v7 = [(MUPlaceViewControllerConfiguration *)self headerViewController];
  [(MUPlaceViewControllerConfiguration *)v4 setHeaderViewController:v7];

  [(MUPlaceViewControllerConfiguration *)v4 setOptions:[(MUPlaceViewControllerConfiguration *)self options]];
  return v4;
}

@end