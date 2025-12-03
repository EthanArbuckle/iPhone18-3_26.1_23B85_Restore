@interface MRDMediaServerAVRoute
- (BOOL)isEqual:(id)equal;
- (BOOL)isPicked;
- (BOOL)isSpeakerRoute;
- (MRDMediaServerAVRoute)initWithDictionary:(id)dictionary;
- (id)description;
- (id)extendedInfo;
- (id)modelName;
- (unint64_t)hash;
@end

@implementation MRDMediaServerAVRoute

- (MRDMediaServerAVRoute)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = MRDMediaServerAVRoute;
  v5 = [(MRDMediaServerAVRoute *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    routeDescription = v5->_routeDescription;
    v5->_routeDescription = v6;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSDictionary *)self->_routeDescription objectForKey:AVSystemController_RouteDescriptionKey_RouteUID];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 hash];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSDictionary *)self->_routeDescription objectForKey:AVSystemController_RouteDescriptionKey_RouteName];
  v7 = v6;
  if (v6)
  {
    v5 ^= [v6 hash];
  }

  v8 = [(NSDictionary *)self->_routeDescription objectForKey:AVSystemController_RouteDescriptionKey_RouteType];
  v9 = v8;
  if (v8)
  {
    v5 ^= [v8 hash];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy[9] isEqualToDictionary:self->_routeDescription];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p: %@>", v4, self, self->_routeDescription];

  return v5;
}

- (id)modelName
{
  extendedInfo = [(MRDMediaServerAVRoute *)self extendedInfo];
  modelName = [extendedInfo modelName];

  return modelName;
}

- (BOOL)isPicked
{
  v3 = [(NSDictionary *)self->_routeDescription objectForKey:AVSystemController_RouteDescriptionKey_IsCurrentlyPickedOnPairedDevice];
  if ([v3 BOOLValue])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(NSDictionary *)self->_routeDescription objectForKey:AVSystemController_RouteDescriptionKey_RouteCurrentlyPicked];
    if ([v5 BOOLValue])
    {
      v4 = 1;
    }

    else
    {
      v6 = +[MRAVOutputContext sharedSystemAudioContext];
      outputDevices = [v6 outputDevices];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000EFB38;
      v9[3] = &unk_1004BC4A0;
      v9[4] = self;
      v4 = [outputDevices indexOfObjectPassingTest:v9] != 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v4;
}

- (BOOL)isSpeakerRoute
{
  v2 = [(NSDictionary *)self->_routeDescription objectForKey:AVSystemController_RouteDescriptionKey_AVAudioRouteName];
  v3 = [v2 isEqualToString:@"Speaker"];

  return v3;
}

- (id)extendedInfo
{
  extendedInfo = self->_extendedInfo;
  if (!extendedInfo)
  {
    v4 = [[MRDAVRouteExtendedInfo alloc] initWithRoute:self->_routeDescription];
    v5 = self->_extendedInfo;
    self->_extendedInfo = v4;

    extendedInfo = self->_extendedInfo;
  }

  return extendedInfo;
}

@end