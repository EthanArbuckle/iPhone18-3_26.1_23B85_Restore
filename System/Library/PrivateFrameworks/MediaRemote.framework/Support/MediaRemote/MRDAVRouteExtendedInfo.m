@interface MRDAVRouteExtendedInfo
+ (id)extendedInfoWithRoute:(id)a3;
- (BOOL)requiresPIN;
- (MRDAVRouteExtendedInfo)initWithRoute:(id)a3;
- (NSString)deviceIdentifier;
- (NSString)modelName;
@end

@implementation MRDAVRouteExtendedInfo

+ (id)extendedInfoWithRoute:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithRoute:v3];

  return v4;
}

- (MRDAVRouteExtendedInfo)initWithRoute:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MRDAVRouteExtendedInfo;
  v5 = [(MRDAVRouteExtendedInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    route = v5->_route;
    v5->_route = v6;
  }

  return v5;
}

- (BOOL)requiresPIN
{
  v2 = [(MRDAVRouteExtendedInfo *)self _extendedInfo];
  v3 = [v2 objectForKey:@"systemFlags"];
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
  v2 = [(MRDAVRouteExtendedInfo *)self _extendedInfo];
  v3 = [v2 objectForKey:@"model"];

  return v3;
}

- (NSString)deviceIdentifier
{
  v2 = [(MRDAVRouteExtendedInfo *)self _extendedInfo];
  v3 = [v2 objectForKey:@"deviceID"];

  return v3;
}

@end