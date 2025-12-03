@interface PKPassUpgradePrecursorPassProofingAction
- (PKPassUpgradePrecursorPassProofingAction)initWithCoder:(id)coder;
- (PKPassUpgradePrecursorPassProofingAction)initWithDictionary:(id)dictionary;
- (void)_dictionaryRepresentationInto:(id)into;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassUpgradePrecursorPassProofingAction

- (PKPassUpgradePrecursorPassProofingAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PKPassUpgradePrecursorPassProofingAction;
  v5 = [(PKPassUpgradePrecursorPassAction *)&v9 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"productIdentifier"];
    productIdentifier = v5->_productIdentifier;
    v5->_productIdentifier = v6;
  }

  return v5;
}

- (void)_dictionaryRepresentationInto:(id)into
{
  v5.receiver = self;
  v5.super_class = PKPassUpgradePrecursorPassProofingAction;
  intoCopy = into;
  [(PKPassUpgradePrecursorPassAction *)&v5 _dictionaryRepresentationInto:intoCopy];
  [intoCopy setObject:self->_productIdentifier forKeyedSubscript:{@"productIdentifier", v5.receiver, v5.super_class}];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassUpgradePrecursorPassProofingAction;
  coderCopy = coder;
  [(PKPassUpgradePrecursorPassAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_productIdentifier forKey:{@"productIdentifier", v5.receiver, v5.super_class}];
}

- (PKPassUpgradePrecursorPassProofingAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPassUpgradePrecursorPassProofingAction;
  v5 = [(PKPassUpgradePrecursorPassAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productIdentifier"];
    productIdentifier = v5->_productIdentifier;
    v5->_productIdentifier = v6;
  }

  return v5;
}

@end