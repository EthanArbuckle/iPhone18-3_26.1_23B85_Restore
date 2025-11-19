@interface BMCoreDuetStream
- (BMCoreDuetStream)initWithKnowledgeStore:(id)a3 clientContext:(id)a4 identifier:(id)a5;
- (id)publisherForQuery:(id)a3;
@end

@implementation BMCoreDuetStream

- (BMCoreDuetStream)initWithKnowledgeStore:(id)a3 clientContext:(id)a4 identifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BMCoreDuetStream;
  v12 = [(BMCoreDuetStream *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_store, a3);
    objc_storeStrong(&v13->_context, a4);
    objc_storeStrong(&v13->_identifier, a5);
  }

  return v13;
}

- (id)publisherForQuery:(id)a3
{
  v4 = a3;
  v5 = [BMKnowledgeContextPublisher alloc];
  v6 = [(BMCoreDuetStream *)self store];
  v7 = [(BMCoreDuetStream *)self context];
  v8 = [(BMKnowledgeContextPublisher *)v5 initWithQuery:v4 store:v6 context:v7 includeLiveEvents:0];

  return v8;
}

@end