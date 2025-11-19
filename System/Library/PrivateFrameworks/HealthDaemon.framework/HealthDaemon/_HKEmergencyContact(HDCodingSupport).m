@interface _HKEmergencyContact(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (HDCodableEmergencyContact)codableRepresentationForSync;
@end

@implementation _HKEmergencyContact(HDCodingSupport)

- (HDCodableEmergencyContact)codableRepresentationForSync
{
  v2 = objc_alloc_init(HDCodableEmergencyContact);
  v3 = [a1 name];
  [(HDCodableEmergencyContact *)v2 setName:v3];

  v4 = [a1 nameContactIdentifier];
  [(HDCodableEmergencyContact *)v2 setNameContactIdentifier:v4];

  v5 = [a1 phoneNumber];
  [(HDCodableEmergencyContact *)v2 setPhoneNumber:v5];

  v6 = [a1 phoneNumberContactIdentifier];
  [(HDCodableEmergencyContact *)v2 setPhoneNumberContactIdentifier:v6];

  v7 = [a1 phoneNumberLabel];
  [(HDCodableEmergencyContact *)v2 setPhoneNumberLabel:v7];

  v8 = [a1 relationship];
  [(HDCodableEmergencyContact *)v2 setRelationship:v8];

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
    v7 = [v5 name];
    [v6 setName:v7];

    v8 = [v5 nameContactIdentifier];
    [v6 setNameContactIdentifier:v8];

    v9 = [v5 phoneNumber];
    [v6 setPhoneNumber:v9];

    v10 = [v5 phoneNumberContactIdentifier];
    [v6 setPhoneNumberContactIdentifier:v10];

    v11 = [v5 phoneNumberLabel];
    [v6 setPhoneNumberLabel:v11];

    v12 = [v5 relationship];

    [v6 setRelationship:v12];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end