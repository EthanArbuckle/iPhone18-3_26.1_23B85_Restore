@interface HAP2CoAPIOThreadQueueEntry
- (id)initWithConsumer:(void *)consumer operationType:(void *)type sessionBlock:(void *)block timeout:(double)timeout activity:;
- (int64_t)compare:(id)compare;
@end

@implementation HAP2CoAPIOThreadQueueEntry

- (id)initWithConsumer:(void *)consumer operationType:(void *)type sessionBlock:(void *)block timeout:(double)timeout activity:
{
  v12 = a2;
  typeCopy = type;
  blockCopy = block;
  if (self)
  {
    v19.receiver = self;
    v19.super_class = HAP2CoAPIOThreadQueueEntry;
    v15 = objc_msgSendSuper2(&v19, sel_init);
    self = v15;
    if (v15)
    {
      objc_storeStrong(v15 + 1, a2);
      self[2] = consumer;
      v16 = MEMORY[0x231885210](typeCopy);
      v17 = self[3];
      self[3] = v16;

      *(self + 4) = timeout;
      objc_storeStrong(self + 5, block);
    }
  }

  return self;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = 0.0;
  timeout = 0.0;
  if (self)
  {
    timeout = self->_timeout;
  }

  if (compareCopy)
  {
    v5 = compareCopy[4];
  }

  if (timeout >= v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

@end