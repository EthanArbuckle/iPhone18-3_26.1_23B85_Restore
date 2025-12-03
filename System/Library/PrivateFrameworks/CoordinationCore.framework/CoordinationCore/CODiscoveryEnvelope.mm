@interface CODiscoveryEnvelope
+ (id)envelopeWithRecord:(id)record;
- (id)_initWithRecord:(id)record;
@end

@implementation CODiscoveryEnvelope

- (id)_initWithRecord:(id)record
{
  recordCopy = record;
  v9.receiver = self;
  v9.super_class = CODiscoveryEnvelope;
  v6 = [(CODiscoveryEnvelope *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_record, record);
    v7->_received = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  }

  return v7;
}

+ (id)envelopeWithRecord:(id)record
{
  recordCopy = record;
  v5 = [[self alloc] _initWithRecord:recordCopy];

  return v5;
}

@end