@interface CLSPublicEventCachingOptions
- (CLSPublicEventCachingOptions)init;
@end

@implementation CLSPublicEventCachingOptions

- (CLSPublicEventCachingOptions)init
{
  v4.receiver = self;
  v4.super_class = CLSPublicEventCachingOptions;
  v2 = [(CLSPublicEventCachingOptions *)&v4 init];
  if (v2)
  {
    v2->_fetchLimit = [objc_opt_class() noFetchLimit];
    v2->_jobContext = 4;
  }

  return v2;
}

@end