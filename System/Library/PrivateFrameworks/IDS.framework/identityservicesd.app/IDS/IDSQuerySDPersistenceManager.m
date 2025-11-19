@interface IDSQuerySDPersistenceManager
+ (double)dbCleanupTimeInterval;
- (BOOL)hasAnyDecryptingKeyIDWithSenderURI:(id)a3 receiverURI:(id)a4;
- (BOOL)hasUsableSenderKeyFor:(id)a3 fromAny:(id)a4;
- (BOOL)senderKeyMessageSupportedFor:(id)a3;
- (IDSQuerySDPersistenceManager)init;
- (IDSQuerySDPersistenceManager)initWithFilePath:(id)a3 serviceController:(id)a4;
- (id)allPeerIDKeys;
- (id)decryptingKeyIDsWithSenderURI:(id)a3 receiverURI:(id)a4;
- (id)deviceTokensForURI:(id)a3 service:(id)a4;
- (id)earliestExpirationDateForService:(id)a3 fromURI:(id)a4 toURI:(id)a5;
- (id)endpointForPushToken:(id)a3 service:(id)a4 fromURI:(id)a5 toURI:(id)a6;
- (id)fetchEndpointsWithService:(id)a3 fromURI:(id)a4 toURI:(id)a5 ignoreExpiration:(BOOL)a6;
- (id)fetchKeyTransparencyContextFor:(id)a3 service:(id)a4;
- (id)lastQualifiedContactsMetric;
- (id)loadAllStatusesForService:(id)a3;
- (id)loadStatusForService:(id)a3 uri:(id)a4;
- (id)peerIDKeysForService:(id)a3;
- (id)peerMapRepresentation;
- (id)publicDeviceIdentityContainerForPushToken:(id)a3;
- (id)publicIdentityDataFor:(id)a3 uri:(id)a4 service:(id)a5;
- (id)publicKeyForService:(id)a3 pushToken:(id)a4;
- (id)recentURIsSinceDate:(id)a3 service:(id)a4;
- (id)senderCorrelationIdentifierForService:(id)a3 uri:(id)a4;
- (id)sessionTokenForService:(id)a3 fromURI:(id)a4 toURI:(id)a5 pushToken:(id)a6;
- (id)shortHandleForUri:(id)a3;
- (id)uriForShortHandle:(id)a3;
- (id)urisMatchingPushToken:(id)a3 service:(id)a4;
- (int64_t)deviceHasCapabilityWithService:(id)a3 uri:(id)a4 fromURI:(id)a5 pushToken:(id)a6 capability:(id)a7;
- (void)cleanupExpiredSessionsIfNeededWithCompletion:(id)a3;
- (void)cleanupInvalidSenderKeyEntriesWithCompletion:(id)a3;
- (void)cleanupOldRegistrationEvents;
- (void)cleanupShortHandlesWithExpireDuration:(double)a3 completion:(id)a4;
- (void)cleanupTimerFired;
- (void)deleteAllSenderKeysWithCompletion:(id)a3;
- (void)deleteAllStatusesForService:(id)a3 completion:(id)a4;
- (void)deleteAllStatusesForServices:(id)a3 toURIs:(id)a4 completion:(id)a5;
- (void)deleteAllStatusesWithCompletion:(id)a3;
- (void)deleteAllWithCompletion:(id)a3;
- (void)deleteEndpointsWithService:(id)a3 completion:(id)a4;
- (void)deleteEndpointsWithService:(id)a3 fromURI:(id)a4 toURI:(id)a5 completion:(id)a6;
- (void)deleteEndpointsWithServices:(id)a3 fromURI:(id)a4 toURI:(id)a5 completion:(id)a6;
- (void)deleteEndpointsWithServices:(id)a3 toURIs:(id)a4 completion:(id)a5;
- (void)deletePublicIdentitiesBeforeDate:(id)a3 afterDate:(id)a4 completion:(id)a5;
- (void)deleteStatus:(id)a3 completion:(id)a4;
- (void)deleteStatusForService:(id)a3 URI:(id)a4 completion:(id)a5;
- (void)performDBCleanupTasksWithCompletion:(id)a3;
- (void)saveEndpoints:(id)a3 ktContext:(id)a4 service:(id)a5 fromURI:(id)a6 toURI:(id)a7 completion:(id)a8;
- (void)savePublicIdentityData:(id)a3 token:(id)a4 uri:(id)a5 service:(id)a6 completion:(id)a7;
- (void)saveRegistrationEventWithBagKey:(id)a3 requestStart:(id)a4 completionTime:(id)a5 resultCode:(int64_t)a6 interface:(unint64_t)a7 splunkHint:(id)a8 baaSigningDigest:(id)a9;
- (void)saveStatus:(id)a3 completion:(id)a4;
- (void)updateKeyTransparencyContext:(id)a3 uri:(id)a4 service:(id)a5 completion:(id)a6;
- (void)updateKeyTransparencyForEndpoints:(id)a3 withKTContext:(id)a4;
- (void)updateQualifiedContactsCountWithMetric:(id)a3;
- (void)updateSenderKeyValidityFor:(id)a3 markInvalid:(BOOL)a4 completion:(id)a5;
@end

@implementation IDSQuerySDPersistenceManager

- (void)deletePublicIdentitiesBeforeDate:(id)a3 afterDate:(id)a4 completion:(id)a5
{
  v31 = a4;
  v34 = self;
  v6 = sub_100936038();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v31 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v31 - v15;
  __chkstk_darwin(v14);
  v18 = &v31 - v17;
  v19 = _Block_copy(a5);
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
  v28 = *((swift_isaMask & v34->super.isa) + 0x110);
  v29 = v34;

  v28(sub_1008F5038, v25, sub_1008F507C, v27);

  v30 = *(v7 + 8);
  v30(v32, v6);
  v30(v33, v6);
}

- (id)fetchEndpointsWithService:(id)a3 fromURI:(id)a4 toURI:(id)a5 ignoreExpiration:(BOOL)a6
{
  v24 = &_swiftEmptyArrayStorage;
  v17 = self;
  v18 = sub_100936B38();
  v19 = v9;
  v20 = a5;
  v21 = a4;
  v22 = a6;
  v23 = &v24;
  v10 = *((swift_isaMask & v17->super.isa) + 0x118);
  v11 = a4;
  v12 = a5;
  v13 = v17;
  v10(0, sub_1008F4FA8, &v16);

  sub_100014170(0, &qword_100CB4AD0);
  v14.super.isa = sub_100936CD8().super.isa;

  return v14.super.isa;
}

- (id)fetchKeyTransparencyContextFor:(id)a3 service:(id)a4
{
  v13 = self;
  v14 = sub_100936B38();
  v17 = &v18;
  v5 = swift_isaMask & v13->super.isa;
  v18 = 0;
  v15 = v6;
  v16 = a3;
  v7 = *(v5 + 280);
  v8 = a3;
  v9 = v13;
  v7(0, sub_1008F4F90, &v12);

  v10 = v18;

  return v10;
}

- (void)saveRegistrationEventWithBagKey:(id)a3 requestStart:(id)a4 completionTime:(id)a5 resultCode:(int64_t)a6 interface:(unint64_t)a7 splunkHint:(id)a8 baaSigningDigest:(id)a9
{
  v29 = a6;
  v30 = a7;
  v12 = sub_100936038();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100706B30(&qword_100CB4AC0);
  __chkstk_darwin(v16 - 8);
  v18 = (&v27 - v17);
  v28 = sub_100936B38();
  v20 = v19;
  if (a4)
  {
    sub_100935FE8();
    (*(v13 + 56))(v18, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v18, 1, 1, v12);
  }

  v21 = a9;
  sub_100935FE8();
  if (!a8)
  {
    v22 = 0;
    if (a9)
    {
      goto LABEL_6;
    }

LABEL_8:
    v25 = 0;
    goto LABEL_9;
  }

  v22 = sub_100936B38();
  a8 = v23;
  if (!a9)
  {
    goto LABEL_8;
  }

LABEL_6:
  v21 = sub_100936B38();
  v25 = v24;
LABEL_9:
  v26 = self;
  sub_10002180C(v28, v20, v18, v15, v29, v30, v22, a8, v21, v25);

  (*(v13 + 8))(v15, v12);
  sub_100013814(v18, &qword_100CB4AC0);
}

- (void)deleteEndpointsWithServices:(id)a3 toURIs:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_100936CE8();
  sub_100014170(0, &qword_100CBA2E0);
  v8 = sub_100936CE8();
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v10 = self;
  sub_100024F78(v7, v8, sub_1008F4E80, v9);
}

- (void)deleteAllStatusesForServices:(id)a3 toURIs:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
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
  v13 = self;
  sub_1000254AC(v6);
  v12(sub_1008F4C98, v10, sub_1008F4DF8, v11);

  sub_1000254C0(v6);
}

- (IDSQuerySDPersistenceManager)initWithFilePath:(id)a3 serviceController:(id)a4
{
  if (a3)
  {
    v5 = sub_100936B38();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1008A5B84(v5, v7, a4);
}

- (void)cleanupTimerFired
{
  v2 = self;
  sub_10001D6D8();
}

- (IDSQuerySDPersistenceManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)deleteEndpointsWithService:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
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
  v13 = self;

  v12(sub_1008F4D28, v10, sub_1008F5078, v11);
}

- (void)deleteEndpointsWithService:(id)a3 fromURI:(id)a4 toURI:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_100936B38();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = a4;
  v15 = a5;
  v27 = self;
  v16 = [v14 prefixedURI];
  v17 = sub_100936B38();
  v19 = v18;

  v20 = [v15 prefixedURI];
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
  v26 = *((swift_isaMask & v27->super.isa) + 0x110);

  v26(sub_1008F5020, v24, sub_1008F5074, v25);
}

- (void)deleteEndpointsWithServices:(id)a3 fromURI:(id)a4 toURI:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_100936CE8();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = a4;
  v13 = a5;
  v25 = self;
  v14 = [v12 prefixedURI];
  v15 = sub_100936B38();
  v17 = v16;

  v18 = [v13 prefixedURI];
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
  v24 = *((swift_isaMask & v25->super.isa) + 0x110);

  v24(sub_1008F5008, v22, sub_1008F5070, v23);
}

- (void)deleteAllWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1008F4E80;
  *(v6 + 24) = v5;
  v7 = *((swift_isaMask & self->super.isa) + 0x110);
  v8 = self;

  v7(sub_1008AD440, 0, sub_1008F506C, v6);
}

- (void)savePublicIdentityData:(id)a3 token:(id)a4 uri:(id)a5 service:(id)a6 completion:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = a3;
  v14 = a4;
  v31 = a5;
  v15 = a6;
  v16 = self;
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
  v27[6] = v31;
  v27[7] = v17;
  v27[8] = v19;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1008F4E80;
  *(v28 + 24) = v26;
  v29 = *((swift_isaMask & v16->super.isa) + 0x110);
  v30 = v31;
  sub_100715738(v20, v22);
  sub_100715738(v17, v19);

  v29(sub_1008F4FF0, v27, sub_1008F5068, v28);

  sub_1007156D8(v20, v22);
  sub_1007156D8(v17, v19);
}

- (void)saveEndpoints:(id)a3 ktContext:(id)a4 service:(id)a5 fromURI:(id)a6 toURI:(id)a7 completion:(id)a8
{
  v12 = _Block_copy(a8);
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
  v18[6] = a7;
  v18[7] = a4;
  v18[8] = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1008F4E80;
  *(v19 + 24) = v17;
  v20 = *((swift_isaMask & self->super.isa) + 0x110);
  v21 = a4;
  v22 = a6;
  v23 = a7;
  v27 = self;
  v24 = v23;
  v25 = v21;
  v26 = v22;

  v20(sub_1008F4FD8, v18, sub_1008F5064, v19);
}

- (void)updateKeyTransparencyForEndpoints:(id)a3 withKTContext:(id)a4
{
  sub_100014170(0, &qword_100CB4AD0);
  v6 = sub_100936CE8();
  v7 = a4;
  v8 = self;
  sub_1008EBF4C(v6, v7);
}

- (void)updateKeyTransparencyContext:(id)a3 uri:(id)a4 service:(id)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_100936B38();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = swift_allocObject();
  v14[2] = self;
  v14[3] = v10;
  v14[4] = v12;
  v14[5] = a4;
  v14[6] = a3;
  v15 = swift_allocObject();
  v15[2] = self;
  v15[3] = v10;
  v15[4] = v12;
  v15[5] = a4;
  v15[6] = sub_1000156B4;
  v15[7] = v13;
  v16 = *((swift_isaMask & self->super.isa) + 0x110);
  v17 = self;
  v18 = a4;
  v19 = v17;
  v20 = v18;
  v21 = a3;
  v22 = v20;
  v24 = v19;
  v23 = v21;

  v16(sub_1008F4FC0, v14, sub_1008F4E84, v15);
}

- (id)publicIdentityDataFor:(id)a3 uri:(id)a4 service:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_100935EA8();
  v14 = v13;

  v15 = sub_100936B38();
  v17 = v16;

  v18 = sub_1008B7350(v12, v14, v9, v15, v17);
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

- (id)recentURIsSinceDate:(id)a3 service:(id)a4
{
  v5 = sub_100936038();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100935FE8();
  v9 = sub_100936B38();
  v11 = v10;
  v12 = self;
  sub_1008B84C8(v8, v9, v11);

  (*(v6 + 8))(v8, v5);
  sub_100014170(0, &qword_100CBA2E0);
  v13.super.isa = sub_100936CD8().super.isa;

  return v13.super.isa;
}

- (BOOL)senderKeyMessageSupportedFor:(id)a3
{
  sub_100014170(0, &qword_100CB4AD0);
  v4 = sub_100936CE8();
  v5 = self;
  v6 = sub_1008ECDB0(v4);

  return v6;
}

- (id)decryptingKeyIDsWithSenderURI:(id)a3 receiverURI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1008C9388(v6, v7);

  v9.super.isa = sub_100936CD8().super.isa;

  return v9.super.isa;
}

- (BOOL)hasAnyDecryptingKeyIDWithSenderURI:(id)a3 receiverURI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1008C9B64(v6, v7);

  return v9 & 1;
}

- (BOOL)hasUsableSenderKeyFor:(id)a3 fromAny:(id)a4
{
  sub_100014170(0, &qword_100CBA2E0);
  v6 = sub_100936CE8();
  v7 = a3;
  v8 = self;
  LOBYTE(self) = sub_1008CA494(v7, v6);

  return self & 1;
}

- (void)deleteAllSenderKeysWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100796BDC;
  *(v6 + 24) = v5;
  v7 = *((swift_isaMask & self->super.isa) + 0x110);
  v8 = self;

  v7(sub_1008CBF84, 0, sub_1008F5060, v6);
}

- (void)updateSenderKeyValidityFor:(id)a3 markInvalid:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
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

  v19 = a3;
  v10 = self;
  v11 = [v19 prefixedURI];
  v12 = sub_100936B38();
  v14 = v13;

  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  *(v15 + 32) = a4;
  v16 = swift_allocObject();
  v16[2] = v10;
  v16[3] = v8;
  v16[4] = v9;
  v17 = *((swift_isaMask & v10->super.isa) + 0x110);
  v18 = v10;
  sub_1000254AC(v8);
  v17(sub_1008F4DDC, v15, sub_1008F4E10, v16);

  sub_1000254C0(v8);
}

- (void)performDBCleanupTasksWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  sub_1008D0158(v7, v6);
  sub_1000254C0(v7);
}

- (void)cleanupExpiredSessionsIfNeededWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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
  v8 = self;
  sub_1000254AC(v4);
  v7(sub_1008D07CC, 0, sub_1008F4E0C, v6);

  sub_1000254C0(v4);
}

- (void)cleanupShortHandlesWithExpireDuration:(double)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  v9[2] = self;
  v9[3] = v6;
  v9[4] = v7;
  v10 = *((swift_isaMask & self->super.isa) + 0x110);
  v11 = self;
  sub_1000254AC(v6);
  v10(sub_1008F4D10, v8, sub_1008F4E08, v9);

  sub_1000254C0(v6);
}

- (void)cleanupInvalidSenderKeyEntriesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1008D3E88(sub_100796BDC, v5);
}

- (void)cleanupOldRegistrationEvents
{
  v3 = swift_allocObject();
  *(v3 + 16) = self;
  v4 = *((swift_isaMask & self->super.isa) + 0x110);
  v5 = self;
  v4(sub_1008D81A4, 0, sub_1008F5084, v3);
}

- (id)lastQualifiedContactsMetric
{
  v7 = 0;
  v6[2] = &v7;
  v6[3] = self;
  v2 = *((swift_isaMask & self->super.isa) + 0x118);
  v3 = self;
  v2(0, sub_1008F4CF8, v6);

  v4 = v7;

  return v4;
}

- (void)updateQualifiedContactsCountWithMetric:(id)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v7 = *((swift_isaMask & self->super.isa) + 0x110);
  v8 = a3;
  v9 = self;
  v10 = v8;
  v11 = v9;
  v7(sub_1008F4DA8, v5, sub_1008F5080, v6);
}

- (id)deviceTokensForURI:(id)a3 service:(id)a4
{
  v18 = &_swiftEmptySetSingleton;
  v13 = self;
  v14 = sub_100936B38();
  v17 = &v18;
  v5 = swift_isaMask & v13->super.isa;
  v15 = v6;
  v16 = a3;
  v7 = *(v5 + 280);
  v8 = a3;
  v9 = v13;
  v7(0, sub_1008F4F78, &v12);

  sub_1008E438C(v18, &qword_100CB34A0, IDSPushToken_ptr, &qword_100CBA5A0);

  sub_100014170(0, &qword_100CB34A0);
  v10.super.isa = sub_100936CD8().super.isa;

  return v10.super.isa;
}

- (int64_t)deviceHasCapabilityWithService:(id)a3 uri:(id)a4 fromURI:(id)a5 pushToken:(id)a6 capability:(id)a7
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
  v22[5] = a4;
  v22[6] = a6;
  v22[7] = a5;
  v22[10] = v15;
  v16 = *(v14 + 280);
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = self;
  v16(0, sub_1008F4F60, v22);

  return v23;
}

- (id)sessionTokenForService:(id)a3 fromURI:(id)a4 toURI:(id)a5 pushToken:(id)a6
{
  v25 = sub_100936B38();
  v9 = v8;
  v10 = sub_100936B38();
  v12 = v11;
  v13 = sub_100936B38();
  v15 = v14;
  v16 = a6;
  v17 = self;
  v18 = sub_100935EA8();
  v20 = v19;

  v37 = xmmword_1009AD8D0;
  v27 = v17;
  v28 = v25;
  v29 = v9;
  v30 = v10;
  v31 = v12;
  v32 = v13;
  v33 = v15;
  v34 = v18;
  v35 = v20;
  v36 = &v37;
  (*((swift_isaMask & v17->super.isa) + 0x118))(0, sub_1008F4F48, v26);

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

- (id)urisMatchingPushToken:(id)a3 service:(id)a4
{
  v20 = &_swiftEmptyArrayStorage;
  v15 = self;
  v16 = sub_100936B38();
  v19 = &v20;
  v5 = swift_isaMask & v15->super.isa;
  v17 = v6;
  v18 = a3;
  v7 = *(v5 + 280);
  v8 = a3;
  v9 = v15;
  v7(0, sub_1008F4F18, &v14);

  v11 = sub_100746E48(v10);

  sub_1008E438C(v11, &qword_100CBA2E0, IDSURI_ptr, &unk_100CB4A40);

  sub_100014170(0, &qword_100CBA2E0);
  v12.super.isa = sub_100936CD8().super.isa;

  return v12.super.isa;
}

- (id)publicKeyForService:(id)a3 pushToken:(id)a4
{
  v15 = self;
  v16 = sub_100936B38();
  v19 = &v20;
  v5 = swift_isaMask & v15->super.isa;
  v20 = xmmword_1009AD8D0;
  v17 = v6;
  v18 = a4;
  v7 = *(v5 + 280);
  v8 = a4;
  v9 = v15;
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

- (id)publicDeviceIdentityContainerForPushToken:(id)a3
{
  v10 = 0;
  v9[2] = self;
  v9[3] = a3;
  v9[4] = &v10;
  v4 = *((swift_isaMask & self->super.isa) + 0x118);
  v5 = a3;
  v6 = self;
  v4(0, sub_1008F4DC4, v9);

  v7 = v10;

  return v7;
}

- (id)senderCorrelationIdentifierForService:(id)a3 uri:(id)a4
{
  v13 = self;
  v14 = sub_100936B38();
  v17 = &v18;
  v5 = swift_isaMask & v13->super.isa;
  v18 = 0;
  v19 = 0;
  v15 = v6;
  v16 = a4;
  v7 = *(v5 + 280);
  v8 = a4;
  v9 = v13;
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

- (id)earliestExpirationDateForService:(id)a3 fromURI:(id)a4 toURI:(id)a5
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
  v30 = self;
  v31 = v14;
  v19 = swift_isaMask & self->super.isa;
  v32 = v16;
  v33 = a4;
  v34 = a5;
  v35 = v10;
  v20 = *(v19 + 280);
  v21 = a4;
  v22 = a5;
  v23 = self;
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

- (id)endpointForPushToken:(id)a3 service:(id)a4 fromURI:(id)a5 toURI:(id)a6
{
  v19 = self;
  v20 = sub_100936B38();
  v25 = &v26;
  v9 = swift_isaMask & v19->super.isa;
  v26 = 0;
  v21 = v10;
  v22 = a6;
  v23 = a3;
  v24 = a5;
  v11 = *(v9 + 280);
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = v19;
  v11(0, sub_1008F4EB8, &v18);

  v16 = v26;

  return v16;
}

- (id)peerIDKeysForService:(id)a3
{
  v13 = &_swiftEmptySetSingleton;
  v9 = self;
  v10 = sub_100936B38();
  v11 = v3;
  v12 = &v13;
  v4 = *((swift_isaMask & v9->super.isa) + 0x118);
  v5 = v9;
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
  v3 = self;
  v2(0, sub_1008F4CE0, v6);
  sub_1008E438C(v7, &qword_100CBA400, off_100BD2EF8, &qword_100CBA410);

  sub_100014170(0, &qword_100CBA400);
  v4.super.isa = sub_100936CD8().super.isa;

  return v4.super.isa;
}

- (id)peerMapRepresentation
{
  v2 = self;
  v6 = sub_1008EB9B4(&_swiftEmptyArrayStorage);
  v5[2] = v2;
  v5[3] = &v6;
  (*((swift_isaMask & v2->super.isa) + 0x118))(0, sub_1008F4CC8, v5);

  sub_100014170(0, &qword_100CBA400);
  sub_100014170(0, &qword_100CBA408);
  sub_100746FD4(&qword_100CBA410, &qword_100CBA400);
  v3.super.isa = sub_100936A58().super.isa;

  return v3.super.isa;
}

- (id)uriForShortHandle:(id)a3
{
  v4 = sub_100936B38();
  v6 = v5;
  v7 = self;
  v8 = sub_1008DE830(v4, v6);

  return v8;
}

- (id)shortHandleForUri:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1008DF1E4(v4);
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

- (id)loadAllStatusesForService:(id)a3
{
  v4 = sub_100936B38();
  v6 = v5;
  v7 = self;
  sub_1008DFBBC(v4, v6);

  sub_100014170(0, &qword_100CBA3F8);
  v8.super.isa = sub_100936CD8().super.isa;

  return v8.super.isa;
}

- (id)loadStatusForService:(id)a3 uri:(id)a4
{
  v5 = sub_100936B38();
  v7 = v6;
  v8 = sub_100936B38();
  v10 = v9;
  v11 = self;
  v12 = sub_1008E03BC(v5, v7, v8, v10);

  return v12;
}

- (void)saveStatus:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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
  *(v8 + 16) = a3;
  v9 = swift_allocObject();
  v9[2] = self;
  v9[3] = v6;
  v9[4] = v7;
  v10 = *((swift_isaMask & self->super.isa) + 0x110);
  v11 = a3;
  v12 = self;
  v14 = v11;
  v13 = v12;
  sub_1000254AC(v6);
  v10(sub_1008F4D90, v8, sub_1008F4E04, v9);

  sub_1000254C0(v6);
}

- (void)deleteStatus:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  sub_1008E14EC(v8, v6, v7);
  sub_1000254C0(v6);
}

- (void)deleteStatusForService:(id)a3 URI:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
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
  v17 = self;
  sub_1000254AC(v6);
  v16(sub_1008F4C50, v14, sub_1008F4E00, v15);

  sub_1000254C0(v6);
}

- (void)deleteAllStatusesForService:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
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
  v13 = self;
  sub_1000254AC(v5);
  v12(sub_1008F4CB0, v10, sub_1008F4DFC, v11);

  sub_1000254C0(v5);
}

- (void)deleteAllStatusesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
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
  v8 = self;
  sub_1000254AC(v4);
  v7(sub_1008E27F4, 0, sub_1008F4DF4, v6);

  sub_1000254C0(v4);
}

+ (double)dbCleanupTimeInterval
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = sub_100936B28();
  v2 = [v0 objectForKey:v1];

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
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_100013814(v8, &qword_100CB4A90);
  }

  return 86400.0;
}

@end