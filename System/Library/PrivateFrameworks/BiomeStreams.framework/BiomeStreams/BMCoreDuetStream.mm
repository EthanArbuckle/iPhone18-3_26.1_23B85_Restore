@interface BMCoreDuetStream
- (BMCoreDuetStream)initWithKnowledgeStore:(id)store clientContext:(id)context identifier:(id)identifier;
- (id)publisherForQuery:(id)query;
@end

@implementation BMCoreDuetStream

- (BMCoreDuetStream)initWithKnowledgeStore:(id)store clientContext:(id)context identifier:(id)identifier
{
  storeCopy = store;
  contextCopy = context;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = BMCoreDuetStream;
  v12 = [(BMCoreDuetStream *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_store, store);
    objc_storeStrong(&v13->_context, context);
    objc_storeStrong(&v13->_identifier, identifier);
  }

  return v13;
}

- (id)publisherForQuery:(id)query
{
  queryCopy = query;
  v5 = [BMKnowledgeContextPublisher alloc];
  store = [(BMCoreDuetStream *)self store];
  context = [(BMCoreDuetStream *)self context];
  v8 = [(BMKnowledgeContextPublisher *)v5 initWithQuery:queryCopy store:store context:context includeLiveEvents:0];

  return v8;
}

@end