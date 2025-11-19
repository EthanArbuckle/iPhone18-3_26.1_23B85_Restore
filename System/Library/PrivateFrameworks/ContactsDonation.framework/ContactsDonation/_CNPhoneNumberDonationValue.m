@interface _CNPhoneNumberDonationValue
- (BOOL)isEqual:(id)a3;
- (_CNPhoneNumberDonationValue)initWithCoder:(id)a3;
- (_CNPhoneNumberDonationValue)initWithPhoneNumber:(id)a3 label:(id)a4 origin:(id)a5;
- (id)copyWithNewExpirationDate:(id)a3;
- (unint64_t)hash;
- (void)acceptDonationValueVisitor:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updatePropertyListRepresentation:(id)a3;
@end

@implementation _CNPhoneNumberDonationValue

- (_CNPhoneNumberDonationValue)initWithPhoneNumber:(id)a3 label:(id)a4 origin:(id)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = _CNPhoneNumberDonationValue;
  v10 = [(CNDonationValue *)&v17 initWithOrigin:a5];
  if (v10)
  {
    v11 = [v8 copy];
    phoneNumber = v10->_phoneNumber;
    v10->_phoneNumber = v11;

    v13 = [v9 copy];
    label = v10->_label;
    v10->_label = v13;

    v15 = v10;
  }

  return v10;
}

- (id)copyWithNewExpirationDate:(id)a3
{
  v4 = a3;
  v5 = [(CNDonationValue *)self origin];
  v6 = [v5 mutableCopy];

  [v6 setExpirationDate:v4];
  v7 = objc_alloc(objc_opt_class());
  v8 = [(_CNPhoneNumberDonationValue *)self phoneNumber];
  v9 = [(_CNPhoneNumberDonationValue *)self label];
  v10 = [v7 initWithPhoneNumber:v8 label:v9 origin:v6];

  return v10;
}

- (_CNPhoneNumberDonationValue)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _CNPhoneNumberDonationValue;
  v5 = [(CNDonationValue *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_phoneNumber"];
    v7 = [v6 copy];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_label"];
    v10 = [v9 copy];
    label = v5->_label;
    v5->_label = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _CNPhoneNumberDonationValue;
  v4 = a3;
  [(CNDonationValue *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_phoneNumber forKey:{@"_phoneNumber", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_label forKey:@"_label"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CFBE18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39___CNPhoneNumberDonationValue_isEqual___block_invoke;
  v15[3] = &unk_2785698D8;
  v15[4] = self;
  v16 = v4;
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

- (void)acceptDonationValueVisitor:(id)a3
{
  v4 = a3;
  v6 = [(_CNPhoneNumberDonationValue *)self phoneNumber];
  v5 = [(_CNPhoneNumberDonationValue *)self label];
  [v4 visitDonationValue:self phoneNumber:v6 label:v5];
}

- (void)updatePropertyListRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(_CNPhoneNumberDonationValue *)self phoneNumber];
  v6 = [v5 stringValue];
  [v4 setObject:v6 forKeyedSubscript:@"phone-number"];

  v7 = [(_CNPhoneNumberDonationValue *)self label];
  [v4 setObject:v7 forKeyedSubscript:@"label"];
}

@end