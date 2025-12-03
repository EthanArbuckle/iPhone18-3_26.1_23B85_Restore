@interface SUUIReportAConcernViewController
- (SUUIReportAConcernViewController)initWithConfiguration:(id)configuration;
@end

@implementation SUUIReportAConcernViewController

- (SUUIReportAConcernViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [[SUUIReportAConcernReasonViewController alloc] initWithConfiguration:configurationCopy];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__SUUIReportAConcernViewController_initWithConfiguration___block_invoke;
  v9[3] = &unk_2798FDE28;
  objc_copyWeak(&v10, &location);
  [(SUUIReportAConcernReasonViewController *)v5 setCompletion:v9];
  v8.receiver = self;
  v8.super_class = SUUIReportAConcernViewController;
  v6 = [(SUUIReportAConcernViewController *)&v8 initWithRootViewController:v5];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

void __58__SUUIReportAConcernViewController_initWithConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:&__block_literal_global_63];
}

void __58__SUUIReportAConcernViewController_initWithConfiguration___block_invoke_2()
{
  v0 = MEMORY[0x277D755B8];
  v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v0 imageNamed:@"toast-exclamation" inBundle:v1];

  v2 = [SUUIToastViewController alloc];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TOAST_CONCERN_REPORTED_PRIMARY" value:&stru_286AECDE0 table:0];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TOAST_CONCERN_REPORTED_SECONDARY" value:&stru_286AECDE0 table:0];
  v7 = [(SUUIToastViewController *)v2 initWithTitle:v4 description:v6 image:v8];

  [(SUUIToastViewController *)v7 present];
}

@end