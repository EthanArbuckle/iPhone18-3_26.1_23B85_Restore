@interface _CNNameComponentsDonationValue
- (BOOL)isEqual:(id)equal;
- (_CNNameComponentsDonationValue)initWithCoder:(id)coder;
- (_CNNameComponentsDonationValue)initWithNameComponents:(id)components origin:(id)origin;
- (id)copyWithNewExpirationDate:(id)date;
- (id)description;
- (unint64_t)hash;
- (void)acceptDonationValueVisitor:(id)visitor;
- (void)encodeWithCoder:(id)coder;
- (void)updatePropertyListRepresentation:(id)representation;
@end

@implementation _CNNameComponentsDonationValue

- (_CNNameComponentsDonationValue)initWithNameComponents:(id)components origin:(id)origin
{
  componentsCopy = components;
  v12.receiver = self;
  v12.super_class = _CNNameComponentsDonationValue;
  v7 = [(CNDonationValue *)&v12 initWithOrigin:origin];
  if (v7)
  {
    v8 = [componentsCopy copy];
    nameComponents = v7->_nameComponents;
    v7->_nameComponents = v8;

    v10 = v7;
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  nameComponents = [(_CNNameComponentsDonationValue *)self nameComponents];
  v5 = [v3 appendName:@"name" object:nameComponents];

  origin = [(CNDonationValue *)self origin];
  v7 = [v3 appendName:@"origin" object:origin];

  build = [v3 build];

  return build;
}

- (id)copyWithNewExpirationDate:(id)date
{
  dateCopy = date;
  origin = [(CNDonationValue *)self origin];
  v6 = [origin mutableCopy];

  [v6 setExpirationDate:dateCopy];
  v7 = objc_alloc(objc_opt_class());
  nameComponents = [(_CNNameComponentsDonationValue *)self nameComponents];
  v9 = [v7 initWithNameComponents:nameComponents origin:v6];

  return v9;
}

- (_CNNameComponentsDonationValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _CNNameComponentsDonationValue;
  v5 = [(CNDonationValue *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_nameComponents"];
    v7 = [v6 copy];
    nameComponents = v5->_nameComponents;
    v5->_nameComponents = v7;

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _CNNameComponentsDonationValue;
  coderCopy = coder;
  [(CNDonationValue *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_nameComponents forKey:{@"_nameComponents", v5.receiver, v5.super_class}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x277CFBE18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __42___CNNameComponentsDonationValue_isEqual___block_invoke;
  v15[3] = &unk_2785698D8;
  v15[4] = self;
  v16 = equalCopy;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __42___CNNameComponentsDonationValue_isEqual___block_invoke_2;
  v12 = &unk_2785698D8;
  selfCopy = self;
  v14 = v16;
  v6 = v16;
  v7 = MEMORY[0x22AA69CD0](&v9);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v6 withBlocks:{v15, v7, 0, v9, v10, v11, v12, selfCopy}];

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

- (void)acceptDonationValueVisitor:(id)visitor
{
  visitorCopy = visitor;
  nameComponents = [(_CNNameComponentsDonationValue *)self nameComponents];
  [visitorCopy visitDonationValue:self nameComponents:nameComponents];
}

- (void)updatePropertyListRepresentation:(id)representation
{
  v4 = MEMORY[0x277CBEB38];
  representationCopy = representation;
  v18 = [v4 dictionaryWithCapacity:7];
  [v18 setObject:&unk_2838DF398 forKeyedSubscript:@"version"];
  nameComponents = [(_CNNameComponentsDonationValue *)self nameComponents];
  namePrefix = [nameComponents namePrefix];
  [v18 setObject:namePrefix forKeyedSubscript:@"namePrefix"];

  nameComponents2 = [(_CNNameComponentsDonationValue *)self nameComponents];
  givenName = [nameComponents2 givenName];
  [v18 setObject:givenName forKeyedSubscript:@"givenName"];

  nameComponents3 = [(_CNNameComponentsDonationValue *)self nameComponents];
  middleName = [nameComponents3 middleName];
  [v18 setObject:middleName forKeyedSubscript:@"middleName"];

  nameComponents4 = [(_CNNameComponentsDonationValue *)self nameComponents];
  familyName = [nameComponents4 familyName];
  [v18 setObject:familyName forKeyedSubscript:@"familyName"];

  nameComponents5 = [(_CNNameComponentsDonationValue *)self nameComponents];
  nameSuffix = [nameComponents5 nameSuffix];
  [v18 setObject:nameSuffix forKeyedSubscript:@"nameSuffix"];

  nameComponents6 = [(_CNNameComponentsDonationValue *)self nameComponents];
  nickname = [nameComponents6 nickname];
  [v18 setObject:nickname forKeyedSubscript:@"nickname"];

  [representationCopy setObject:v18 forKeyedSubscript:@"name-components"];
}

@end