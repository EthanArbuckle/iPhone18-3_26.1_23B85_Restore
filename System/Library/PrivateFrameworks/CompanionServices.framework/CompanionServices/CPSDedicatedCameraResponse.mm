@interface CPSDedicatedCameraResponse
- (CPSDedicatedCameraResponse)initWithCoder:(id)coder;
@end

@implementation CPSDedicatedCameraResponse

- (CPSDedicatedCameraResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CPSDedicatedCameraResponse;
  return [(CPSDedicatedCameraResponse *)&v4 init];
}

@end