@interface GDGraphOrganization
- (GDGraphOrganization)initWithEntityIdentifierField:(id)a3 nameField:(id)a4 phoneticNameField:(id)a5 allNameField:(id)a6 allPhoneticNameField:(id)a7;
@end

@implementation GDGraphOrganization

- (GDGraphOrganization)initWithEntityIdentifierField:(id)a3 nameField:(id)a4 phoneticNameField:(id)a5 allNameField:(id)a6 allPhoneticNameField:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = GDGraphOrganization;
  v17 = [(GDGraphOrganization *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_entityIdentifier, a3);
    objc_storeStrong(&v18->_name, a4);
    objc_storeStrong(&v18->_phoneticName, a5);
    objc_storeStrong(&v18->_allName, a6);
    objc_storeStrong(&v18->_allPhoneticName, a7);
  }

  return v18;
}

@end