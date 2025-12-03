@interface SportsSyncManager
- (_TtC7NewsUI217SportsSyncManager)init;
- (void)appleAccountChanged;
- (void)handleSyncCompletionNotification;
- (void)handleSyncSettingChangedNotification;
- (void)handleiTunesAccountChanged;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type;
- (void)subscriptionControllerDidStopSyncingRemoteChanges:(id)changes;
- (void)subscriptionControllerWillStartSyncingRemoteChanges:(id)changes;
- (void)userInfoDidChangeSportsSyncState:(id)state;
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
  selfCopy = self;
  sub_218C76BDC("Sports sync manager received sync completion notification from watchlist", sub_218C82ADC, &block_descriptor_144);
}

- (void)handleSyncSettingChangedNotification
{
  selfCopy = self;
  sub_218C76BDC("Sports sync manager received sync setting notification from watchlist", sub_218C82AA4, &block_descriptor_139);
}

- (void)handleiTunesAccountChanged
{
  selfCopy = self;
  sub_218C76BDC("Sports sync manager detected apple account changed", sub_218C82A20, &block_descriptor_135);
}

- (void)subscriptionControllerWillStartSyncingRemoteChanges:(id)changes
{
  changesCopy = changes;
  selfCopy = self;
  sub_218C813B0("Sports manager will start syncing with remote, will ignore local changes to watchlist");
}

- (void)subscriptionControllerDidStopSyncingRemoteChanges:(id)changes
{
  changesCopy = changes;
  selfCopy = self;
  sub_218C813B0("Sports manager did stop syncing with remote, will resume processing local changes to watchlist");
}

- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type
{
  if (tags)
  {
    v14 = sub_219BF5D44();
    if (!changeTags)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
  if (changeTags)
  {
LABEL_3:
    sub_219BF5D44();
  }

LABEL_4:
  if (moveTags)
  {
    sub_219BF5D44();
  }

  controllerCopy = controller;
  removeTagsCopy = removeTags;
  selfCopy = self;
  if (removeTagsCopy)
  {
    v18 = sub_219BF5D44();
  }

  else
  {
    v18 = 0;
  }

  sub_218C814C8(v14, v18, type);
}

- (void)userInfoDidChangeSportsSyncState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_218C77A20(stateCopy);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v9 = sub_219BF5414();
    v11 = v10;
    if (object)
    {
LABEL_3:
      swift_unknownObjectRetain();
      changeCopy = change;
      selfCopy = self;
      sub_219BF70B4();
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
    if (object)
    {
      goto LABEL_3;
    }
  }

  memset(v18, 0, sizeof(v18));
  changeCopy2 = change;
  selfCopy2 = self;
LABEL_6:
  v16 = MEMORY[0x277D84F70];
  if (change)
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
  selfCopy = self;
  sub_218C78360();
}

@end