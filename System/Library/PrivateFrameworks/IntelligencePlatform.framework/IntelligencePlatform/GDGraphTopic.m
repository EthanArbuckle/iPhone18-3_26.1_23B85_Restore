@interface GDGraphTopic
- (GDGraphTopic)initWithEntityIdentifierField:(id)a3 qidField:(id)a4 allQidField:(id)a5;
@end

@implementation GDGraphTopic

- (GDGraphTopic)initWithEntityIdentifierField:(id)a3 qidField:(id)a4 allQidField:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = GDGraphTopic;
  v12 = [(GDGraphTopic *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entityIdentifier, a3);
    objc_storeStrong(&v13->_qid, a4);
    objc_storeStrong(&v13->_allQid, a5);
  }

  return v13;
}

@end