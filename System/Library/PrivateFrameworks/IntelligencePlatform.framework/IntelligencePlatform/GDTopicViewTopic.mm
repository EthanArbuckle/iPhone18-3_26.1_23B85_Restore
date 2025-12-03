@interface GDTopicViewTopic
- (GDTopicViewTopic)initWithTopicIdentifier:(id)identifier topicScore:(double)score mostRecentDocumentId:(id)id;
@end

@implementation GDTopicViewTopic

- (GDTopicViewTopic)initWithTopicIdentifier:(id)identifier topicScore:(double)score mostRecentDocumentId:(id)id
{
  identifierCopy = identifier;
  idCopy = id;
  v14.receiver = self;
  v14.super_class = GDTopicViewTopic;
  v11 = [(GDTopicViewTopic *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_topicIdentifier, identifier);
    v12->_topicScore = score;
    objc_storeStrong(&v12->_mostRecentDocumentId, id);
  }

  return v12;
}

@end