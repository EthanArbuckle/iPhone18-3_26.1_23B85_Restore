@interface MRApplicationConnectionMessageHeader
- (MRApplicationConnectionMessageHeader)init;
- (MRApplicationConnectionMessageHeader)initWithCoder:(id)a3;
- (MRApplicationConnectionMessageHeader)initWithProtobuf:(id)a3;
- (MRApplicationConnectionMessageHeader)initWithProtobufData:(id)a3;
- (NSData)protobufData;
- (_MRApplicationConnectionMessageHeaderProtobuf)protobuf;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRApplicationConnectionMessageHeader

- (MRApplicationConnectionMessageHeader)init
{
  v3.receiver = self;
  v3.super_class = MRApplicationConnectionMessageHeader;
  return [(MRApplicationConnectionMessageHeader *)&v3 init];
}

- (MRApplicationConnectionMessageHeader)initWithProtobufData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRApplicationConnectionMessageHeaderProtobuf alloc] initWithData:v4];

    self = [(MRApplicationConnectionMessageHeader *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MRApplicationConnectionMessageHeader)initWithProtobuf:(id)a3
{
  if (a3)
  {
    v5.receiver = self;
    v5.super_class = MRApplicationConnectionMessageHeader;
    self = [(MRApplicationConnectionMessageHeader *)&v5 init];
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_MRApplicationConnectionMessageHeaderProtobuf)protobuf
{
  v2 = objc_alloc_init(_MRApplicationConnectionMessageHeaderProtobuf);

  return v2;
}

- (NSData)protobufData
{
  v2 = [(MRApplicationConnectionMessageHeader *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MRApplicationConnectionMessageHeader *)self protobufData];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (MRApplicationConnectionMessageHeader)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(MRApplicationConnectionMessageHeader *)self initWithProtobufData:v5];
  return v6;
}

@end