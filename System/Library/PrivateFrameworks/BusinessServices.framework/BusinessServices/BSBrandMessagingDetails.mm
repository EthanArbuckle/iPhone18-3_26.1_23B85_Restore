@interface BSBrandMessagingDetails
- (NSString)localizedResponseTime;
@end

@implementation BSBrandMessagingDetails

- (NSString)localizedResponseTime
{
  if (self)
  {
    self = self->_shim;
  }

  return [(BSBrandMessagingDetails *)self localizedResponseTime];
}

@end