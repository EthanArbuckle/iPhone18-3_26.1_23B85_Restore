@interface MRAVRoutingDiscoverySessionConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isLocal;
- (MRAVRoutingDiscoverySessionConfiguration)initWithCoder:(id)a3;
- (MRAVRoutingDiscoverySessionConfiguration)initWithEndpointFeatures:(unsigned int)a3;
- (MRAVRoutingDiscoverySessionConfiguration)initWithProtobuf:(id)a3;
- (_MRDiscoverySessionConfigurationProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRAVRoutingDiscoverySessionConfiguration

- (BOOL)isLocal
{
  v3 = [(MRAVRoutingDiscoverySessionConfiguration *)self outputDeviceUID];

  if (!v3)
  {
    return 1;
  }

  v4 = [(MRAVRoutingDiscoverySessionConfiguration *)self outputDeviceUID];
  v5 = +[MRAVOutputDevice localDeviceUID];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    return 1;
  }

  v8 = +[MROrigin localOrigin];
  v9 = [MRDeviceInfoRequest deviceInfoForOrigin:v8];

  v10 = [(MRAVRoutingDiscoverySessionConfiguration *)self outputDeviceUID];
  v11 = [v9 clusterID];
  v12 = [v10 isEqualToString:v11];

  if (v12 & 1) != 0 || (-[MRAVRoutingDiscoverySessionConfiguration outputDeviceUID](self, "outputDeviceUID"), v13 = objc_claimAutoreleasedReturnValue(), [v9 deviceUID], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToString:", v14), v14, v13, (v15))
  {
    v7 = 1;
  }

  else
  {
    v16 = [(MRAVRoutingDiscoverySessionConfiguration *)self outputDeviceUID];
    v17 = [v9 identifier];
    v7 = [v16 isEqualToString:v17];
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_routingContextUID hash];
  v4 = [(NSString *)self->_outputDeviceUID hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_features];
  v6 = v4 ^ [v5 hash];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_targetAudioSessionID];
  v8 = v6 ^ [v7 hash];

  return v8 ^ (200 * self->_alwaysAllowUpdates);
}

- (_MRDiscoverySessionConfigurationProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRDiscoverySessionConfigurationProtobuf);
  [(_MRDiscoverySessionConfigurationProtobuf *)v3 setFeatures:self->_features];
  v4 = [(NSString *)self->_outputDeviceUID copy];
  [(_MRDiscoverySessionConfigurationProtobuf *)v3 setOutputDeviceUID:v4];

  v5 = [(NSString *)self->_routingContextUID copy];
  [(_MRDiscoverySessionConfigurationProtobuf *)v3 setRoutingContextUID:v5];

  if (self->_alwaysAllowUpdates)
  {
    [(_MRDiscoverySessionConfigurationProtobuf *)v3 setAlwaysAllowUpdates:1];
  }

  if (self->_targetAudioSessionID)
  {
    [(_MRDiscoverySessionConfigurationProtobuf *)v3 setTargetSessionID:?];
  }

  if (self->_cachedDiscoveryEnabled)
  {
    [(_MRDiscoverySessionConfigurationProtobuf *)v3 setCachedDiscoveryEnabled:1];
  }

  return v3;
}

- (MRAVRoutingDiscoverySessionConfiguration)initWithEndpointFeatures:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = MRAVRoutingDiscoverySessionConfiguration;
  result = [(MRAVRoutingDiscoverySessionConfiguration *)&v5 init];
  if (result)
  {
    result->_features = a3;
  }

  return result;
}

- (MRAVRoutingDiscoverySessionConfiguration)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v14.receiver = self;
    v14.super_class = MRAVRoutingDiscoverySessionConfiguration;
    v5 = [(MRAVRoutingDiscoverySessionConfiguration *)&v14 init];
    if (v5)
    {
      v5->_features = [v4 features];
      v6 = [v4 outputDeviceUID];
      v7 = [v6 copy];
      outputDeviceUID = v5->_outputDeviceUID;
      v5->_outputDeviceUID = v7;

      v9 = [v4 routingContextUID];
      v10 = [v9 copy];
      routingContextUID = v5->_routingContextUID;
      v5->_routingContextUID = v10;

      v5->_alwaysAllowUpdates = [v4 alwaysAllowUpdates];
      v5->_targetAudioSessionID = [v4 targetSessionID];
      v5->_cachedDiscoveryEnabled = [v4 cachedDiscoveryEnabled];
    }

    self = v5;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v7 features] != self->_features || (v8 = objc_msgSend(v7, "alwaysAllowUpdates"), v8 != -[MRAVRoutingDiscoverySessionConfiguration alwaysAllowUpdates](self, "alwaysAllowUpdates")) || (v9 = objc_msgSend(v7, "targetAudioSessionID"), v9 != -[MRAVRoutingDiscoverySessionConfiguration targetAudioSessionID](self, "targetAudioSessionID")))
  {
    v12 = 0;
    goto LABEL_10;
  }

  v10 = [v7 routingContextUID];
  if (v10 || ([(MRAVRoutingDiscoverySessionConfiguration *)self routingContextUID], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [v7 routingContextUID];
    v4 = [(MRAVRoutingDiscoverySessionConfiguration *)self routingContextUID];
    if (![v3 isEqualToString:v4])
    {
      v12 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v11 = 1;
  }

  else
  {
    v17 = 0;
    v11 = 0;
  }

  v14 = [v7 outputDeviceUID];
  if (!v14)
  {
    v5 = [(MRAVRoutingDiscoverySessionConfiguration *)self outputDeviceUID];
    if (!v5)
    {
      v12 = 1;
LABEL_22:

      if ((v11 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  v15 = [v7 outputDeviceUID];
  v16 = [(MRAVRoutingDiscoverySessionConfiguration *)self outputDeviceUID];
  v12 = [v15 isEqualToString:v16];

  if (!v14)
  {
    goto LABEL_22;
  }

  if (v11)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (!v10)
  {
  }

LABEL_10:
  return v12;
}

- (id)description
{
  v2 = [(MRAVRoutingDiscoverySessionConfiguration *)self protobuf];
  v3 = [v2 description];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[9] = self->_alwaysAllowUpdates;
  *(v4 + 3) = self->_features;
  *(v4 + 4) = self->_targetAudioSessionID;
  v5 = [(NSString *)self->_routingContextUID copy];
  v6 = *(v4 + 3);
  *(v4 + 3) = v5;

  v7 = [(NSString *)self->_outputDeviceUID copy];
  v8 = *(v4 + 4);
  *(v4 + 4) = v7;

  v4[10] = self->_cachedDiscoveryEnabled;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MRAVRoutingDiscoverySessionConfiguration *)self protobuf];
  [v4 encodeObject:v5 forKey:@"protobuf"];
}

- (MRAVRoutingDiscoverySessionConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];

  v6 = [(MRAVRoutingDiscoverySessionConfiguration *)self initWithProtobuf:v5];
  return v6;
}

@end