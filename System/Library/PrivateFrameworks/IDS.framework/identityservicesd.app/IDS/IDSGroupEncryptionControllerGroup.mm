@interface IDSGroupEncryptionControllerGroup
- (IDSEndpointSubscription)endpointSubscription;
- (IDSGroupEncryptionKeyMaterial)mediaKeyMaterial;
- (IDSGroupEncryptionKeyMaterial)stableKeyMaterial;
- (NSSet)allMembers;
- (NSSet)lightweightParticipantPushTokens;
- (NSSet)memberURIs;
- (NSSet)participantPushTokens;
- (NSSet)standardParticipantPushTokens;
- (NSString)id;
- (_TtC17identityservicesd33IDSGroupEncryptionControllerGroup)init;
- (id)ensureParticipant:(id)a3;
- (id)ensureSessionForID:(id)a3;
- (id)memberForParticipant:(id)a3;
- (id)memberForURI:(id)a3;
- (id)participantForID:(unint64_t)a3;
- (id)participantForToken:(id)a3;
- (id)participantIDsForURIs:(id)a3;
- (id)participantsForMember:(id)a3;
- (id)participantsForURI:(id)a3;
- (unint64_t)encryptionSequenceNumber;
- (unint64_t)localParticipantID;
- (unint64_t)preKeyAckCount;
- (void)cancelKMCacheReset;
- (void)cleanUpSessionForID:(id)a3;
- (void)ensureStableKeyMaterialsSentToClient;
- (void)hardRoll;
- (void)removeAllMembers;
- (void)removeAllParticipants;
- (void)removeParticipant:(id)a3;
- (void)removeParticipantForToken:(id)a3;
- (void)resetKMCaches;
- (void)resetKMCachesAfter:(double)a3;
- (void)resetKeysSentToClient;
- (void)resetKeysToPropagate;
- (void)setEncryptionSequenceNumber:(unint64_t)a3;
- (void)setEndpointSubscription:(id)a3;
- (void)setLocalParticipantID:(unint64_t)a3;
- (void)setPreKeyAckCount:(unint64_t)a3;
- (void)setShortMKIEnabled:(BOOL)a3;
- (void)updateDesiredMaterials;
- (void)updateMembersWithURIs:(id)a3;
- (void)updateMembersWithURIs:(id)a3 lightweightStatusDict:(id)a4;
- (void)updateParticipants:(id)a3 lightweight:(BOOL)a4;
@end

@implementation IDSGroupEncryptionControllerGroup

- (NSString)id
{

  v2 = sub_100936B28();

  return v2;
}

- (unint64_t)preKeyAckCount
{
  v3 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_preKeyAckCount;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPreKeyAckCount:(unint64_t)a3
{
  v5 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_preKeyAckCount;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unint64_t)localParticipantID
{
  v3 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_localParticipantID;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLocalParticipantID:(unint64_t)a3
{
  v4 = self;
  sub_100804348(a3);
}

- (IDSEndpointSubscription)endpointSubscription
{
  v3 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_endpointSubscription;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEndpointSubscription:(id)a3
{
  v5 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_endpointSubscription;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (unint64_t)encryptionSequenceNumber
{
  v3 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_encryptionSequenceNumber;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEncryptionSequenceNumber:(unint64_t)a3
{
  v5 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_encryptionSequenceNumber;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSSet)memberURIs
{
  v2 = *((swift_isaMask & *self) + 0x110);
  v3 = self;
  v4 = v2();
  os_unfair_lock_lock(v4 + 4);
  sub_100818D34(&v7);
  os_unfair_lock_unlock(v4 + 4);

  sub_100014170(0, &qword_100CBA2E0);
  sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
  v5.super.isa = sub_100936E08().super.isa;

  return v5.super.isa;
}

- (NSSet)allMembers
{
  v2 = *((swift_isaMask & *self) + 0x110);
  v3 = self;
  v4 = v2();
  os_unfair_lock_lock(v4 + 4);
  sub_100818D34(&v7);
  os_unfair_lock_unlock(v4 + 4);

  type metadata accessor for IDSGroupEncryptionControllerMember();
  sub_100014BB0(&qword_100CB2AC8, type metadata accessor for IDSGroupEncryptionControllerMember);
  v5.super.isa = sub_100936E08().super.isa;

  return v5.super.isa;
}

- (NSSet)participantPushTokens
{
  v2 = *((swift_isaMask & *self) + 0x258);
  v3 = self;
  v4 = v2();
  v5 = sub_1007D1D90(v4);

  sub_1007478B8(v5);

  sub_100014170(0, &qword_100CB34A0);
  sub_100746FD4(&qword_100CBA5A0, &qword_100CB34A0);
  v6.super.isa = sub_100936E08().super.isa;

  return v6.super.isa;
}

- (NSSet)standardParticipantPushTokens
{
  v2 = *((swift_isaMask & *self) + 0x260);
  v3 = self;
  v4 = v2();
  v5 = sub_1007D1D90(v4);

  sub_1007478B8(v5);

  sub_100014170(0, &qword_100CB34A0);
  sub_100746FD4(&qword_100CBA5A0, &qword_100CB34A0);
  v6.super.isa = sub_100936E08().super.isa;

  return v6.super.isa;
}

- (NSSet)lightweightParticipantPushTokens
{
  v2 = *((swift_isaMask & *self) + 0x268);
  v3 = self;
  v4 = v2();
  v5 = sub_1007D1D90(v4);

  sub_1007478B8(v5);

  sub_100014170(0, &qword_100CB34A0);
  sub_100746FD4(&qword_100CBA5A0, &qword_100CB34A0);
  v6.super.isa = sub_100936E08().super.isa;

  return v6.super.isa;
}

- (IDSGroupEncryptionKeyMaterial)mediaKeyMaterial
{
  v2 = self;
  v3 = sub_100806C5C();

  return v3;
}

- (IDSGroupEncryptionKeyMaterial)stableKeyMaterial
{
  v2 = self;
  v3 = sub_100806CAC();

  return v3;
}

- (void)removeAllMembers
{
  v2 = self;
  sub_1008077F8();
}

- (void)updateMembersWithURIs:(id)a3
{
  sub_100014170(0, &qword_100CBA2E0);
  sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
  v4 = sub_100936E18();
  v5 = *((swift_isaMask & *self) + 0x2B0);
  v6 = self;
  v5(v4, 0);
}

- (void)updateMembersWithURIs:(id)a3 lightweightStatusDict:(id)a4
{
  sub_100014170(0, &qword_100CBA2E0);
  sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
  v6 = sub_100936E18();
  if (a4)
  {
    v7 = sub_100936A78();
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_100807AB0(v6, v7);
}

- (id)memberForURI:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100808EEC(v4);
  v7 = v6;

  return v7;
}

- (id)memberForParticipant:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100809370(v4);

  return v6;
}

- (id)participantsForURI:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1008094DC(v4);

  type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
  sub_100014BB0(&unk_100CB3490, type metadata accessor for IDSGroupEncryptionControllerParticipant);
  v6.super.isa = sub_100936E08().super.isa;

  return v6.super.isa;
}

- (id)participantsForMember:(id)a3
{
  v4 = *((swift_isaMask & *self) + 0x258);
  v5 = a3;
  v6 = self;
  v7 = v4();
  v8 = v5;
  sub_100817D6C(v7, v8);

  type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
  sub_100014BB0(&unk_100CB3490, type metadata accessor for IDSGroupEncryptionControllerParticipant);
  v9.super.isa = sub_100936E08().super.isa;

  return v9.super.isa;
}

- (id)participantForToken:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1008098B4();
  v7 = v6;

  return v7;
}

- (id)participantForID:(unint64_t)a3
{
  v3 = *((swift_isaMask & *self) + 0x158);
  v4 = self;
  v5 = v3();
  os_unfair_lock_lock(v5 + 4);
  sub_100818D34(&v8);
  os_unfair_lock_unlock(v5 + 4);
  v6 = v8;

  return v6;
}

- (id)participantIDsForURIs:(id)a3
{
  sub_100014170(0, &qword_100CBA2E0);
  sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
  v4 = sub_100936E18();
  v5 = self;
  sub_100809DB0(v4);

  v6.super.isa = sub_100936E08().super.isa;

  return v6.super.isa;
}

- (void)updateParticipants:(id)a3 lightweight:(BOOL)a4
{
  v4 = a4;
  sub_100014170(0, &qword_100CB7168);
  v6 = sub_100936CE8();
  v7 = self;
  sub_10080A354(v6, v4);
}

- (id)ensureParticipant:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10080BA80(v4);

  return v6;
}

- (void)removeParticipant:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10080C348(v4);
}

- (void)removeParticipantForToken:(id)a3
{
  v4 = *((swift_isaMask & *self) + 0x2D8);
  v5 = a3;
  v8 = self;
  v6 = v4(v5);
  if (v6)
  {
    v7 = v6;
    (*((swift_isaMask & *v8) + 0x300))();
  }
}

- (void)removeAllParticipants
{
  v2 = *((swift_isaMask & *self) + 0x158);
  v3 = self;
  v4 = v2();
  os_unfair_lock_lock(v4 + 4);
  sub_100748CB0();
  os_unfair_lock_unlock(v4 + 4);
}

- (void)resetKeysToPropagate
{
  v2 = self;
  sub_10081069C();
}

- (void)resetKMCachesAfter:(double)a3
{
  v3 = *((swift_isaMask & *self) + 0x110);
  v4 = self;
  v5 = v3();
  os_unfair_lock_lock(v5 + 4);
  sub_100748CB0();
  os_unfair_lock_unlock(v5 + 4);

  (*((swift_isaMask & *v4) + 0x378))(v6);
}

- (void)resetKMCaches
{
  v2 = self;
  sub_100810C18();
}

- (void)cancelKMCacheReset
{
  v2 = *((swift_isaMask & *self) + 0x110);
  v3 = self;
  v4 = v2();
  os_unfair_lock_lock(v4 + 4);
  sub_100748CB0();
  os_unfair_lock_unlock(v4 + 4);
}

- (void)updateDesiredMaterials
{
  v2 = self;
  sub_100811BC4();
}

- (void)resetKeysSentToClient
{
  v2 = self;
  sub_100811D74();
}

- (void)hardRoll
{
  v2 = self;
  sub_100811F24();
}

- (void)ensureStableKeyMaterialsSentToClient
{
  v2 = self;
  sub_1008120D4();
}

- (id)ensureSessionForID:(id)a3
{
  v4 = sub_100936B38();
  v6 = v5;
  v7 = self;
  sub_100812284(v4, v6);
  v9 = v8;

  return v9;
}

- (void)cleanUpSessionForID:(id)a3
{
  v4 = sub_100936B38();
  v6 = v5;
  v7 = self;
  sub_100812988(v4, v6);
}

- (void)setShortMKIEnabled:(BOOL)a3
{
  v4 = self;
  sub_100812BEC(a3);
}

- (_TtC17identityservicesd33IDSGroupEncryptionControllerGroup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end