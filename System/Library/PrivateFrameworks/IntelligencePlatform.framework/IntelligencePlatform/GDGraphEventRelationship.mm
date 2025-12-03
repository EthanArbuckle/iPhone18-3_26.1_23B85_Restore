@interface GDGraphEventRelationship
- (GDGraphEventRelationship)initWithEventIdField:(id)field allEventIdField:(id)idField;
@end

@implementation GDGraphEventRelationship

- (GDGraphEventRelationship)initWithEventIdField:(id)field allEventIdField:(id)idField
{
  fieldCopy = field;
  idFieldCopy = idField;
  v12.receiver = self;
  v12.super_class = GDGraphEventRelationship;
  v9 = [(GDGraphEventRelationship *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventId, field);
    objc_storeStrong(&v10->_allEventId, idField);
  }

  return v10;
}

@end