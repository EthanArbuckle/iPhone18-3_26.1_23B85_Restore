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
  contactIdentifier = [v4 contactIdentifier];
  v7 = [v5 initWithContactIdentifier:contactIdentifier];

  firstName = [v4 firstName];
  [v7 setFirstName:firstName];

  middleName = [v4 middleName];
  [v7 setMiddleName:middleName];

  lastName = [v4 lastName];
  [v7 setLastName:lastName];

  nickName = [v4 nickName];
  [v7 setNickName:nickName];

  organizationName = [v4 organizationName];
  [v7 setOrganizationName:organizationName];

  phoneNumbers = [v4 phoneNumbers];
  [v7 setPhoneNumbers:phoneNumbers];

  emailAddresses = [v4 emailAddresses];

  [v7 setEmailAddresses:emailAddresses];

  return v7;
}

- (DNDSMutableContactRecord)makeRecord
{
  v2 = objc_alloc_init(DNDSMutableContactRecord);
  contactIdentifier = [self contactIdentifier];
  [(DNDSMutableContactRecord *)v2 setContactIdentifier:contactIdentifier];

  firstName = [self firstName];
  [(DNDSMutableContactRecord *)v2 setFirstName:firstName];

  middleName = [self middleName];
  [(DNDSMutableContactRecord *)v2 setMiddleName:middleName];

  lastName = [self lastName];
  [(DNDSMutableContactRecord *)v2 setLastName:lastName];

  nickName = [self nickName];
  [(DNDSMutableContactRecord *)v2 setNickName:nickName];

  organizationName = [self organizationName];
  [(DNDSMutableContactRecord *)v2 setOrganizationName:organizationName];

  phoneNumbers = [self phoneNumbers];
  [(DNDSMutableContactRecord *)v2 setPhoneNumbers:phoneNumbers];

  emailAddresses = [self emailAddresses];
  [(DNDSMutableContactRecord *)v2 setEmailAddresses:emailAddresses];

  return v2;
}

@end