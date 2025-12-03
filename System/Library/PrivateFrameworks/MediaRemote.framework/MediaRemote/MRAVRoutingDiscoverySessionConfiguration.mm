@interface MRAVRoutingDiscoverySessionConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isLocal;
- (MRAVRoutingDiscoverySessionConfiguration)initWithCoder:(id)coder;
- (MRAVRoutingDiscoverySessionConfiguration)initWithEndpointFeatures:(unsigned int)features;
- (MRAVRoutingDiscoverySessionConfiguration)initWithProtobuf:(id)protobuf;
- (_MRDiscoverySessionConfigurationProtobuf)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRAVRoutingDiscoverySessionConfiguration

- (BOOL)isLocal
{
  outputDeviceUID = [(MRAVRoutingDiscoverySessionConfiguration *)self outputDeviceUID];

  if (!outputDeviceUID)
  {
    return 1;
  }

  outputDeviceUID2 = [(MRAVRoutingDiscoverySessionConfiguration *)self outputDeviceUID];
  v5 = +[MRAVOutputDevice localDeviceUID];
  v6 = [outputDeviceUID2 isEqualToString:v5];

  if (v6)
  {
    return 1;
  }

  v8 = +[MROrigin localOrigin];
  v9 = [MRDeviceInfoRequest deviceInfoForOrigin:v8];

  outputDeviceUID3 = [(MRAVRoutingDiscoverySessionConfiguration *)self outputDeviceUID];
  clusterID = [v9 clusterID];
  v12 = [outputDeviceUID3 isEqualToString:clusterID];

  if (v12 & 1) != 0 || (-[MRAVRoutingDiscoverySessionConfiguration outputDeviceUID](self, "outputDeviceUID"), v13 = objc_claimAutoreleasedReturnValue(), [v9 deviceUID], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToString:", v14), v14, v13, (v15))
  {
    v7 = 1;
  }

  else
  {
    outputDeviceUID4 = [(MRAVRoutingDiscoverySessionConfiguration *)self outputDeviceUID];
    identifier = [v9 identifier];
    v7 = [outputDeviceUID4 isEqualToString:identifier];
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

- (MRAVRoutingDiscoverySessionConfiguration)initWithEndpointFeatures:(unsigned int)features
{
  v5.receiver = self;
  v5.super_class = MRAVRoutingDiscoverySessionConfiguration;
  result = [(MRAVRoutingDiscoverySessionConfiguration *)&v5 init];
  if (result)
  {
    result->_features = features;
  }

  return result;
}

- (MRAVRoutingDiscoverySessionConfiguration)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v14.receiver = self;
    v14.super_class = MRAVRoutingDiscoverySessionConfiguration;
    v5 = [(MRAVRoutingDiscoverySessionConfiguration *)&v14 init];
    if (v5)
    {
      v5->_features = [protobufCopy features];
      outputDeviceUID = [protobufCopy outputDeviceUID];
      v7 = [outputDeviceUID copy];
      outputDeviceUID = v5->_outputDeviceUID;
      v5->_outputDeviceUID = v7;

      routingContextUID = [protobufCopy routingContextUID];
      v10 = [routingContextUID copy];
      routingContextUID = v5->_routingContextUID;
      v5->_routingContextUID = v10;

      v5->_alwaysAllowUpdates = [protobufCopy alwaysAllowUpdates];
      v5->_targetAudioSessionID = [protobufCopy targetSessionID];
      v5->_cachedDiscoveryEnabled = [protobufCopy cachedDiscoveryEnabled];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [equalCopy features] != self->_features || (v8 = objc_msgSend(equalCopy, "alwaysAllowUpdates"), v8 != -[MRAVRoutingDiscoverySessionConfiguration alwaysAllowUpdates](self, "alwaysAllowUpdates")) || (v9 = objc_msgSend(equalCopy, "targetAudioSessionID"), v9 != -[MRAVRoutingDiscoverySessionConfiguration targetAudioSessionID](self, "targetAudioSessionID")))
  {
    v12 = 0;
    goto LABEL_10;
  }

  routingContextUID = [equalCopy routingContextUID];
  if (routingContextUID || ([(MRAVRoutingDiscoverySessionConfiguration *)self routingContextUID], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    routingContextUID2 = [equalCopy routingContextUID];
    routingContextUID3 = [(MRAVRoutingDiscoverySessionConfiguration *)self routingContextUID];
    if (![routingContextUID2 isEqualToString:routingContextUID3])
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

  outputDeviceUID = [equalCopy outputDeviceUID];
  if (!outputDeviceUID)
  {
    outputDeviceUID2 = [(MRAVRoutingDiscoverySessionConfiguration *)self outputDeviceUID];
    if (!outputDeviceUID2)
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

  outputDeviceUID3 = [equalCopy outputDeviceUID];
  outputDeviceUID4 = [(MRAVRoutingDiscoverySessionConfiguration *)self outputDeviceUID];
  v12 = [outputDeviceUID3 isEqualToString:outputDeviceUID4];

  if (!outputDeviceUID)
  {
    goto LABEL_22;
  }

  if (v11)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (!routingContextUID)
  {
  }

LABEL_10:
  return v12;
}

- (id)description
{
  protobuf = [(MRAVRoutingDiscoverySessionConfiguration *)self protobuf];
  v3 = [protobuf description];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protobuf = [(MRAVRoutingDiscoverySessionConfiguration *)self protobuf];
  [coderCopy encodeObject:protobuf forKey:@"protobuf"];
}

- (MRAVRoutingDiscoverySessionConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobuf"];

  v6 = [(MRAVRoutingDiscoverySessionConfiguration *)self initWithProtobuf:v5];
  return v6;
}

@end