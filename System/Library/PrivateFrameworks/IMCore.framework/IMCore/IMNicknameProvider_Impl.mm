@interface IMNicknameProvider_Impl
- (BOOL)hasObservedTransitionForHandleID:(id)d;
- (id)allNicknamesForContact:(id)contact;
- (id)currentNicknameForContact:(id)contact;
- (id)nicknameForContact:(id)contact;
- (id)nicknameForHandleID:(id)d;
- (id)pendingNicknameForContact:(id)contact;
- (id)unknownSenderRecordInfoFor:(id)for;
- (void)bannerActionTappedFrom:(id)from on:(unint64_t)on;
- (void)connectionStartedWithNotification:(id)notification;
- (void)markTransitionAsObservedForHandleID:(id)d isAutoUpdate:(BOOL)update;
- (void)nicknameForCurrentUserWithCompletionHandler:(id)handler;
- (void)nicknamesDidChangeWithNotification:(id)notification;
- (void)sendNameOnlyTo:(id)to from:(id)from;
- (void)sendPersonalNicknameTo:(id)to;
- (void)sendPersonalNicknameTo:(id)to from:(id)from;
- (void)setNicknameListener:(id)listener;
- (void)setPersonalNicknameWith:(id)with;
- (void)updatePendingNicknameWith:(id)with;
@end

@implementation IMNicknameProvider_Impl

- (id)allNicknamesForContact:(id)contact
{
  contactCopy = contact;
  selfCopy = self;
  sub_1A8248AE8(contactCopy);

  sub_1A8249548();
  v6 = sub_1A84E5D2C();

  return v6;
}

- (void)setNicknameListener:(id)listener
{
  v4 = *(&self->super.isa + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v7[4] = nullsub_4;
  v7[5] = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1A824B720;
  v7[3] = &unk_1F1B76770;
  v5 = _Block_copy(v7);
  swift_unknownObjectRetain();
  selfCopy = self;
  [v4 connectWithCompletion_];
  _Block_release(v5);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
}

- (void)nicknamesDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1A824A700(notificationCopy);
}

- (void)connectionStartedWithNotification:(id)notification
{
  v4 = sub_1A84E535C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A84E533C();
  selfCopy = self;
  sub_1A824FD40();

  (*(v5 + 8))(v8, v4);
}

- (id)currentNicknameForContact:(id)contact
{
  contactCopy = contact;
  selfCopy = self;
  v6 = sub_1A8263714(contactCopy);

  return v6;
}

- (void)nicknameForCurrentUserWithCompletionHandler:(id)handler
{
  v5 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1A84E60BC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1A850B568;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1A85008C0;
  v13[5] = v12;
  selfCopy = self;
  sub_1A84CF9DC(0, 0, v8, &unk_1A8507BC0, v13);
}

- (id)nicknameForHandleID:(id)d
{
  v4 = sub_1A84E5DBC();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1A84CD0C4(v4, v6);

  return v8;
}

- (id)nicknameForContact:(id)contact
{
  contactCopy = contact;
  selfCopy = self;
  v6 = sub_1A84CD2B4(contactCopy);

  return v6;
}

- (id)pendingNicknameForContact:(id)contact
{
  contactCopy = contact;
  selfCopy = self;
  v6 = sub_1A84CD328(contactCopy);

  return v6;
}

- (BOOL)hasObservedTransitionForHandleID:(id)d
{
  v5 = *(&self->super.isa + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v10[4] = nullsub_4;
  v10[5] = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A824B720;
  v10[3] = &unk_1F1B76798;
  v6 = _Block_copy(v10);
  dCopy = d;
  selfCopy = self;
  [v5 connectWithCompletion_];
  _Block_release(v6);
  LOBYTE(v5) = [*(&selfCopy->super.isa + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController) hasObservedTransitionForHandleID_];

  return v5;
}

- (void)markTransitionAsObservedForHandleID:(id)d isAutoUpdate:(BOOL)update
{
  v6 = sub_1A84E5DBC();
  v8 = v7;
  selfCopy = self;
  sub_1A84CD59C(v6, v8, update);
}

- (void)updatePendingNicknameWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  sub_1A84CD834(withCopy);
}

- (void)setPersonalNicknameWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  sub_1A84CDC2C(withCopy);
}

- (void)sendPersonalNicknameTo:(id)to
{
  v4 = sub_1A84E5DBC();
  v6 = v5;
  selfCopy = self;
  sub_1A84CDF7C(v4, v6);
}

- (void)sendPersonalNicknameTo:(id)to from:(id)from
{
  v5 = sub_1A84E5DBC();
  v7 = v6;
  v8 = sub_1A84E5DBC();
  v10 = v9;
  selfCopy = self;
  sub_1A84CE1F8(v5, v7, v8, v10);
}

- (void)sendNameOnlyTo:(id)to from:(id)from
{
  v5 = sub_1A84E5FFC();
  v6 = sub_1A84E5DBC();
  v8 = v7;
  selfCopy = self;
  sub_1A84CE500(v5, v6, v8);
}

- (id)unknownSenderRecordInfoFor:(id)for
{
  v4 = sub_1A84E5DBC();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1A84CE7BC(v4, v6);

  if (v8)
  {
    sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
    v9 = sub_1A84E5FEC();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)bannerActionTappedFrom:(id)from on:(unint64_t)on
{
  v6 = sub_1A84E5DBC();
  v8 = v7;
  selfCopy = self;
  sub_1A84CEAB4(v6, v8, on);
}

@end