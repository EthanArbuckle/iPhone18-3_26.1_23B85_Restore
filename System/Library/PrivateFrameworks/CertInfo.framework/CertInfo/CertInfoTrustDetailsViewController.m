@interface CertInfoTrustDetailsViewController
- (void)_setupNavItem;
- (void)loadView;
@end

@implementation CertInfoTrustDetailsViewController

- (void)loadView
{
  v3 = [CertInfoTrustDetailsView alloc];
  v4 = [(CertInfoTrustDetailsViewController *)self trustProperties];
  v5 = [(CertInfoTrustDetailsView *)v3 initWithFrame:v4 trustProperties:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  [(CertInfoTrustDetailsViewController *)self setView:v5];
}

- (void)_setupNavItem
{
  v4 = [(CertInfoTrustDetailsViewController *)self navigationItem];
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
  v3 = [v2 localizedStringForKey:@"DETAILS" value:&stru_28561D260 table:@"CertInfo"];
  [v4 setTitle:v3];
}

@end