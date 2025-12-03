@interface MRAudioFadeResponseMessage
- (MRAudioFadeResponseMessage)initWithFadeDuration:(int64_t)duration error:(id)error;
- (int64_t)fadeDuration;
@end

@implementation MRAudioFadeResponseMessage

- (MRAudioFadeResponseMessage)initWithFadeDuration:(int64_t)duration error:(id)error
{
  errorCopy = error;
  v10.receiver = self;
  v10.super_class = MRAudioFadeResponseMessage;
  v7 = [(MRProtocolMessage *)&v10 init];
  if (v7)
  {
    v8 = objc_alloc_init(_MRAudioFadeResponseMessageProtobuf);
    [(_MRAudioFadeResponseMessageProtobuf *)v8 setFadeDuration:duration];
    [(MRProtocolMessage *)v7 setError:errorCopy];
    [(MRProtocolMessage *)v7 setUnderlyingCodableMessage:v8];
  }

  return v7;
}

- (int64_t)fadeDuration
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  fadeDuration = [underlyingCodableMessage fadeDuration];

  return fadeDuration;
}

@end