@interface MRGetVolumeMutedResultMessage
- (BOOL)isMuted;
@end

@implementation MRGetVolumeMutedResultMessage

- (BOOL)isMuted
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  isMuted = [underlyingCodableMessage isMuted];

  return isMuted;
}

@end