@interface MFMutableMessageHeadersFactory
- (id)mutableMessageHeaders;
@end

@implementation MFMutableMessageHeadersFactory

- (id)mutableMessageHeaders
{
  v2 = objc_alloc_init(MFMutableMessageHeaders);

  return v2;
}

@end