@interface GKContactsIntegrationConsentViewController
- (GKContactsIntegrationConsentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation GKContactsIntegrationConsentViewController

- (void)viewDidLoad
{
  selfCopy = self;
  ContactsIntegrationConsentViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  ContactsIntegrationConsentViewController.viewWillAppear(_:)(appear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  ContactsIntegrationConsentViewController.viewIsAppearing(_:)(appearing);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  ContactsIntegrationConsentViewController.viewDidAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  ContactsIntegrationConsentViewController.viewWillDisappear(_:)(disappear);
}

- (GKContactsIntegrationConsentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_24E347CF8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return ContactsIntegrationConsentViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end