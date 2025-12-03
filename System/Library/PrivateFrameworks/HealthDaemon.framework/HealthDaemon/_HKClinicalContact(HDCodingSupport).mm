@interface _HKClinicalContact(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableClinicalContact)codableRepresentationForSync;
@end

@implementation _HKClinicalContact(HDCodingSupport)

- (HDCodableClinicalContact)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableClinicalContact);
  name = [self name];
  [(HDCodableClinicalContact *)v2 setName:name];

  nameContactIdentifier = [self nameContactIdentifier];
  [(HDCodableClinicalContact *)v2 setNameContactIdentifier:nameContactIdentifier];

  phoneNumber = [self phoneNumber];
  [(HDCodableClinicalContact *)v2 setPhoneNumber:phoneNumber];

  phoneNumberContactIdentifier = [self phoneNumberContactIdentifier];
  [(HDCodableClinicalContact *)v2 setPhoneNumberContactIdentifier:phoneNumberContactIdentifier];

  phoneNumberLabel = [self phoneNumberLabel];
  [(HDCodableClinicalContact *)v2 setPhoneNumberLabel:phoneNumberLabel];

  relationship = [self relationship];
  [(HDCodableClinicalContact *)v2 setRelationship:relationship];

  return v2;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277CCDD40];
    v5 = v3;
    v6 = objc_alloc_init(v4);
    name = [v5 name];
    [v6 setName:name];

    nameContactIdentifier = [v5 nameContactIdentifier];
    [v6 setNameContactIdentifier:nameContactIdentifier];

    phoneNumber = [v5 phoneNumber];
    [v6 setPhoneNumber:phoneNumber];

    phoneNumberContactIdentifier = [v5 phoneNumberContactIdentifier];
    [v6 setPhoneNumberContactIdentifier:phoneNumberContactIdentifier];

    phoneNumberLabel = [v5 phoneNumberLabel];
    [v6 setPhoneNumberLabel:phoneNumberLabel];

    relationship = [v5 relationship];

    [v6 setRelationship:relationship];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end