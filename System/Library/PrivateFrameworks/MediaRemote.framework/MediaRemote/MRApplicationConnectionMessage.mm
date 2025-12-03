@interface MRApplicationConnectionMessage
- (MRApplicationConnectionMessage)initWithCoder:(id)coder;
- (MRApplicationConnectionMessage)initWithEncodedUnderlyingMessage:(id)message;
- (MRApplicationConnectionMessage)initWithProtobuf:(id)protobuf;
- (MRApplicationConnectionMessage)initWithProtobufData:(id)data;
- (NSData)protobufData;
- (_MRApplicationConnectionMessageProtobuf)protobuf;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRApplicationConnectionMessage

- (MRApplicationConnectionMessage)initWithEncodedUnderlyingMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = MRApplicationConnectionMessage;
  v6 = [(MRApplicationConnectionMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingMessage, message);
  }

  return v7;
}

- (MRApplicationConnectionMessage)initWithProtobufData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRApplicationConnectionMessageProtobuf alloc] initWithData:dataCopy];

    self = [(MRApplicationConnectionMessage *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRApplicationConnectionMessage)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v10.receiver = self;
    v10.super_class = MRApplicationConnectionMessage;
    v5 = [(MRApplicationConnectionMessage *)&v10 init];
    if (v5)
    {
      underlyingMessage = [protobufCopy underlyingMessage];
      underlyingMessage = v5->_underlyingMessage;
      v5->_underlyingMessage = underlyingMessage;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_MRApplicationConnectionMessageProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRApplicationConnectionMessageProtobuf);
  underlyingMessage = [(MRApplicationConnectionMessage *)self underlyingMessage];
  [(_MRApplicationConnectionMessageProtobuf *)v3 setUnderlyingMessage:underlyingMessage];

  return v3;
}

- (NSData)protobufData
{
  protobuf = [(MRApplicationConnectionMessage *)self protobuf];
  data = [protobuf data];

  return data;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobufData = [(MRApplicationConnectionMessage *)self protobufData];
  [coderCopy encodeObject:protobufData forKey:@"protobufData"];
}

- (MRApplicationConnectionMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(MRApplicationConnectionMessage *)self initWithProtobufData:v5];
  return v6;
}

@end