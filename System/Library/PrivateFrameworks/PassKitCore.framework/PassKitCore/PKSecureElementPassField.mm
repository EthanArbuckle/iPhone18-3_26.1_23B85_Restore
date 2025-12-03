@interface PKSecureElementPassField
- (PKSecureElementPassField)initWithPassField:(id)field;
- (PKSecureElementPassField)initWithPaymentPassFieldDictionary:(id)dictionary;
@end

@implementation PKSecureElementPassField

- (PKSecureElementPassField)initWithPaymentPassFieldDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(PKSecureElementPassField *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"key"];
    key = v5->_key;
    v5->_key = v6;

    v8 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"combinedForeignReferenceIdentifiers"];
    foreignReferenceIdentifiers = v5->_foreignReferenceIdentifiers;
    v5->_foreignReferenceIdentifiers = v8;

    if (!v5->_foreignReferenceIdentifiers)
    {
      v10 = [dictionaryCopy PKStringForKey:@"foreignReferenceIdentifier"];
      if (v10)
      {
        v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v10, 0}];
        v12 = v5->_foreignReferenceIdentifiers;
        v5->_foreignReferenceIdentifiers = v11;
      }
    }

    v13 = [dictionaryCopy PKStringForKey:@"unitType"];
    v18 = v13;
    if (v13)
    {
      v5->_unitType = _PKEnumValueFromString(v13, 0, @"PKFieldUnitType", @"PKFieldUnitTypeNone, PKFieldUnitTypeDefault, PKFieldUnitTypeRides, PKFieldUnitTypeTickets, PKFieldUnitTypeLoyaltyPoints", v14, v15, v16, v17, 0xFFFFFFFF);
    }
  }

  return v5;
}

- (PKSecureElementPassField)initWithPassField:(id)field
{
  fieldCopy = field;
  v13.receiver = self;
  v13.super_class = PKSecureElementPassField;
  v5 = [(PKSecureElementPassField *)&v13 init];
  if (v5)
  {
    v6 = [fieldCopy key];
    v7 = [v6 copy];
    key = v5->_key;
    v5->_key = v7;

    foreignReferenceIdentifiers = [fieldCopy foreignReferenceIdentifiers];
    v10 = [foreignReferenceIdentifiers copy];
    foreignReferenceIdentifiers = v5->_foreignReferenceIdentifiers;
    v5->_foreignReferenceIdentifiers = v10;

    v5->_unitType = [fieldCopy unitType];
  }

  return v5;
}

@end