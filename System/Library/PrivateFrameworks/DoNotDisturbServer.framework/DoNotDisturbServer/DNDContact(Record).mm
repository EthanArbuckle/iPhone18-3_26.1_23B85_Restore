@interface DNDContact(Record)
+ (id)contactForRecord:()Record;
- (DNDSMutableContactRecord)makeRecord;
@end

@implementation DNDContact(Record)

+ (id)contactForRecord:()Record
{
  v3 = MEMORY[0x277D05A28];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 contactIdentifier];
  v7 = [v5 initWithContactIdentifier:v6];

  v8 = [v4 firstName];
  [v7 setFirstName:v8];

  v9 = [v4 middleName];
  [v7 setMiddleName:v9];

  v10 = [v4 lastName];
  [v7 setLastName:v10];

  v11 = [v4 nickName];
  [v7 setNickName:v11];

  v12 = [v4 organizationName];
  [v7 setOrganizationName:v12];

  v13 = [v4 phoneNumbers];
  [v7 setPhoneNumbers:v13];

  v14 = [v4 emailAddresses];

  [v7 setEmailAddresses:v14];

  return v7;
}

- (DNDSMutableContactRecord)makeRecord
{
  v2 = objc_alloc_init(DNDSMutableContactRecord);
  v3 = [a1 contactIdentifier];
  [(DNDSMutableContactRecord *)v2 setContactIdentifier:v3];

  v4 = [a1 firstName];
  [(DNDSMutableContactRecord *)v2 setFirstName:v4];

  v5 = [a1 middleName];
  [(DNDSMutableContactRecord *)v2 setMiddleName:v5];

  v6 = [a1 lastName];
  [(DNDSMutableContactRecord *)v2 setLastName:v6];

  v7 = [a1 nickName];
  [(DNDSMutableContactRecord *)v2 setNickName:v7];

  v8 = [a1 organizationName];
  [(DNDSMutableContactRecord *)v2 setOrganizationName:v8];

  v9 = [a1 phoneNumbers];
  [(DNDSMutableContactRecord *)v2 setPhoneNumbers:v9];

  v10 = [a1 emailAddresses];
  [(DNDSMutableContactRecord *)v2 setEmailAddresses:v10];

  return v2;
}

@end