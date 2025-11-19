@interface GDGraphQuantityRelationship
- (GDGraphQuantityRelationship)initWithQuantityField:(id)a3 allQuantityField:(id)a4;
@end

@implementation GDGraphQuantityRelationship

- (GDGraphQuantityRelationship)initWithQuantityField:(id)a3 allQuantityField:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = GDGraphQuantityRelationship;
  v9 = [(GDGraphQuantityRelationship *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_quantity, a3);
    objc_storeStrong(&v10->_allQuantity, a4);
  }

  return v10;
}

@end