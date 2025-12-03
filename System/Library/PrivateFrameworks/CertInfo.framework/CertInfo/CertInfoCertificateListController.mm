@interface CertInfoCertificateListController
- (CertInfoCertificateListController)initWithTrustDescription:(id)description;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation CertInfoCertificateListController

- (CertInfoCertificateListController)initWithTrustDescription:(id)description
{
  descriptionCopy = description;
  v11.receiver = self;
  v11.super_class = CertInfoCertificateListController;
  v6 = [(CertInfoCertificateListController *)&v11 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_description, description);
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
    v9 = [v8 localizedStringForKey:@"CERTIFICATES" value:&stru_28561D260 table:@"CertInfo"];
    [(CertInfoCertificateListController *)v7 setTitle:v9];
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"CertInfoCertificateListControllerTableCell"];
  if (!v7)
  {
    v7 = [[CertInfoCertificateListTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"CertInfoCertificateListControllerTableCell"];
    [(CertInfoCertificateListTableViewCell *)v7 setAccessoryType:1];
  }

  -[CertInfoCertificateListTableViewCell updateWithTrustDescription:certificateIndex:](v7, "updateWithTrustDescription:certificateIndex:", self->_description, [pathCopy section]);

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v7 = -[CertInfoTrustDescription certificatePropertiesAtIndex:](self->_description, "certificatePropertiesAtIndex:", [path section]);
  v5 = [[CertInfoCertificateDetailsController alloc] initWithCertificateProperties:v7];
  navigationController = [(CertInfoCertificateListController *)self navigationController];
  [navigationController pushViewController:v5 animated:1];
}

@end