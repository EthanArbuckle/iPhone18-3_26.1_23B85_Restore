@interface MRDestination
+ (id)localDestination;
+ (id)proactiveDestination;
+ (id)userSelectedDestination;
- (BOOL)isLocal;
- (MRClient)client;
- (MRDestination)initWithCoder:(id)coder;
- (MRDestination)initWithData:(id)data;
- (MRDestination)initWithEndpoint:(id)endpoint;
- (MRDestination)initWithOrigin:(id)origin;
- (MRDestination)initWithOutputContextUID:(id)d;
- (MRDestination)initWithOutputDeviceUID:(id)d;
- (MRDestination)initWithPlayerPath:(id)path;
- (MRDestination)initWithProtobuf:(id)protobuf;
- (MROrigin)origin;
- (MRPlayer)player;
- (NSData)data;
- (_MRDestinationProtobuf)protobuf;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)populatePlayerPathIfNeeded;
- (void)setClient:(id)client;
- (void)setOrigin:(id)origin;
- (void)setPlayer:(id)player;
@end

@implementation MRDestination

+ (id)localDestination
{
  v2 = [MRDestination alloc];
  v3 = +[MROrigin localOrigin];
  v4 = [(MRDestination *)v2 initWithOrigin:v3];

  return v4;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MRDestination;
  return [(MRDestination *)&v3 init];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = v3;
  if (self->_outputDeviceUID)
  {
    [v3 addObject:?];
  }

  if (self->_outputContextUID)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ctx=%@", self->_outputContextUID];
    [v4 addObject:v5];
  }

  endpoint = self->_endpoint;
  if (endpoint)
  {
    uniqueIdentifier = [(MRAVEndpoint *)endpoint uniqueIdentifier];
    [v4 addObject:uniqueIdentifier];
  }

  if (self->_playerPath)
  {
    [v4 addObject:?];
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = [v4 componentsJoinedByString:@"/"];
  v11 = [v8 stringWithFormat:@"<%@: %@>", v9, v10];

  return v11;
}

- (void)populatePlayerPathIfNeeded
{
  playerPath = [(MRDestination *)self playerPath];

  if (!playerPath)
  {
    v4 = objc_alloc_init(MRPlayerPath);
    [(MRDestination *)self setPlayerPath:v4];
  }
}

- (MRPlayer)player
{
  playerPath = [(MRDestination *)self playerPath];
  player = [playerPath player];

  return player;
}

- (MRClient)client
{
  playerPath = [(MRDestination *)self playerPath];
  client = [playerPath client];

  return client;
}

+ (id)proactiveDestination
{
  v2 = [[MRDestination alloc] initWithOutputDeviceUID:@"proactiveEndpoint"];

  return v2;
}

+ (id)userSelectedDestination
{
  v2 = [[MRDestination alloc] initWithOutputDeviceUID:@"userSelectedEndpoint"];

  return v2;
}

- (MRDestination)initWithPlayerPath:(id)path
{
  pathCopy = path;
  _init = [(MRDestination *)self _init];
  if (_init)
  {
    if (pathCopy)
    {
      v6 = [pathCopy copy];
    }

    else
    {
      v6 = objc_alloc_init(MRPlayerPath);
    }

    playerPath = _init->_playerPath;
    _init->_playerPath = v6;
  }

  return _init;
}

- (MRDestination)initWithOrigin:(id)origin
{
  originCopy = origin;
  _init = [(MRDestination *)self _init];
  if (_init)
  {
    v6 = [MRPlayerPath alloc];
    v7 = [originCopy copy];
    v8 = [(MRPlayerPath *)v6 initWithOrigin:v7 client:0 player:0];
    playerPath = _init->_playerPath;
    _init->_playerPath = v8;
  }

  return _init;
}

- (MRDestination)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  _init = [(MRDestination *)self _init];
  v7 = _init;
  if (_init)
  {
    if (!endpointCopy)
    {
      v14 = +[MRDestination localDestination];
      goto LABEL_7;
    }

    objc_storeStrong(_init + 3, endpoint);
    origin = [endpointCopy origin];

    if (origin)
    {
      v9 = [MRPlayerPath alloc];
      origin2 = [endpointCopy origin];
      v11 = [origin2 copy];
      v12 = [(MRPlayerPath *)v9 initWithOrigin:v11 client:0 player:0];
      v13 = v7[4];
      v7[4] = v12;
    }
  }

  v14 = v7;
LABEL_7:
  v15 = v14;

  return v15;
}

- (MRDestination)initWithOutputDeviceUID:(id)d
{
  dCopy = d;
  _init = [(MRDestination *)self _init];
  if (_init)
  {
    if (!dCopy)
    {
      v8 = +[MRDestination localDestination];
      goto LABEL_6;
    }

    v6 = [dCopy copy];
    v7 = _init[1];
    _init[1] = v6;
  }

  v8 = _init;
LABEL_6:
  v9 = v8;

  return v9;
}

- (MRDestination)initWithOutputContextUID:(id)d
{
  dCopy = d;
  _init = [(MRDestination *)self _init];
  if (_init)
  {
    if (!dCopy)
    {
      [(MRDestination *)a2 initWithOutputContextUID:_init];
    }

    v7 = [dCopy copy];
    outputContextUID = _init->_outputContextUID;
    _init->_outputContextUID = v7;
  }

  return _init;
}

- (MRDestination)initWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRDestinationProtobuf alloc] initWithData:dataCopy];

    self = [(MRDestination *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRDestination)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    _init = [(MRDestination *)self _init];
    if (_init)
    {
      outputDeviceUID = [protobufCopy outputDeviceUID];
      v7 = _init[1];
      _init[1] = outputDeviceUID;

      v8 = [MRPlayerPath alloc];
      playerPath = [protobufCopy playerPath];
      v10 = [(MRPlayerPath *)v8 initWithProtobuf:playerPath];
      v11 = _init[4];
      _init[4] = v10;

      endpoint = [protobufCopy endpoint];
      if (endpoint)
      {
        v13 = [MRAVDistantEndpoint alloc];
        endpoint2 = [protobufCopy endpoint];
        v15 = [(MRAVDistantEndpoint *)v13 initWithDescriptor:endpoint2];
      }

      else
      {
        v15 = 0;
      }

      if ([(MRAVDistantEndpoint *)v15 connectionType]== 1)
      {
        v17 = +[MRAVLocalEndpoint sharedLocalEndpoint];
      }

      else
      {
        v17 = v15;
      }

      v18 = _init[3];
      _init[3] = v17;

      outputContextUID = [protobufCopy outputContextUID];
      v20 = _init[2];
      _init[2] = outputContextUID;
    }

    self = _init;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MROrigin)origin
{
  playerPath = [(MRDestination *)self playerPath];
  origin = [playerPath origin];

  return origin;
}

- (void)setOrigin:(id)origin
{
  originCopy = origin;
  if (originCopy || ([(MRDestination *)self playerPath], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    [(MRDestination *)self populatePlayerPathIfNeeded];
    playerPath = [(MRDestination *)self playerPath];
    [playerPath setOrigin:originCopy];
  }
}

- (void)setClient:(id)client
{
  clientCopy = client;
  if (clientCopy || ([(MRDestination *)self playerPath], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    [(MRDestination *)self populatePlayerPathIfNeeded];
    playerPath = [(MRDestination *)self playerPath];
    [playerPath setClient:clientCopy];
  }
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  if (playerCopy || ([(MRDestination *)self playerPath], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    [(MRDestination *)self populatePlayerPathIfNeeded];
    playerPath = [(MRDestination *)self playerPath];
    [playerPath setPlayer:playerCopy];
  }
}

- (BOOL)isLocal
{
  if ([(MRAVEndpoint *)self->_endpoint isEqual:MRAVEndpointGetLocalEndpoint(0)])
  {
    return 1;
  }

  outputDeviceUID = self->_outputDeviceUID;
  v5 = +[MRAVOutputDevice localDeviceUID];
  if (([(NSString *)outputDeviceUID isEqual:v5]& 1) != 0)
  {
    isLocal = 1;
  }

  else
  {
    origin = [(MRPlayerPath *)self->_playerPath origin];
    isLocal = [origin isLocal];
  }

  return isLocal;
}

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [objc_alloc(objc_opt_class()) _init];
  objc_storeStrong((_init + 24), self->_endpoint);
  v6 = [(NSString *)self->_outputContextUID copyWithZone:zone];
  v7 = *(_init + 16);
  *(_init + 16) = v6;

  v8 = [(NSString *)self->_outputDeviceUID copyWithZone:zone];
  v9 = *(_init + 8);
  *(_init + 8) = v8;

  v10 = [(MRPlayerPath *)self->_playerPath copyWithZone:zone];
  v11 = *(_init + 32);
  *(_init + 32) = v10;

  return _init;
}

- (NSData)data
{
  protobuf = [(MRDestination *)self protobuf];
  data = [protobuf data];

  return data;
}

- (_MRDestinationProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRDestinationProtobuf);
  [(_MRDestinationProtobuf *)v3 setOutputDeviceUID:self->_outputDeviceUID];
  descriptor = [(MRAVEndpoint *)self->_endpoint descriptor];
  [(_MRDestinationProtobuf *)v3 setEndpoint:descriptor];

  protobuf = [(MRPlayerPath *)self->_playerPath protobuf];
  [(_MRDestinationProtobuf *)v3 setPlayerPath:protobuf];

  [(_MRDestinationProtobuf *)v3 setOutputContextUID:self->_outputContextUID];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobuf = [(MRDestination *)self protobuf];
  [coderCopy encodeObject:protobuf forKey:@"protobuf"];
}

- (MRDestination)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [MRDestination alloc];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];

  v7 = [(MRDestination *)v5 initWithProtobuf:v6];
  return v7;
}

- (void)initWithOutputContextUID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRDestination.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"outputContextUID"}];
}

@end