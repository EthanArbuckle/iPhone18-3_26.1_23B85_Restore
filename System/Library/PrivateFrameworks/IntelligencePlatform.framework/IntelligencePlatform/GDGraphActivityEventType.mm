@interface GDGraphActivityEventType
- (GDGraphActivityEventType)initWithEntityIdentifierField:(id)a3 nameField:(id)a4 allNameField:(id)a5;
@end

@implementation GDGraphActivityEventType

- (GDGraphActivityEventType)initWithEntityIdentifierField:(id)a3 nameField:(id)a4 allNameField:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = GDGraphActivityEventType;
  v12 = [(GDGraphActivityEventType *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entityIdentifier, a3);
    objc_storeStrong(&v13->_name, a4);
    objc_storeStrong(&v13->_allName, a5);
  }

  return v13;
}

@end