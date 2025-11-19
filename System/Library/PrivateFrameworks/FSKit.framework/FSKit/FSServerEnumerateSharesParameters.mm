@interface FSServerEnumerateSharesParameters
- (FSServerEnumerateSharesParameters)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FSServerEnumerateSharesParameters

- (FSServerEnumerateSharesParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FSServerEnumerateSharesParameters;
  v5 = [(FSServerEnumerateSharesParameters *)&v10 init];
  if (v5)
  {
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
  authenticationInfo = self->_authenticationInfo;
  if (authenticationInfo)
  {
    authenticationInfo = [(NSDictionary *)authenticationInfo copyWithZone:a3];
  }

  v7 = v5[1];
  v5[1] = authenticationInfo;

  return v5;
}

@end