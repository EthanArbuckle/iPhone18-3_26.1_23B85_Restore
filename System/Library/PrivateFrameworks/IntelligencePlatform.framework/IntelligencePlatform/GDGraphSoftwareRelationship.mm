@interface GDGraphSoftwareRelationship
- (GDGraphSoftwareRelationship)initWithSoftwareIdField:(id)field allSoftwareIdField:(id)idField;
@end

@implementation GDGraphSoftwareRelationship

- (GDGraphSoftwareRelationship)initWithSoftwareIdField:(id)field allSoftwareIdField:(id)idField
{
  fieldCopy = field;
  idFieldCopy = idField;
  v12.receiver = self;
  v12.super_class = GDGraphSoftwareRelationship;
  v9 = [(GDGraphSoftwareRelationship *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_softwareId, field);
    objc_storeStrong(&v10->_allSoftwareId, idField);
  }

  return v10;
}

@end