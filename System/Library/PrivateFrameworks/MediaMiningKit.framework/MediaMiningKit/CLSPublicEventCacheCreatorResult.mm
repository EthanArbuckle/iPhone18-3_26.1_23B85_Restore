@interface CLSPublicEventCacheCreatorResult
- (CLSPublicEventCacheCreatorResult)init;
@end

@implementation CLSPublicEventCacheCreatorResult

- (CLSPublicEventCacheCreatorResult)init
{
  v8.receiver = self;
  v8.super_class = CLSPublicEventCacheCreatorResult;
  v2 = [(CLSPublicEventCacheCreatorResult *)&v8 init];
  v3 = v2;
  if (v2)
  {
    resolvedPublicEventsByTimeLocationIdentifier = v2->_resolvedPublicEventsByTimeLocationIdentifier;
    v5 = MEMORY[0x277CBEC10];
    v2->_resolvedPublicEventsByTimeLocationIdentifier = MEMORY[0x277CBEC10];

    invalidationTokenByTimeLocationIdentifier = v3->_invalidationTokenByTimeLocationIdentifier;
    v3->_invalidationTokenByTimeLocationIdentifier = v5;
  }

  return v3;
}

@end