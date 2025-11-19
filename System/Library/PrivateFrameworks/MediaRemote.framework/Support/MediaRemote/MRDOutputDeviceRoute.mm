@interface MRDOutputDeviceRoute
- (BOOL)isEqual:(id)a3;
- (BOOL)isPicked;
- (BOOL)isSpeakerRoute;
- (MRDOutputDeviceRoute)initWithOutputDevice:(id)a3;
- (id)description;
- (id)dictionary;
- (id)extendedInfo;
- (id)type;
- (id)uniqueIdentifier;
@end

@implementation MRDOutputDeviceRoute

- (MRDOutputDeviceRoute)initWithOutputDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRDOutputDeviceRoute;
  v6 = [(MRDOutputDeviceRoute *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDevice, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 avOutputDevice];
    v6 = [v5 isEqual:self->_outputDevice];
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
  v3 = [(MRAVOutputDevice *)self->_outputDevice primaryID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v4 = [v3 outputDevices];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
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
  v4 = [(MRDOutputDeviceRoute *)self uniqueIdentifier];

  if (v4)
  {
    v5 = [(MRDOutputDeviceRoute *)self uniqueIdentifier];
    [v3 setObject:v5 forKey:@"RouteUID"];
  }

  v6 = [(MRDOutputDeviceRoute *)self name];

  if (v6)
  {
    v7 = [(MRDOutputDeviceRoute *)self name];
    [v3 setObject:v7 forKey:@"RouteName"];
  }

  v20[0] = @"model";
  v8 = [(MRDOutputDeviceRoute *)self modelName];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1004D2058;
  }

  v20[1] = @"deviceID";
  v21[0] = v10;
  v11 = [(MRDOutputDeviceRoute *)self uniqueIdentifier];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
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

  v17 = [(MRAVOutputDevice *)self->_outputDevice deviceType];
  if (v17 <= 5)
  {
    v18 = *(&off_1004C1828 + v17);
    [v3 setObject:*(&off_1004C17F8 + v17) forKey:@"RouteType"];
    [v3 setObject:v18 forKey:@"AVAudioRouteName"];
  }

  return v3;
}

- (id)extendedInfo
{
  v3 = [MRDAVRouteExtendedInfo alloc];
  v4 = [(MRDOutputDeviceRoute *)self dictionary];
  v5 = [(MRDAVRouteExtendedInfo *)v3 initWithRoute:v4];

  return v5;
}

@end