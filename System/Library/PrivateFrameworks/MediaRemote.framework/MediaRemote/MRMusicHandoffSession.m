@interface MRMusicHandoffSession
+ (void)setHandoffSessionHandlerForPlayerPath:(id)a3 handler:(id)a4;
- (MRMusicHandoffSession)initWithCoder:(id)a3;
- (MRMusicHandoffSession)initWithIdentifier:(id)a3 sourcePlayerPath:(id)a4 destinationPlayerPath:(id)a5;
- (MRMusicHandoffSession)initWithProtobuf:(id)a3;
- (MRMusicHandoffSession)initWithProtobufData:(id)a3;
- (NSData)protobufData;
- (_MRMusicHandoffSessionProtobuf)protobuf;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithEvent:(id)a3;
@end

@implementation MRMusicHandoffSession

+ (void)setHandoffSessionHandlerForPlayerPath:(id)a3 handler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MRClientApplicationConnectionManager sharedManager];
  [v7 registerHandoffSessionHandlerForPlayerPath:v6 handler:v5];
}

- (MRMusicHandoffSession)initWithIdentifier:(id)a3 sourcePlayerPath:(id)a4 destinationPlayerPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = MRMusicHandoffSession;
  v11 = [(MRMusicHandoffSession *)&v25 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v9 copy];
    sourcePlayerPath = v11->_sourcePlayerPath;
    v11->_sourcePlayerPath = v14;

    v16 = [v10 copy];
    destinationPlayerPath = v11->_destinationPlayerPath;
    v11->_destinationPlayerPath = v16;

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.MediaRemote.MRMusicHandoffSession-%@", v8];
    v19 = [v18 UTF8String];
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = MRMusicHandoffSessionGetQueue();
    v22 = dispatch_queue_create_with_target_V2(v19, v20, v21);
    queue = v11->_queue;
    v11->_queue = v22;
  }

  return v11;
}

- (void)updateWithEvent:(id)a3
{
  v4 = a3;
  v5 = [(MRMusicHandoffSession *)self identifier];
  [v4 setSessionIdentifier:v5];

  v7 = MRGetSharedService();
  v6 = [(MRMusicHandoffSession *)self queue];
  [v7 sendMusicHandoffEvent:v4 queue:v6 completion:&__block_literal_global_6_1];
}

- (MRMusicHandoffSession)initWithProtobufData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRMusicHandoffSessionProtobuf alloc] initWithData:v4];

    self = [(MRMusicHandoffSession *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MRMusicHandoffSession)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v18.receiver = self;
    v18.super_class = MRMusicHandoffSession;
    v5 = [(MRMusicHandoffSession *)&v18 init];
    if (v5)
    {
      v6 = [v4 identifier];
      identifier = v5->_identifier;
      v5->_identifier = v6;

      v8 = [MRPlayerPath alloc];
      v9 = [v4 sourcePlayerPath];
      v10 = [(MRPlayerPath *)v8 initWithProtobuf:v9];
      sourcePlayerPath = v5->_sourcePlayerPath;
      v5->_sourcePlayerPath = v10;

      v12 = [MRPlayerPath alloc];
      v13 = [v4 destinationPlayerPath];
      v14 = [(MRPlayerPath *)v12 initWithProtobuf:v13];
      destinationPlayerPath = v5->_destinationPlayerPath;
      v5->_destinationPlayerPath = v14;
    }

    self = v5;
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MRMusicHandoffSession *)self identifier];
  v5 = [(MRMusicHandoffSession *)self sourcePlayerPath];
  v6 = [(MRMusicHandoffSession *)self destinationPlayerPath];
  v7 = [v3 stringWithFormat:@"<MRMusicHandoffSession<%@> - source: %@, dest: %@>", v4, v5, v6];

  return v7;
}

- (_MRMusicHandoffSessionProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRMusicHandoffSessionProtobuf);
  v4 = [(MRMusicHandoffSession *)self identifier];
  [(_MRMusicHandoffSessionProtobuf *)v3 setIdentifier:v4];

  v5 = [(MRMusicHandoffSession *)self sourcePlayerPath];
  v6 = [v5 protobuf];
  [(_MRMusicHandoffSessionProtobuf *)v3 setSourcePlayerPath:v6];

  v7 = [(MRMusicHandoffSession *)self destinationPlayerPath];
  v8 = [v7 protobuf];
  [(_MRMusicHandoffSessionProtobuf *)v3 setDestinationPlayerPath:v8];

  return v3;
}

- (NSData)protobufData
{
  v2 = [(MRMusicHandoffSession *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MRMusicHandoffSession *)self protobufData];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (MRMusicHandoffSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(MRMusicHandoffSession *)self initWithProtobufData:v5];
  return v6;
}

@end