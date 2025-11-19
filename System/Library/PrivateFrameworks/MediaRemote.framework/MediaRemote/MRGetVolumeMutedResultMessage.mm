@interface MRGetVolumeMutedResultMessage
- (BOOL)isMuted;
@end

@implementation MRGetVolumeMutedResultMessage

- (BOOL)isMuted
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 isMuted];

  return v3;
}

@end