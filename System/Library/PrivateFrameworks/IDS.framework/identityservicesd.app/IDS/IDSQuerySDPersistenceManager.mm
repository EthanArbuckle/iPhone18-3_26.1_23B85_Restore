@interface IDSQuerySDPersistenceManager
+ (double)dbCleanupTimeInterval;
- (BOOL)hasAnyDecryptingKeyIDWithSenderURI:(id)i receiverURI:(id)rI;
- (BOOL)hasUsableSenderKeyFor:(id)for fromAny:(id)any;
- (BOOL)senderKeyMessageSupportedFor:(id)for;
- (IDSQuerySDPersistenceManager)init;
- (IDSQuerySDPersistenceManager)initWithFilePath:(id)path serviceController:(id)controller;
- (id)allPeerIDKeys;
- (id)decryptingKeyIDsWithSenderURI:(id)i receiverURI:(id)rI;
- (id)deviceTokensForURI:(id)i service:(id)service;
- (id)earliestExpirationDateForService:(id)service fromURI:(id)i toURI:(id)rI;
- (id)endpointForPushToken:(id)token service:(id)service fromURI:(id)i toURI:(id)rI;
- (id)fetchEndpointsWithService:(id)service fromURI:(id)i toURI:(id)rI ignoreExpiration:(BOOL)expiration;
- (id)fetchKeyTransparencyContextFor:(id)for service:(id)service;
- (id)lastQualifiedContactsMetric;
- (id)loadAllStatusesForService:(id)service;
- (id)loadStatusForService:(id)service uri:(id)uri;
- (id)peerIDKeysForService:(id)service;
- (id)peerMapRepresentation;
- (id)publicDeviceIdentityContainerForPushToken:(id)token;
- (id)publicIdentityDataFor:(id)for uri:(id)uri service:(id)service;
- (id)publicKeyForService:(id)service pushToken:(id)token;
- (id)recentURIsSinceDate:(id)date service:(id)service;
- (id)senderCorrelationIdentifierForService:(id)service uri:(id)uri;
- (id)sessionTokenForService:(id)service fromURI:(id)i toURI:(id)rI pushToken:(id)token;
- (id)shortHandleForUri:(id)uri;
- (id)uriForShortHandle:(id)handle;
- (id)urisMatchingPushToken:(id)token service:(id)service;
- (int64_t)deviceHasCapabilityWithService:(id)service uri:(id)uri fromURI:(id)i pushToken:(id)token capability:(id)capability;
- (void)cleanupExpiredSessionsIfNeededWithCompletion:(id)completion;
- (void)cleanupInvalidSenderKeyEntriesWithCompletion:(id)completion;
- (void)cleanupOldRegistrationEvents;
- (void)cleanupShortHandlesWithExpireDuration:(double)duration completion:(id)completion;
- (void)cleanupTimerFired;
- (void)deleteAllSenderKeysWithCompletion:(id)completion;
- (void)deleteAllStatusesForService:(id)service completion:(id)completion;
- (void)deleteAllStatusesForServices:(id)services toURIs:(id)is completion:(id)completion;
- (void)deleteAllStatusesWithCompletion:(id)completion;
- (void)deleteAllWithCompletion:(id)completion;
- (void)deleteEndpointsWithService:(id)service completion:(id)completion;
- (void)deleteEndpointsWithService:(id)service fromURI:(id)i toURI:(id)rI completion:(id)completion;
- (void)deleteEndpointsWithServices:(id)services fromURI:(id)i toURI:(id)rI completion:(id)completion;
- (void)deleteEndpointsWithServices:(id)services toURIs:(id)is completion:(id)completion;
- (void)deletePublicIdentitiesBeforeDate:(id)date afterDate:(id)afterDate completion:(id)completion;
- (void)deleteStatus:(id)status completion:(id)completion;
- (void)deleteStatusForService:(id)service URI:(id)i completion:(id)completion;
- (void)performDBCleanupTasksWithCompletion:(id)completion;
- (void)saveEndpoints:(id)endpoints ktContext:(id)context service:(id)service fromURI:(id)i toURI:(id)rI completion:(id)completion;
- (void)savePublicIdentityData:(id)data token:(id)token uri:(id)uri service:(id)service completion:(id)completion;
- (void)saveRegistrationEventWithBagKey:(id)key requestStart:(id)start completionTime:(id)time resultCode:(int64_t)code interface:(unint64_t)interface splunkHint:(id)hint baaSigningDigest:(id)digest;
- (void)saveStatus:(id)status completion:(id)completion;
- (void)updateKeyTransparencyContext:(id)context uri:(id)uri service:(id)service completion:(id)completion;
- (void)updateKeyTransparencyForEndpoints:(id)endpoints withKTContext:(id)context;
- (void)updateQualifiedContactsCountWithMetric:(id)metric;
- (void)updateSenderKeyValidityFor:(id)for markInvalid:(BOOL)invalid completion:(id)completion;
@end

@implementation IDSQuerySDPersistenceManager

- (void)deletePublicIdentitiesBeforeDate:(id)date afterDate:(id)afterDate completion:(id)completion
{
  afterDateCopy = afterDate;
  selfCopy = self;
  v6 = sub_100936038();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &afterDateCopy - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &afterDateCopy - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &afterDateCopy - v15;
  __chkstk_darwin(v14);
  v18 = &afterDateCopy - v17;
  v19 = _Block_copy(completion);
  v33 = v18;
  sub_100935FE8();
  v32 = v16;
  sub_100935FE8();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = *(v7 + 16);
  v21(v13, v18, v6);
  v21(v10, v16, v6);
  v22 = *(v7 + 80);
  v23 = (v22 + 16) & ~v22;
  v24 = (v8 + v22 + v23) & ~v22;
  v25 = swift_allocObject();
  v26 = *(v7 + 32);
  v26(v25 + v23, v13, v6);
  v26(v25 + v24, v10, v6);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1008F4E80;
  *(v27 + 24) = v20;
  v28 = *((swift_isaMask & selfCopy->super.isa) + 0x110);
  v29 = selfCopy;

  v28(sub_1008F5038, v25, sub_1008F507C, v27);

  v30 = *(v7 + 8);
  v30(v32, v6);
  v30(v33, v6);
}

- (id)fetchEndpointsWithService:(id)service fromURI:(id)i toURI:(id)rI ignoreExpiration:(BOOL)expiration
{
  v24 = &_swiftEmptyArrayStorage;
  selfCopy = self;
  v18 = sub_100936B38();
  v19 = v9;
  rICopy = rI;
  iCopy = i;
  expirationCopy = expiration;
  v23 = &v24;
  v10 = *((swift_isaMask & selfCopy->super.isa) + 0x118);
  iCopy2 = i;
  rICopy2 = rI;
  v13 = selfCopy;
  v10(0, sub_1008F4FA8, &v16);

  sub_100014170(0, &qword_100CB4AD0);
  v14.super.isa = sub_100936CD8().super.isa;

  return v14.super.isa;
}

- (id)fetchKeyTransparencyContextFor:(id)for service:(id)service
{
  selfCopy = self;
  v14 = sub_100936B38();
  v17 = &v18;
  v5 = swift_isaMask & selfCopy->super.isa;
  v18 = 0;
  v15 = v6;
  forCopy = for;
  v7 = *(v5 + 280);
  forCopy2 = for;
  v9 = selfCopy;
  v7(0, sub_1008F4F90, &v12);

  v10 = v18;

  return v10;
}

- (void)saveRegistrationEventWithBagKey:(id)key requestStart:(id)start completionTime:(id)time resultCode:(int64_t)code interface:(unint64_t)interface splunkHint:(id)hint baaSigningDigest:(id)digest
{
  codeCopy = code;
  interfaceCopy = interface;
  v12 = sub_100936038();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v16 - 8);
  v18 = (&v27 - v17);
  v28 = sub_100936B38();
  v20 = v19;
  if (start)
  {
    sub_100935FE8();
    (*(v13 + 56))(v18, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v18, 1, 1, v12);
  }

  digestCopy = digest;
  sub_100935FE8();
  if (!hint)
  {
    v22 = 0;
    if (digest)
    {
      goto LABEL_6;
    }

LABEL_8:
    v25 = 0;
    goto LABEL_9;
  }

  v22 = sub_100936B38();
  hint = v23;
  if (!digest)
  {
    goto LABEL_8;
  }

LABEL_6:
  digestCopy = sub_100936B38();
  v25 = v24;
LABEL_9:
  selfCopy = self;
  sub_10002180C(v28, v20, v18, v15, codeCopy, interfaceCopy, v22, hint, digestCopy, v25);

  (*(v13 + 8))(v15, v12);
  sub_100013814(v18, &qword_100CB4AC0);
}

- (void)deleteEndpointsWithServices:(id)services toURIs:(id)is completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = sub_100936CE8();
  sub_100014170(0, &qword_100CBA2E0);
  v8 = sub_100936CE8();
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  selfCopy = self;
  sub_100024F78(v7, v8, sub_1008F4E80, v9);
}

- (void)deleteAllStatusesForServices:(id)services toURIs:(id)is completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = sub_100936CE8();
  v8 = sub_100936CE8();
  if (v6)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v6 = sub_100796BDC;
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  v11[2] = self;
  v11[3] = v6;
  v11[4] = v9;
  v12 = *((swift_isaMask & self->super.isa) + 0x110);
  selfCopy = self;
  sub_1000254AC(v6);
  v12(sub_1008F4C98, v10, sub_1008F4DF8, v11);

  sub_1000254C0(v6);
}

- (IDSQuerySDPersistenceManager)initWithFilePath:(id)path serviceController:(id)controller
{
  if (path)
  {
    v5 = sub_100936B38();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  controllerCopy = controller;
  return sub_1008A5B84(v5, v7, controller);
}

- (void)cleanupTimerFired
{
  selfCopy = self;
  sub_10001D6D8();
}

- (IDSQuerySDPersistenceManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)deleteEndpointsWithService:(id)service completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_100936B38();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1008F4E80;
  *(v11 + 24) = v9;
  v12 = *((swift_isaMask & self->super.isa) + 0x110);
  selfCopy = self;

  v12(sub_1008F4D28, v10, sub_1008F5078, v11);
}

- (void)deleteEndpointsWithService:(id)service fromURI:(id)i toURI:(id)rI completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = sub_100936B38();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  iCopy = i;
  rICopy = rI;
  selfCopy = self;
  prefixedURI = [iCopy prefixedURI];
  v17 = sub_100936B38();
  v19 = v18;

  prefixedURI2 = [rICopy prefixedURI];
  v21 = sub_100936B38();
  v23 = v22;

  v24 = swift_allocObject();
  v24[2] = v10;
  v24[3] = v12;
  v24[4] = v21;
  v24[5] = v23;
  v24[6] = v17;
  v24[7] = v19;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1008F4E80;
  *(v25 + 24) = v13;
  v26 = *((swift_isaMask & selfCopy->super.isa) + 0x110);

  v26(sub_1008F5020, v24, sub_1008F5074, v25);
}

- (void)deleteEndpointsWithServices:(id)services fromURI:(id)i toURI:(id)rI completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = sub_100936CE8();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  iCopy = i;
  rICopy = rI;
  selfCopy = self;
  prefixedURI = [iCopy prefixedURI];
  v15 = sub_100936B38();
  v17 = v16;

  prefixedURI2 = [rICopy prefixedURI];
  v19 = sub_100936B38();
  v21 = v20;

  v22 = swift_allocObject();
  v22[2] = v10;
  v22[3] = v19;
  v22[4] = v21;
  v22[5] = v15;
  v22[6] = v17;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1008F4E80;
  *(v23 + 24) = v11;
  v24 = *((swift_isaMask & selfCopy->super.isa) + 0x110);

  v24(sub_1008F5008, v22, sub_1008F5070, v23);
}

- (void)deleteAllWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1008F4E80;
  *(v6 + 24) = v5;
  v7 = *((swift_isaMask & self->super.isa) + 0x110);
  selfCopy = self;

  v7(sub_1008AD440, 0, sub_1008F506C, v6);
}

- (void)savePublicIdentityData:(id)data token:(id)token uri:(id)uri service:(id)service completion:(id)completion
{
  v12 = _Block_copy(completion);
  dataCopy = data;
  tokenCopy = token;
  uriCopy = uri;
  serviceCopy = service;
  selfCopy = self;
  v17 = sub_100935EA8();
  v19 = v18;

  v20 = sub_100935EA8();
  v22 = v21;

  v23 = sub_100936B38();
  v25 = v24;

  v26 = swift_allocObject();
  *(v26 + 16) = v12;
  v27 = swift_allocObject();
  v27[2] = v23;
  v27[3] = v25;
  v27[4] = v20;
  v27[5] = v22;
  v27[6] = uriCopy;
  v27[7] = v17;
  v27[8] = v19;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1008F4E80;
  *(v28 + 24) = v26;
  v29 = *((swift_isaMask & selfCopy->super.isa) + 0x110);
  v30 = uriCopy;
  sub_100715738(v20, v22);
  sub_100715738(v17, v19);

  v29(sub_1008F4FF0, v27, sub_1008F5068, v28);

  sub_1007156D8(v20, v22);
  sub_1007156D8(v17, v19);
}

- (void)saveEndpoints:(id)endpoints ktContext:(id)context service:(id)service fromURI:(id)i toURI:(id)rI completion:(id)completion
{
  v12 = _Block_copy(completion);
  sub_100014170(0, &qword_100CB4AD0);
  v13 = sub_100936CE8();
  v14 = sub_100936B38();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  v18 = swift_allocObject();
  v18[2] = v13;
  v18[3] = self;
  v18[4] = v14;
  v18[5] = v16;
  v18[6] = rI;
  v18[7] = context;
  v18[8] = i;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1008F4E80;
  *(v19 + 24) = v17;
  v20 = *((swift_isaMask & self->super.isa) + 0x110);
  contextCopy = context;
  iCopy = i;
  rICopy = rI;
  selfCopy = self;
  v24 = rICopy;
  v25 = contextCopy;
  v26 = iCopy;

  v20(sub_1008F4FD8, v18, sub_1008F5064, v19);
}

- (void)updateKeyTransparencyForEndpoints:(id)endpoints withKTContext:(id)context
{
  sub_100014170(0, &qword_100CB4AD0);
  v6 = sub_100936CE8();
  contextCopy = context;
  selfCopy = self;
  sub_1008EBF4C(v6, contextCopy);
}

- (void)updateKeyTransparencyContext:(id)context uri:(id)uri service:(id)service completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = sub_100936B38();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = swift_allocObject();
  v14[2] = self;
  v14[3] = v10;
  v14[4] = v12;
  v14[5] = uri;
  v14[6] = context;
  v15 = swift_allocObject();
  v15[2] = self;
  v15[3] = v10;
  v15[4] = v12;
  v15[5] = uri;
  v15[6] = sub_1000156B4;
  v15[7] = v13;
  v16 = *((swift_isaMask & self->super.isa) + 0x110);
  selfCopy = self;
  uriCopy = uri;
  v19 = selfCopy;
  v20 = uriCopy;
  contextCopy = context;
  v22 = v20;
  v24 = v19;
  v23 = contextCopy;

  v16(sub_1008F4FC0, v14, sub_1008F4E84, v15);
}

- (id)publicIdentityDataFor:(id)for uri:(id)uri service:(id)service
{
  forCopy = for;
  uriCopy = uri;
  serviceCopy = service;
  selfCopy = self;
  v12 = sub_100935EA8();
  v14 = v13;

  v15 = sub_100936B38();
  v17 = v16;

  v18 = sub_1008B7350(v12, v14, uriCopy, v15, v17);
  v20 = v19;

  sub_1007156D8(v12, v14);

  if (v20 >> 60 == 15)
  {
    v21 = 0;
  }

  else
  {
    isa = sub_100935E78().super.isa;
    sub_10001C370(v18, v20);
    v21 = isa;
  }

  return v21;
}

- (id)recentURIsSinceDate:(id)date service:(id)service
{
  v5 = sub_100936038();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100935FE8();
  v9 = sub_100936B38();
  v11 = v10;
  selfCopy = self;
  sub_1008B84C8(v8, v9, v11);

  (*(v6 + 8))(v8, v5);
  sub_100014170(0, &qword_100CBA2E0);
  v13.super.isa = sub_100936CD8().super.isa;

  return v13.super.isa;
}

- (BOOL)senderKeyMessageSupportedFor:(id)for
{
  sub_100014170(0, &qword_100CB4AD0);
  v4 = sub_100936CE8();
  selfCopy = self;
  v6 = sub_1008ECDB0(v4);

  return v6;
}

- (id)decryptingKeyIDsWithSenderURI:(id)i receiverURI:(id)rI
{
  iCopy = i;
  rICopy = rI;
  selfCopy = self;
  sub_1008C9388(iCopy, rICopy);

  v9.super.isa = sub_100936CD8().super.isa;

  return v9.super.isa;
}

- (BOOL)hasAnyDecryptingKeyIDWithSenderURI:(id)i receiverURI:(id)rI
{
  iCopy = i;
  rICopy = rI;
  selfCopy = self;
  v9 = sub_1008C9B64(iCopy, rICopy);

  return v9 & 1;
}

- (BOOL)hasUsableSenderKeyFor:(id)for fromAny:(id)any
{
  sub_100014170(0, &qword_100CBA2E0);
  v6 = sub_100936CE8();
  forCopy = for;
  selfCopy = self;
  LOBYTE(self) = sub_1008CA494(forCopy, v6);

  return self & 1;
}

- (void)deleteAllSenderKeysWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100796BDC;
  *(v6 + 24) = v5;
  v7 = *((swift_isaMask & self->super.isa) + 0x110);
  selfCopy = self;

  v7(sub_1008CBF84, 0, sub_1008F5060, v6);
}

- (void)updateSenderKeyValidityFor:(id)for markInvalid:(BOOL)invalid completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_100796BDC;
  }

  else
  {
    v9 = 0;
  }

  forCopy = for;
  selfCopy = self;
  prefixedURI = [forCopy prefixedURI];
  v12 = sub_100936B38();
  v14 = v13;

  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  *(v15 + 32) = invalid;
  v16 = swift_allocObject();
  v16[2] = selfCopy;
  v16[3] = v8;
  v16[4] = v9;
  v17 = *((swift_isaMask & selfCopy->super.isa) + 0x110);
  v18 = selfCopy;
  sub_1000254AC(v8);
  v17(sub_1008F4DDC, v15, sub_1008F4E10, v16);

  sub_1000254C0(v8);
}

- (void)performDBCleanupTasksWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_100796BDC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1008D0158(v7, v6);
  sub_1000254C0(v7);
}

- (void)cleanupExpiredSessionsIfNeededWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_100796BDC;
  }

  else
  {
    v5 = 0;
  }

  v6 = swift_allocObject();
  v6[2] = self;
  v6[3] = v4;
  v6[4] = v5;
  v7 = *((swift_isaMask & self->super.isa) + 0x110);
  selfCopy = self;
  sub_1000254AC(v4);
  v7(sub_1008D07CC, 0, sub_1008F4E0C, v6);

  sub_1000254C0(v4);
}

- (void)cleanupShortHandlesWithExpireDuration:(double)duration completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100796BDC;
  }

  else
  {
    v7 = 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = self;
  *(v8 + 24) = duration;
  v9 = swift_allocObject();
  v9[2] = self;
  v9[3] = v6;
  v9[4] = v7;
  v10 = *((swift_isaMask & self->super.isa) + 0x110);
  selfCopy = self;
  sub_1000254AC(v6);
  v10(sub_1008F4D10, v8, sub_1008F4E08, v9);

  sub_1000254C0(v6);
}

- (void)cleanupInvalidSenderKeyEntriesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1008D3E88(sub_100796BDC, v5);
}

- (void)cleanupOldRegistrationEvents
{
  v3 = swift_allocObject();
  *(v3 + 16) = self;
  v4 = *((swift_isaMask & self->super.isa) + 0x110);
  selfCopy = self;
  v4(sub_1008D81A4, 0, sub_1008F5084, v3);
}

- (id)lastQualifiedContactsMetric
{
  v7 = 0;
  v6[2] = &v7;
  v6[3] = self;
  v2 = *((swift_isaMask & self->super.isa) + 0x118);
  selfCopy = self;
  v2(0, sub_1008F4CF8, v6);

  v4 = v7;

  return v4;
}

- (void)updateQualifiedContactsCountWithMetric:(id)metric
{
  v5 = swift_allocObject();
  *(v5 + 16) = metric;
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = *((swift_isaMask & self->super.isa) + 0x110);
  metricCopy = metric;
  selfCopy = self;
  v10 = metricCopy;
  v11 = selfCopy;
  v7(sub_1008F4DA8, v5, sub_1008F5080, v6);
}

- (id)deviceTokensForURI:(id)i service:(id)service
{
  v18 = &_swiftEmptySetSingleton;
  selfCopy = self;
  v14 = sub_100936B38();
  v17 = &v18;
  v5 = swift_isaMask & selfCopy->super.isa;
  v15 = v6;
  iCopy = i;
  v7 = *(v5 + 280);
  iCopy2 = i;
  v9 = selfCopy;
  v7(0, sub_1008F4F78, &v12);

  sub_1008E438C(v18, &qword_100CB34A0, IDSPushToken_ptr, &qword_100CBA5A0);

  sub_100014170(0, &qword_100CB34A0);
  v10.super.isa = sub_100936CD8().super.isa;

  return v10.super.isa;
}

- (int64_t)deviceHasCapabilityWithService:(id)service uri:(id)uri fromURI:(id)i pushToken:(id)token capability:(id)capability
{
  v11 = sub_100936B38();
  v13 = v12;
  v22[2] = self;
  v22[3] = v11;
  v22[8] = &v23;
  v22[9] = sub_100936B38();
  v14 = swift_isaMask & self->super.isa;
  v23 = 0;
  v22[4] = v13;
  v22[5] = uri;
  v22[6] = token;
  v22[7] = i;
  v22[10] = v15;
  v16 = *(v14 + 280);
  uriCopy = uri;
  iCopy = i;
  tokenCopy = token;
  selfCopy = self;
  v16(0, sub_1008F4F60, v22);

  return v23;
}

- (id)sessionTokenForService:(id)service fromURI:(id)i toURI:(id)rI pushToken:(id)token
{
  v25 = sub_100936B38();
  v9 = v8;
  v10 = sub_100936B38();
  v12 = v11;
  v13 = sub_100936B38();
  v15 = v14;
  tokenCopy = token;
  selfCopy = self;
  v18 = sub_100935EA8();
  v20 = v19;

  v37 = xmmword_1009AD8D0;
  v27 = selfCopy;
  v28 = v25;
  v29 = v9;
  v30 = v10;
  v31 = v12;
  v32 = v13;
  v33 = v15;
  v34 = v18;
  v35 = v20;
  v36 = &v37;
  (*((swift_isaMask & selfCopy->super.isa) + 0x118))(0, sub_1008F4F48, v26);

  sub_1007156D8(v18, v20);
  v21 = v37;
  sub_1007483B0(v37, *(&v37 + 1));
  sub_10001C370(v21, *(&v21 + 1));
  v22 = 0;
  if (*(&v21 + 1) >> 60 != 15)
  {
    isa = sub_100935E78().super.isa;
    sub_10001C370(v21, *(&v21 + 1));
    v22 = isa;
  }

  return v22;
}

- (id)urisMatchingPushToken:(id)token service:(id)service
{
  v20 = &_swiftEmptyArrayStorage;
  selfCopy = self;
  v16 = sub_100936B38();
  v19 = &v20;
  v5 = swift_isaMask & selfCopy->super.isa;
  v17 = v6;
  tokenCopy = token;
  v7 = *(v5 + 280);
  tokenCopy2 = token;
  v9 = selfCopy;
  v7(0, sub_1008F4F18, &v14);

  v11 = sub_100746E48(v10);

  sub_1008E438C(v11, &qword_100CBA2E0, IDSURI_ptr, &unk_100CB4A40);

  sub_100014170(0, &qword_100CBA2E0);
  v12.super.isa = sub_100936CD8().super.isa;

  return v12.super.isa;
}

- (id)publicKeyForService:(id)service pushToken:(id)token
{
  selfCopy = self;
  v16 = sub_100936B38();
  v19 = &v20;
  v5 = swift_isaMask & selfCopy->super.isa;
  v20 = xmmword_1009AD8D0;
  v17 = v6;
  tokenCopy = token;
  v7 = *(v5 + 280);
  tokenCopy2 = token;
  v9 = selfCopy;
  v7(0, sub_1008F4F00, &v14);

  v10 = v20;
  sub_1007483B0(v20, *(&v20 + 1));
  sub_10001C370(v10, *(&v10 + 1));
  v11 = 0;
  if (*(&v10 + 1) >> 60 != 15)
  {
    isa = sub_100935E78().super.isa;
    sub_10001C370(v10, *(&v10 + 1));
    v11 = isa;
  }

  return v11;
}

- (id)publicDeviceIdentityContainerForPushToken:(id)token
{
  v10 = 0;
  v9[2] = self;
  v9[3] = token;
  v9[4] = &v10;
  v4 = *((swift_isaMask & self->super.isa) + 0x118);
  tokenCopy = token;
  selfCopy = self;
  v4(0, sub_1008F4DC4, v9);

  v7 = v10;

  return v7;
}

- (id)senderCorrelationIdentifierForService:(id)service uri:(id)uri
{
  selfCopy = self;
  v14 = sub_100936B38();
  v17 = &v18;
  v5 = swift_isaMask & selfCopy->super.isa;
  v18 = 0;
  v19 = 0;
  v15 = v6;
  uriCopy = uri;
  v7 = *(v5 + 280);
  uriCopy2 = uri;
  v9 = selfCopy;
  v7(0, sub_1008F4EE8, &v12);

  if (v19)
  {
    v10 = sub_100936B28();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)earliestExpirationDateForService:(id)service fromURI:(id)i toURI:(id)rI
{
  v8 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v8 - 8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v28 - v12;
  v14 = sub_100936B38();
  v16 = v15;
  v28[1] = v15;
  v17 = sub_100936038();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v10, 1, 1, v17);
  selfCopy = self;
  v31 = v14;
  v19 = swift_isaMask & self->super.isa;
  v32 = v16;
  iCopy = i;
  rICopy = rI;
  v35 = v10;
  v20 = *(v19 + 280);
  iCopy2 = i;
  rICopy2 = rI;
  selfCopy2 = self;
  v20(0, sub_1008F4ED0, v29);

  sub_100021E3C(v10, v13, &qword_100CB4AC0);
  v24 = (*(v18 + 48))(v13, 1, v17);
  v25 = 0;
  if (v24 != 1)
  {
    isa = sub_100935F58().super.isa;
    (*(v18 + 8))(v13, v17);
    v25 = isa;
  }

  return v25;
}

- (id)endpointForPushToken:(id)token service:(id)service fromURI:(id)i toURI:(id)rI
{
  selfCopy = self;
  v20 = sub_100936B38();
  v25 = &v26;
  v9 = swift_isaMask & selfCopy->super.isa;
  v26 = 0;
  v21 = v10;
  rICopy = rI;
  tokenCopy = token;
  iCopy = i;
  v11 = *(v9 + 280);
  tokenCopy2 = token;
  iCopy2 = i;
  rICopy2 = rI;
  v15 = selfCopy;
  v11(0, sub_1008F4EB8, &v18);

  v16 = v26;

  return v16;
}

- (id)peerIDKeysForService:(id)service
{
  v13 = &_swiftEmptySetSingleton;
  selfCopy = self;
  v10 = sub_100936B38();
  v11 = v3;
  v12 = &v13;
  v4 = *((swift_isaMask & selfCopy->super.isa) + 0x118);
  v5 = selfCopy;
  v4(0, sub_1008F4C68, &v8);

  sub_1008E438C(v13, &qword_100CBA400, off_100BD2EF8, &qword_100CBA410);

  sub_100014170(0, &qword_100CBA400);
  v6.super.isa = sub_100936CD8().super.isa;

  return v6.super.isa;
}

- (id)allPeerIDKeys
{
  v7 = &_swiftEmptySetSingleton;
  v6[2] = self;
  v6[3] = &v7;
  v2 = *((swift_isaMask & self->super.isa) + 0x118);
  selfCopy = self;
  v2(0, sub_1008F4CE0, v6);
  sub_1008E438C(v7, &qword_100CBA400, off_100BD2EF8, &qword_100CBA410);

  sub_100014170(0, &qword_100CBA400);
  v4.super.isa = sub_100936CD8().super.isa;

  return v4.super.isa;
}

- (id)peerMapRepresentation
{
  selfCopy = self;
  v6 = sub_1008EB9B4(&_swiftEmptyArrayStorage);
  v5[2] = selfCopy;
  v5[3] = &v6;
  (*((swift_isaMask & selfCopy->super.isa) + 0x118))(0, sub_1008F4CC8, v5);

  sub_100014170(0, &qword_100CBA400);
  sub_100014170(0, &qword_100CBA408);
  sub_100746FD4(&qword_100CBA410, &qword_100CBA400);
  v3.super.isa = sub_100936A58().super.isa;

  return v3.super.isa;
}

- (id)uriForShortHandle:(id)handle
{
  v4 = sub_100936B38();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1008DE830(v4, v6);

  return v8;
}

- (id)shortHandleForUri:(id)uri
{
  uriCopy = uri;
  selfCopy = self;
  sub_1008DF1E4(uriCopy);
  v7 = v6;

  if (v7)
  {
    v8 = sub_100936B28();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)loadAllStatusesForService:(id)service
{
  v4 = sub_100936B38();
  v6 = v5;
  selfCopy = self;
  sub_1008DFBBC(v4, v6);

  sub_100014170(0, &qword_100CBA3F8);
  v8.super.isa = sub_100936CD8().super.isa;

  return v8.super.isa;
}

- (id)loadStatusForService:(id)service uri:(id)uri
{
  v5 = sub_100936B38();
  v7 = v6;
  v8 = sub_100936B38();
  v10 = v9;
  selfCopy = self;
  v12 = sub_1008E03BC(v5, v7, v8, v10);

  return v12;
}

- (void)saveStatus:(id)status completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100796BDC;
  }

  else
  {
    v7 = 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = status;
  v9 = swift_allocObject();
  v9[2] = self;
  v9[3] = v6;
  v9[4] = v7;
  v10 = *((swift_isaMask & self->super.isa) + 0x110);
  statusCopy = status;
  selfCopy = self;
  v14 = statusCopy;
  v13 = selfCopy;
  sub_1000254AC(v6);
  v10(sub_1008F4D90, v8, sub_1008F4E04, v9);

  sub_1000254C0(v6);
}

- (void)deleteStatus:(id)status completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100796BDC;
  }

  else
  {
    v7 = 0;
  }

  statusCopy = status;
  selfCopy = self;
  sub_1008E14EC(statusCopy, v6, v7);
  sub_1000254C0(v6);
}

- (void)deleteStatusForService:(id)service URI:(id)i completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = sub_100936B38();
  v9 = v8;
  v10 = sub_100936B38();
  v12 = v11;
  if (v6)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v6;
    v6 = sub_100796BDC;
  }

  else
  {
    v13 = 0;
  }

  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v12;
  v14[4] = v7;
  v14[5] = v9;
  v15 = swift_allocObject();
  v15[2] = self;
  v15[3] = v6;
  v15[4] = v13;
  v16 = *((swift_isaMask & self->super.isa) + 0x110);
  selfCopy = self;
  sub_1000254AC(v6);
  v16(sub_1008F4C50, v14, sub_1008F4E00, v15);

  sub_1000254C0(v6);
}

- (void)deleteAllStatusesForService:(id)service completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_100936B38();
  v8 = v7;
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v5 = sub_100796BDC;
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  v11[2] = self;
  v11[3] = v5;
  v11[4] = v9;
  v12 = *((swift_isaMask & self->super.isa) + 0x110);
  selfCopy = self;
  sub_1000254AC(v5);
  v12(sub_1008F4CB0, v10, sub_1008F4DFC, v11);

  sub_1000254C0(v5);
}

- (void)deleteAllStatusesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_100795E20;
  }

  else
  {
    v5 = 0;
  }

  v6 = swift_allocObject();
  v6[2] = self;
  v6[3] = v4;
  v6[4] = v5;
  v7 = *((swift_isaMask & self->super.isa) + 0x110);
  selfCopy = self;
  sub_1000254AC(v4);
  v7(sub_1008E27F4, 0, sub_1008F4DF4, v6);

  sub_1000254C0(v4);
}

+ (double)dbCleanupTimeInterval
{
  sharedInstance = [objc_opt_self() sharedInstance];
  v1 = sub_100936B28();
  v2 = [sharedInstance objectForKey:v1];

  if (v2)
  {
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100014170(0, &unk_100CBA300);
    if (swift_dynamicCast())
    {
      integerValue = [v5 integerValue];

      return integerValue;
    }
  }

  else
  {
    sub_100013814(v8, &qword_100CB4A90);
  }

  return 86400.0;
}

@end