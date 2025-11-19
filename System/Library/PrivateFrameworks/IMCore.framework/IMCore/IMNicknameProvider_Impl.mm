@interface IMNicknameProvider_Impl
- (BOOL)hasObservedTransitionForHandleID:(id)a3;
- (id)allNicknamesForContact:(id)a3;
- (id)currentNicknameForContact:(id)a3;
- (id)nicknameForContact:(id)a3;
- (id)nicknameForHandleID:(id)a3;
- (id)pendingNicknameForContact:(id)a3;
- (id)unknownSenderRecordInfoFor:(id)a3;
- (void)bannerActionTappedFrom:(id)a3 on:(unint64_t)a4;
- (void)connectionStartedWithNotification:(id)a3;
- (void)markTransitionAsObservedForHandleID:(id)a3 isAutoUpdate:(BOOL)a4;
- (void)nicknameForCurrentUserWithCompletionHandler:(id)a3;
- (void)nicknamesDidChangeWithNotification:(id)a3;
- (void)sendNameOnlyTo:(id)a3 from:(id)a4;
- (void)sendPersonalNicknameTo:(id)a3;
- (void)sendPersonalNicknameTo:(id)a3 from:(id)a4;
- (void)setNicknameListener:(id)a3;
- (void)setPersonalNicknameWith:(id)a3;
- (void)updatePendingNicknameWith:(id)a3;
@end

@implementation IMNicknameProvider_Impl

- (id)allNicknamesForContact:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A8248AE8(v4);

  sub_1A8249548();
  v6 = sub_1A84E5D2C();

  return v6;
}

- (void)setNicknameListener:(id)a3
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
  v6 = self;
  [v4 connectWithCompletion_];
  _Block_release(v5);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
}

- (void)nicknamesDidChangeWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A824A700(v4);
}

- (void)connectionStartedWithNotification:(id)a3
{
  v4 = sub_1A84E535C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A84E533C();
  v9 = self;
  sub_1A824FD40();

  (*(v5 + 8))(v8, v4);
}

- (id)currentNicknameForContact:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1A8263714(v4);

  return v6;
}

- (void)nicknameForCurrentUserWithCompletionHandler:(id)a3
{
  v5 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_1A84CF9DC(0, 0, v8, &unk_1A8507BC0, v13);
}

- (id)nicknameForHandleID:(id)a3
{
  v4 = sub_1A84E5DBC();
  v6 = v5;
  v7 = self;
  v8 = sub_1A84CD0C4(v4, v6);

  return v8;
}

- (id)nicknameForContact:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1A84CD2B4(v4);

  return v6;
}

- (id)pendingNicknameForContact:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1A84CD328(v4);

  return v6;
}

- (BOOL)hasObservedTransitionForHandleID:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR___IMNicknameProvider_Impl_daemonConnection);
  v10[4] = nullsub_4;
  v10[5] = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A824B720;
  v10[3] = &unk_1F1B76798;
  v6 = _Block_copy(v10);
  v7 = a3;
  v8 = self;
  [v5 connectWithCompletion_];
  _Block_release(v6);
  LOBYTE(v5) = [*(&v8->super.isa + OBJC_IVAR___IMNicknameProvider_Impl_nicknameController) hasObservedTransitionForHandleID_];

  return v5;
}

- (void)markTransitionAsObservedForHandleID:(id)a3 isAutoUpdate:(BOOL)a4
{
  v6 = sub_1A84E5DBC();
  v8 = v7;
  v9 = self;
  sub_1A84CD59C(v6, v8, a4);
}

- (void)updatePendingNicknameWith:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A84CD834(v4);
}

- (void)setPersonalNicknameWith:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A84CDC2C(v4);
}

- (void)sendPersonalNicknameTo:(id)a3
{
  v4 = sub_1A84E5DBC();
  v6 = v5;
  v7 = self;
  sub_1A84CDF7C(v4, v6);
}

- (void)sendPersonalNicknameTo:(id)a3 from:(id)a4
{
  v5 = sub_1A84E5DBC();
  v7 = v6;
  v8 = sub_1A84E5DBC();
  v10 = v9;
  v11 = self;
  sub_1A84CE1F8(v5, v7, v8, v10);
}

- (void)sendNameOnlyTo:(id)a3 from:(id)a4
{
  v5 = sub_1A84E5FFC();
  v6 = sub_1A84E5DBC();
  v8 = v7;
  v9 = self;
  sub_1A84CE500(v5, v6, v8);
}

- (id)unknownSenderRecordInfoFor:(id)a3
{
  v4 = sub_1A84E5DBC();
  v6 = v5;
  v7 = self;
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

- (void)bannerActionTappedFrom:(id)a3 on:(unint64_t)a4
{
  v6 = sub_1A84E5DBC();
  v8 = v7;
  v9 = self;
  sub_1A84CEAB4(v6, v8, a4);
}

@end