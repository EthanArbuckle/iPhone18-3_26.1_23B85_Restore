@interface GDGraphSoftware
- (GDGraphSoftware)initWithEntityIdentifierField:(id)field bundleIdField:(id)idField nameField:(id)nameField allBundleIdField:(id)bundleIdField allNameField:(id)allNameField;
@end

@implementation GDGraphSoftware

- (GDGraphSoftware)initWithEntityIdentifierField:(id)field bundleIdField:(id)idField nameField:(id)nameField allBundleIdField:(id)bundleIdField allNameField:(id)allNameField
{
  fieldCopy = field;
  idFieldCopy = idField;
  nameFieldCopy = nameField;
  bundleIdFieldCopy = bundleIdField;
  allNameFieldCopy = allNameField;
  v21.receiver = self;
  v21.super_class = GDGraphSoftware;
  v17 = [(GDGraphSoftware *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_entityIdentifier, field);
    objc_storeStrong(&v18->_bundleId, idField);
    objc_storeStrong(&v18->_name, nameField);
    objc_storeStrong(&v18->_allBundleId, bundleIdField);
    objc_storeStrong(&v18->_allName, allNameField);
  }

  return v18;
}

@end