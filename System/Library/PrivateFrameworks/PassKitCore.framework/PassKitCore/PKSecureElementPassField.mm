@interface PKSecureElementPassField
- (PKSecureElementPassField)initWithPassField:(id)a3;
- (PKSecureElementPassField)initWithPaymentPassFieldDictionary:(id)a3;
@end

@implementation PKSecureElementPassField

- (PKSecureElementPassField)initWithPaymentPassFieldDictionary:(id)a3
{
  v4 = a3;
  v5 = [(PKSecureElementPassField *)self init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"key"];
    key = v5->_key;
    v5->_key = v6;

    v8 = [v4 PKSetContaining:objc_opt_class() forKey:@"combinedForeignReferenceIdentifiers"];
    foreignReferenceIdentifiers = v5->_foreignReferenceIdentifiers;
    v5->_foreignReferenceIdentifiers = v8;

    if (!v5->_foreignReferenceIdentifiers)
    {
      v10 = [v4 PKStringForKey:@"foreignReferenceIdentifier"];
      if (v10)
      {
        v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v10, 0}];
        v12 = v5->_foreignReferenceIdentifiers;
        v5->_foreignReferenceIdentifiers = v11;
      }
    }

    v13 = [v4 PKStringForKey:@"unitType"];
    v18 = v13;
    if (v13)
    {
      v5->_unitType = _PKEnumValueFromString(v13, 0, @"PKFieldUnitType", @"PKFieldUnitTypeNone, PKFieldUnitTypeDefault, PKFieldUnitTypeRides, PKFieldUnitTypeTickets, PKFieldUnitTypeLoyaltyPoints", v14, v15, v16, v17, 0xFFFFFFFF);
    }
  }

  return v5;
}

- (PKSecureElementPassField)initWithPassField:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKSecureElementPassField;
  v5 = [(PKSecureElementPassField *)&v13 init];
  if (v5)
  {
    v6 = [v4 key];
    v7 = [v6 copy];
    key = v5->_key;
    v5->_key = v7;

    v9 = [v4 foreignReferenceIdentifiers];
    v10 = [v9 copy];
    foreignReferenceIdentifiers = v5->_foreignReferenceIdentifiers;
    v5->_foreignReferenceIdentifiers = v10;

    v5->_unitType = [v4 unitType];
  }

  return v5;
}

@end