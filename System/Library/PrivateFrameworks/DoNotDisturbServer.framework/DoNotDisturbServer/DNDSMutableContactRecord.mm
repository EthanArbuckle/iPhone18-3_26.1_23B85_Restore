@interface DNDSMutableContactRecord
- (id)copyWithZone:(_NSZone *)a3;
- (void)setContactIdentifier:(id)a3;
- (void)setEmailAddresses:(id)a3;
- (void)setFirstName:(id)a3;
- (void)setLastName:(id)a3;
- (void)setMiddleName:(id)a3;
- (void)setNickName:(id)a3;
- (void)setOrganizationName:(id)a3;
- (void)setPhoneNumbers:(id)a3;
@end

@implementation DNDSMutableContactRecord

- (void)setContactIdentifier:(id)a3
{
  v4 = [a3 copy];
  contactIdentifier = self->super._contactIdentifier;
  self->super._contactIdentifier = v4;

  MEMORY[0x2821F96F8](v4, contactIdentifier);
}

- (void)setFirstName:(id)a3
{
  v4 = [a3 copy];
  firstName = self->super._firstName;
  self->super._firstName = v4;

  MEMORY[0x2821F96F8](v4, firstName);
}

- (void)setMiddleName:(id)a3
{
  v4 = [a3 copy];
  middleName = self->super._middleName;
  self->super._middleName = v4;

  MEMORY[0x2821F96F8](v4, middleName);
}

- (void)setLastName:(id)a3
{
  v4 = [a3 copy];
  lastName = self->super._lastName;
  self->super._lastName = v4;

  MEMORY[0x2821F96F8](v4, lastName);
}

- (void)setNickName:(id)a3
{
  v4 = [a3 copy];
  nickName = self->super._nickName;
  self->super._nickName = v4;

  MEMORY[0x2821F96F8](v4, nickName);
}

- (void)setOrganizationName:(id)a3
{
  v4 = [a3 copy];
  organizationName = self->super._organizationName;
  self->super._organizationName = v4;

  MEMORY[0x2821F96F8](v4, organizationName);
}

- (void)setPhoneNumbers:(id)a3
{
  v4 = [a3 copy];
  phoneNumbers = self->super._phoneNumbers;
  self->super._phoneNumbers = v4;

  MEMORY[0x2821F96F8](v4, phoneNumbers);
}

- (void)setEmailAddresses:(id)a3
{
  v4 = [a3 copy];
  emailAddresses = self->super._emailAddresses;
  self->super._emailAddresses = v4;

  MEMORY[0x2821F96F8](v4, emailAddresses);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSContactRecord alloc];

  return [(DNDSContactRecord *)v4 _initWithRecord:self];
}

@end