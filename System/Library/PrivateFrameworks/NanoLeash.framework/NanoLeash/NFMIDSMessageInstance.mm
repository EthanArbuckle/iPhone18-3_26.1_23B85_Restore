@interface NFMIDSMessageInstance
+ (id)newMessageInstanceWithAction:(id)a3 retryCount:(int64_t)a4 retryInterval:(double)a5;
- (id)description;
@end

@implementation NFMIDSMessageInstance

+ (id)newMessageInstanceWithAction:(id)a3 retryCount:(int64_t)a4 retryInterval:(double)a5
{
  v7 = a3;
  v8 = objc_alloc_init(NFMIDSMessageInstance);
  [(NFMIDSMessageInstance *)v8 setRetryAction:v7];

  [(NFMIDSMessageInstance *)v8 setRetryCount:a4];
  [(NFMIDSMessageInstance *)v8 setRetryInterval:a5];
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