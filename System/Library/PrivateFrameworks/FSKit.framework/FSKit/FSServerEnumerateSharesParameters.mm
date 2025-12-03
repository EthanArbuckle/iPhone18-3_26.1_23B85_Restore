@interface FSServerEnumerateSharesParameters
- (FSServerEnumerateSharesParameters)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FSServerEnumerateSharesParameters

- (FSServerEnumerateSharesParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = FSServerEnumerateSharesParameters;
  v5 = [(FSServerEnumerateSharesParameters *)&v10 init];
  if (v5)
  {
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
  authenticationInfo = self->_authenticationInfo;
  if (authenticationInfo)
  {
    authenticationInfo = [(NSDictionary *)authenticationInfo copyWithZone:zone];
  }

  v7 = v5[1];
  v5[1] = authenticationInfo;

  return v5;
}

@end