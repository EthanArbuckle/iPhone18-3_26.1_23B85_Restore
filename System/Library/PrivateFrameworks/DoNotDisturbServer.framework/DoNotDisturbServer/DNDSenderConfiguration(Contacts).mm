@interface DNDSenderConfiguration(Contacts)
- (id)sanitizedConfigurationWithContactStore:()Contacts;
@end

@implementation DNDSenderConfiguration(Contacts)

- (id)sanitizedConfigurationWithContactStore:()Contacts
{
  v4 = a3;
  v5 = [self mutableCopy];
  allowedContacts = [self allowedContacts];
  v7 = [v4 sanitizeContacts:allowedContacts];

  v8 = [v7 mutableCopy];
  [v5 setAllowedContacts:v8];

  deniedContacts = [self deniedContacts];
  v10 = [v4 sanitizeContacts:deniedContacts];

  v11 = [v10 mutableCopy];
  [v5 setDeniedContacts:v11];

  return v5;
}

@end