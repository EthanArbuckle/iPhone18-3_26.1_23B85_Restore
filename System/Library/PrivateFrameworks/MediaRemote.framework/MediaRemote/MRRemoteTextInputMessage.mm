@interface MRRemoteTextInputMessage
- (MRRemoteTextInputMessage)initWithVersion:(unint64_t)version data:(id)data;
- (NSData)data;
- (unint64_t)version;
@end

@implementation MRRemoteTextInputMessage

- (MRRemoteTextInputMessage)initWithVersion:(unint64_t)version data:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = MRRemoteTextInputMessage;
  v7 = [(MRProtocolMessage *)&v10 init];
  if (v7)
  {
    v8 = objc_alloc_init(_MRRemoteTextInputMessageProtobuf);
    [(_MRRemoteTextInputMessageProtobuf *)v8 setVersion:version];
    [(_MRRemoteTextInputMessageProtobuf *)v8 setData:dataCopy];
    [(MRProtocolMessage *)v7 setUnderlyingCodableMessage:v8];
  }

  return v7;
}

- (unint64_t)version
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  version = [underlyingCodableMessage version];

  return version;
}

- (NSData)data
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  data = [underlyingCodableMessage data];

  return data;
}

@end