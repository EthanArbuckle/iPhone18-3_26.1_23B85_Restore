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
- (id)ensureParticipant:(id)participant;
- (id)ensureSessionForID:(id)d;
- (id)memberForParticipant:(id)participant;
- (id)memberForURI:(id)i;
- (id)participantForID:(unint64_t)d;
- (id)participantForToken:(id)token;
- (id)participantIDsForURIs:(id)is;
- (id)participantsForMember:(id)member;
- (id)participantsForURI:(id)i;
- (unint64_t)encryptionSequenceNumber;
- (unint64_t)localParticipantID;
- (unint64_t)preKeyAckCount;
- (void)cancelKMCacheReset;
- (void)cleanUpSessionForID:(id)d;
- (void)ensureStableKeyMaterialsSentToClient;
- (void)hardRoll;
- (void)removeAllMembers;
- (void)removeAllParticipants;
- (void)removeParticipant:(id)participant;
- (void)removeParticipantForToken:(id)token;
- (void)resetKMCaches;
- (void)resetKMCachesAfter:(double)after;
- (void)resetKeysSentToClient;
- (void)resetKeysToPropagate;
- (void)setEncryptionSequenceNumber:(unint64_t)number;
- (void)setEndpointSubscription:(id)subscription;
- (void)setLocalParticipantID:(unint64_t)d;
- (void)setPreKeyAckCount:(unint64_t)count;
- (void)setShortMKIEnabled:(BOOL)enabled;
- (void)updateDesiredMaterials;
- (void)updateMembersWithURIs:(id)is;
- (void)updateMembersWithURIs:(id)is lightweightStatusDict:(id)dict;
- (void)updateParticipants:(id)participants lightweight:(BOOL)lightweight;
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

- (void)setPreKeyAckCount:(unint64_t)count
{
  v5 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_preKeyAckCount;
  swift_beginAccess();
  *(self + v5) = count;
}

- (unint64_t)localParticipantID
{
  v3 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_localParticipantID;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLocalParticipantID:(unint64_t)d
{
  selfCopy = self;
  sub_100804348(d);
}

- (IDSEndpointSubscription)endpointSubscription
{
  v3 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_endpointSubscription;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEndpointSubscription:(id)subscription
{
  v5 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_endpointSubscription;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = subscription;
  subscriptionCopy = subscription;
}

- (unint64_t)encryptionSequenceNumber
{
  v3 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_encryptionSequenceNumber;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEncryptionSequenceNumber:(unint64_t)number
{
  v5 = OBJC_IVAR____TtC17identityservicesd33IDSGroupEncryptionControllerGroup_encryptionSequenceNumber;
  swift_beginAccess();
  *(self + v5) = number;
}

- (NSSet)memberURIs
{
  v2 = *((swift_isaMask & *self) + 0x110);
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_100806C5C();

  return v3;
}

- (IDSGroupEncryptionKeyMaterial)stableKeyMaterial
{
  selfCopy = self;
  v3 = sub_100806CAC();

  return v3;
}

- (void)removeAllMembers
{
  selfCopy = self;
  sub_1008077F8();
}

- (void)updateMembersWithURIs:(id)is
{
  sub_100014170(0, &qword_100CBA2E0);
  sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
  v4 = sub_100936E18();
  v5 = *((swift_isaMask & *self) + 0x2B0);
  selfCopy = self;
  v5(v4, 0);
}

- (void)updateMembersWithURIs:(id)is lightweightStatusDict:(id)dict
{
  sub_100014170(0, &qword_100CBA2E0);
  sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
  v6 = sub_100936E18();
  if (dict)
  {
    v7 = sub_100936A78();
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  sub_100807AB0(v6, v7);
}

- (id)memberForURI:(id)i
{
  iCopy = i;
  selfCopy = self;
  sub_100808EEC(iCopy);
  v7 = v6;

  return v7;
}

- (id)memberForParticipant:(id)participant
{
  participantCopy = participant;
  selfCopy = self;
  v6 = sub_100809370(participantCopy);

  return v6;
}

- (id)participantsForURI:(id)i
{
  iCopy = i;
  selfCopy = self;
  sub_1008094DC(iCopy);

  type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
  sub_100014BB0(&unk_100CB3490, type metadata accessor for IDSGroupEncryptionControllerParticipant);
  v6.super.isa = sub_100936E08().super.isa;

  return v6.super.isa;
}

- (id)participantsForMember:(id)member
{
  v4 = *((swift_isaMask & *self) + 0x258);
  memberCopy = member;
  selfCopy = self;
  v7 = v4();
  v8 = memberCopy;
  sub_100817D6C(v7, v8);

  type metadata accessor for IDSGroupEncryptionControllerParticipant(0);
  sub_100014BB0(&unk_100CB3490, type metadata accessor for IDSGroupEncryptionControllerParticipant);
  v9.super.isa = sub_100936E08().super.isa;

  return v9.super.isa;
}

- (id)participantForToken:(id)token
{
  tokenCopy = token;
  selfCopy = self;
  sub_1008098B4();
  v7 = v6;

  return v7;
}

- (id)participantForID:(unint64_t)d
{
  v3 = *((swift_isaMask & *self) + 0x158);
  selfCopy = self;
  v5 = v3();
  os_unfair_lock_lock(v5 + 4);
  sub_100818D34(&v8);
  os_unfair_lock_unlock(v5 + 4);
  v6 = v8;

  return v6;
}

- (id)participantIDsForURIs:(id)is
{
  sub_100014170(0, &qword_100CBA2E0);
  sub_100746FD4(&unk_100CB4A40, &qword_100CBA2E0);
  v4 = sub_100936E18();
  selfCopy = self;
  sub_100809DB0(v4);

  v6.super.isa = sub_100936E08().super.isa;

  return v6.super.isa;
}

- (void)updateParticipants:(id)participants lightweight:(BOOL)lightweight
{
  lightweightCopy = lightweight;
  sub_100014170(0, &qword_100CB7168);
  v6 = sub_100936CE8();
  selfCopy = self;
  sub_10080A354(v6, lightweightCopy);
}

- (id)ensureParticipant:(id)participant
{
  participantCopy = participant;
  selfCopy = self;
  v6 = sub_10080BA80(participantCopy);

  return v6;
}

- (void)removeParticipant:(id)participant
{
  participantCopy = participant;
  selfCopy = self;
  sub_10080C348(participantCopy);
}

- (void)removeParticipantForToken:(id)token
{
  v4 = *((swift_isaMask & *self) + 0x2D8);
  tokenCopy = token;
  selfCopy = self;
  v6 = v4(tokenCopy);
  if (v6)
  {
    v7 = v6;
    (*((swift_isaMask & *selfCopy) + 0x300))();
  }
}

- (void)removeAllParticipants
{
  v2 = *((swift_isaMask & *self) + 0x158);
  selfCopy = self;
  v4 = v2();
  os_unfair_lock_lock(v4 + 4);
  sub_100748CB0();
  os_unfair_lock_unlock(v4 + 4);
}

- (void)resetKeysToPropagate
{
  selfCopy = self;
  sub_10081069C();
}

- (void)resetKMCachesAfter:(double)after
{
  v3 = *((swift_isaMask & *self) + 0x110);
  selfCopy = self;
  v5 = v3();
  os_unfair_lock_lock(v5 + 4);
  sub_100748CB0();
  os_unfair_lock_unlock(v5 + 4);

  (*((swift_isaMask & *selfCopy) + 0x378))(v6);
}

- (void)resetKMCaches
{
  selfCopy = self;
  sub_100810C18();
}

- (void)cancelKMCacheReset
{
  v2 = *((swift_isaMask & *self) + 0x110);
  selfCopy = self;
  v4 = v2();
  os_unfair_lock_lock(v4 + 4);
  sub_100748CB0();
  os_unfair_lock_unlock(v4 + 4);
}

- (void)updateDesiredMaterials
{
  selfCopy = self;
  sub_100811BC4();
}

- (void)resetKeysSentToClient
{
  selfCopy = self;
  sub_100811D74();
}

- (void)hardRoll
{
  selfCopy = self;
  sub_100811F24();
}

- (void)ensureStableKeyMaterialsSentToClient
{
  selfCopy = self;
  sub_1008120D4();
}

- (id)ensureSessionForID:(id)d
{
  v4 = sub_100936B38();
  v6 = v5;
  selfCopy = self;
  sub_100812284(v4, v6);
  v9 = v8;

  return v9;
}

- (void)cleanUpSessionForID:(id)d
{
  v4 = sub_100936B38();
  v6 = v5;
  selfCopy = self;
  sub_100812988(v4, v6);
}

- (void)setShortMKIEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_100812BEC(enabled);
}

- (_TtC17identityservicesd33IDSGroupEncryptionControllerGroup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end