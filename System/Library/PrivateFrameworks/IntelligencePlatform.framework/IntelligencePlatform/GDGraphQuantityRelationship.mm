@interface GDGraphQuantityRelationship
- (GDGraphQuantityRelationship)initWithQuantityField:(id)field allQuantityField:(id)quantityField;
@end

@implementation GDGraphQuantityRelationship

- (GDGraphQuantityRelationship)initWithQuantityField:(id)field allQuantityField:(id)quantityField
{
  fieldCopy = field;
  quantityFieldCopy = quantityField;
  v12.receiver = self;
  v12.super_class = GDGraphQuantityRelationship;
  v9 = [(GDGraphQuantityRelationship *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_quantity, field);
    objc_storeStrong(&v10->_allQuantity, quantityField);
  }

  return v10;
}

@end