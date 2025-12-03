@interface FSServerInfo
- (FSServerInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSServerInfo

- (void)encodeWithCoder:(id)coder
{
  flags = self->_flags;
  coderCopy = coder;
  [coderCopy encodeInteger:flags forKey:@"FSFlags"];
  [coderCopy encodeObject:self->_displayName forKey:@"FSSDisn"];
  [coderCopy encodeObject:self->_supportedMechTypes forKey:@"FSSupMT"];
  [coderCopy encodeObject:self->_authenticationInfo forKey:@"FSSAInf"];
  [coderCopy encodeObject:self->_machineType forKey:@"FSMachT"];
  [coderCopy encodeObject:self->_serverOS forKey:@"FSSrvOS"];
  [coderCopy encodeObject:self->_proxyServerName forKey:@"FSSPxSN"];
  [coderCopy encodeObject:self->_proxyServerRealm forKey:@"FSSPxSR"];
}

- (FSServerInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = FSServerInfo;
  v5 = [(FSServerInfo *)&v23 init];
  if (v5)
  {
    v5->_flags = [coderCopy decodeIntegerForKey:@"FSFlags"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSSDisn"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSSupMT"];
    supportedMechTypes = v5->_supportedMechTypes;
    v5->_supportedMechTypes = v8;

    v10 = +[FSKitConstants plistTypes];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"FSSAInf"];

    authenticationInfo = v5->_authenticationInfo;
    v5->_authenticationInfo = v11;
    v13 = v11;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSMachT"];
    machineType = v5->_machineType;
    v5->_machineType = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSSrvOS"];
    serverOS = v5->_serverOS;
    v5->_serverOS = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSSPxSN"];
    proxyServerName = v5->_proxyServerName;
    v5->_proxyServerName = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSSPxSR"];
    proxyServerRealm = v5->_proxyServerRealm;
    v5->_proxyServerRealm = v20;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = self->_flags;
  displayName = self->_displayName;
  if (displayName)
  {
    displayName = [(NSString *)displayName copyWithZone:zone];
  }

  v7 = v5[2];
  v5[2] = displayName;

  supportedMechTypes = self->_supportedMechTypes;
  if (supportedMechTypes)
  {
    supportedMechTypes = [(NSString *)supportedMechTypes copyWithZone:zone];
  }

  v9 = v5[3];
  v5[3] = supportedMechTypes;

  authenticationInfo = self->_authenticationInfo;
  if (authenticationInfo)
  {
    authenticationInfo = [(NSDictionary *)authenticationInfo copyWithZone:zone];
  }

  v11 = v5[4];
  v5[4] = authenticationInfo;

  machineType = self->_machineType;
  if (machineType)
  {
    machineType = [(NSString *)machineType copyWithZone:zone];
  }

  v13 = v5[5];
  v5[5] = machineType;

  serverOS = self->_serverOS;
  if (serverOS)
  {
    serverOS = [(NSString *)serverOS copyWithZone:zone];
  }

  v15 = v5[6];
  v5[6] = serverOS;

  proxyServerName = self->_proxyServerName;
  if (proxyServerName)
  {
    proxyServerName = [(NSString *)proxyServerName copyWithZone:zone];
  }

  v17 = v5[7];
  v5[7] = proxyServerName;

  proxyServerRealm = self->_proxyServerRealm;
  if (proxyServerRealm)
  {
    proxyServerRealm = [(NSString *)proxyServerRealm copyWithZone:zone];
  }

  v19 = v5[8];
  v5[8] = proxyServerRealm;

  return v5;
}

@end