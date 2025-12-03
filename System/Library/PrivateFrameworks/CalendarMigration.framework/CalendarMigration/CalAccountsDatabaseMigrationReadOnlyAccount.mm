@interface CalAccountsDatabaseMigrationReadOnlyAccount
- (CalAccountsDatabaseMigrationReadOnlyAccount)initWithIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier accountTypeIdentifier:(id)typeIdentifier description:(id)description enabledForCalendarDataClass:(BOOL)class provisionedForCalendarDataClass:(BOOL)dataClass visible:(BOOL)visible authenticated:(BOOL)self0 username:(id)self1 properties:(id)self2;
@end

@implementation CalAccountsDatabaseMigrationReadOnlyAccount

- (CalAccountsDatabaseMigrationReadOnlyAccount)initWithIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier accountTypeIdentifier:(id)typeIdentifier description:(id)description enabledForCalendarDataClass:(BOOL)class provisionedForCalendarDataClass:(BOOL)dataClass visible:(BOOL)visible authenticated:(BOOL)self0 username:(id)self1 properties:(id)self2
{
  identifierCopy = identifier;
  parentIdentifierCopy = parentIdentifier;
  typeIdentifierCopy = typeIdentifier;
  descriptionCopy = description;
  usernameCopy = username;
  propertiesCopy = properties;
  v30.receiver = self;
  v30.super_class = CalAccountsDatabaseMigrationReadOnlyAccount;
  v22 = [(CalAccountsDatabaseMigrationReadOnlyAccount *)&v30 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_identifier, identifier);
    objc_storeStrong(&v23->_parentAccountIdentifier, parentIdentifier);
    objc_storeStrong(&v23->_accountTypeIdentifier, typeIdentifier);
    objc_storeStrong(&v23->_accountDescription, description);
    v23->_enabledForCalendarsDataClass = class;
    v23->_provisionedForCalendarsDataClass = dataClass;
    v23->_visible = visible;
    v23->_authenticated = authenticated;
    objc_storeStrong(&v23->_username, username);
    v24 = [propertiesCopy mutableCopy];
    accountProperties = v23->_accountProperties;
    v23->_accountProperties = v24;
  }

  return v23;
}

@end