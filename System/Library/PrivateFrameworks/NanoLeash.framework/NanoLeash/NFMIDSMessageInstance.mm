@interface NFMIDSMessageInstance
+ (id)newMessageInstanceWithAction:(id)action retryCount:(int64_t)count retryInterval:(double)interval;
- (id)description;
@end

@implementation NFMIDSMessageInstance

+ (id)newMessageInstanceWithAction:(id)action retryCount:(int64_t)count retryInterval:(double)interval
{
  actionCopy = action;
  v8 = objc_alloc_init(NFMIDSMessageInstance);
  [(NFMIDSMessageInstance *)v8 setRetryAction:actionCopy];

  [(NFMIDSMessageInstance *)v8 setRetryCount:count];
  [(NFMIDSMessageInstance *)v8 setRetryInterval:interval];
  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = NFMIDSMessageInstance;
  v4 = [(NFMIDSMessageInstance *)&v10 description];
  retryCount = self->_retryCount;
  retryInterval = self->_retryInterval;
  v7 = MEMORY[0x25F8637B0](self->_retryAction);
  v8 = [v3 stringWithFormat:@"(%@) Retries: %d Interval: %f Action: %@", v4, retryCount, *&retryInterval, v7];

  return v8;
}

@end