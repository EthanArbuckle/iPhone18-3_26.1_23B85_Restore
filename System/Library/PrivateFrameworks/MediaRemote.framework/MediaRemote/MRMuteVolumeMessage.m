@interface MRMuteVolumeMessage
- (BOOL)isMuted;
- (MRRequestDetails)details;
- (NSString)outputDeviceUID;
@end

@implementation MRMuteVolumeMessage

- (NSString)outputDeviceUID
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 outputDeviceUID];

  return v3;
}

- (BOOL)isMuted
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 isMuted];

  return v3;
}

- (MRRequestDetails)details
{
  v3 = [MRRequestDetails alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 details];
  v6 = [(MRRequestDetails *)v3 initWithProtobuf:v5];

  return v6;
}

@end