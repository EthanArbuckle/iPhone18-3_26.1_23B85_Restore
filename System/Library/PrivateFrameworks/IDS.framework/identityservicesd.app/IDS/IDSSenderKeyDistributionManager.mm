@interface IDSSenderKeyDistributionManager
+ (double)cleanupKeysTimeInterval;
- (BOOL)hasAnyUsableSenderKeyFor:(id)for;
- (BOOL)hasUsableSenderKeyFor:(id)for from:(id)from;
- (IDSSenderKeyDistributionManager)init;
- (IDSSenderKeyDistributionManager)initWithPersistenceManager:(id)manager service:(id)service;
- (id)formattedDonatedHandleList;
- (id)formattedSenderKeyListFor:(id)for;
- (id)missingRemoteEncryptingKeyIDs:(id)ds;
- (id)processedKeyMessageWithRemoteURI:(id)i remoteToken:(id)token localURI:(id)rI service:(id)service messageData:(id)data messageGUID:(id)d;
- (id)remoteMissingDecryptingKeyIDs:(id)ds remoteURI:(id)i localURI:(id)rI;
- (void)generateAndSendKeyIfNeededToURIs:(id)is fromURI:(id)i context:(id)context completion:(id)completion;
- (void)handleRemoteDeviceUpdateWithRemoteURI:(id)i localURI:(id)rI;
- (void)markLastActivePeerToken:(id)token localURI:(id)i remoteURI:(id)rI;
- (void)markLastIMessagedPeerToken:(id)token localURI:(id)i remoteURI:(id)rI;
- (void)processDonatedHandlesForMessagingKeysWithUris:(id)uris fromURI:(id)i priority:(int64_t)priority isInitialDonation:(BOOL)donation completion:(id)completion;
- (void)registrationController:(id)controller deregistrationWillStart:(id)start;
- (void)resetKeyStateWithKeyIDs:(id)ds senderURI:(id)i receiverURI:(id)rI;
- (void)sendSelfKeyCheckMessageFor:(id)for to:(id)to completion:(id)completion;
- (void)systemDidLeaveFirstDataProtectionLock;
- (void)triggerKeyRecoveryToURI:(id)i fromURI:(id)rI keysToSend:(id)send keysToRequest:(id)request;
- (void)updateDeliveredStateWithKeyIDStrings:(id)strings pushToken:(id)token;
@end

@implementation IDSSenderKeyDistributionManager

- (IDSSenderKeyDistributionManager)initWithPersistenceManager:(id)manager service:(id)service
{
  v5 = sub_100936B38();
  v7 = v6;
  managerCopy = manager;
  return sub_100772C24(manager, v5, v7);
}

- (void)generateAndSendKeyIfNeededToURIs:(id)is fromURI:(id)i context:(id)context completion:(id)completion
{
  v8 = _Block_copy(completion);
  sub_100014170(0, &qword_100CBA2E0);
  v9 = sub_100936CE8();
  v10 = sub_100936B38();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  v14 = *((swift_isaMask & self->super.isa) + 0x200);
  iCopy = i;
  selfCopy = self;
  v14(v9, iCopy, v10, v12, 0, &_swiftEmptyArrayStorage, sub_100796BDC, v13);
}

- (void)sendSelfKeyCheckMessageFor:(id)for to:(id)to completion:(id)completion
{
  v7 = _Block_copy(completion);
  sub_100014170(0, &qword_100CBA2E0);
  v8 = sub_100936CE8();
  _Block_copy(v7);
  toCopy = to;
  selfCopy = self;
  sub_100792AA8(v8, toCopy, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)markLastActivePeerToken:(id)token localURI:(id)i remoteURI:(id)rI
{
  tokenCopy = token;
  iCopy = i;
  rICopy = rI;
  selfCopy = self;
  sub_10077ACE0(tokenCopy, iCopy, rICopy);
}

- (void)markLastIMessagedPeerToken:(id)token localURI:(id)i remoteURI:(id)rI
{
  tokenCopy = token;
  iCopy = i;
  rICopy = rI;
  selfCopy = self;
  sub_10077B040(tokenCopy, iCopy, rICopy);
}

- (id)processedKeyMessageWithRemoteURI:(id)i remoteToken:(id)token localURI:(id)rI service:(id)service messageData:(id)data messageGUID:(id)d
{
  v29 = sub_100936B38();
  v15 = v14;
  iCopy = i;
  tokenCopy = token;
  rICopy = rI;
  dCopy = d;
  selfCopy = self;
  if (data)
  {
    dataCopy = data;
    data = sub_100935EA8();
    v23 = v22;
  }

  else
  {
    v23 = 0xF000000000000000;
  }

  v24 = sub_100936B38();
  v26 = v25;

  sub_10077B3CC(i, token, rI, v29, v15, data, v23, v24, v26);

  sub_10001C370(data, v23);

  v27.super.isa = sub_100936CD8().super.isa;

  return v27.super.isa;
}

- (void)triggerKeyRecoveryToURI:(id)i fromURI:(id)rI keysToSend:(id)send keysToRequest:(id)request
{
  v9 = sub_100936CE8();
  v10 = sub_100936CE8();
  iCopy = i;
  rICopy = rI;
  selfCopy = self;
  sub_10077CEF8(iCopy, rICopy, v9, v10);
}

- (void)resetKeyStateWithKeyIDs:(id)ds senderURI:(id)i receiverURI:(id)rI
{
  if (ds)
  {
    v8 = sub_100936CE8();
  }

  else
  {
    v8 = 0;
  }

  iCopy = i;
  rICopy = rI;
  selfCopy = self;
  sub_10077DB64(v8, iCopy, rICopy);
}

- (void)handleRemoteDeviceUpdateWithRemoteURI:(id)i localURI:(id)rI
{
  iCopy = i;
  rICopy = rI;
  selfCopy = self;
  sub_10077DE70(iCopy, rICopy);
}

- (void)updateDeliveredStateWithKeyIDStrings:(id)strings pushToken:(id)token
{
  v6 = sub_100936CE8();
  tokenCopy = token;
  selfCopy = self;
  sub_10077EAA8(v6, tokenCopy);
}

- (id)missingRemoteEncryptingKeyIDs:(id)ds
{
  v4 = sub_100936CE8();
  selfCopy = self;
  sub_100783C50(v4);

  v6.super.isa = sub_100936CD8().super.isa;

  return v6.super.isa;
}

- (id)remoteMissingDecryptingKeyIDs:(id)ds remoteURI:(id)i localURI:(id)rI
{
  v8 = sub_100936CE8();
  iCopy = i;
  rICopy = rI;
  selfCopy = self;
  sub_100783E5C(v8, iCopy, rICopy);

  v12.super.isa = sub_100936CD8().super.isa;

  return v12.super.isa;
}

- (BOOL)hasUsableSenderKeyFor:(id)for from:(id)from
{
  v6 = *((swift_isaMask & self->super.isa) + 0xB0);
  forCopy = for;
  fromCopy = from;
  selfCopy = self;
  v10 = v6();
  LOBYTE(v6) = sub_1008CA10C(forCopy, fromCopy);

  return v6 & 1;
}

- (BOOL)hasAnyUsableSenderKeyFor:(id)for
{
  v4 = *((swift_isaMask & self->super.isa) + 0xB0);
  forCopy = for;
  selfCopy = self;
  v7 = v4();
  LOBYTE(v4) = sub_1008CA244(forCopy);

  return v4 & 1;
}

- (id)formattedSenderKeyListFor:(id)for
{
  if (for)
  {
    sub_100014170(0, &qword_100CBA2E0);
    v4 = sub_100936CE8();
  }

  else
  {
    v4 = 0;
  }

  v5 = *((swift_isaMask & self->super.isa) + 0xB0);
  selfCopy = self;
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
  selfCopy = self;
  v4 = v2();
  sub_1008CFBCC();

  v5 = sub_100936B28();

  return v5;
}

- (void)processDonatedHandlesForMessagingKeysWithUris:(id)uris fromURI:(id)i priority:(int64_t)priority isInitialDonation:(BOOL)donation completion:(id)completion
{
  v11 = _Block_copy(completion);
  sub_100014170(0, &qword_100CBA2E0);
  sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
  v12 = sub_100936E18();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  iCopy = i;
  selfCopy = self;
  sub_100784B00(v12, iCopy, priority, donation, sub_100796BDC, v13);
}

- (IDSSenderKeyDistributionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)systemDidLeaveFirstDataProtectionLock
{
  selfCopy = self;
  sub_10078502C();
}

- (void)registrationController:(id)controller deregistrationWillStart:(id)start
{
  controllerCopy = controller;
  startCopy = start;
  selfCopy = self;
  sub_100794124(start);
}

+ (double)cleanupKeysTimeInterval
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