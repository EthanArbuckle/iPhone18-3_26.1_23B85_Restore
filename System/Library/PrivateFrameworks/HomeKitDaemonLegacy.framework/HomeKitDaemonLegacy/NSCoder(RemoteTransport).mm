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
  v1 = objc_getAssociatedObject(a1, @"SupportedFeatures");
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
  v1 = objc_getAssociatedObject(a1, @"DataVersion");
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
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (uint64_t)hmd_isForSharedUser
{
  result = [a1 hmd_isForRemoteTransport];
  if (result)
  {
    if ([a1 hmd_isForRemoteTransportOnSameAccount])
    {
      return 0;
    }

    else
    {
      return [a1 hmd_isForRemoteGatewayCoder] ^ 1;
    }
  }

  return result;
}

- (id)hmd_user
{
  v1 = objc_getAssociatedObject(a1, @"User");
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
  result = [a1 hmd_isForRemoteTransport];
  if (result)
  {
    if ([a1 hmd_isForRemoteTransportOnSameAccount] & 1) != 0 || (objc_msgSend(a1, "hmd_isForRemoteGatewayCoder"))
    {
      return 0;
    }

    else
    {
      return [a1 hmd_isForRemoteUserAdministrator] ^ 1;
    }
  }

  return result;
}

- (uint64_t)hmd_isForRemoteUserAdministrator
{
  v1 = objc_getAssociatedObject(a1, @"RemoteUserIsAdministrator");
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)hmd_isForRemoteGatewayCoder
{
  v1 = objc_getAssociatedObject(a1, @"RemoteGateway");
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)hmd_isForRemoteTransportOnSameAccount
{
  v1 = objc_getAssociatedObject(a1, @"DeviceIsOnSameAccountKey");
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)hmd_isForRemoteTransport
{
  v1 = objc_getAssociatedObject(a1, @"kTransportTypeAssociationKey");
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end