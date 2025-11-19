@interface FSOpenSessionParameters
- (FSOpenSessionParameters)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FSOpenSessionParameters

- (void)encodeWithCoder:(id)a3
{
  openFlags = self->_openFlags;
  v5 = a3;
  [v5 encodeInteger:openFlags forKey:@"FSSOpnf"];
  [v5 encodeInteger:self->_uiOption forKey:@"FSSUIOp"];
  [v5 encodeObject:self->_authenticationInfo forKey:@"FSSAInf"];
}

- (FSOpenSessionParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FSOpenSessionParameters;
  v5 = [(FSOpenSessionParameters *)&v10 init];
  if (v5)
  {
    v5->_openFlags = [v4 decodeIntegerForKey:@"FSSOpnf"];
    v5->_uiOption = [v4 decodeIntegerForKey:@"FSSUIOp"];
    v6 = +[FSKitConstants plistTypes];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"FSSAInf"];

    authenticationInfo = v5->_authenticationInfo;
    v5->_authenticationInfo = v7;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = self->_openFlags;
  v5[2] = self->_uiOption;
  authenticationInfo = self->_authenticationInfo;
  if (authenticationInfo)
  {
    authenticationInfo = [(NSDictionary *)authenticationInfo copyWithZone:a3];
  }

  v7 = v5[3];
  v5[3] = authenticationInfo;

  return v5;
}

@end