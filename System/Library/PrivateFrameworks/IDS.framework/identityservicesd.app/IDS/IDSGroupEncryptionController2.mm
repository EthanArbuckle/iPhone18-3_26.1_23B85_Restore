@interface IDSGroupEncryptionController2
- (IDSPushToken)pushToken;
- (IDSRealTimeEncryptionIdentity)objcIdentity;
- (IDSRealTimeEncryptionIdentity)objcPreviousIdentity;
- (IDSRealTimeEncryptionIdentity)objcPreviousPublicIdentity;
- (IDSRealTimeEncryptionIdentity)objcPublicIdentity;
- (NSData)previousPublicIdentityData;
- (NSData)publicIdentityData;
- (NSDictionary)publicKeys;
- (_TtC17identityservicesd29IDSGroupEncryptionController2)init;
- (_TtC17identityservicesd29IDSGroupEncryptionController2)initWithDelegate:(id)a3 config:(id)a4 sessionProvider:(id)a5 identityController:(id)a6 pushHandler:(id)a7;
- (_TtP17identityservicesd19IDSDSessionProvider_)sessionProvider;
- (_TtP17identityservicesd27IDSGroupPushHandlerProtocol_)pushHandler;
- (__SecKey)fullIdentityKey;
- (__SecKey)previousFullIdentityKey;
- (__SecKey)previousPublicIdentityKey;
- (__SecKey)publicIdentityKey;
- (id)createP2PNegotiatorProvider;
- (id)groupForID:(id)a3;
- (id)objcPublicIdentityForPushToken:(id)a3;
- (int64_t)publicIdentityWrapMode;
- (void)cleanUpGroupForID:(id)a3 after:(double)a4;
- (void)receivePublicIdentity:(id)a3;
- (void)receivePublicKey:(id)a3 forPushToken:(id)a4 fromURI:(id)a5 groupID:(id)a6 sessionID:(id)a7 serverDate:(id)a8 wrapMode:(int64_t)a9;
@end

@implementation IDSGroupEncryptionController2

- (_TtP17identityservicesd19IDSDSessionProvider_)sessionProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (_TtP17identityservicesd27IDSGroupPushHandlerProtocol_)pushHandler
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (IDSPushToken)pushToken
{
  v2 = self;
  v3 = sub_1007D5FBC();

  return v3;
}

- (int64_t)publicIdentityWrapMode
{
  v2 = self;
  v3 = sub_1007D61CC();

  return v3;
}

- (__SecKey)fullIdentityKey
{
  v3 = sub_100706B30(&qword_100CB3250);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = *((swift_isaMask & **(&self->super.isa + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_identityController)) + 0x130);
  v7 = self;
  v6();

  v8 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    sub_100013814(v5, &qword_100CB3250);
    v9 = 0;
  }

  else
  {
    v10 = *&v5[*(v8 + 20)];
    sub_1007BE0C4(v5, type metadata accessor for IDSGroupEncryptionFullIdentity);
    v9 = v10;
  }

  return v9;
}

- (__SecKey)publicIdentityKey
{
  v2 = self;
  v3 = sub_1007D66E0();

  return v3;
}

- (NSData)publicIdentityData
{
  v3 = type metadata accessor for IDSGroupEncryptionPublicIdentity(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100706B30(&qword_100CB3250);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = *((swift_isaMask & **(&self->super.isa + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_identityController)) + 0x130);
  v10 = self;
  v9();
  v11 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
  {

    sub_100013814(v8, &qword_100CB3250);
    v12 = 0;
  }

  else
  {
    sub_1007DE914(v8, v5, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    sub_1007BE0C4(v8, type metadata accessor for IDSGroupEncryptionFullIdentity);
    v13 = sub_10089CD2C();
    v15 = v14;

    sub_1007BE0C4(v5, type metadata accessor for IDSGroupEncryptionPublicIdentity);
    if (v15 >> 60 == 15)
    {
      v12 = 0;
    }

    else
    {
      isa = sub_100935E78().super.isa;
      sub_10001C370(v13, v15);
      v12 = isa;
    }
  }

  return v12;
}

- (__SecKey)previousFullIdentityKey
{
  v2 = self;
  v3 = sub_1007D6D3C();

  return v3;
}

- (__SecKey)previousPublicIdentityKey
{
  v2 = self;
  v3 = sub_1007D6F60();

  return v3;
}

- (NSData)previousPublicIdentityData
{
  v2 = self;
  v3 = sub_1007D7254();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    isa = sub_100935E78().super.isa;
    sub_10001C370(v3, v5);
    v6 = isa;
  }

  return v6;
}

- (NSDictionary)publicKeys
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_publicIdentitiesLock);
  v3 = self;

  os_unfair_lock_lock((v2 + 24));
  sub_1007D75EC((v2 + 16), &v6);
  os_unfair_lock_unlock((v2 + 24));

  sub_100014170(0, &qword_100CB34A0);
  sub_1007D5B6C();
  v4.super.isa = sub_100936A58().super.isa;

  return v4.super.isa;
}

- (_TtC17identityservicesd29IDSGroupEncryptionController2)initWithDelegate:(id)a3 config:(id)a4 sessionProvider:(id)a5 identityController:(id)a6 pushHandler:(id)a7
{
  swift_unknownObjectRetain();
  v12 = a4;
  swift_unknownObjectRetain();
  v13 = a6;
  swift_unknownObjectRetain();
  v14 = sub_1007DEA80(a3, v12, a5, v13, a7);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v14;
}

- (id)groupForID:(id)a3
{
  sub_100936B38();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_groupsLock);
  v5 = self;

  os_unfair_lock_lock((v4 + 32));
  sub_1007E0284((v4 + 16), &v8);
  os_unfair_lock_unlock((v4 + 32));
  v6 = v8;

  return v6;
}

- (void)receivePublicIdentity:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1007D8C34(v4);
}

- (void)receivePublicKey:(id)a3 forPushToken:(id)a4 fromURI:(id)a5 groupID:(id)a6 sessionID:(id)a7 serverDate:(id)a8 wrapMode:(int64_t)a9
{
  v33 = a9;
  v16 = sub_100936038();
  v34 = *(v16 - 8);
  v35 = v16;
  __chkstk_darwin(v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3;
  v32 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = self;
  v25 = sub_100935EA8();
  v27 = v26;

  v28 = sub_100936B38();
  v30 = v29;

  sub_100935FE8();
  v31 = v32;
  sub_1007DF088(v25, v27, v32, v20, v28, v30, v18, v33);

  sub_1007156D8(v25, v27);

  (*(v34 + 8))(v18, v35);
}

- (id)objcPublicIdentityForPushToken:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_publicIdentitiesLock);
  v5 = a3;
  v6 = self;

  os_unfair_lock_lock((v4 + 24));
  sub_1007E026C((v4 + 16), &v9);
  os_unfair_lock_unlock((v4 + 24));
  v7 = v9;

  return v7;
}

- (void)cleanUpGroupForID:(id)a3 after:(double)a4
{
  v6 = sub_100936B38();
  v8 = v7;
  v9 = self;
  sub_1007DA2A4(v6, v8, a4);
}

- (IDSRealTimeEncryptionIdentity)objcPublicIdentity
{
  v2 = self;
  v3 = sub_1007DA9E4();

  return v3;
}

- (IDSRealTimeEncryptionIdentity)objcPreviousPublicIdentity
{
  v2 = self;
  v3 = sub_1007DAC04();

  return v3;
}

- (IDSRealTimeEncryptionIdentity)objcIdentity
{
  v3 = sub_100706B30(&qword_100CB3250);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = *((swift_isaMask & **(&self->super.isa + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_identityController)) + 0x130);
  v7 = self;
  v6();
  v8 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {

    sub_100013814(v5, &qword_100CB3250);
    v9 = 0;
  }

  else
  {
    v10 = sub_10089D2E8();

    sub_1007BE0C4(v5, type metadata accessor for IDSGroupEncryptionFullIdentity);
    v9 = v10;
  }

  return v9;
}

- (IDSRealTimeEncryptionIdentity)objcPreviousIdentity
{
  v2 = self;
  v3 = sub_1007DB184();

  return v3;
}

- (_TtC17identityservicesd29IDSGroupEncryptionController2)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)createP2PNegotiatorProvider
{
  type metadata accessor for IDSGlobalLinkP2PKeyNegotiatorController();
  v3 = *(&self->super.isa + OBJC_IVAR____TtC17identityservicesd29IDSGroupEncryptionController2_identityController);
  v12[3] = type metadata accessor for IDSGroupEncryptionIdentityController();
  v12[4] = &off_100BE96E8;
  v12[0] = v3;
  v10 = type metadata accessor for IDSGroupEncryptionController2();
  v11 = &off_100BE8BB0;
  v8[4] = &off_100BE8BC0;
  v9 = self;
  v8[3] = v10;
  v8[0] = self;
  v4 = self;
  v5 = v3;
  v6 = sub_1007B8E30(v12, &v9, v8);

  return v6;
}

@end