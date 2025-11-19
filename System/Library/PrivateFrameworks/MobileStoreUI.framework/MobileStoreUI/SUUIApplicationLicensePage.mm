@interface SUUIApplicationLicensePage
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SUUIApplicationLicensePage

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setLicenseAgreementHTML:self->_licenseAgreementHTML];
  [v4 setTitle:self->_title];
  return v4;
}

@end