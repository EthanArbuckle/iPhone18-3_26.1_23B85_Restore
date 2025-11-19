@interface DNDSenderConfiguration(Contacts)
- (id)sanitizedConfigurationWithContactStore:()Contacts;
@end

@implementation DNDSenderConfiguration(Contacts)

- (id)sanitizedConfigurationWithContactStore:()Contacts
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  v6 = [a1 allowedContacts];
  v7 = [v4 sanitizeContacts:v6];

  v8 = [v7 mutableCopy];
  [v5 setAllowedContacts:v8];

  v9 = [a1 deniedContacts];
  v10 = [v4 sanitizeContacts:v9];

  v11 = [v10 mutableCopy];
  [v5 setDeniedContacts:v11];

  return v5;
}

@end