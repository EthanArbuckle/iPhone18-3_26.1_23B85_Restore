@interface MRGenericMessage
- (MRGenericMessage)initWithKey:(id)a3 data:(id)a4;
- (NSData)data;
- (NSString)key;
@end

@implementation MRGenericMessage

- (MRGenericMessage)initWithKey:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MRGenericMessage;
  v8 = [(MRProtocolMessage *)&v11 init];
  if (v8)
  {
    v9 = objc_alloc_init(_MRGenericMessageProtobuf);
    [(_MRGenericMessageProtobuf *)v9 setKey:v6];
    [(_MRGenericMessageProtobuf *)v9 setData:v7];
    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v9];
  }

  return v8;
}

- (NSString)key
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 key];

  return v3;
}

- (NSData)data
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 data];

  return v3;
}

@end