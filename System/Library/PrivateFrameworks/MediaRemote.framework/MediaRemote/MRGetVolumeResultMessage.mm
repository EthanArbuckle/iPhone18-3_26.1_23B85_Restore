@interface MRGetVolumeResultMessage
- (MRGetVolumeResultMessage)initWithVolume:(float)volume;
- (float)volume;
@end

@implementation MRGetVolumeResultMessage

- (MRGetVolumeResultMessage)initWithVolume:(float)volume
{
  v8.receiver = self;
  v8.super_class = MRGetVolumeResultMessage;
  v4 = [(MRProtocolMessage *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(_MRGetVolumeResultMessageProtobuf);
    *&v6 = volume;
    [(_MRGetVolumeResultMessageProtobuf *)v5 setVolume:v6];
    [(MRProtocolMessage *)v4 setUnderlyingCodableMessage:v5];
  }

  return v4;
}

- (float)volume
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  [underlyingCodableMessage volume];
  v4 = v3;

  return v4;
}

@end