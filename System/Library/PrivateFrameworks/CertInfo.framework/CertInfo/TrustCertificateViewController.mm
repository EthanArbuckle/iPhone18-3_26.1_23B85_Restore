@interface TrustCertificateViewController
- (TrustCertificateViewController)initWithTrustCertificateDelegate:(id)delegate allowTrust:(BOOL)trust;
- (TrustCertificateViewControllerDelegate)trustCertificateDelegate;
- (void)_setupNavItem;
- (void)didReceiveMemoryWarning;
@end

@implementation TrustCertificateViewController

- (TrustCertificateViewController)initWithTrustCertificateDelegate:(id)delegate allowTrust:(BOOL)trust
{
  delegateCopy = delegate;
  v7 = [[CertificateViewController alloc] initWithStyle:1];
  v11.receiver = self;
  v11.super_class = TrustCertificateViewController;
  v8 = [(TrustCertificateViewController *)&v11 initWithRootViewController:v7];
  v9 = v8;
  if (v8)
  {
    v8->_allowCertificateTrust = trust;
    objc_storeWeak(&v8->_trustCertificateDelegate, delegateCopy);
    objc_storeStrong(&v9->_certificateViewController, v7);
    [(TrustCertificateViewController *)v9 _setupNavItem];
  }

  return v9;
}

- (void)_setupNavItem
{
  certificateViewController = [(TrustCertificateViewController *)self certificateViewController];
  navigationItem = [certificateViewController navigationItem];

  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
  v5 = [v4 localizedStringForKey:@"CERTIFICATE" value:&stru_28561D260 table:@"CertInfo"];
  [navigationItem setTitle:v5];

  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancel];
  [navigationItem setLeftBarButtonItem:v6];
  if (self->_allowCertificateTrust)
  {
    v7 = objc_alloc(MEMORY[0x277D751E0]);
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
    v9 = [v8 localizedStringForKey:@"TRUST" value:&stru_28561D260 table:@"CertInfo"];
    v10 = [v7 initWithTitle:v9 style:2 target:self action:sel__accept];

    [navigationItem setRightBarButtonItem:v10];
  }
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = TrustCertificateViewController;
  [(TrustCertificateViewController *)&v2 didReceiveMemoryWarning];
}

- (TrustCertificateViewControllerDelegate)trustCertificateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_trustCertificateDelegate);

  return WeakRetained;
}

@end