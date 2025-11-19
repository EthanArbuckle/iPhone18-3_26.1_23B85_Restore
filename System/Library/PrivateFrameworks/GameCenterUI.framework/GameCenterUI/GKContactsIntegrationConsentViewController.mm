@interface GKContactsIntegrationConsentViewController
- (GKContactsIntegrationConsentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation GKContactsIntegrationConsentViewController

- (void)viewDidLoad
{
  v2 = self;
  ContactsIntegrationConsentViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  ContactsIntegrationConsentViewController.viewWillAppear(_:)(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  ContactsIntegrationConsentViewController.viewIsAppearing(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  ContactsIntegrationConsentViewController.viewDidAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  ContactsIntegrationConsentViewController.viewWillDisappear(_:)(a3);
}

- (GKContactsIntegrationConsentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_24E347CF8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return ContactsIntegrationConsentViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end