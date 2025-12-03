@interface MRDAVRouteExtendedInfo
+ (id)extendedInfoWithRoute:(id)route;
- (BOOL)requiresPIN;
- (MRDAVRouteExtendedInfo)initWithRoute:(id)route;
- (NSString)deviceIdentifier;
- (NSString)modelName;
@end

@implementation MRDAVRouteExtendedInfo

+ (id)extendedInfoWithRoute:(id)route
{
  routeCopy = route;
  v4 = [objc_alloc(objc_opt_class()) initWithRoute:routeCopy];

  return v4;
}

- (MRDAVRouteExtendedInfo)initWithRoute:(id)route
{
  routeCopy = route;
  v9.receiver = self;
  v9.super_class = MRDAVRouteExtendedInfo;
  v5 = [(MRDAVRouteExtendedInfo *)&v9 init];
  if (v5)
  {
    v6 = [routeCopy copy];
    route = v5->_route;
    v5->_route = v6;
  }

  return v5;
}

- (BOOL)requiresPIN
{
  _extendedInfo = [(MRDAVRouteExtendedInfo *)self _extendedInfo];
  v3 = [_extendedInfo objectForKey:@"systemFlags"];
  v4 = v3;
  if (v3)
  {
    v5 = ([v3 unsignedIntValue] >> 3) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (NSString)modelName
{
  _extendedInfo = [(MRDAVRouteExtendedInfo *)self _extendedInfo];
  v3 = [_extendedInfo objectForKey:@"model"];

  return v3;
}

- (NSString)deviceIdentifier
{
  _extendedInfo = [(MRDAVRouteExtendedInfo *)self _extendedInfo];
  v3 = [_extendedInfo objectForKey:@"deviceID"];

  return v3;
}

@end