@interface _CNPhoneNumberDonationValue
- (BOOL)isEqual:(id)equal;
- (_CNPhoneNumberDonationValue)initWithCoder:(id)coder;
- (_CNPhoneNumberDonationValue)initWithPhoneNumber:(id)number label:(id)label origin:(id)origin;
- (id)copyWithNewExpirationDate:(id)date;
- (unint64_t)hash;
- (void)acceptDonationValueVisitor:(id)visitor;
- (void)encodeWithCoder:(id)coder;
- (void)updatePropertyListRepresentation:(id)representation;
@end

@implementation _CNPhoneNumberDonationValue

- (_CNPhoneNumberDonationValue)initWithPhoneNumber:(id)number label:(id)label origin:(id)origin
{
  numberCopy = number;
  labelCopy = label;
  v17.receiver = self;
  v17.super_class = _CNPhoneNumberDonationValue;
  v10 = [(CNDonationValue *)&v17 initWithOrigin:origin];
  if (v10)
  {
    v11 = [numberCopy copy];
    phoneNumber = v10->_phoneNumber;
    v10->_phoneNumber = v11;

    v13 = [labelCopy copy];
    label = v10->_label;
    v10->_label = v13;

    v15 = v10;
  }

  return v10;
}

- (id)copyWithNewExpirationDate:(id)date
{
  dateCopy = date;
  origin = [(CNDonationValue *)self origin];
  v6 = [origin mutableCopy];

  [v6 setExpirationDate:dateCopy];
  v7 = objc_alloc(objc_opt_class());
  phoneNumber = [(_CNPhoneNumberDonationValue *)self phoneNumber];
  label = [(_CNPhoneNumberDonationValue *)self label];
  v10 = [v7 initWithPhoneNumber:phoneNumber label:label origin:v6];

  return v10;
}

- (_CNPhoneNumberDonationValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = _CNPhoneNumberDonationValue;
  v5 = [(CNDonationValue *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_phoneNumber"];
    v7 = [v6 copy];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_label"];
    v10 = [v9 copy];
    label = v5->_label;
    v5->_label = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _CNPhoneNumberDonationValue;
  coderCopy = coder;
  [(CNDonationValue *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_phoneNumber forKey:{@"_phoneNumber", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_label forKey:@"_label"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x277CFBE18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39___CNPhoneNumberDonationValue_isEqual___block_invoke;
  v15[3] = &unk_2785698D8;
  v15[4] = self;
  v16 = equalCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39___CNPhoneNumberDonationValue_isEqual___block_invoke_2;
  v13[3] = &unk_2785698D8;
  v13[4] = self;
  v6 = v16;
  v14 = v6;
  v7 = MEMORY[0x22AA69CD0](v13);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39___CNPhoneNumberDonationValue_isEqual___block_invoke_3;
  v11[3] = &unk_2785698D8;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = MEMORY[0x22AA69CD0](v11);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v8 withBlocks:{v15, v7, v9, 0}];

  return self;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x277CFBE38];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35___CNPhoneNumberDonationValue_hash__block_invoke;
  v10[3] = &unk_278569900;
  v10[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35___CNPhoneNumberDonationValue_hash__block_invoke_2;
  v9[3] = &unk_278569900;
  v9[4] = self;
  v4 = MEMORY[0x22AA69CD0](v9, a2);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35___CNPhoneNumberDonationValue_hash__block_invoke_3;
  v8[3] = &unk_278569900;
  v8[4] = self;
  v5 = MEMORY[0x22AA69CD0](v8);
  v6 = [v3 hashWithBlocks:{v10, v4, v5, 0}];

  return v6;
}

- (void)acceptDonationValueVisitor:(id)visitor
{
  visitorCopy = visitor;
  phoneNumber = [(_CNPhoneNumberDonationValue *)self phoneNumber];
  label = [(_CNPhoneNumberDonationValue *)self label];
  [visitorCopy visitDonationValue:self phoneNumber:phoneNumber label:label];
}

- (void)updatePropertyListRepresentation:(id)representation
{
  representationCopy = representation;
  phoneNumber = [(_CNPhoneNumberDonationValue *)self phoneNumber];
  stringValue = [phoneNumber stringValue];
  [representationCopy setObject:stringValue forKeyedSubscript:@"phone-number"];

  label = [(_CNPhoneNumberDonationValue *)self label];
  [representationCopy setObject:label forKeyedSubscript:@"label"];
}

@end