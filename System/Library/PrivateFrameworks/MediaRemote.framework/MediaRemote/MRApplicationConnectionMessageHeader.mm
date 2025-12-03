@interface MRApplicationConnectionMessageHeader
- (MRApplicationConnectionMessageHeader)init;
- (MRApplicationConnectionMessageHeader)initWithCoder:(id)coder;
- (MRApplicationConnectionMessageHeader)initWithProtobuf:(id)protobuf;
- (MRApplicationConnectionMessageHeader)initWithProtobufData:(id)data;
- (NSData)protobufData;
- (_MRApplicationConnectionMessageHeaderProtobuf)protobuf;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRApplicationConnectionMessageHeader

- (MRApplicationConnectionMessageHeader)init
{
  v3.receiver = self;
  v3.super_class = MRApplicationConnectionMessageHeader;
  return [(MRApplicationConnectionMessageHeader *)&v3 init];
}

- (MRApplicationConnectionMessageHeader)initWithProtobufData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRApplicationConnectionMessageHeaderProtobuf alloc] initWithData:dataCopy];

    self = [(MRApplicationConnectionMessageHeader *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRApplicationConnectionMessageHeader)initWithProtobuf:(id)protobuf
{
  if (protobuf)
  {
    v5.receiver = self;
    v5.super_class = MRApplicationConnectionMessageHeader;
    self = [(MRApplicationConnectionMessageHeader *)&v5 init];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_MRApplicationConnectionMessageHeaderProtobuf)protobuf
{
  v2 = objc_alloc_init(_MRApplicationConnectionMessageHeaderProtobuf);

  return v2;
}

- (NSData)protobufData
{
  protobuf = [(MRApplicationConnectionMessageHeader *)self protobuf];
  data = [protobuf data];

  return data;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobufData = [(MRApplicationConnectionMessageHeader *)self protobufData];
  [coderCopy encodeObject:protobufData forKey:@"protobufData"];
}

- (MRApplicationConnectionMessageHeader)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(MRApplicationConnectionMessageHeader *)self initWithProtobufData:v5];
  return v6;
}

@end