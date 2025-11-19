@interface FSServerInfo
- (FSServerInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FSServerInfo

- (void)encodeWithCoder:(id)a3
{
  flags = self->_flags;
  v5 = a3;
  [v5 encodeInteger:flags forKey:@"FSFlags"];
  [v5 encodeObject:self->_displayName forKey:@"FSSDisn"];
  [v5 encodeObject:self->_supportedMechTypes forKey:@"FSSupMT"];
  [v5 encodeObject:self->_authenticationInfo forKey:@"FSSAInf"];
  [v5 encodeObject:self->_machineType forKey:@"FSMachT"];
  [v5 encodeObject:self->_serverOS forKey:@"FSSrvOS"];
  [v5 encodeObject:self->_proxyServerName forKey:@"FSSPxSN"];
  [v5 encodeObject:self->_proxyServerRealm forKey:@"FSSPxSR"];
}

- (FSServerInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = FSServerInfo;
  v5 = [(FSServerInfo *)&v23 init];
  if (v5)
  {
    v5->_flags = [v4 decodeIntegerForKey:@"FSFlags"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSSDisn"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSSupMT"];
    supportedMechTypes = v5->_supportedMechTypes;
    v5->_supportedMechTypes = v8;

    v10 = +[FSKitConstants plistTypes];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"FSSAInf"];

    authenticationInfo = v5->_authenticationInfo;
    v5->_authenticationInfo = v11;
    v13 = v11;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSMachT"];
    machineType = v5->_machineType;
    v5->_machineType = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSSrvOS"];
    serverOS = v5->_serverOS;
    v5->_serverOS = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSSPxSN"];
    proxyServerName = v5->_proxyServerName;
    v5->_proxyServerName = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSSPxSR"];
    proxyServerRealm = v5->_proxyServerRealm;
    v5->_proxyServerRealm = v20;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = self->_flags;
  displayName = self->_displayName;
  if (displayName)
  {
    displayName = [(NSString *)displayName copyWithZone:a3];
  }

  v7 = v5[2];
  v5[2] = displayName;

  supportedMechTypes = self->_supportedMechTypes;
  if (supportedMechTypes)
  {
    supportedMechTypes = [(NSString *)supportedMechTypes copyWithZone:a3];
  }

  v9 = v5[3];
  v5[3] = supportedMechTypes;

  authenticationInfo = self->_authenticationInfo;
  if (authenticationInfo)
  {
    authenticationInfo = [(NSDictionary *)authenticationInfo copyWithZone:a3];
  }

  v11 = v5[4];
  v5[4] = authenticationInfo;

  machineType = self->_machineType;
  if (machineType)
  {
    machineType = [(NSString *)machineType copyWithZone:a3];
  }

  v13 = v5[5];
  v5[5] = machineType;

  serverOS = self->_serverOS;
  if (serverOS)
  {
    serverOS = [(NSString *)serverOS copyWithZone:a3];
  }

  v15 = v5[6];
  v5[6] = serverOS;

  proxyServerName = self->_proxyServerName;
  if (proxyServerName)
  {
    proxyServerName = [(NSString *)proxyServerName copyWithZone:a3];
  }

  v17 = v5[7];
  v5[7] = proxyServerName;

  proxyServerRealm = self->_proxyServerRealm;
  if (proxyServerRealm)
  {
    proxyServerRealm = [(NSString *)proxyServerRealm copyWithZone:a3];
  }

  v19 = v5[8];
  v5[8] = proxyServerRealm;

  return v5;
}

@end