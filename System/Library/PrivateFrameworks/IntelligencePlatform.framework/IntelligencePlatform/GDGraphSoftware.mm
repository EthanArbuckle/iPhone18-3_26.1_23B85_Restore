@interface GDGraphSoftware
- (GDGraphSoftware)initWithEntityIdentifierField:(id)a3 bundleIdField:(id)a4 nameField:(id)a5 allBundleIdField:(id)a6 allNameField:(id)a7;
@end

@implementation GDGraphSoftware

- (GDGraphSoftware)initWithEntityIdentifierField:(id)a3 bundleIdField:(id)a4 nameField:(id)a5 allBundleIdField:(id)a6 allNameField:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = GDGraphSoftware;
  v17 = [(GDGraphSoftware *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_entityIdentifier, a3);
    objc_storeStrong(&v18->_bundleId, a4);
    objc_storeStrong(&v18->_name, a5);
    objc_storeStrong(&v18->_allBundleId, a6);
    objc_storeStrong(&v18->_allName, a7);
  }

  return v18;
}

@end