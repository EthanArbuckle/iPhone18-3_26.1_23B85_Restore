@interface MRMusicHandoffSession
+ (void)setHandoffSessionHandlerForPlayerPath:(id)path handler:(id)handler;
- (MRMusicHandoffSession)initWithCoder:(id)coder;
- (MRMusicHandoffSession)initWithIdentifier:(id)identifier sourcePlayerPath:(id)path destinationPlayerPath:(id)playerPath;
- (MRMusicHandoffSession)initWithProtobuf:(id)protobuf;
- (MRMusicHandoffSession)initWithProtobufData:(id)data;
- (NSData)protobufData;
- (_MRMusicHandoffSessionProtobuf)protobuf;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithEvent:(id)event;
@end

@implementation MRMusicHandoffSession

+ (void)setHandoffSessionHandlerForPlayerPath:(id)path handler:(id)handler
{
  handlerCopy = handler;
  pathCopy = path;
  v7 = +[MRClientApplicationConnectionManager sharedManager];
  [v7 registerHandoffSessionHandlerForPlayerPath:pathCopy handler:handlerCopy];
}

- (MRMusicHandoffSession)initWithIdentifier:(id)identifier sourcePlayerPath:(id)path destinationPlayerPath:(id)playerPath
{
  identifierCopy = identifier;
  pathCopy = path;
  playerPathCopy = playerPath;
  v25.receiver = self;
  v25.super_class = MRMusicHandoffSession;
  v11 = [(MRMusicHandoffSession *)&v25 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [pathCopy copy];
    sourcePlayerPath = v11->_sourcePlayerPath;
    v11->_sourcePlayerPath = v14;

    v16 = [playerPathCopy copy];
    destinationPlayerPath = v11->_destinationPlayerPath;
    v11->_destinationPlayerPath = v16;

    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.MediaRemote.MRMusicHandoffSession-%@", identifierCopy];
    uTF8String = [identifierCopy UTF8String];
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = MRMusicHandoffSessionGetQueue();
    v22 = dispatch_queue_create_with_target_V2(uTF8String, v20, v21);
    queue = v11->_queue;
    v11->_queue = v22;
  }

  return v11;
}

- (void)updateWithEvent:(id)event
{
  eventCopy = event;
  identifier = [(MRMusicHandoffSession *)self identifier];
  [eventCopy setSessionIdentifier:identifier];

  v7 = MRGetSharedService();
  queue = [(MRMusicHandoffSession *)self queue];
  [v7 sendMusicHandoffEvent:eventCopy queue:queue completion:&__block_literal_global_6_1];
}

- (MRMusicHandoffSession)initWithProtobufData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRMusicHandoffSessionProtobuf alloc] initWithData:dataCopy];

    self = [(MRMusicHandoffSession *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRMusicHandoffSession)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v18.receiver = self;
    v18.super_class = MRMusicHandoffSession;
    v5 = [(MRMusicHandoffSession *)&v18 init];
    if (v5)
    {
      identifier = [protobufCopy identifier];
      identifier = v5->_identifier;
      v5->_identifier = identifier;

      v8 = [MRPlayerPath alloc];
      sourcePlayerPath = [protobufCopy sourcePlayerPath];
      v10 = [(MRPlayerPath *)v8 initWithProtobuf:sourcePlayerPath];
      sourcePlayerPath = v5->_sourcePlayerPath;
      v5->_sourcePlayerPath = v10;

      v12 = [MRPlayerPath alloc];
      destinationPlayerPath = [protobufCopy destinationPlayerPath];
      v14 = [(MRPlayerPath *)v12 initWithProtobuf:destinationPlayerPath];
      destinationPlayerPath = v5->_destinationPlayerPath;
      v5->_destinationPlayerPath = v14;
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(MRMusicHandoffSession *)self identifier];
  sourcePlayerPath = [(MRMusicHandoffSession *)self sourcePlayerPath];
  destinationPlayerPath = [(MRMusicHandoffSession *)self destinationPlayerPath];
  v7 = [v3 stringWithFormat:@"<MRMusicHandoffSession<%@> - source: %@, dest: %@>", identifier, sourcePlayerPath, destinationPlayerPath];

  return v7;
}

- (_MRMusicHandoffSessionProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRMusicHandoffSessionProtobuf);
  identifier = [(MRMusicHandoffSession *)self identifier];
  [(_MRMusicHandoffSessionProtobuf *)v3 setIdentifier:identifier];

  sourcePlayerPath = [(MRMusicHandoffSession *)self sourcePlayerPath];
  protobuf = [sourcePlayerPath protobuf];
  [(_MRMusicHandoffSessionProtobuf *)v3 setSourcePlayerPath:protobuf];

  destinationPlayerPath = [(MRMusicHandoffSession *)self destinationPlayerPath];
  protobuf2 = [destinationPlayerPath protobuf];
  [(_MRMusicHandoffSessionProtobuf *)v3 setDestinationPlayerPath:protobuf2];

  return v3;
}

- (NSData)protobufData
{
  protobuf = [(MRMusicHandoffSession *)self protobuf];
  data = [protobuf data];

  return data;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobufData = [(MRMusicHandoffSession *)self protobufData];
  [coderCopy encodeObject:protobufData forKey:@"protobufData"];
}

- (MRMusicHandoffSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(MRMusicHandoffSession *)self initWithProtobufData:v5];
  return v6;
}

@end