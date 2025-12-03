@interface MRVolumeMutedDidChangeMessage
- (BOOL)isMuted;
- (NSString)outputDeviceUID;
@end

@implementation MRVolumeMutedDidChangeMessage

- (BOOL)isMuted
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  isMuted = [underlyingCodableMessage isMuted];

  return isMuted;
}

- (NSString)outputDeviceUID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  outputDeviceUID = [underlyingCodableMessage outputDeviceUID];

  return outputDeviceUID;
}

@end