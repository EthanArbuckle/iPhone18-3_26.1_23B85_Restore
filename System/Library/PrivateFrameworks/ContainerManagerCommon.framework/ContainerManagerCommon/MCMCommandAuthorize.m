@interface MCMCommandAuthorize
+ (Class)incomingMessageClass;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)onBehalfOfSelf;
- (BOOL)preflightClientAllowed;
- (MCMCommandAuthorize)init;
- (MCMCommandAuthorize)initWithContext:(id)a3 resultPromise:(id)a4;
- (MCMCommandAuthorize)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5;
- (MCMContainerConfiguration)containerConfig;
- (MCMUserIdentity)userIdentity;
- (void)execute;
- (void)setAuditToken:(id *)a3;
- (void)setContainerConfig:(id)a3;
- (void)setOnBehalfOfSelf:(BOOL)a3;
- (void)setUserIdentity:(id)a3;
@end

@implementation MCMCommandAuthorize

- (MCMContainerConfiguration)containerConfig
{
  v3 = OBJC_IVAR___MCMCommandAuthorize_containerConfig;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setContainerConfig:(id)a3
{
  v5 = OBJC_IVAR___MCMCommandAuthorize_containerConfig;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v4 = (self + OBJC_IVAR___MCMCommandAuthorize_auditToken);
  result = swift_beginAccess();
  v6 = v4[1];
  *retstr->var0 = *v4;
  *&retstr->var0[4] = v6;
  return result;
}

- (void)setAuditToken:(id *)a3
{
  v3 = (self + OBJC_IVAR___MCMCommandAuthorize_auditToken);
  v4 = *&a3->var0[4];
  v5 = *a3->var0;
  swift_beginAccess();
  *v3 = v5;
  v3[1] = v4;
}

- (BOOL)onBehalfOfSelf
{
  v3 = OBJC_IVAR___MCMCommandAuthorize_onBehalfOfSelf;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setOnBehalfOfSelf:(BOOL)a3
{
  v5 = OBJC_IVAR___MCMCommandAuthorize_onBehalfOfSelf;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (MCMUserIdentity)userIdentity
{
  v3 = OBJC_IVAR___MCMCommandAuthorize_userIdentity;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUserIdentity:(id)a3
{
  v5 = OBJC_IVAR___MCMCommandAuthorize_userIdentity;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (MCMCommandAuthorize)initWithMessage:(id)a3 context:(id)a4 reply:(id)a5
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1DF2D8910(a3, a4, a5);
}

- (MCMCommandAuthorize)initWithContext:(id)a3 resultPromise:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = sub_1DF2DA904(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v6;
}

+ (Class)incomingMessageClass
{
  type metadata accessor for MCMXPCMessageAuthorize();

  return swift_getObjCClassFromMetadata();
}

- (BOOL)preflightClientAllowed
{
  v2 = self;
  if ([(MCMCommandAuthorize *)v2 onBehalfOfSelf])
  {
    v3 = 1;
  }

  else
  {
    v4 = [(MCMCommand *)v2 context];
    v5 = [(MCMCommandContext *)v4 clientIdentity];

    v3 = [(MCMClientIdentity *)v5 isAllowedToCheckAuthorization];
  }

  return v3;
}

- (void)execute
{
  v2 = self;
  sub_1DF2D915C();
}

- (MCMCommandAuthorize)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end