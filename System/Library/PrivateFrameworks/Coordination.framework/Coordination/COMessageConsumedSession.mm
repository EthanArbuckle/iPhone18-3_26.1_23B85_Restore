@interface COMessageConsumedSession
- (BOOL)isEqual:(id)equal;
- (COMessageConsumedSession)initWithMember:(id)member consumer:(id)consumer;
- (COMessageSessionConsumer)consumer;
- (id)description;
- (unint64_t)hash;
@end

@implementation COMessageConsumedSession

- (COMessageConsumedSession)initWithMember:(id)member consumer:(id)consumer
{
  consumerCopy = consumer;
  v10.receiver = self;
  v10.super_class = COMessageConsumedSession;
  v7 = [(COMessageSession *)&v10 initWithMember:member];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_consumer, consumerCopy);
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  consumer = [(COMessageConsumedSession *)self consumer];
  member = [(COMessageSession *)self member];
  v8 = [v3 stringWithFormat:@"<%@: %p, consumer = %@>, member = %@", v5, self, consumer, member];

  return v8;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = COMessageConsumedSession;
  return [(COMessageSession *)&v3 hash];
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = COMessageConsumedSession;
  return [(COMessageSession *)&v4 isEqual:equal];
}

- (COMessageSessionConsumer)consumer
{
  WeakRetained = objc_loadWeakRetained(&self->_consumer);

  return WeakRetained;
}

@end