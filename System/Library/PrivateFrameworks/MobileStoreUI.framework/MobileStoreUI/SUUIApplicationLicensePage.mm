@interface SUUIApplicationLicensePage
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SUUIApplicationLicensePage

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setLicenseAgreementHTML:self->_licenseAgreementHTML];
  [v4 setTitle:self->_title];
  return v4;
}

@end