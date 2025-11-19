@interface CODiscoveryEnvelope
+ (id)envelopeWithRecord:(id)a3;
- (id)_initWithRecord:(id)a3;
@end

@implementation CODiscoveryEnvelope

- (id)_initWithRecord:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CODiscoveryEnvelope;
  v6 = [(CODiscoveryEnvelope *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_record, a3);
    v7->_received = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  }

  return v7;
}

+ (id)envelopeWithRecord:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithRecord:v4];

  return v5;
}

@end