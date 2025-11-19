@interface GDGraphTopicRelationship
- (GDGraphTopicRelationship)initWithTopicIdField:(id)a3 allTopicIdField:(id)a4;
@end

@implementation GDGraphTopicRelationship

- (GDGraphTopicRelationship)initWithTopicIdField:(id)a3 allTopicIdField:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = GDGraphTopicRelationship;
  v9 = [(GDGraphTopicRelationship *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_topicId, a3);
    objc_storeStrong(&v10->_allTopicId, a4);
  }

  return v10;
}

@end