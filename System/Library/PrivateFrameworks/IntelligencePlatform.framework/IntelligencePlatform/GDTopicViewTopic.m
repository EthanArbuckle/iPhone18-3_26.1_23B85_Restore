@interface GDTopicViewTopic
- (GDTopicViewTopic)initWithTopicIdentifier:(id)a3 topicScore:(double)a4 mostRecentDocumentId:(id)a5;
@end

@implementation GDTopicViewTopic

- (GDTopicViewTopic)initWithTopicIdentifier:(id)a3 topicScore:(double)a4 mostRecentDocumentId:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = GDTopicViewTopic;
  v11 = [(GDTopicViewTopic *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_topicIdentifier, a3);
    v12->_topicScore = a4;
    objc_storeStrong(&v12->_mostRecentDocumentId, a5);
  }

  return v12;
}

@end