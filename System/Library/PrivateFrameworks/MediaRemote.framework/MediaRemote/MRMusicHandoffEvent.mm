@interface MRMusicHandoffEvent
- (MRMusicHandoffEvent)initWithProtobuf:(id)protobuf;
- (MRMusicHandoffEvent)initWithProtobufData:(id)data;
- (MRMusicHandoffEvent)initWithType:(int64_t)type;
- (NSData)protobufData;
- (_MRMusicHandoffEventProtobuf)protobuf;
@end

@implementation MRMusicHandoffEvent

- (MRMusicHandoffEvent)initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = MRMusicHandoffEvent;
  result = [(MRMusicHandoffEvent *)&v5 init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (MRMusicHandoffEvent)initWithProtobufData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRMusicHandoffEventProtobuf alloc] initWithData:dataCopy];

    self = [(MRMusicHandoffEvent *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRMusicHandoffEvent)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v9.receiver = self;
  v9.super_class = MRMusicHandoffEvent;
  v5 = [(MRMusicHandoffEvent *)&v9 init];
  if (v5)
  {
    sessionIdentifier = [protobufCopy sessionIdentifier];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = sessionIdentifier;

    v5->_type = [protobufCopy type];
  }

  return v5;
}

- (NSData)protobufData
{
  protobuf = [(MRMusicHandoffEvent *)self protobuf];
  data = [protobuf data];

  return data;
}

- (_MRMusicHandoffEventProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRMusicHandoffEventProtobuf);
  [(_MRMusicHandoffEventProtobuf *)v3 setType:[(MRMusicHandoffEvent *)self type]];
  sessionIdentifier = [(MRMusicHandoffEvent *)self sessionIdentifier];
  [(_MRMusicHandoffEventProtobuf *)v3 setSessionIdentifier:sessionIdentifier];

  return v3;
}

@end