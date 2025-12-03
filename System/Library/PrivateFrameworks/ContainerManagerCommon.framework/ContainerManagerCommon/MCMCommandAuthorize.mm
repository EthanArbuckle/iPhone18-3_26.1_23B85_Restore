@interface MCMCommandAuthorize
+ (Class)incomingMessageClass;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)onBehalfOfSelf;
- (BOOL)preflightClientAllowed;
- (MCMCommandAuthorize)init;
- (MCMCommandAuthorize)initWithContext:(id)context resultPromise:(id)promise;
- (MCMCommandAuthorize)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (MCMContainerConfiguration)containerConfig;
- (MCMUserIdentity)userIdentity;
- (void)execute;
- (void)setAuditToken:(id *)token;
- (void)setContainerConfig:(id)config;
- (void)setOnBehalfOfSelf:(BOOL)self;
- (void)setUserIdentity:(id)identity;
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

- (void)setContainerConfig:(id)config
{
  v5 = OBJC_IVAR___MCMCommandAuthorize_containerConfig;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = config;
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

- (void)setAuditToken:(id *)token
{
  v3 = (self + OBJC_IVAR___MCMCommandAuthorize_auditToken);
  v4 = *&token->var0[4];
  v5 = *token->var0;
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

- (void)setOnBehalfOfSelf:(BOOL)self
{
  v5 = OBJC_IVAR___MCMCommandAuthorize_onBehalfOfSelf;
  swift_beginAccess();
  *(self + v5) = self;
}

- (MCMUserIdentity)userIdentity
{
  v3 = OBJC_IVAR___MCMCommandAuthorize_userIdentity;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUserIdentity:(id)identity
{
  v5 = OBJC_IVAR___MCMCommandAuthorize_userIdentity;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = identity;
  identityCopy = identity;
}

- (MCMCommandAuthorize)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1DF2D8910(message, context, reply);
}

- (MCMCommandAuthorize)initWithContext:(id)context resultPromise:(id)promise
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = sub_1DF2DA904(context, promise);
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
  selfCopy = self;
  if ([(MCMCommandAuthorize *)selfCopy onBehalfOfSelf])
  {
    isAllowedToCheckAuthorization = 1;
  }

  else
  {
    context = [(MCMCommand *)selfCopy context];
    clientIdentity = [(MCMCommandContext *)context clientIdentity];

    isAllowedToCheckAuthorization = [(MCMClientIdentity *)clientIdentity isAllowedToCheckAuthorization];
  }

  return isAllowedToCheckAuthorization;
}

- (void)execute
{
  selfCopy = self;
  sub_1DF2D915C();
}

- (MCMCommandAuthorize)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end