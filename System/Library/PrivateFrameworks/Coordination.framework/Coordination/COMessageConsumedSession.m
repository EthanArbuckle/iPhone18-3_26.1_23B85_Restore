@interface COMessageConsumedSession
- (BOOL)isEqual:(id)a3;
- (COMessageConsumedSession)initWithMember:(id)a3 consumer:(id)a4;
- (COMessageSessionConsumer)consumer;
- (id)description;
- (unint64_t)hash;
@end

@implementation COMessageConsumedSession

- (COMessageConsumedSession)initWithMember:(id)a3 consumer:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = COMessageConsumedSession;
  v7 = [(COMessageSession *)&v10 initWithMember:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_consumer, v6);
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(COMessageConsumedSession *)self consumer];
  v7 = [(COMessageSession *)self member];
  v8 = [v3 stringWithFormat:@"<%@: %p, consumer = %@>, member = %@", v5, self, v6, v7];

  return v8;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = COMessageConsumedSession;
  return [(COMessageSession *)&v3 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4.receiver = self;
  v4.super_class = COMessageConsumedSession;
  return [(COMessageSession *)&v4 isEqual:a3];
}

- (COMessageSessionConsumer)consumer
{
  WeakRetained = objc_loadWeakRetained(&self->_consumer);

  return WeakRetained;
}

@end