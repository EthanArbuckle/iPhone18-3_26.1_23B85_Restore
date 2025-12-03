@interface MRApplicationConnectionRequestInfo
- (MRApplicationConnectionRequestInfo)initWithCoder:(id)coder;
- (MRApplicationConnectionRequestInfo)initWithDeviceInfo:(id)info client:(id)client;
- (MRApplicationConnectionRequestInfo)initWithProtobuf:(id)protobuf;
- (MRApplicationConnectionRequestInfo)initWithProtobufData:(id)data;
- (NSData)protobufData;
- (_MRApplicationConnectionRequestInfoProtobuf)protobuf;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRApplicationConnectionRequestInfo

- (MRApplicationConnectionRequestInfo)initWithDeviceInfo:(id)info client:(id)client
{
  infoCopy = info;
  clientCopy = client;
  v14.receiver = self;
  v14.super_class = MRApplicationConnectionRequestInfo;
  v8 = [(MRApplicationConnectionRequestInfo *)&v14 init];
  if (v8)
  {
    v9 = [infoCopy copy];
    deviceInfo = v8->_deviceInfo;
    v8->_deviceInfo = v9;

    v11 = [clientCopy copy];
    client = v8->_client;
    v8->_client = v11;
  }

  return v8;
}

- (MRApplicationConnectionRequestInfo)initWithProtobufData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRApplicationConnectionRequestInfoProtobuf alloc] initWithData:dataCopy];

    self = [(MRApplicationConnectionRequestInfo *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRApplicationConnectionRequestInfo)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v16.receiver = self;
    v16.super_class = MRApplicationConnectionRequestInfo;
    v5 = [(MRApplicationConnectionRequestInfo *)&v16 init];
    if (v5)
    {
      v6 = [MRDeviceInfo alloc];
      deviceInfo = [protobufCopy deviceInfo];
      v8 = [(MRDeviceInfo *)v6 initWithProtobuf:deviceInfo];
      deviceInfo = v5->_deviceInfo;
      v5->_deviceInfo = v8;

      v10 = [MRClient alloc];
      client = [protobufCopy client];
      v12 = [(MRClient *)v10 initWithProtobuf:client];
      client = v5->_client;
      v5->_client = v12;
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

- (_MRApplicationConnectionRequestInfoProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRApplicationConnectionRequestInfoProtobuf);
  deviceInfo = [(MRApplicationConnectionRequestInfo *)self deviceInfo];
  protobuf = [deviceInfo protobuf];
  [(_MRApplicationConnectionRequestInfoProtobuf *)v3 setDeviceInfo:protobuf];

  client = [(MRApplicationConnectionRequestInfo *)self client];
  protobuf2 = [client protobuf];
  [(_MRApplicationConnectionRequestInfoProtobuf *)v3 setClient:protobuf2];

  return v3;
}

- (NSData)protobufData
{
  protobuf = [(MRApplicationConnectionRequestInfo *)self protobuf];
  data = [protobuf data];

  return data;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobufData = [(MRApplicationConnectionRequestInfo *)self protobufData];
  [coderCopy encodeObject:protobufData forKey:@"protobufData"];
}

- (MRApplicationConnectionRequestInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(MRApplicationConnectionRequestInfo *)self initWithProtobufData:v5];
  return v6;
}

@end