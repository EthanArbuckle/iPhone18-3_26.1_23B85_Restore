@interface SportsSyncManager
- (_TtC7NewsUI217SportsSyncManager)init;
- (void)appleAccountChanged;
- (void)handleSyncCompletionNotification;
- (void)handleSyncSettingChangedNotification;
- (void)handleiTunesAccountChanged;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8;
- (void)subscriptionControllerDidStopSyncingRemoteChanges:(id)a3;
- (void)subscriptionControllerWillStartSyncingRemoteChanges:(id)a3;
- (void)userInfoDidChangeSportsSyncState:(id)a3;
@end

@implementation SportsSyncManager

- (_TtC7NewsUI217SportsSyncManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleSyncCompletionNotification
{
  v2 = self;
  sub_218C76BDC("Sports sync manager received sync completion notification from watchlist", sub_218C82ADC, &block_descriptor_144);
}

- (void)handleSyncSettingChangedNotification
{
  v2 = self;
  sub_218C76BDC("Sports sync manager received sync setting notification from watchlist", sub_218C82AA4, &block_descriptor_139);
}

- (void)handleiTunesAccountChanged
{
  v2 = self;
  sub_218C76BDC("Sports sync manager detected apple account changed", sub_218C82A20, &block_descriptor_135);
}

- (void)subscriptionControllerWillStartSyncingRemoteChanges:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_218C813B0("Sports manager will start syncing with remote, will ignore local changes to watchlist");
}

- (void)subscriptionControllerDidStopSyncingRemoteChanges:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_218C813B0("Sports manager did stop syncing with remote, will resume processing local changes to watchlist");
}

- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8
{
  if (a4)
  {
    v14 = sub_219BF5D44();
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
  if (a5)
  {
LABEL_3:
    sub_219BF5D44();
  }

LABEL_4:
  if (a6)
  {
    sub_219BF5D44();
  }

  v15 = a3;
  v16 = a7;
  v17 = self;
  if (v16)
  {
    v18 = sub_219BF5D44();
  }

  else
  {
    v18 = 0;
  }

  sub_218C814C8(v14, v18, a8);
}

- (void)userInfoDidChangeSportsSyncState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_218C77A20(v4);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v9 = sub_219BF5414();
    v11 = v10;
    if (a4)
    {
LABEL_3:
      swift_unknownObjectRetain();
      v12 = a5;
      v13 = self;
      sub_219BF70B4();
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  memset(v18, 0, sizeof(v18));
  v14 = a5;
  v15 = self;
LABEL_6:
  v16 = MEMORY[0x277D84F70];
  if (a5)
  {
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_21874E0F0(&qword_27CC0A748, type metadata accessor for NSKeyValueChangeKey);
    v17 = sub_219BF5214();
  }

  else
  {
    v17 = 0;
  }

  sub_218C81AFC(v9, v11, v18, v17);

  sub_218744ECC(v18, &qword_280E8B4F0, v16 + 8, MEMORY[0x277D83D88], sub_218825794);
}

- (void)appleAccountChanged
{
  v2 = self;
  sub_218C78360();
}

@end