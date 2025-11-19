@interface GDGraphLocationRelationship
- (GDGraphLocationRelationship)initWithLabelField:(id)a3 locationIdField:(id)a4 allLabelField:(id)a5 allLocationIdField:(id)a6;
@end

@implementation GDGraphLocationRelationship

- (GDGraphLocationRelationship)initWithLabelField:(id)a3 locationIdField:(id)a4 allLabelField:(id)a5 allLocationIdField:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = GDGraphLocationRelationship;
  v15 = [(GDGraphLocationRelationship *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_label, a3);
    objc_storeStrong(&v16->_locationId, a4);
    objc_storeStrong(&v16->_allLabel, a5);
    objc_storeStrong(&v16->_allLocationId, a6);
  }

  return v16;
}

@end