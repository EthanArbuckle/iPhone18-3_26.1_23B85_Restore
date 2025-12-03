@interface MRVolumeHUDPresentationRequest
- (MRVolumeHUDPresentationRequest)initWithCoder:(id)coder;
@end

@implementation MRVolumeHUDPresentationRequest

- (MRVolumeHUDPresentationRequest)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = MRVolumeHUDPresentationRequest;
  return [(MRVolumeHUDPresentationRequest *)&v4 init];
}

@end