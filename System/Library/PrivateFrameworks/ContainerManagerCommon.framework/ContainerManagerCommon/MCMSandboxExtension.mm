@interface MCMSandboxExtension
- (BOOL)useLegacyExtensionPolicy;
- (BOOL)useProxiedClientForTarget;
- (MCMClientAuthorizes)clientIdentity;
- (MCMContainerConfiguration)containerConfig;
- (MCMContainerIdentityHasConfig)containerIdentity;
- (MCMContainerPathCanBeTransient)containerPath;
- (MCMEntitlements)entitlements;
- (MCMSandboxExtension)init;
- (MCMSandboxExtension)initWithClientIdentity:(id)a3 containerPath:(id)a4 containerIdentity:(id)a5;
- (NSString)clientTeamIdentifier;
- (id)tokenForPart:(unint64_t)a3 partDomain:(id)a4 error:(id *)a5;
- (unint64_t)reason;
- (unint64_t)type;
- (void)setReason:(unint64_t)a3;
- (void)setType:(unint64_t)a3;
- (void)setUseLegacyExtensionPolicy:(BOOL)a3;
- (void)setUseProxiedClientForTarget:(BOOL)a3;
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

- (void)setUseLegacyExtensionPolicy:(BOOL)a3
{
  v5 = OBJC_IVAR___MCMSandboxExtension_useLegacyExtensionPolicy;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (void)setUseProxiedClientForTarget:(BOOL)a3
{
  v5 = OBJC_IVAR___MCMSandboxExtension_useProxiedClientForTarget;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (id)tokenForPart:(unint64_t)a3 partDomain:(id)a4 error:(id *)a5
{
  if (a4)
  {
    v8 = sub_1DF3B0DCC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = self;
  sub_1DF2CE5BC(a3, v8, v10, a5);
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

- (void)setReason:(unint64_t)a3
{
  v5 = OBJC_IVAR___MCMSandboxExtension_reason;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (MCMContainerPathCanBeTransient)containerPath
{
  v2 = *(self + OBJC_IVAR___MCMSandboxExtension_containerPath);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (MCMSandboxExtension)initWithClientIdentity:(id)a3 containerPath:(id)a4 containerIdentity:(id)a5
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = sub_1DF2CDEF0(a3, a4, a5);
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

- (void)setType:(unint64_t)a3
{
  v5 = OBJC_IVAR___MCMSandboxExtension_type;
  swift_beginAccess();
  *(self + v5) = a3;
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