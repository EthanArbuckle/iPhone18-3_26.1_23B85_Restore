@interface MRVolumeMutedDidChangeMessage
- (BOOL)isMuted;
- (NSString)outputDeviceUID;
@end

@implementation MRVolumeMutedDidChangeMessage

- (BOOL)isMuted
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 isMuted];

  return v3;
}

- (NSString)outputDeviceUID
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 outputDeviceUID];

  return v3;
}

@end