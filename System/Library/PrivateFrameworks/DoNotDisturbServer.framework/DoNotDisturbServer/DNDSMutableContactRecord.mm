@interface DNDSMutableContactRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setContactIdentifier:(id)identifier;
- (void)setEmailAddresses:(id)addresses;
- (void)setFirstName:(id)name;
- (void)setLastName:(id)name;
- (void)setMiddleName:(id)name;
- (void)setNickName:(id)name;
- (void)setOrganizationName:(id)name;
- (void)setPhoneNumbers:(id)numbers;
@end

@implementation DNDSMutableContactRecord

- (void)setContactIdentifier:(id)identifier
{
  v4 = [identifier copy];
  contactIdentifier = self->super._contactIdentifier;
  self->super._contactIdentifier = v4;

  MEMORY[0x2821F96F8](v4, contactIdentifier);
}

- (void)setFirstName:(id)name
{
  v4 = [name copy];
  firstName = self->super._firstName;
  self->super._firstName = v4;

  MEMORY[0x2821F96F8](v4, firstName);
}

- (void)setMiddleName:(id)name
{
  v4 = [name copy];
  middleName = self->super._middleName;
  self->super._middleName = v4;

  MEMORY[0x2821F96F8](v4, middleName);
}

- (void)setLastName:(id)name
{
  v4 = [name copy];
  lastName = self->super._lastName;
  self->super._lastName = v4;

  MEMORY[0x2821F96F8](v4, lastName);
}

- (void)setNickName:(id)name
{
  v4 = [name copy];
  nickName = self->super._nickName;
  self->super._nickName = v4;

  MEMORY[0x2821F96F8](v4, nickName);
}

- (void)setOrganizationName:(id)name
{
  v4 = [name copy];
  organizationName = self->super._organizationName;
  self->super._organizationName = v4;

  MEMORY[0x2821F96F8](v4, organizationName);
}

- (void)setPhoneNumbers:(id)numbers
{
  v4 = [numbers copy];
  phoneNumbers = self->super._phoneNumbers;
  self->super._phoneNumbers = v4;

  MEMORY[0x2821F96F8](v4, phoneNumbers);
}

- (void)setEmailAddresses:(id)addresses
{
  v4 = [addresses copy];
  emailAddresses = self->super._emailAddresses;
  self->super._emailAddresses = v4;

  MEMORY[0x2821F96F8](v4, emailAddresses);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSContactRecord alloc];

  return [(DNDSContactRecord *)v4 _initWithRecord:self];
}

@end