@interface MRDOutputDeviceRoute
- (BOOL)isEqual:(id)equal;
- (BOOL)isPicked;
- (BOOL)isSpeakerRoute;
- (MRDOutputDeviceRoute)initWithOutputDevice:(id)device;
- (id)description;
- (id)dictionary;
- (id)extendedInfo;
- (id)type;
- (id)uniqueIdentifier;
@end

@implementation MRDOutputDeviceRoute

- (MRDOutputDeviceRoute)initWithOutputDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = MRDOutputDeviceRoute;
  v6 = [(MRDOutputDeviceRoute *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDevice, device);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    avOutputDevice = [equalCopy avOutputDevice];
    v6 = [avOutputDevice isEqual:self->_outputDevice];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p outputDevice = %@>", v4, self, self->_outputDevice];

  return v5;
}

- (id)uniqueIdentifier
{
  primaryID = [(MRAVOutputDevice *)self->_outputDevice primaryID];
  v4 = primaryID;
  if (primaryID)
  {
    v5 = primaryID;
  }

  else
  {
    v5 = [(MRAVOutputDevice *)self->_outputDevice uid];
  }

  v6 = v5;

  return v6;
}

- (id)type
{
  [(MRAVOutputDevice *)self->_outputDevice deviceType];
  v3 = MRAVOutputDeviceTypeCopyDescription();
  [(MRAVOutputDevice *)self->_outputDevice deviceSubtype];
  v4 = MRAVOutputDeviceSubtypeCopyDescription();
  v5 = [NSString stringWithFormat:@"%@-%@", v3, v4];

  return v5;
}

- (BOOL)isPicked
{
  v3 = +[AVOutputContext sharedAudioPresentationOutputContext];
  outputDevices = [v3 outputDevices];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = outputDevices;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        outputDevice = self->_outputDevice;
        v11 = [*(*(&v14 + 1) + 8 * i) ID];
        LOBYTE(outputDevice) = [(MRAVOutputDevice *)outputDevice containsUID:v11];

        if (outputDevice)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)isSpeakerRoute
{
  v3 = +[AVOutputDevice sharedLocalDevice];
  v4 = [v3 ID];
  v5 = [(MRDOutputDeviceRoute *)self matchesUniqueIdentifier:v4]|| [(MRAVOutputDevice *)self->_outputDevice deviceType]== 4;

  return v5;
}

- (id)dictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  uniqueIdentifier = [(MRDOutputDeviceRoute *)self uniqueIdentifier];

  if (uniqueIdentifier)
  {
    uniqueIdentifier2 = [(MRDOutputDeviceRoute *)self uniqueIdentifier];
    [v3 setObject:uniqueIdentifier2 forKey:@"RouteUID"];
  }

  name = [(MRDOutputDeviceRoute *)self name];

  if (name)
  {
    name2 = [(MRDOutputDeviceRoute *)self name];
    [v3 setObject:name2 forKey:@"RouteName"];
  }

  v20[0] = @"model";
  modelName = [(MRDOutputDeviceRoute *)self modelName];
  v9 = modelName;
  if (modelName)
  {
    v10 = modelName;
  }

  else
  {
    v10 = &stru_1004D2058;
  }

  v20[1] = @"deviceID";
  v21[0] = v10;
  uniqueIdentifier3 = [(MRDOutputDeviceRoute *)self uniqueIdentifier];
  v12 = uniqueIdentifier3;
  if (uniqueIdentifier3)
  {
    v13 = uniqueIdentifier3;
  }

  else
  {
    v13 = &stru_1004D2058;
  }

  v21[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  [v3 setObject:v14 forKeyedSubscript:@"AirPlayPortExtendedInfo"];

  v15 = [NSNumber numberWithBool:[(MRAVOutputDevice *)self->_outputDevice requiresAuthorization]];
  [v3 setObject:v15 forKeyedSubscript:@"RouteRequiresAirPlayPIN"];

  v16 = [NSNumber numberWithBool:[(MRAVOutputDevice *)self->_outputDevice requiresAuthorization]];
  [v3 setObject:v16 forKeyedSubscript:@"PortHasPassword"];

  deviceType = [(MRAVOutputDevice *)self->_outputDevice deviceType];
  if (deviceType <= 5)
  {
    v18 = *(&off_1004C1828 + deviceType);
    [v3 setObject:*(&off_1004C17F8 + deviceType) forKey:@"RouteType"];
    [v3 setObject:v18 forKey:@"AVAudioRouteName"];
  }

  return v3;
}

- (id)extendedInfo
{
  v3 = [MRDAVRouteExtendedInfo alloc];
  dictionary = [(MRDOutputDeviceRoute *)self dictionary];
  v5 = [(MRDAVRouteExtendedInfo *)v3 initWithRoute:dictionary];

  return v5;
}

@end