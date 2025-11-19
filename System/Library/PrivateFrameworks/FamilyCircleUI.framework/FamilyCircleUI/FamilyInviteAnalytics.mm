@interface FamilyInviteAnalytics
+ (_TtC14FamilyCircleUI21FamilyInviteAnalytics)shared;
- (_TtC14FamilyCircleUI21FamilyInviteAnalytics)init;
- (uint64_t)sendTapInviteOnSuggestedContactEvent;
- (uint64_t)sendTapInviteOthersEvent;
- (void)sendFamilyInviteInteractionEventWithAction:(id)a3 inviteState:(id)a4 isReceiver:(BOOL)a5;
- (void)sendFamilyInviteStatusUpdateEventWithUpdateStatus:(id)a3 success:(BOOL)a4;
- (void)sendFamilySuggestionsEventWithFamilySuggestionsProactiveCount:(int64_t)a3 familySuggestionsDisplayedCount:(int64_t)a4 hasBoostedContacts:(BOOL)a5 proactiveModelUsed:(int64_t)a6 serverRequestedModel:(id)a7;
- (void)sendOtherContactInvitedEventWithInviteTransport:(id)a3 inviteCompletionStatus:(int64_t)a4;
@end

@implementation FamilyInviteAnalytics

+ (_TtC14FamilyCircleUI21FamilyInviteAnalytics)shared
{
  if (qword_27CDB4F20 != -1)
  {
    swift_once();
  }

  v3 = qword_27CDB85B8;

  return v3;
}

- (void)sendFamilySuggestionsEventWithFamilySuggestionsProactiveCount:(int64_t)a3 familySuggestionsDisplayedCount:(int64_t)a4 hasBoostedContacts:(BOOL)a5 proactiveModelUsed:(int64_t)a6 serverRequestedModel:(id)a7
{
  v12 = sub_21BE28A0C();
  v14 = v13;
  v15 = self;
  sub_21BC843C0(a3, a4, a5, a6, v12, v14);
}

- (void)sendOtherContactInvitedEventWithInviteTransport:(id)a3 inviteCompletionStatus:(int64_t)a4
{
  v6 = sub_21BE28A0C();
  v8 = v7;
  v9 = self;
  sub_21BC845C8(v6, v8, a4);
}

- (void)sendFamilyInviteInteractionEventWithAction:(id)a3 inviteState:(id)a4 isReceiver:(BOOL)a5
{
  v7 = sub_21BE28A0C();
  v9 = v8;
  v10 = sub_21BE28A0C();
  v12 = v11;
  v13 = self;
  sub_21BC84750(v7, v9, v10, v12, a5);
}

- (void)sendFamilyInviteStatusUpdateEventWithUpdateStatus:(id)a3 success:(BOOL)a4
{
  v6 = sub_21BE28A0C();
  v8 = v7;
  v9 = self;
  sub_21BC84918(v6, v8, a4);
}

- (_TtC14FamilyCircleUI21FamilyInviteAnalytics)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FamilyInviteAnalytics();
  return [(FamilyInviteAnalytics *)&v3 init];
}

- (uint64_t)sendTapInviteOnSuggestedContactEvent
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x800000021BE5A440;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v1 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v3, v1);
}

- (uint64_t)sendTapInviteOthersEvent
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0x7469766E49706154;
  *(inited + 40) = 0xEF73726568744F65;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &protocol witness table for Bool;
  *(inited + 48) = 1;

  v1 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BBC9AFC(inited + 32);
  sub_21BCA55DC(&v3, v1);
}

@end