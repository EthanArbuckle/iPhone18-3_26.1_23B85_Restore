@interface MCMSandboxExtension
- (BOOL)useLegacyExtensionPolicy;
- (BOOL)useProxiedClientForTarget;
- (MCMClientAuthorizes)clientIdentity;
- (MCMContainerConfiguration)containerConfig;
- (MCMContainerIdentityHasConfig)containerIdentity;
- (MCMContainerPathCanBeTransient)containerPath;
- (MCMEntitlements)entitlements;
- (MCMSandboxExtension)init;
- (MCMSandboxExtension)initWithClientIdentity:(id)identity containerPath:(id)path containerIdentity:(id)containerIdentity;
- (NSString)clientTeamIdentifier;
- (id)tokenForPart:(unint64_t)part partDomain:(id)domain error:(id *)error;
- (unint64_t)reason;
- (unint64_t)type;
- (void)setReason:(unint64_t)reason;
- (void)setType:(unint64_t)type;
- (void)setUseLegacyExtensionPolicy:(BOOL)policy;
- (void)setUseProxiedClientForTarget:(BOOL)target;
@end

@implementation MCMSandboxExtension

- (MCMClientAuthorizes)clientIdentity
{
  v2 = *(self + OBJC_IVAR___MCMSandboxExtension_clientIdentity);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (BOOL)useProxiedClientForTarget
{
  v3 = OBJC_IVAR___MCMSandboxExtension_useProxiedClientForTarget;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUseLegacyExtensionPolicy:(BOOL)policy
{
  v5 = OBJC_IVAR___MCMSandboxExtension_useLegacyExtensionPolicy;
  swift_beginAccess();
  *(self + v5) = policy;
}

- (void)setUseProxiedClientForTarget:(BOOL)target
{
  v5 = OBJC_IVAR___MCMSandboxExtension_useProxiedClientForTarget;
  swift_beginAccess();
  *(self + v5) = target;
}

- (id)tokenForPart:(unint64_t)part partDomain:(id)domain error:(id *)error
{
  if (domain)
  {
    v8 = sub_1DF3B0DCC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  selfCopy = self;
  sub_1DF2CE5BC(part, v8, v10, error);
  v13 = v12;

  if (v13)
  {
    v14 = sub_1DF3B0DBC();
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)type
{
  v3 = OBJC_IVAR___MCMSandboxExtension_type;
  swift_beginAccess();
  return *(self + v3);
}

- (BOOL)useLegacyExtensionPolicy
{
  v3 = OBJC_IVAR___MCMSandboxExtension_useLegacyExtensionPolicy;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setReason:(unint64_t)reason
{
  v5 = OBJC_IVAR___MCMSandboxExtension_reason;
  swift_beginAccess();
  *(self + v5) = reason;
}

- (MCMContainerPathCanBeTransient)containerPath
{
  v2 = *(self + OBJC_IVAR___MCMSandboxExtension_containerPath);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (MCMSandboxExtension)initWithClientIdentity:(id)identity containerPath:(id)path containerIdentity:(id)containerIdentity
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = sub_1DF2CDEF0(identity, path, containerIdentity);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8;
}

- (MCMContainerIdentityHasConfig)containerIdentity
{
  v2 = *(self + OBJC_IVAR___MCMSandboxExtension_containerIdentity);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (MCMContainerConfiguration)containerConfig
{
  v2 = *(self + OBJC_IVAR___MCMSandboxExtension_containerConfig);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (MCMEntitlements)entitlements
{
  v2 = *(self + OBJC_IVAR___MCMSandboxExtension_entitlements);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (unint64_t)reason
{
  v3 = OBJC_IVAR___MCMSandboxExtension_reason;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(unint64_t)type
{
  v5 = OBJC_IVAR___MCMSandboxExtension_type;
  swift_beginAccess();
  *(self + v5) = type;
}

- (NSString)clientTeamIdentifier
{
  if (*(self + OBJC_IVAR___MCMSandboxExtension_clientTeamIdentifier + 8))
  {
    v2 = *(self + OBJC_IVAR___MCMSandboxExtension_clientTeamIdentifier);
    v3 = *(self + OBJC_IVAR___MCMSandboxExtension_clientTeamIdentifier + 8);

    v4 = sub_1DF3B0DBC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MCMSandboxExtension)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end