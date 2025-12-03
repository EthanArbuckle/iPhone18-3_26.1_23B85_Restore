@interface MUIAboutCategoriesViewController
- (MUIAboutCategoriesViewController)initWithCoder:(id)coder;
- (MUIAboutCategoriesViewController)initWithDaemonInterface:(id)interface delegate:(id)delegate;
- (MUIAboutCategoriesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (MUIAboutCategoriesViewControllerDelegate)delegate;
- (void)setDelegate:(id)delegate;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MUIAboutCategoriesViewController

- (MUIAboutCategoriesViewControllerDelegate)delegate
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = sub_214BF8278();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (void)setDelegate:(id)delegate
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  sub_214BF8348();
  MEMORY[0x277D82BD8](self);
}

- (MUIAboutCategoriesViewController)initWithDaemonInterface:(id)interface delegate:(id)delegate
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](interface);
  swift_unknownObjectRetain();
  return sub_214BF8430(interface, delegate);
}

- (MUIAboutCategoriesViewController)initWithCoder:(id)coder
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](coder);
  MUIAboutCategoriesViewController.init(coder:)();
}

- (void)viewDidLoad
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIAboutCategoriesViewController.viewDidLoad()();
  MEMORY[0x277D82BD8](self);
}

- (void)viewWillAppear:(BOOL)appear
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v4 = sub_214CCD394();
  MUIAboutCategoriesViewController.viewWillAppear(_:)(v4 & 1);
  MEMORY[0x277D82BD8](self);
}

- (MUIAboutCategoriesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](name);
  MEMORY[0x277D82BE0](bundle);
  if (name)
  {
    sub_214CCF564();
    v6 = v4;
    MEMORY[0x277D82BD8](name);
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  MUIAboutCategoriesViewController.init(nibName:bundle:)(v5);
}

@end