@interface MRSendCommandHandlerEvent
- (MRSendCommandHandlerEvent)initWithCommand:(unsigned int)a3 options:(id)a4;
- (MRSendCommandHandlerEvent)initWithProtobuf:(id)a3;
- (NSString)commandDescription;
- (_MRSendCommandMessageProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MRSendCommandHandlerEvent

- (MRSendCommandHandlerEvent)initWithCommand:(unsigned int)a3 options:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MRSendCommandHandlerEvent;
  v8 = [(MRSendCommandHandlerEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_command = a3;
    objc_storeStrong(&v8->_options, a4);
  }

  return v9;
}

- (MRSendCommandHandlerEvent)initWithProtobuf:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = MRMediaRemoteCommandFromProtobuf([v4 command]);
    v6 = [v4 options];

    v7 = MRMediaRemoteCommandOptionsFromProtobuf(v6);
    self = [(MRSendCommandHandlerEvent *)self initWithCommand:v5 options:v7];

    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)commandDescription
{
  v2 = MRMediaRemoteCopyCommandDescription([(MRSendCommandHandlerEvent *)self command]);

  return v2;
}

- (_MRSendCommandMessageProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRSendCommandMessageProtobuf);
  [(_MRSendCommandMessageProtobuf *)v3 setCommand:MRMediaRemoteCommandToProtobuf([(MRSendCommandHandlerEvent *)self command])];
  v4 = [(MRSendCommandHandlerEvent *)self options];
  v5 = MRMediaRemoteCommandOptionsToProtobuf(v4);
  [(_MRSendCommandMessageProtobuf *)v3 setOptions:v5];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(MRSendCommandHandlerEvent *)self command];
  v7 = [(MRSendCommandHandlerEvent *)self options];
  v8 = [v7 copyWithZone:a3];
  v9 = [v5 initWithCommand:v6 options:v8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MRSendCommandHandlerEvent *)self commandDescription];
  v6 = [(MRSendCommandHandlerEvent *)self options];
  v7 = MRCreateIndentedDebugDescriptionFromObject(v6);
  v8 = [v3 stringWithFormat:@"<%@ : %p {\n   command= %@\n   options= %@\n}>\n", v4, self, v5, v7];

  return v8;
}

@end