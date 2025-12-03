@interface GDGraphOrganization
- (GDGraphOrganization)initWithEntityIdentifierField:(id)field nameField:(id)nameField phoneticNameField:(id)phoneticNameField allNameField:(id)allNameField allPhoneticNameField:(id)allPhoneticNameField;
@end

@implementation GDGraphOrganization

- (GDGraphOrganization)initWithEntityIdentifierField:(id)field nameField:(id)nameField phoneticNameField:(id)phoneticNameField allNameField:(id)allNameField allPhoneticNameField:(id)allPhoneticNameField
{
  fieldCopy = field;
  nameFieldCopy = nameField;
  phoneticNameFieldCopy = phoneticNameField;
  allNameFieldCopy = allNameField;
  allPhoneticNameFieldCopy = allPhoneticNameField;
  v21.receiver = self;
  v21.super_class = GDGraphOrganization;
  v17 = [(GDGraphOrganization *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_entityIdentifier, field);
    objc_storeStrong(&v18->_name, nameField);
    objc_storeStrong(&v18->_phoneticName, phoneticNameField);
    objc_storeStrong(&v18->_allName, allNameField);
    objc_storeStrong(&v18->_allPhoneticName, allPhoneticNameField);
  }

  return v18;
}

@end