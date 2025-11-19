@interface MUIExternalSummarizationOnboardingViewController
- (_TtC6MailUI48MUIExternalSummarizationOnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation MUIExternalSummarizationOnboardingViewController

- (void)viewDidLoad
{
  MEMORY[0x277D82BE0](self);
  sub_214C0C820();
  MEMORY[0x277D82BD8](self);
}

- (_TtC6MailUI48MUIExternalSummarizationOnboardingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
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

  MUIExternalSummarizationOnboardingViewController.init(nibName:bundle:)(v5);
}

@end