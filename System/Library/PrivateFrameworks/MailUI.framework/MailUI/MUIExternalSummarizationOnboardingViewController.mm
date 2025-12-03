@interface MUIExternalSummarizationOnboardingViewController
- (_TtC6MailUI48MUIExternalSummarizationOnboardingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation MUIExternalSummarizationOnboardingViewController

- (void)viewDidLoad
{
  MEMORY[0x277D82BE0](self);
  sub_214C0C820();
  MEMORY[0x277D82BD8](self);
}

- (_TtC6MailUI48MUIExternalSummarizationOnboardingViewController)initWithNibName:(id)name bundle:(id)bundle
{
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

  MUIExternalSummarizationOnboardingViewController.init(nibName:bundle:)(v5);
}

@end