@interface NSCoder(XPCTransport)
- (id)hmd_clientIdentifier;
- (uint64_t)hmd_entitlements;
- (uint64_t)hmd_homeManagerOptions;
- (uint64_t)hmd_isForXPCTransport;
- (uint64_t)hmd_isForXPCTransportAuthorizedForLocationAccess;
- (uint64_t)hmd_isForXPCTransportEntitledForAssistantIdentifiers;
- (uint64_t)hmd_isForXPCTransportEntitledForHomeLocationAccess;
- (uint64_t)hmd_isForXPCTransportEntitledForHomeLocationFeedbackAccess;
- (uint64_t)hmd_isForXPCTransportEntitledForSPIAccess;
- (void)hmd_message;
@end

@implementation NSCoder(XPCTransport)

- (uint64_t)hmd_isForXPCTransportEntitledForHomeLocationFeedbackAccess
{
  hmd_message = [self hmd_message];
  isEntitledForHomeLocationFeedbackAccess = [hmd_message isEntitledForHomeLocationFeedbackAccess];

  return isEntitledForHomeLocationFeedbackAccess;
}

- (uint64_t)hmd_isForXPCTransportEntitledForAssistantIdentifiers
{
  hmd_message = [self hmd_message];
  isEntitledForAssistantIdentifiers = [hmd_message isEntitledForAssistantIdentifiers];

  return isEntitledForAssistantIdentifiers;
}

- (uint64_t)hmd_isForXPCTransportEntitledForHomeLocationAccess
{
  hmd_message = [self hmd_message];
  isEntitledForHomeLocationAccess = [hmd_message isEntitledForHomeLocationAccess];

  return isEntitledForHomeLocationAccess;
}

- (uint64_t)hmd_isForXPCTransportAuthorizedForLocationAccess
{
  hmd_message = [self hmd_message];
  isAuthorizedForLocationAccess = [hmd_message isAuthorizedForLocationAccess];

  return isAuthorizedForLocationAccess;
}

- (uint64_t)hmd_isForXPCTransportEntitledForSPIAccess
{
  hmd_message = [self hmd_message];
  isEntitledForSPIAccess = [hmd_message isEntitledForSPIAccess];

  return isEntitledForSPIAccess;
}

- (id)hmd_clientIdentifier
{
  hmd_message = [self hmd_message];
  clientIdentifier = [hmd_message clientIdentifier];

  return clientIdentifier;
}

- (uint64_t)hmd_entitlements
{
  hmd_message = [self hmd_message];
  entitlements = [hmd_message entitlements];

  return entitlements;
}

- (uint64_t)hmd_homeManagerOptions
{
  hmd_message = [self hmd_message];

  if (!hmd_message)
  {
    return -1;
  }

  hmd_message2 = [self hmd_message];
  homeManagerOptions = [hmd_message2 homeManagerOptions];

  return homeManagerOptions;
}

- (void)hmd_message
{
  v1 = objc_getAssociatedObject(self, @"kXPCMessageKey");
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

  return v2;
}

- (uint64_t)hmd_isForXPCTransport
{
  v1 = objc_getAssociatedObject(self, @"kXPCTransportTypeAssociationKey");
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