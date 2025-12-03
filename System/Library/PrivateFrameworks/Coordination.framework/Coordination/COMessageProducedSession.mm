@interface COMessageProducedSession
- (BOOL)isEqual:(id)equal;
- (COMessageProducedSession)initWithMember:(id)member producer:(id)producer;
- (COMessageSessionProducer)producer;
- (id)description;
- (unint64_t)hash;
@end

@implementation COMessageProducedSession

- (COMessageProducedSession)initWithMember:(id)member producer:(id)producer
{
  producerCopy = producer;
  v10.receiver = self;
  v10.super_class = COMessageProducedSession;
  v7 = [(COMessageSession *)&v10 initWithMember:member];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_producer, producerCopy);
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  producer = [(COMessageProducedSession *)self producer];
  member = [(COMessageSession *)self member];
  v8 = [v3 stringWithFormat:@"<%@: %p, producer = %@>, member = %@", v5, self, producer, member];

  return v8;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = COMessageProducedSession;
  return [(COMessageSession *)&v3 hash];
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = COMessageProducedSession;
  return [(COMessageSession *)&v4 isEqual:equal];
}

- (COMessageSessionProducer)producer
{
  WeakRetained = objc_loadWeakRetained(&self->_producer);

  return WeakRetained;
}

@end