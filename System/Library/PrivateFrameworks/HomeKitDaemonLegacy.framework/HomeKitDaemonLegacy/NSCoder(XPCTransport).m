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
  v1 = [a1 hmd_message];
  v2 = [v1 isEntitledForHomeLocationFeedbackAccess];

  return v2;
}

- (uint64_t)hmd_isForXPCTransportEntitledForAssistantIdentifiers
{
  v1 = [a1 hmd_message];
  v2 = [v1 isEntitledForAssistantIdentifiers];

  return v2;
}

- (uint64_t)hmd_isForXPCTransportEntitledForHomeLocationAccess
{
  v1 = [a1 hmd_message];
  v2 = [v1 isEntitledForHomeLocationAccess];

  return v2;
}

- (uint64_t)hmd_isForXPCTransportAuthorizedForLocationAccess
{
  v1 = [a1 hmd_message];
  v2 = [v1 isAuthorizedForLocationAccess];

  return v2;
}

- (uint64_t)hmd_isForXPCTransportEntitledForSPIAccess
{
  v1 = [a1 hmd_message];
  v2 = [v1 isEntitledForSPIAccess];

  return v2;
}

- (id)hmd_clientIdentifier
{
  v1 = [a1 hmd_message];
  v2 = [v1 clientIdentifier];

  return v2;
}

- (uint64_t)hmd_entitlements
{
  v1 = [a1 hmd_message];
  v2 = [v1 entitlements];

  return v2;
}

- (uint64_t)hmd_homeManagerOptions
{
  v2 = [a1 hmd_message];

  if (!v2)
  {
    return -1;
  }

  v3 = [a1 hmd_message];
  v4 = [v3 homeManagerOptions];

  return v4;
}

- (void)hmd_message
{
  v1 = objc_getAssociatedObject(a1, @"kXPCMessageKey");
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
  v1 = objc_getAssociatedObject(a1, @"kXPCTransportTypeAssociationKey");
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