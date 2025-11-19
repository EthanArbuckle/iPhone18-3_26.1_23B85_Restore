@interface PKPassUpgradePrecursorPassDPANIDSignatureAction
- (PKPassUpgradePrecursorPassDPANIDSignatureAction)initWithCoder:(id)a3;
- (PKPassUpgradePrecursorPassDPANIDSignatureAction)initWithDictionary:(id)a3;
- (void)_dictionaryRepresentationInto:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassUpgradePrecursorPassDPANIDSignatureAction

- (PKPassUpgradePrecursorPassDPANIDSignatureAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassUpgradePrecursorPassDPANIDSignatureAction;
  v5 = [(PKPassUpgradePrecursorPassAction *)&v9 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 PKArrayContaining:objc_opt_class() forKey:@"dpanIDs"];
    dpanIdentifiers = v5->_dpanIdentifiers;
    v5->_dpanIdentifiers = v6;
  }

  return v5;
}

- (void)_dictionaryRepresentationInto:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassUpgradePrecursorPassDPANIDSignatureAction;
  v4 = a3;
  [(PKPassUpgradePrecursorPassAction *)&v5 _dictionaryRepresentationInto:v4];
  [v4 setObject:self->_dpanIdentifiers forKeyedSubscript:{@"dpanIDs", v5.receiver, v5.super_class}];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassUpgradePrecursorPassDPANIDSignatureAction;
  v4 = a3;
  [(PKPassUpgradePrecursorPassAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_dpanIdentifiers forKey:{@"dpanIDs", v5.receiver, v5.super_class}];
}

- (PKPassUpgradePrecursorPassDPANIDSignatureAction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassUpgradePrecursorPassDPANIDSignatureAction;
  v5 = [(PKPassUpgradePrecursorPassAction *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"dpanIDs"];
    dpanIdentifiers = v5->_dpanIdentifiers;
    v5->_dpanIdentifiers = v6;
  }

  return v5;
}

@end