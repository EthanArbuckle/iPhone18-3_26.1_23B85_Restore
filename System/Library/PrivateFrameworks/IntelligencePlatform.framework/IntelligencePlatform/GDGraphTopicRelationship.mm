@interface GDGraphTopicRelationship
- (GDGraphTopicRelationship)initWithTopicIdField:(id)field allTopicIdField:(id)idField;
@end

@implementation GDGraphTopicRelationship

- (GDGraphTopicRelationship)initWithTopicIdField:(id)field allTopicIdField:(id)idField
{
  fieldCopy = field;
  idFieldCopy = idField;
  v12.receiver = self;
  v12.super_class = GDGraphTopicRelationship;
  v9 = [(GDGraphTopicRelationship *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_topicId, field);
    objc_storeStrong(&v10->_allTopicId, idField);
  }

  return v10;
}

@end