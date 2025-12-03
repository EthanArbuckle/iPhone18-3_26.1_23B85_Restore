@interface SidecarProvider
- (void)setActiveRequest:(id)request;
@end

@implementation SidecarProvider

- (void)setActiveRequest:(id)request
{
  activeRequest = self->activeRequest;
  self->activeRequest = request;
  requestCopy = request;
}

@end