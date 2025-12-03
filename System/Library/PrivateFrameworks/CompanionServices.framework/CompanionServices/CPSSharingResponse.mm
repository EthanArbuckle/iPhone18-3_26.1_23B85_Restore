@interface CPSSharingResponse
- (CPSSharingResponse)initWithCoder:(id)coder;
@end

@implementation CPSSharingResponse

- (CPSSharingResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CPSSharingResponse;
  return [(CPSSharingResponse *)&v4 init];
}

@end