@interface _HKEmergencyContact(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableEmergencyContact)codableRepresentationForSync;
@end

@implementation _HKEmergencyContact(HDCodingSupport)

- (HDCodableEmergencyContact)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableEmergencyContact);
  name = [self name];
  [(HDCodableEmergencyContact *)v2 setName:name];

  nameContactIdentifier = [self nameContactIdentifier];
  [(HDCodableEmergencyContact *)v2 setNameContactIdentifier:nameContactIdentifier];

  phoneNumber = [self phoneNumber];
  [(HDCodableEmergencyContact *)v2 setPhoneNumber:phoneNumber];

  phoneNumberContactIdentifier = [self phoneNumberContactIdentifier];
  [(HDCodableEmergencyContact *)v2 setPhoneNumberContactIdentifier:phoneNumberContactIdentifier];

  phoneNumberLabel = [self phoneNumberLabel];
  [(HDCodableEmergencyContact *)v2 setPhoneNumberLabel:phoneNumberLabel];

  relationship = [self relationship];
  [(HDCodableEmergencyContact *)v2 setRelationship:relationship];

  return v2;
}

+ (id)createWithCodable:()HDCodingSupport
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277CCDDA0];
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