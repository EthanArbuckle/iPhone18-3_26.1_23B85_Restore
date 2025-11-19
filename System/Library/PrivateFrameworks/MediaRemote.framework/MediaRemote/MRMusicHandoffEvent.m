@interface MRMusicHandoffEvent
- (MRMusicHandoffEvent)initWithProtobuf:(id)a3;
- (MRMusicHandoffEvent)initWithProtobufData:(id)a3;
- (MRMusicHandoffEvent)initWithType:(int64_t)a3;
- (NSData)protobufData;
- (_MRMusicHandoffEventProtobuf)protobuf;
@end

@implementation MRMusicHandoffEvent

- (MRMusicHandoffEvent)initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MRMusicHandoffEvent;
  result = [(MRMusicHandoffEvent *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (MRMusicHandoffEvent)initWithProtobufData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRMusicHandoffEventProtobuf alloc] initWithData:v4];

    self = [(MRMusicHandoffEvent *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MRMusicHandoffEvent)initWithProtobuf:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MRMusicHandoffEvent;
  v5 = [(MRMusicHandoffEvent *)&v9 init];
  if (v5)
  {
    v6 = [v4 sessionIdentifier];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v5->_type = [v4 type];
  }

  return v5;
}

- (NSData)protobufData
{
  v2 = [(MRMusicHandoffEvent *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (_MRMusicHandoffEventProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRMusicHandoffEventProtobuf);
  [(_MRMusicHandoffEventProtobuf *)v3 setType:[(MRMusicHandoffEvent *)self type]];
  v4 = [(MRMusicHandoffEvent *)self sessionIdentifier];
  [(_MRMusicHandoffEventProtobuf *)v3 setSessionIdentifier:v4];

  return v3;
}

@end