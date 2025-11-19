@interface GDGraphSoftwareRelationship
- (GDGraphSoftwareRelationship)initWithSoftwareIdField:(id)a3 allSoftwareIdField:(id)a4;
@end

@implementation GDGraphSoftwareRelationship

- (GDGraphSoftwareRelationship)initWithSoftwareIdField:(id)a3 allSoftwareIdField:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = GDGraphSoftwareRelationship;
  v9 = [(GDGraphSoftwareRelationship *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_softwareId, a3);
    objc_storeStrong(&v10->_allSoftwareId, a4);
  }

  return v10;
}

@end