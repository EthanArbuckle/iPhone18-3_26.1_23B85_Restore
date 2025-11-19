@interface PKPassUpgradePrecursorPassProofingAction
- (PKPassUpgradePrecursorPassProofingAction)initWithCoder:(id)a3;
- (PKPassUpgradePrecursorPassProofingAction)initWithDictionary:(id)a3;
- (void)_dictionaryRepresentationInto:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassUpgradePrecursorPassProofingAction

- (PKPassUpgradePrecursorPassProofingAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassUpgradePrecursorPassProofingAction;
  v5 = [(PKPassUpgradePrecursorPassAction *)&v9 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"productIdentifier"];
    productIdentifier = v5->_productIdentifier;
    v5->_productIdentifier = v6;
  }

  return v5;
}

- (void)_dictionaryRepresentationInto:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassUpgradePrecursorPassProofingAction;
  v4 = a3;
  [(PKPassUpgradePrecursorPassAction *)&v5 _dictionaryRepresentationInto:v4];
  [v4 setObject:self->_productIdentifier forKeyedSubscript:{@"productIdentifier", v5.receiver, v5.super_class}];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassUpgradePrecursorPassProofingAction;
  v4 = a3;
  [(PKPassUpgradePrecursorPassAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_productIdentifier forKey:{@"productIdentifier", v5.receiver, v5.super_class}];
}

- (PKPassUpgradePrecursorPassProofingAction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassUpgradePrecursorPassProofingAction;
  v5 = [(PKPassUpgradePrecursorPassAction *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productIdentifier"];
    productIdentifier = v5->_productIdentifier;
    v5->_productIdentifier = v6;
  }

  return v5;
}

@end