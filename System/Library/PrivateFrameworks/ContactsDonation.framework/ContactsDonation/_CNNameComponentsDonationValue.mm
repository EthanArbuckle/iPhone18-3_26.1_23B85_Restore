@interface _CNNameComponentsDonationValue
- (BOOL)isEqual:(id)a3;
- (_CNNameComponentsDonationValue)initWithCoder:(id)a3;
- (_CNNameComponentsDonationValue)initWithNameComponents:(id)a3 origin:(id)a4;
- (id)copyWithNewExpirationDate:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)acceptDonationValueVisitor:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updatePropertyListRepresentation:(id)a3;
@end

@implementation _CNNameComponentsDonationValue

- (_CNNameComponentsDonationValue)initWithNameComponents:(id)a3 origin:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = _CNNameComponentsDonationValue;
  v7 = [(CNDonationValue *)&v12 initWithOrigin:a4];
  if (v7)
  {
    v8 = [v6 copy];
    nameComponents = v7->_nameComponents;
    v7->_nameComponents = v8;

    v10 = v7;
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [(_CNNameComponentsDonationValue *)self nameComponents];
  v5 = [v3 appendName:@"name" object:v4];

  v6 = [(CNDonationValue *)self origin];
  v7 = [v3 appendName:@"origin" object:v6];

  v8 = [v3 build];

  return v8;
}

- (id)copyWithNewExpirationDate:(id)a3
{
  v4 = a3;
  v5 = [(CNDonationValue *)self origin];
  v6 = [v5 mutableCopy];

  [v6 setExpirationDate:v4];
  v7 = objc_alloc(objc_opt_class());
  v8 = [(_CNNameComponentsDonationValue *)self nameComponents];
  v9 = [v7 initWithNameComponents:v8 origin:v6];

  return v9;
}

- (_CNNameComponentsDonationValue)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _CNNameComponentsDonationValue;
  v5 = [(CNDonationValue *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_nameComponents"];
    v7 = [v6 copy];
    nameComponents = v5->_nameComponents;
    v5->_nameComponents = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _CNNameComponentsDonationValue;
  v4 = a3;
  [(CNDonationValue *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_nameComponents forKey:{@"_nameComponents", v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CFBE18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __42___CNNameComponentsDonationValue_isEqual___block_invoke;
  v15[3] = &unk_2785698D8;
  v15[4] = self;
  v16 = v4;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __42___CNNameComponentsDonationValue_isEqual___block_invoke_2;
  v12 = &unk_2785698D8;
  v13 = self;
  v14 = v16;
  v6 = v16;
  v7 = MEMORY[0x22AA69CD0](&v9);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v6 withBlocks:{v15, v7, 0, v9, v10, v11, v12, v13}];

  return self;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x277CFBE38];
  v6[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38___CNNameComponentsDonationValue_hash__block_invoke;
  v7[3] = &unk_278569900;
  v7[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38___CNNameComponentsDonationValue_hash__block_invoke_2;
  v6[3] = &unk_278569900;
  v3 = MEMORY[0x22AA69CD0](v6, a2);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

- (void)acceptDonationValueVisitor:(id)a3
{
  v4 = a3;
  v5 = [(_CNNameComponentsDonationValue *)self nameComponents];
  [v4 visitDonationValue:self nameComponents:v5];
}

- (void)updatePropertyListRepresentation:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v18 = [v4 dictionaryWithCapacity:7];
  [v18 setObject:&unk_2838DF398 forKeyedSubscript:@"version"];
  v6 = [(_CNNameComponentsDonationValue *)self nameComponents];
  v7 = [v6 namePrefix];
  [v18 setObject:v7 forKeyedSubscript:@"namePrefix"];

  v8 = [(_CNNameComponentsDonationValue *)self nameComponents];
  v9 = [v8 givenName];
  [v18 setObject:v9 forKeyedSubscript:@"givenName"];

  v10 = [(_CNNameComponentsDonationValue *)self nameComponents];
  v11 = [v10 middleName];
  [v18 setObject:v11 forKeyedSubscript:@"middleName"];

  v12 = [(_CNNameComponentsDonationValue *)self nameComponents];
  v13 = [v12 familyName];
  [v18 setObject:v13 forKeyedSubscript:@"familyName"];

  v14 = [(_CNNameComponentsDonationValue *)self nameComponents];
  v15 = [v14 nameSuffix];
  [v18 setObject:v15 forKeyedSubscript:@"nameSuffix"];

  v16 = [(_CNNameComponentsDonationValue *)self nameComponents];
  v17 = [v16 nickname];
  [v18 setObject:v17 forKeyedSubscript:@"nickname"];

  [v5 setObject:v18 forKeyedSubscript:@"name-components"];
}

@end