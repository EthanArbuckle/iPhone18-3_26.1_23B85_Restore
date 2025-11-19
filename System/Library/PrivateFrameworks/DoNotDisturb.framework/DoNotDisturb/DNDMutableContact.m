@interface DNDMutableContact
- (DNDMutableContact)init;
- (void)setContactIdentifier:(id)a3;
- (void)setEmailAddresses:(id)a3;
- (void)setFirstName:(id)a3;
- (void)setLastName:(id)a3;
- (void)setMiddleName:(id)a3;
- (void)setNickName:(id)a3;
- (void)setOrganizationName:(id)a3;
- (void)setPhoneNumbers:(id)a3;
@end

@implementation DNDMutableContact

- (DNDMutableContact)init
{
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [MEMORY[0x277CBEB98] set];
  v7.receiver = self;
  v7.super_class = DNDMutableContact;
  v5 = [(DNDContact *)&v7 _initWithContactIdentifier:0 firstName:&stru_2833C9B78 middleName:&stru_2833C9B78 lastName:&stru_2833C9B78 nickName:&stru_2833C9B78 organizationName:&stru_2833C9B78 phoneNumbers:v3 emailAddresses:v4];

  return v5;
}

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

@end