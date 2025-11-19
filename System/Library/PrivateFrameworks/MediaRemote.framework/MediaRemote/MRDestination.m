@interface MRDestination
+ (id)localDestination;
+ (id)proactiveDestination;
+ (id)userSelectedDestination;
- (BOOL)isLocal;
- (MRClient)client;
- (MRDestination)initWithCoder:(id)a3;
- (MRDestination)initWithData:(id)a3;
- (MRDestination)initWithEndpoint:(id)a3;
- (MRDestination)initWithOrigin:(id)a3;
- (MRDestination)initWithOutputContextUID:(id)a3;
- (MRDestination)initWithOutputDeviceUID:(id)a3;
- (MRDestination)initWithPlayerPath:(id)a3;
- (MRDestination)initWithProtobuf:(id)a3;
- (MROrigin)origin;
- (MRPlayer)player;
- (NSData)data;
- (_MRDestinationProtobuf)protobuf;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)populatePlayerPathIfNeeded;
- (void)setClient:(id)a3;
- (void)setOrigin:(id)a3;
- (void)setPlayer:(id)a3;
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
    v7 = [(MRAVEndpoint *)endpoint uniqueIdentifier];
    [v4 addObject:v7];
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
  v3 = [(MRDestination *)self playerPath];

  if (!v3)
  {
    v4 = objc_alloc_init(MRPlayerPath);
    [(MRDestination *)self setPlayerPath:v4];
  }
}

- (MRPlayer)player
{
  v2 = [(MRDestination *)self playerPath];
  v3 = [v2 player];

  return v3;
}

- (MRClient)client
{
  v2 = [(MRDestination *)self playerPath];
  v3 = [v2 client];

  return v3;
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

- (MRDestination)initWithPlayerPath:(id)a3
{
  v4 = a3;
  v5 = [(MRDestination *)self _init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 copy];
    }

    else
    {
      v6 = objc_alloc_init(MRPlayerPath);
    }

    playerPath = v5->_playerPath;
    v5->_playerPath = v6;
  }

  return v5;
}

- (MRDestination)initWithOrigin:(id)a3
{
  v4 = a3;
  v5 = [(MRDestination *)self _init];
  if (v5)
  {
    v6 = [MRPlayerPath alloc];
    v7 = [v4 copy];
    v8 = [(MRPlayerPath *)v6 initWithOrigin:v7 client:0 player:0];
    playerPath = v5->_playerPath;
    v5->_playerPath = v8;
  }

  return v5;
}

- (MRDestination)initWithEndpoint:(id)a3
{
  v5 = a3;
  v6 = [(MRDestination *)self _init];
  v7 = v6;
  if (v6)
  {
    if (!v5)
    {
      v14 = +[MRDestination localDestination];
      goto LABEL_7;
    }

    objc_storeStrong(v6 + 3, a3);
    v8 = [v5 origin];

    if (v8)
    {
      v9 = [MRPlayerPath alloc];
      v10 = [v5 origin];
      v11 = [v10 copy];
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

- (MRDestination)initWithOutputDeviceUID:(id)a3
{
  v4 = a3;
  v5 = [(MRDestination *)self _init];
  if (v5)
  {
    if (!v4)
    {
      v8 = +[MRDestination localDestination];
      goto LABEL_6;
    }

    v6 = [v4 copy];
    v7 = v5[1];
    v5[1] = v6;
  }

  v8 = v5;
LABEL_6:
  v9 = v8;

  return v9;
}

- (MRDestination)initWithOutputContextUID:(id)a3
{
  v5 = a3;
  v6 = [(MRDestination *)self _init];
  if (v6)
  {
    if (!v5)
    {
      [(MRDestination *)a2 initWithOutputContextUID:v6];
    }

    v7 = [v5 copy];
    outputContextUID = v6->_outputContextUID;
    v6->_outputContextUID = v7;
  }

  return v6;
}

- (MRDestination)initWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRDestinationProtobuf alloc] initWithData:v4];

    self = [(MRDestination *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MRDestination)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MRDestination *)self _init];
    if (v5)
    {
      v6 = [v4 outputDeviceUID];
      v7 = v5[1];
      v5[1] = v6;

      v8 = [MRPlayerPath alloc];
      v9 = [v4 playerPath];
      v10 = [(MRPlayerPath *)v8 initWithProtobuf:v9];
      v11 = v5[4];
      v5[4] = v10;

      v12 = [v4 endpoint];
      if (v12)
      {
        v13 = [MRAVDistantEndpoint alloc];
        v14 = [v4 endpoint];
        v15 = [(MRAVDistantEndpoint *)v13 initWithDescriptor:v14];
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

      v18 = v5[3];
      v5[3] = v17;

      v19 = [v4 outputContextUID];
      v20 = v5[2];
      v5[2] = v19;
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

- (MROrigin)origin
{
  v2 = [(MRDestination *)self playerPath];
  v3 = [v2 origin];

  return v3;
}

- (void)setOrigin:(id)a3
{
  v6 = a3;
  if (v6 || ([(MRDestination *)self playerPath], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    [(MRDestination *)self populatePlayerPathIfNeeded];
    v5 = [(MRDestination *)self playerPath];
    [v5 setOrigin:v6];
  }
}

- (void)setClient:(id)a3
{
  v6 = a3;
  if (v6 || ([(MRDestination *)self playerPath], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    [(MRDestination *)self populatePlayerPathIfNeeded];
    v5 = [(MRDestination *)self playerPath];
    [v5 setClient:v6];
  }
}

- (void)setPlayer:(id)a3
{
  v6 = a3;
  if (v6 || ([(MRDestination *)self playerPath], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    [(MRDestination *)self populatePlayerPathIfNeeded];
    v5 = [(MRDestination *)self playerPath];
    [v5 setPlayer:v6];
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
    v3 = 1;
  }

  else
  {
    v6 = [(MRPlayerPath *)self->_playerPath origin];
    v3 = [v6 isLocal];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_alloc(objc_opt_class()) _init];
  objc_storeStrong((v5 + 24), self->_endpoint);
  v6 = [(NSString *)self->_outputContextUID copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_outputDeviceUID copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(MRPlayerPath *)self->_playerPath copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  return v5;
}

- (NSData)data
{
  v2 = [(MRDestination *)self protobuf];
  v3 = [v2 data];

  return v3;
}

- (_MRDestinationProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRDestinationProtobuf);
  [(_MRDestinationProtobuf *)v3 setOutputDeviceUID:self->_outputDeviceUID];
  v4 = [(MRAVEndpoint *)self->_endpoint descriptor];
  [(_MRDestinationProtobuf *)v3 setEndpoint:v4];

  v5 = [(MRPlayerPath *)self->_playerPath protobuf];
  [(_MRDestinationProtobuf *)v3 setPlayerPath:v5];

  [(_MRDestinationProtobuf *)v3 setOutputContextUID:self->_outputContextUID];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MRDestination *)self protobuf];
  [v4 encodeObject:v5 forKey:@"protobuf"];
}

- (MRDestination)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MRDestination alloc];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];

  v7 = [(MRDestination *)v5 initWithProtobuf:v6];
  return v7;
}

- (void)initWithOutputContextUID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRDestination.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"outputContextUID"}];
}

@end