@interface PKPassUpgradePrecursorPassDPANIDSignatureAction
- (PKPassUpgradePrecursorPassDPANIDSignatureAction)initWithCoder:(id)coder;
- (PKPassUpgradePrecursorPassDPANIDSignatureAction)initWithDictionary:(id)dictionary;
- (void)_dictionaryRepresentationInto:(id)into;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassUpgradePrecursorPassDPANIDSignatureAction

- (PKPassUpgradePrecursorPassDPANIDSignatureAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PKPassUpgradePrecursorPassDPANIDSignatureAction;
  v5 = [(PKPassUpgradePrecursorPassAction *)&v9 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"dpanIDs"];
    dpanIdentifiers = v5->_dpanIdentifiers;
    v5->_dpanIdentifiers = v6;
  }

  return v5;
}

- (void)_dictionaryRepresentationInto:(id)into
{
  v5.receiver = self;
  v5.super_class = PKPassUpgradePrecursorPassDPANIDSignatureAction;
  intoCopy = into;
  [(PKPassUpgradePrecursorPassAction *)&v5 _dictionaryRepresentationInto:intoCopy];
  [intoCopy setObject:self->_dpanIdentifiers forKeyedSubscript:{@"dpanIDs", v5.receiver, v5.super_class}];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassUpgradePrecursorPassDPANIDSignatureAction;
  coderCopy = coder;
  [(PKPassUpgradePrecursorPassAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_dpanIdentifiers forKey:{@"dpanIDs", v5.receiver, v5.super_class}];
}

- (PKPassUpgradePrecursorPassDPANIDSignatureAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPassUpgradePrecursorPassDPANIDSignatureAction;
  v5 = [(PKPassUpgradePrecursorPassAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"dpanIDs"];
    dpanIdentifiers = v5->_dpanIdentifiers;
    v5->_dpanIdentifiers = v6;
  }

  return v5;
}

@end