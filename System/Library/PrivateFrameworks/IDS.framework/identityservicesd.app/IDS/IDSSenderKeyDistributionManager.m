@interface IDSSenderKeyDistributionManager
+ (double)cleanupKeysTimeInterval;
- (BOOL)hasAnyUsableSenderKeyFor:(id)a3;
- (BOOL)hasUsableSenderKeyFor:(id)a3 from:(id)a4;
- (IDSSenderKeyDistributionManager)init;
- (IDSSenderKeyDistributionManager)initWithPersistenceManager:(id)a3 service:(id)a4;
- (id)formattedDonatedHandleList;
- (id)formattedSenderKeyListFor:(id)a3;
- (id)missingRemoteEncryptingKeyIDs:(id)a3;
- (id)processedKeyMessageWithRemoteURI:(id)a3 remoteToken:(id)a4 localURI:(id)a5 service:(id)a6 messageData:(id)a7 messageGUID:(id)a8;
- (id)remoteMissingDecryptingKeyIDs:(id)a3 remoteURI:(id)a4 localURI:(id)a5;
- (void)generateAndSendKeyIfNeededToURIs:(id)a3 fromURI:(id)a4 context:(id)a5 completion:(id)a6;
- (void)handleRemoteDeviceUpdateWithRemoteURI:(id)a3 localURI:(id)a4;
- (void)markLastActivePeerToken:(id)a3 localURI:(id)a4 remoteURI:(id)a5;
- (void)markLastIMessagedPeerToken:(id)a3 localURI:(id)a4 remoteURI:(id)a5;
- (void)processDonatedHandlesForMessagingKeysWithUris:(id)a3 fromURI:(id)a4 priority:(int64_t)a5 isInitialDonation:(BOOL)a6 completion:(id)a7;
- (void)registrationController:(id)a3 deregistrationWillStart:(id)a4;
- (void)resetKeyStateWithKeyIDs:(id)a3 senderURI:(id)a4 receiverURI:(id)a5;
- (void)sendSelfKeyCheckMessageFor:(id)a3 to:(id)a4 completion:(id)a5;
- (void)systemDidLeaveFirstDataProtectionLock;
- (void)triggerKeyRecoveryToURI:(id)a3 fromURI:(id)a4 keysToSend:(id)a5 keysToRequest:(id)a6;
- (void)updateDeliveredStateWithKeyIDStrings:(id)a3 pushToken:(id)a4;
@end

@implementation IDSSenderKeyDistributionManager

- (IDSSenderKeyDistributionManager)initWithPersistenceManager:(id)a3 service:(id)a4
{
  v5 = sub_100936B38();
  v7 = v6;
  v8 = a3;
  return sub_100772C24(a3, v5, v7);
}

- (void)generateAndSendKeyIfNeededToURIs:(id)a3 fromURI:(id)a4 context:(id)a5 completion:(id)a6
{
  v8 = _Block_copy(a6);
  sub_100014170(0, &qword_100CBA2E0);
  v9 = sub_100936CE8();
  v10 = sub_100936B38();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  v14 = *((swift_isaMask & self->super.isa) + 0x200);
  v15 = a4;
  v16 = self;
  v14(v9, v15, v10, v12, 0, &_swiftEmptyArrayStorage, sub_100796BDC, v13);
}

- (void)sendSelfKeyCheckMessageFor:(id)a3 to:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  sub_100014170(0, &qword_100CBA2E0);
  v8 = sub_100936CE8();
  _Block_copy(v7);
  v9 = a4;
  v10 = self;
  sub_100792AA8(v8, v9, v10, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)markLastActivePeerToken:(id)a3 localURI:(id)a4 remoteURI:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10077ACE0(v8, v9, v10);
}

- (void)markLastIMessagedPeerToken:(id)a3 localURI:(id)a4 remoteURI:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10077B040(v8, v9, v10);
}

- (id)processedKeyMessageWithRemoteURI:(id)a3 remoteToken:(id)a4 localURI:(id)a5 service:(id)a6 messageData:(id)a7 messageGUID:(id)a8
{
  v29 = sub_100936B38();
  v15 = v14;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  v20 = self;
  if (a7)
  {
    v21 = a7;
    a7 = sub_100935EA8();
    v23 = v22;
  }

  else
  {
    v23 = 0xF000000000000000;
  }

  v24 = sub_100936B38();
  v26 = v25;

  sub_10077B3CC(a3, a4, a5, v29, v15, a7, v23, v24, v26);

  sub_10001C370(a7, v23);

  v27.super.isa = sub_100936CD8().super.isa;

  return v27.super.isa;
}

- (void)triggerKeyRecoveryToURI:(id)a3 fromURI:(id)a4 keysToSend:(id)a5 keysToRequest:(id)a6
{
  v9 = sub_100936CE8();
  v10 = sub_100936CE8();
  v11 = a3;
  v12 = a4;
  v13 = self;
  sub_10077CEF8(v11, v12, v9, v10);
}

- (void)resetKeyStateWithKeyIDs:(id)a3 senderURI:(id)a4 receiverURI:(id)a5
{
  if (a3)
  {
    v8 = sub_100936CE8();
  }

  else
  {
    v8 = 0;
  }

  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10077DB64(v8, v9, v10);
}

- (void)handleRemoteDeviceUpdateWithRemoteURI:(id)a3 localURI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10077DE70(v6, v7);
}

- (void)updateDeliveredStateWithKeyIDStrings:(id)a3 pushToken:(id)a4
{
  v6 = sub_100936CE8();
  v7 = a4;
  v8 = self;
  sub_10077EAA8(v6, v7);
}

- (id)missingRemoteEncryptingKeyIDs:(id)a3
{
  v4 = sub_100936CE8();
  v5 = self;
  sub_100783C50(v4);

  v6.super.isa = sub_100936CD8().super.isa;

  return v6.super.isa;
}

- (id)remoteMissingDecryptingKeyIDs:(id)a3 remoteURI:(id)a4 localURI:(id)a5
{
  v8 = sub_100936CE8();
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100783E5C(v8, v9, v10);

  v12.super.isa = sub_100936CD8().super.isa;

  return v12.super.isa;
}

- (BOOL)hasUsableSenderKeyFor:(id)a3 from:(id)a4
{
  v6 = *((swift_isaMask & self->super.isa) + 0xB0);
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = v6();
  LOBYTE(v6) = sub_1008CA10C(v7, v8);

  return v6 & 1;
}

- (BOOL)hasAnyUsableSenderKeyFor:(id)a3
{
  v4 = *((swift_isaMask & self->super.isa) + 0xB0);
  v5 = a3;
  v6 = self;
  v7 = v4();
  LOBYTE(v4) = sub_1008CA244(v5);

  return v4 & 1;
}

- (id)formattedSenderKeyListFor:(id)a3
{
  if (a3)
  {
    sub_100014170(0, &qword_100CBA2E0);
    v4 = sub_100936CE8();
  }

  else
  {
    v4 = 0;
  }

  v5 = *((swift_isaMask & self->super.isa) + 0xB0);
  v6 = self;
  v7 = v5();
  sub_1008CDA60(v4, 1);

  v10 = (v5)(v8, v9);
  v11 = sub_1008CE658(v4);
  v13 = v12;

  v17._countAndFlagsBits = v11;
  v17._object = v13;
  sub_100936C08(v17);

  v14 = sub_100936B28();

  return v14;
}

- (id)formattedDonatedHandleList
{
  v2 = *((swift_isaMask & self->super.isa) + 0xB0);
  v3 = self;
  v4 = v2();
  sub_1008CFBCC();

  v5 = sub_100936B28();

  return v5;
}

- (void)processDonatedHandlesForMessagingKeysWithUris:(id)a3 fromURI:(id)a4 priority:(int64_t)a5 isInitialDonation:(BOOL)a6 completion:(id)a7
{
  v11 = _Block_copy(a7);
  sub_100014170(0, &qword_100CBA2E0);
  sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
  v12 = sub_100936E18();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = a4;
  v15 = self;
  sub_100784B00(v12, v14, a5, a6, sub_100796BDC, v13);
}

- (IDSSenderKeyDistributionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  v2 = self;
  sub_10078502C();
}

- (void)registrationController:(id)a3 deregistrationWillStart:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100794124(a4);
}

+ (double)cleanupKeysTimeInterval
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