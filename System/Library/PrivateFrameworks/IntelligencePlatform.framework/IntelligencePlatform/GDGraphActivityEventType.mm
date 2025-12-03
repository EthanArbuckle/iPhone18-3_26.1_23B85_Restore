@interface GDGraphActivityEventType
- (GDGraphActivityEventType)initWithEntityIdentifierField:(id)field nameField:(id)nameField allNameField:(id)allNameField;
@end

@implementation GDGraphActivityEventType

- (GDGraphActivityEventType)initWithEntityIdentifierField:(id)field nameField:(id)nameField allNameField:(id)allNameField
{
  fieldCopy = field;
  nameFieldCopy = nameField;
  allNameFieldCopy = allNameField;
  v15.receiver = self;
  v15.super_class = GDGraphActivityEventType;
  v12 = [(GDGraphActivityEventType *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entityIdentifier, field);
    objc_storeStrong(&v13->_name, nameField);
    objc_storeStrong(&v13->_allName, allNameField);
  }

  return v13;
}

@end