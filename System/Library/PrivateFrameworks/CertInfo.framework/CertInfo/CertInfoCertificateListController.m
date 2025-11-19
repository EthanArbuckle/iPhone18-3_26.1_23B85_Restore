@interface CertInfoCertificateListController
- (CertInfoCertificateListController)initWithTrustDescription:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation CertInfoCertificateListController

- (CertInfoCertificateListController)initWithTrustDescription:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CertInfoCertificateListController;
  v6 = [(CertInfoCertificateListController *)&v11 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_description, a3);
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
    v9 = [v8 localizedStringForKey:@"CERTIFICATES" value:&stru_28561D260 table:@"CertInfo"];
    [(CertInfoCertificateListController *)v7 setTitle:v9];
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"CertInfoCertificateListControllerTableCell"];
  if (!v7)
  {
    v7 = [[CertInfoCertificateListTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"CertInfoCertificateListControllerTableCell"];
    [(CertInfoCertificateListTableViewCell *)v7 setAccessoryType:1];
  }

  -[CertInfoCertificateListTableViewCell updateWithTrustDescription:certificateIndex:](v7, "updateWithTrustDescription:certificateIndex:", self->_description, [v6 section]);

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = -[CertInfoTrustDescription certificatePropertiesAtIndex:](self->_description, "certificatePropertiesAtIndex:", [a4 section]);
  v5 = [[CertInfoCertificateDetailsController alloc] initWithCertificateProperties:v7];
  v6 = [(CertInfoCertificateListController *)self navigationController];
  [v6 pushViewController:v5 animated:1];
}

@end