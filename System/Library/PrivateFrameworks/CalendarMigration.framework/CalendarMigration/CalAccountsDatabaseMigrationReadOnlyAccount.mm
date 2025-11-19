@interface CalAccountsDatabaseMigrationReadOnlyAccount
- (CalAccountsDatabaseMigrationReadOnlyAccount)initWithIdentifier:(id)a3 parentIdentifier:(id)a4 accountTypeIdentifier:(id)a5 description:(id)a6 enabledForCalendarDataClass:(BOOL)a7 provisionedForCalendarDataClass:(BOOL)a8 visible:(BOOL)a9 authenticated:(BOOL)a10 username:(id)a11 properties:(id)a12;
@end

@implementation CalAccountsDatabaseMigrationReadOnlyAccount

- (CalAccountsDatabaseMigrationReadOnlyAccount)initWithIdentifier:(id)a3 parentIdentifier:(id)a4 accountTypeIdentifier:(id)a5 description:(id)a6 enabledForCalendarDataClass:(BOOL)a7 provisionedForCalendarDataClass:(BOOL)a8 visible:(BOOL)a9 authenticated:(BOOL)a10 username:(id)a11 properties:(id)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v29 = a6;
  v20 = a11;
  v21 = a12;
  v30.receiver = self;
  v30.super_class = CalAccountsDatabaseMigrationReadOnlyAccount;
  v22 = [(CalAccountsDatabaseMigrationReadOnlyAccount *)&v30 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_identifier, a3);
    objc_storeStrong(&v23->_parentAccountIdentifier, a4);
    objc_storeStrong(&v23->_accountTypeIdentifier, a5);
    objc_storeStrong(&v23->_accountDescription, a6);
    v23->_enabledForCalendarsDataClass = a7;
    v23->_provisionedForCalendarsDataClass = a8;
    v23->_visible = a9;
    v23->_authenticated = a10;
    objc_storeStrong(&v23->_username, a11);
    v24 = [v21 mutableCopy];
    accountProperties = v23->_accountProperties;
    v23->_accountProperties = v24;
  }

  return v23;
}

@end