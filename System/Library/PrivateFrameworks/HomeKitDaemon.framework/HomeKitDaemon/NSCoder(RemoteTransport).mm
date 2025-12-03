@interface NSCoder(RemoteTransport)
- (id)hmd_supportedFeatures;
- (id)hmd_user;
- (uint64_t)hmd_dataVersion;
- (uint64_t)hmd_isForNonAdminSharedUser;
- (uint64_t)hmd_isForRemoteGatewayCoder;
- (uint64_t)hmd_isForRemoteTransport;
- (uint64_t)hmd_isForRemoteTransportOnSameAccount;
- (uint64_t)hmd_isForRemoteUserAdministrator;
- (uint64_t)hmd_isForSharedUser;
@end

@implementation NSCoder(RemoteTransport)

- (id)hmd_supportedFeatures
{
  v1 = objc_getAssociatedObject(self, @"SupportedFeatures");
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)hmd_dataVersion
{
  v1 = objc_getAssociatedObject(self, @"DataVersion");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

- (uint64_t)hmd_isForSharedUser
{
  result = [self hmd_isForRemoteTransport];
  if (result)
  {
    if ([self hmd_isForRemoteTransportOnSameAccount])
    {
      return 0;
    }

    else
    {
      return [self hmd_isForRemoteGatewayCoder] ^ 1;
    }
  }

  return result;
}

- (id)hmd_user
{
  v1 = objc_getAssociatedObject(self, @"User");
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)hmd_isForNonAdminSharedUser
{
  result = [self hmd_isForRemoteTransport];
  if (result)
  {
    if ([self hmd_isForRemoteTransportOnSameAccount] & 1) != 0 || (objc_msgSend(self, "hmd_isForRemoteGatewayCoder"))
    {
      return 0;
    }

    else
    {
      return [self hmd_isForRemoteUserAdministrator] ^ 1;
    }
  }

  return result;
}

- (uint64_t)hmd_isForRemoteUserAdministrator
{
  v1 = objc_getAssociatedObject(self, @"RemoteUserIsAdministrator");
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (uint64_t)hmd_isForRemoteGatewayCoder
{
  v1 = objc_getAssociatedObject(self, @"RemoteGateway");
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (uint64_t)hmd_isForRemoteTransportOnSameAccount
{
  v1 = objc_getAssociatedObject(self, @"DeviceIsOnSameAccountKey");
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (uint64_t)hmd_isForRemoteTransport
{
  v1 = objc_getAssociatedObject(self, @"kTransportTypeAssociationKey");
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end