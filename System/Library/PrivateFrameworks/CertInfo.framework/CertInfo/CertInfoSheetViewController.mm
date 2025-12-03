@interface CertInfoSheetViewController
- (CertInfoSheetViewControllerDelegate)delegate;
- (void)_pushDetailsView;
- (void)_setupNavItem;
- (void)loadView;
@end

@implementation CertInfoSheetViewController

- (void)_setupNavItem
{
  navigationItem = [(CertInfoSheetViewController *)self navigationItem];
  serviceName = [(CertInfoSheetViewController *)self serviceName];
  [navigationItem setTitle:serviceName];

  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancel];
  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
  v7 = [v6 localizedStringForKey:@"ACCEPT" value:&stru_28561D260 table:@"CertInfo"];
  v8 = [v5 initWithTitle:v7 style:1 target:self action:sel__accept];

  [navigationItem setLeftBarButtonItem:v4];
  [navigationItem setRightBarButtonItem:v8];
}

- (void)_pushDetailsView
{
  v5 = [[CertInfoTrustDetailsViewController alloc] initWithNibName:0 bundle:0];
  trustProperties = [(CertInfoSheetViewController *)self trustProperties];
  [(CertInfoTrustDetailsViewController *)v5 setTrustProperties:trustProperties];

  navigationController = [(CertInfoSheetViewController *)self navigationController];
  [navigationController pushViewController:v5 animated:1];
}

- (void)loadView
{
  v3 = [CertInfoCertificateSummaryView alloc];
  v4 = [(CertInfoCertificateSummaryView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  trustTitle = [(CertInfoSheetViewController *)self trustTitle];
  [(CertInfoCertificateSummaryView *)v4 setTrustTitle:trustTitle];

  trustSubtitle = [(CertInfoSheetViewController *)self trustSubtitle];
  [(CertInfoCertificateSummaryView *)v4 setTrustSubtitle:trustSubtitle];

  trustPurpose = [(CertInfoSheetViewController *)self trustPurpose];
  [(CertInfoCertificateSummaryView *)v4 setPurpose:trustPurpose];

  trustExpiration = [(CertInfoSheetViewController *)self trustExpiration];
  [(CertInfoCertificateSummaryView *)v4 setExpirationDate:trustExpiration];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__CertInfoSheetViewController_loadView__block_invoke;
  v9[3] = &unk_278DB1370;
  v9[4] = self;
  [(CertInfoCertificateSummaryView *)v4 setMoreDetailsSelectedBlock:v9];
  [(CertInfoSheetViewController *)self setView:v4];
}

- (CertInfoSheetViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end