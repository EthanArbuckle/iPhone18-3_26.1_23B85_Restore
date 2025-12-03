@interface FSOpenSessionParameters
- (FSOpenSessionParameters)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSOpenSessionParameters

- (void)encodeWithCoder:(id)coder
{
  openFlags = self->_openFlags;
  coderCopy = coder;
  [coderCopy encodeInteger:openFlags forKey:@"FSSOpnf"];
  [coderCopy encodeInteger:self->_uiOption forKey:@"FSSUIOp"];
  [coderCopy encodeObject:self->_authenticationInfo forKey:@"FSSAInf"];
}

- (FSOpenSessionParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = FSOpenSessionParameters;
  v5 = [(FSOpenSessionParameters *)&v10 init];
  if (v5)
  {
    v5->_openFlags = [coderCopy decodeIntegerForKey:@"FSSOpnf"];
    v5->_uiOption = [coderCopy decodeIntegerForKey:@"FSSUIOp"];
    v6 = +[FSKitConstants plistTypes];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"FSSAInf"];

    authenticationInfo = v5->_authenticationInfo;
    v5->_authenticationInfo = v7;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = self->_openFlags;
  v5[2] = self->_uiOption;
  authenticationInfo = self->_authenticationInfo;
  if (authenticationInfo)
  {
    authenticationInfo = [(NSDictionary *)authenticationInfo copyWithZone:zone];
  }

  v7 = v5[3];
  v5[3] = authenticationInfo;

  return v5;
}

@end