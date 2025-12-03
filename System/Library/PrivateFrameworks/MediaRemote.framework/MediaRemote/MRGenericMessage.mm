@interface MRGenericMessage
- (MRGenericMessage)initWithKey:(id)key data:(id)data;
- (NSData)data;
- (NSString)key;
@end

@implementation MRGenericMessage

- (MRGenericMessage)initWithKey:(id)key data:(id)data
{
  keyCopy = key;
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = MRGenericMessage;
  v8 = [(MRProtocolMessage *)&v11 init];
  if (v8)
  {
    v9 = objc_alloc_init(_MRGenericMessageProtobuf);
    [(_MRGenericMessageProtobuf *)v9 setKey:keyCopy];
    [(_MRGenericMessageProtobuf *)v9 setData:dataCopy];
    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v9];
  }

  return v8;
}

- (NSString)key
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [underlyingCodableMessage key];

  return v3;
}

- (NSData)data
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  data = [underlyingCodableMessage data];

  return data;
}

@end