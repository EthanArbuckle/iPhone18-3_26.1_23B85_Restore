@interface GDGraphLocationRelationship
- (GDGraphLocationRelationship)initWithLabelField:(id)field locationIdField:(id)idField allLabelField:(id)labelField allLocationIdField:(id)locationIdField;
@end

@implementation GDGraphLocationRelationship

- (GDGraphLocationRelationship)initWithLabelField:(id)field locationIdField:(id)idField allLabelField:(id)labelField allLocationIdField:(id)locationIdField
{
  fieldCopy = field;
  idFieldCopy = idField;
  labelFieldCopy = labelField;
  locationIdFieldCopy = locationIdField;
  v18.receiver = self;
  v18.super_class = GDGraphLocationRelationship;
  v15 = [(GDGraphLocationRelationship *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_label, field);
    objc_storeStrong(&v16->_locationId, idField);
    objc_storeStrong(&v16->_allLabel, labelField);
    objc_storeStrong(&v16->_allLocationId, locationIdField);
  }

  return v16;
}

@end