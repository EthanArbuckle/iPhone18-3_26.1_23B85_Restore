@interface IDSGroupDefaultRootMaterialExchangeController
- (IDSGroupQUICMaterialExchangeProvider)quicMaterialExchangeProvider;
- (_TtC17identityservicesd45IDSGroupDefaultRootMaterialExchangeController)initWithConfig:(id)config session:(id)session serviceID:(id)d pushHandler:(id)handler;
@end

@implementation IDSGroupDefaultRootMaterialExchangeController

- (IDSGroupQUICMaterialExchangeProvider)quicMaterialExchangeProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (_TtC17identityservicesd45IDSGroupDefaultRootMaterialExchangeController)initWithConfig:(id)config session:(id)session serviceID:(id)d pushHandler:(id)handler
{
  v9 = sub_100936B38();
  v23 = v10;
  v24 = v9;
  v11 = type metadata accessor for IDSGroupEncryptionDefaultCryptoHandler();
  configCopy = config;
  sessionCopy = session;
  swift_unknownObjectRetain();
  v13 = StewieProvisioningEventTracing.__allocating_init()();
  ObjectType = swift_getObjectType();
  v16 = *&sessionCopy[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_groupID];
  v15 = *&sessionCopy[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_groupID + 8];
  v25[3] = v11;
  v25[4] = &off_100BE9B28;
  v17 = *&sessionCopy[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_sessionID];
  v18 = *&sessionCopy[OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_sessionID + 8];
  v25[0] = v13;
  v19 = *(ObjectType + 296);

  v20 = v19(configCopy, v16, v15, v17, v18, v24, v23, sessionCopy, &off_100BE8AC0, handler, v25);
  swift_deallocPartialClassInstance();
  return v20;
}

@end