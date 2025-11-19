@interface MUIAboutCategoriesViewController
- (MUIAboutCategoriesViewController)initWithCoder:(id)a3;
- (MUIAboutCategoriesViewController)initWithDaemonInterface:(id)a3 delegate:(id)a4;
- (MUIAboutCategoriesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (MUIAboutCategoriesViewControllerDelegate)delegate;
- (void)setDelegate:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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

- (void)setDelegate:(id)a3
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self);
  sub_214BF8348();
  MEMORY[0x277D82BD8](self);
}

- (MUIAboutCategoriesViewController)initWithDaemonInterface:(id)a3 delegate:(id)a4
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  swift_unknownObjectRetain();
  return sub_214BF8430(a3, a4);
}

- (MUIAboutCategoriesViewController)initWithCoder:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MUIAboutCategoriesViewController.init(coder:)();
}

- (void)viewDidLoad
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  MUIAboutCategoriesViewController.viewDidLoad()();
  MEMORY[0x277D82BD8](self);
}

- (void)viewWillAppear:(BOOL)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v4 = sub_214CCD394();
  MUIAboutCategoriesViewController.viewWillAppear(_:)(v4 & 1);
  MEMORY[0x277D82BD8](self);
}

- (MUIAboutCategoriesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  if (a3)
  {
    sub_214CCF564();
    v6 = v4;
    MEMORY[0x277D82BD8](a3);
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  MUIAboutCategoriesViewController.init(nibName:bundle:)(v5);
}

@end