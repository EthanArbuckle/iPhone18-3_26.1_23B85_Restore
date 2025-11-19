@interface _CNPostalAddressDonationValue
- (BOOL)isEqual:(id)a3;
- (_CNPostalAddressDonationValue)initWithCoder:(id)a3;
- (_CNPostalAddressDonationValue)initWithPostalAddress:(id)a3 style:(int64_t)a4 label:(id)a5 origin:(id)a6;
- (id)copyWithNewExpirationDate:(id)a3;
- (unint64_t)hash;
- (void)acceptDonationValueVisitor:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updatePropertyListRepresentation:(id)a3;
@end

@implementation _CNPostalAddressDonationValue

- (_CNPostalAddressDonationValue)initWithPostalAddress:(id)a3 style:(int64_t)a4 label:(id)a5 origin:(id)a6
{
  v10 = a3;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = _CNPostalAddressDonationValue;
  v12 = [(CNDonationValue *)&v19 initWithOrigin:a6];
  if (v12)
  {
    v13 = [v10 copy];
    postalAddress = v12->_postalAddress;
    v12->_postalAddress = v13;

    v12->_style = a4;
    v15 = [v11 copy];
    label = v12->_label;
    v12->_label = v15;

    v17 = v12;
  }

  return v12;
}

- (id)copyWithNewExpirationDate:(id)a3
{
  v4 = a3;
  v5 = [(CNDonationValue *)self origin];
  v6 = [v5 mutableCopy];

  [v6 setExpirationDate:v4];
  v7 = objc_alloc(objc_opt_class());
  v8 = [(_CNPostalAddressDonationValue *)self postalAddress];
  v9 = [(_CNPostalAddressDonationValue *)self style];
  v10 = [(_CNPostalAddressDonationValue *)self label];
  v11 = [v7 initWithPostalAddress:v8 style:v9 label:v10 origin:v6];

  return v11;
}

- (_CNPostalAddressDonationValue)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _CNPostalAddressDonationValue;
  v5 = [(CNDonationValue *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_postalAddress"];
    v7 = [v6 copy];
    postalAddress = v5->_postalAddress;
    v5->_postalAddress = v7;

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
  v5.super_class = _CNPostalAddressDonationValue;
  v4 = a3;
  [(CNDonationValue *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_postalAddress forKey:{@"_postalAddress", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_label forKey:@"_label"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CFBE18];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __41___CNPostalAddressDonationValue_isEqual___block_invoke;
  v23[3] = &unk_2785698D8;
  v23[4] = self;
  v24 = v4;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __41___CNPostalAddressDonationValue_isEqual___block_invoke_2;
  v21[3] = &unk_2785698D8;
  v21[4] = self;
  v6 = v24;
  v22 = v6;
  v7 = MEMORY[0x22AA69CD0](v21);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __41___CNPostalAddressDonationValue_isEqual___block_invoke_3;
  v19[3] = &unk_2785698D8;
  v19[4] = self;
  v8 = v6;
  v20 = v8;
  v9 = MEMORY[0x22AA69CD0](v19);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __41___CNPostalAddressDonationValue_isEqual___block_invoke_4;
  v16 = &unk_2785698D8;
  v17 = self;
  v18 = v8;
  v10 = v8;
  v11 = MEMORY[0x22AA69CD0](&v13);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v10 withBlocks:{v23, v7, v9, v11, 0, v13, v14, v15, v16, v17}];

  return self;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x277CFBE38];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37___CNPostalAddressDonationValue_hash__block_invoke;
  v12[3] = &unk_278569900;
  v12[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37___CNPostalAddressDonationValue_hash__block_invoke_2;
  v11[3] = &unk_278569900;
  v11[4] = self;
  v4 = MEMORY[0x22AA69CD0](v11, a2);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37___CNPostalAddressDonationValue_hash__block_invoke_3;
  v10[3] = &unk_278569900;
  v10[4] = self;
  v5 = MEMORY[0x22AA69CD0](v10);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37___CNPostalAddressDonationValue_hash__block_invoke_4;
  v9[3] = &unk_278569900;
  v9[4] = self;
  v6 = MEMORY[0x22AA69CD0](v9);
  v7 = [v3 hashWithBlocks:{v12, v4, v5, v6, 0}];

  return v7;
}

- (void)acceptDonationValueVisitor:(id)a3
{
  v4 = a3;
  v7 = [(_CNPostalAddressDonationValue *)self postalAddress];
  v5 = [(_CNPostalAddressDonationValue *)self style];
  v6 = [(_CNPostalAddressDonationValue *)self label];
  [v4 visitDonationValue:self postalAddress:v7 style:v5 label:v6];
}

- (void)updatePropertyListRepresentation:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v23 = [v4 dictionaryWithCapacity:9];
  [v23 setObject:&unk_2838DF398 forKeyedSubscript:@"version"];
  v6 = [(_CNPostalAddressDonationValue *)self postalAddress];
  v7 = [v6 street];
  [v23 setObject:v7 forKeyedSubscript:@"street"];

  v8 = [(_CNPostalAddressDonationValue *)self postalAddress];
  v9 = [v8 subLocality];
  [v23 setObject:v9 forKeyedSubscript:@"subLocality"];

  v10 = [(_CNPostalAddressDonationValue *)self postalAddress];
  v11 = [v10 city];
  [v23 setObject:v11 forKeyedSubscript:@"city"];

  v12 = [(_CNPostalAddressDonationValue *)self postalAddress];
  v13 = [v12 subAdministrativeArea];
  [v23 setObject:v13 forKeyedSubscript:@"subAdministrativeArea"];

  v14 = [(_CNPostalAddressDonationValue *)self postalAddress];
  v15 = [v14 postalCode];
  [v23 setObject:v15 forKeyedSubscript:@"postalCode"];

  v16 = [(_CNPostalAddressDonationValue *)self postalAddress];
  v17 = [v16 state];
  [v23 setObject:v17 forKeyedSubscript:@"state"];

  v18 = [(_CNPostalAddressDonationValue *)self postalAddress];
  v19 = [v18 country];
  [v23 setObject:v19 forKeyedSubscript:@"country"];

  v20 = [(_CNPostalAddressDonationValue *)self postalAddress];
  v21 = [v20 ISOCountryCode];
  [v23 setObject:v21 forKeyedSubscript:@"isoCountryCode"];

  [v5 setObject:v23 forKeyedSubscript:@"postal-address"];
  v22 = [(_CNPostalAddressDonationValue *)self label];
  [v5 setObject:v22 forKeyedSubscript:@"label"];
}

@end