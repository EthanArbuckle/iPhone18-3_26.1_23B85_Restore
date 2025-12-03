@interface _CNPostalAddressDonationValue
- (BOOL)isEqual:(id)equal;
- (_CNPostalAddressDonationValue)initWithCoder:(id)coder;
- (_CNPostalAddressDonationValue)initWithPostalAddress:(id)address style:(int64_t)style label:(id)label origin:(id)origin;
- (id)copyWithNewExpirationDate:(id)date;
- (unint64_t)hash;
- (void)acceptDonationValueVisitor:(id)visitor;
- (void)encodeWithCoder:(id)coder;
- (void)updatePropertyListRepresentation:(id)representation;
@end

@implementation _CNPostalAddressDonationValue

- (_CNPostalAddressDonationValue)initWithPostalAddress:(id)address style:(int64_t)style label:(id)label origin:(id)origin
{
  addressCopy = address;
  labelCopy = label;
  v19.receiver = self;
  v19.super_class = _CNPostalAddressDonationValue;
  v12 = [(CNDonationValue *)&v19 initWithOrigin:origin];
  if (v12)
  {
    v13 = [addressCopy copy];
    postalAddress = v12->_postalAddress;
    v12->_postalAddress = v13;

    v12->_style = style;
    v15 = [labelCopy copy];
    label = v12->_label;
    v12->_label = v15;

    v17 = v12;
  }

  return v12;
}

- (id)copyWithNewExpirationDate:(id)date
{
  dateCopy = date;
  origin = [(CNDonationValue *)self origin];
  v6 = [origin mutableCopy];

  [v6 setExpirationDate:dateCopy];
  v7 = objc_alloc(objc_opt_class());
  postalAddress = [(_CNPostalAddressDonationValue *)self postalAddress];
  style = [(_CNPostalAddressDonationValue *)self style];
  label = [(_CNPostalAddressDonationValue *)self label];
  v11 = [v7 initWithPostalAddress:postalAddress style:style label:label origin:v6];

  return v11;
}

- (_CNPostalAddressDonationValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = _CNPostalAddressDonationValue;
  v5 = [(CNDonationValue *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_postalAddress"];
    v7 = [v6 copy];
    postalAddress = v5->_postalAddress;
    v5->_postalAddress = v7;

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
  v5.super_class = _CNPostalAddressDonationValue;
  coderCopy = coder;
  [(CNDonationValue *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_postalAddress forKey:{@"_postalAddress", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_label forKey:@"_label"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x277CFBE18];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __41___CNPostalAddressDonationValue_isEqual___block_invoke;
  v23[3] = &unk_2785698D8;
  v23[4] = self;
  v24 = equalCopy;
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
  selfCopy = self;
  v18 = v8;
  v10 = v8;
  v11 = MEMORY[0x22AA69CD0](&v13);
  LOBYTE(self) = [v5 isObject:self memberOfSameClassAndEqualTo:v10 withBlocks:{v23, v7, v9, v11, 0, v13, v14, v15, v16, selfCopy}];

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

- (void)acceptDonationValueVisitor:(id)visitor
{
  visitorCopy = visitor;
  postalAddress = [(_CNPostalAddressDonationValue *)self postalAddress];
  style = [(_CNPostalAddressDonationValue *)self style];
  label = [(_CNPostalAddressDonationValue *)self label];
  [visitorCopy visitDonationValue:self postalAddress:postalAddress style:style label:label];
}

- (void)updatePropertyListRepresentation:(id)representation
{
  v4 = MEMORY[0x277CBEB38];
  representationCopy = representation;
  v23 = [v4 dictionaryWithCapacity:9];
  [v23 setObject:&unk_2838DF398 forKeyedSubscript:@"version"];
  postalAddress = [(_CNPostalAddressDonationValue *)self postalAddress];
  street = [postalAddress street];
  [v23 setObject:street forKeyedSubscript:@"street"];

  postalAddress2 = [(_CNPostalAddressDonationValue *)self postalAddress];
  subLocality = [postalAddress2 subLocality];
  [v23 setObject:subLocality forKeyedSubscript:@"subLocality"];

  postalAddress3 = [(_CNPostalAddressDonationValue *)self postalAddress];
  city = [postalAddress3 city];
  [v23 setObject:city forKeyedSubscript:@"city"];

  postalAddress4 = [(_CNPostalAddressDonationValue *)self postalAddress];
  subAdministrativeArea = [postalAddress4 subAdministrativeArea];
  [v23 setObject:subAdministrativeArea forKeyedSubscript:@"subAdministrativeArea"];

  postalAddress5 = [(_CNPostalAddressDonationValue *)self postalAddress];
  postalCode = [postalAddress5 postalCode];
  [v23 setObject:postalCode forKeyedSubscript:@"postalCode"];

  postalAddress6 = [(_CNPostalAddressDonationValue *)self postalAddress];
  state = [postalAddress6 state];
  [v23 setObject:state forKeyedSubscript:@"state"];

  postalAddress7 = [(_CNPostalAddressDonationValue *)self postalAddress];
  country = [postalAddress7 country];
  [v23 setObject:country forKeyedSubscript:@"country"];

  postalAddress8 = [(_CNPostalAddressDonationValue *)self postalAddress];
  iSOCountryCode = [postalAddress8 ISOCountryCode];
  [v23 setObject:iSOCountryCode forKeyedSubscript:@"isoCountryCode"];

  [representationCopy setObject:v23 forKeyedSubscript:@"postal-address"];
  label = [(_CNPostalAddressDonationValue *)self label];
  [representationCopy setObject:label forKeyedSubscript:@"label"];
}

@end