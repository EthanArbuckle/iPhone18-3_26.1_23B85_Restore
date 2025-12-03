@interface GDGraphTopic
- (GDGraphTopic)initWithEntityIdentifierField:(id)field qidField:(id)qidField allQidField:(id)allQidField;
@end

@implementation GDGraphTopic

- (GDGraphTopic)initWithEntityIdentifierField:(id)field qidField:(id)qidField allQidField:(id)allQidField
{
  fieldCopy = field;
  qidFieldCopy = qidField;
  allQidFieldCopy = allQidField;
  v15.receiver = self;
  v15.super_class = GDGraphTopic;
  v12 = [(GDGraphTopic *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entityIdentifier, field);
    objc_storeStrong(&v13->_qid, qidField);
    objc_storeStrong(&v13->_allQid, allQidField);
  }

  return v13;
}

@end