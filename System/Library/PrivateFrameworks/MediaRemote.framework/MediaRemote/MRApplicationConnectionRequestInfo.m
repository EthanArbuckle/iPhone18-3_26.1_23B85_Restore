@interface MRApplicationConnectionRequestInfo
- (MRApplicationConnectionRequestInfo)initWithCoder:(id)a3;
- (MRApplicationConnectionRequestInfo)initWithDeviceInfo:(id)a3 client:(id)a4;
- (MRApplicationConnectionRequestInfo)initWithProtobuf:(id)a3;
- (MRApplicationConnectionRequestInfo)initWithProtobufData:(id)a3;
- (NSData)protobufData;
- (_MRApplicationConnectionRequestInfoProtobuf)protobuf;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRApplicationConnectionRequestInfo

- (MRApplicationConnectionRequestInfo)initWithDeviceInfo:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MRApplicationConnectionRequestInfo;
  v8 = [(MRApplicationConnectionRequestInfo *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    deviceInfo = v8->_deviceInfo;
    v8->_deviceInfo = v9;

    v11 = [v7 copy];
    client = v8->_client;
    v8->_client = v11;
  }

  return v8;
}

- (MRApplicationConnectionRequestInfo)initWithProtobufData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRApplicationConnectionRequestInfoProtobuf alloc] initWithData:v4];

    self = [(MRApplicationConnectionRequestInfo *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MRApplicationConnectionRequestInfo)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v16.receiver = self;
    v16.super_class = MRApplicationConnectionRequestInfo;
    v5 = [(MRApplicationConnectionRequestInfo *)&v16 init];
    if (v5)
    {
      v6 = [MRDeviceInfo alloc];
      v7 = [v4 deviceInfo];
      v8 = [(MRDeviceInfo *)v6 initWithProtobuf:v7];
      deviceInfo = v5->_deviceInfo;
      v5->_deviceInfo = v8;

      v10 = [MRClient alloc];
      v11 = [v4 client];
      v12 = [(MRClient *)v10 initWithProtobuf:v11];
      client = v5->_client;
      v5->_client = v12;
    }

    self = v5;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (_MRApplicationConnectionRequestInfoProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRApplicationConnectionRequestInfoProtobuf);
  v4 = [(MRApplicationConnectionRequestInfo *)self deviceInfo];
  v5 = [v4 protobuf];
  [(_MRApplicationConnectionRequestInfoProtobuf *)v3 setDeviceInfo:v5];

  v6 = [(MRApplicationConnectionRequestInfo *)self client];
  v7 = [v6 protobuf];
  [(_MRApplicationConnectionRequestInfoProtobuf *)v3 setClient:v7];

  return v3;
}

- (NSData)protobufData
{
  v2 = [(MRApplicationConnectionRequestInfo *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MRApplicationConnectionRequestInfo *)self protobufData];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (MRApplicationConnectionRequestInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(MRApplicationConnectionRequestInfo *)self initWithProtobufData:v5];
  return v6;
}

@end