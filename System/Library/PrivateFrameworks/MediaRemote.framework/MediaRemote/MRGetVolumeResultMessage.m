@interface MRGetVolumeResultMessage
- (MRGetVolumeResultMessage)initWithVolume:(float)a3;
- (float)volume;
@end

@implementation MRGetVolumeResultMessage

- (MRGetVolumeResultMessage)initWithVolume:(float)a3
{
  v8.receiver = self;
  v8.super_class = MRGetVolumeResultMessage;
  v4 = [(MRProtocolMessage *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(_MRGetVolumeResultMessageProtobuf);
    *&v6 = a3;
    [(_MRGetVolumeResultMessageProtobuf *)v5 setVolume:v6];
    [(MRProtocolMessage *)v4 setUnderlyingCodableMessage:v5];
  }

  return v4;
}

- (float)volume
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  [v2 volume];
  v4 = v3;

  return v4;
}

@end