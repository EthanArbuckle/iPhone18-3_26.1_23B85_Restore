@interface MRSendCommandHandlerEvent
- (MRSendCommandHandlerEvent)initWithCommand:(unsigned int)command options:(id)options;
- (MRSendCommandHandlerEvent)initWithProtobuf:(id)protobuf;
- (NSString)commandDescription;
- (_MRSendCommandMessageProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MRSendCommandHandlerEvent

- (MRSendCommandHandlerEvent)initWithCommand:(unsigned int)command options:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = MRSendCommandHandlerEvent;
  v8 = [(MRSendCommandHandlerEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_command = command;
    objc_storeStrong(&v8->_options, options);
  }

  return v9;
}

- (MRSendCommandHandlerEvent)initWithProtobuf:(id)protobuf
{
  if (protobuf)
  {
    protobufCopy = protobuf;
    v5 = MRMediaRemoteCommandFromProtobuf([protobufCopy command]);
    options = [protobufCopy options];

    v7 = MRMediaRemoteCommandOptionsFromProtobuf(options);
    self = [(MRSendCommandHandlerEvent *)self initWithCommand:v5 options:v7];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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
  options = [(MRSendCommandHandlerEvent *)self options];
  v5 = MRMediaRemoteCommandOptionsToProtobuf(options);
  [(_MRSendCommandMessageProtobuf *)v3 setOptions:v5];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  command = [(MRSendCommandHandlerEvent *)self command];
  options = [(MRSendCommandHandlerEvent *)self options];
  v8 = [options copyWithZone:zone];
  v9 = [v5 initWithCommand:command options:v8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  commandDescription = [(MRSendCommandHandlerEvent *)self commandDescription];
  options = [(MRSendCommandHandlerEvent *)self options];
  v7 = MRCreateIndentedDebugDescriptionFromObject(options);
  v8 = [v3 stringWithFormat:@"<%@ : %p {\n   command= %@\n   options= %@\n}>\n", v4, self, commandDescription, v7];

  return v8;
}

@end