@interface SidecarProvider
- (void)setActiveRequest:(id)a3;
@end

@implementation SidecarProvider

- (void)setActiveRequest:(id)a3
{
  activeRequest = self->activeRequest;
  self->activeRequest = a3;
  v3 = a3;
}

@end