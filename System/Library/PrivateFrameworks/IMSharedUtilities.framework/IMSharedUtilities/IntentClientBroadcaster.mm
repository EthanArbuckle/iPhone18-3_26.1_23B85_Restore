@interface IntentClientBroadcaster
- (_TtC17IMSharedUtilities23IntentClientBroadcaster)init;
- (void)account:(id)account buddyPictureChanged:(id)changed imageData:(id)data imageHash:(id)hash;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties chatPersonCentricID:(id)d member:(id)member statusChanged:(int)changed;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD messageReceived:(id)received;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD messageSent:(id)sent;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD messagesReceived:(id)received removed:(id)self0 messagesComingFromStorage:(BOOL)self1;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD statusChanged:(int)changed handleInfo:(id)self0;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style messageUpdated:(id)updated;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style messagesUpdated:(id)updated;
- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style notifySentMessage:(id)message sendTime:(id)time isReplicating:(BOOL)replicating;
- (void)account:(id)account conference:(id)conference receivedUpdateFrom:(id)from data:(id)data;
- (void)account:(id)account handleID:(id)d updatedLastReceivedOnGridMessageDate:(id)date;
- (void)chat:(id)chat brandLogoUpdated:(id)updated transferGuid:(id)guid;
- (void)chat:(id)chat chatPersonCentricID:(id)d displayNameUpdated:(id)updated;
- (void)chat:(id)chat chatPersonCentricID:(id)d displayNameUpdated:(id)updated sender:(id)sender;
- (void)chat:(id)chat lastMessageTimeStampOnLoadUpdated:(double)updated;
- (void)chatsNeedRemerging:(id)remerging groupedChats:(id)chats;
- (void)databaseUpdated:(id)updated;
- (void)fileTransfer:(id)transfer explicitDownloadSucceededWithPath:(id)path livePhotoBundlePath:(id)bundlePath;
- (void)fileTransfer:(id)transfer updatedWithProperties:(id)properties;
- (void)fileTransferDownloadFailedWithLocalURL:(id)l error:(id)error;
- (void)fileTransferDownloadedSucceededWithLocalURL:(id)l;
- (void)groupPhotoUpdatedForChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account userInfo:(id)info;
- (void)lastFailedMessageDateChanged:(int64_t)changed;
- (void)leftChat:(id)chat;
- (void)loadedRecoverableMessagesMetadata:(id)metadata queryID:(id)d;
- (void)movedMessageGUIDsToRecentlyDeleted:(id)deleted forChatWithGUID:(id)d queryID:(id)iD deletionDate:(id)date;
- (void)movedMessagesToRecentlyDeletedForChatsWithGUIDs:(id)ds queryID:(id)d deletionDate:(id)date;
- (void)nicknameRequestResponse:(id)response encodedNicknameData:(id)data;
- (void)permanentlyDeletedRecoverableMessagesForChatsWithGUIDs:(id)ds deletedChatGUIDs:(id)iDs;
- (void)persistentProperty:(id)property changedTo:(id)to from:(id)from;
- (void)property:(id)property changedTo:(id)to from:(id)from;
- (void)service:(id)service chat:(id)chat style:(unsigned __int8)style messagesUpdated:(id)updated;
- (void)unreadCountChanged:(int64_t)changed;
- (void)unreadCountChanged:(int64_t)changed reports:(id)reports;
- (void)unreadCountReportsUpdated:(id)updated;
- (void)updateNicknameData:(id)data;
- (void)updateNicknameHandlesForSharing:(id)sharing blocked:(id)blocked;
- (void)updatePendingNicknameUpdates:(id)updates handledNicknames:(id)nicknames archivedNicknames:(id)archivedNicknames;
@end

@implementation IntentClientBroadcaster

- (void)fileTransfer:(id)transfer explicitDownloadSucceededWithPath:(id)path livePhotoBundlePath:(id)bundlePath
{
  v6 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1A88C82E8();
  v11 = v10;
  v12 = sub_1A88C82E8();
  v14 = v13;
  v15 = sub_1A88C82E8();
  v17 = v16;
  v18 = sub_1A88C87A8();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = self;
  v19[5] = v9;
  v19[6] = v11;
  v19[7] = v12;
  v19[8] = v14;
  v19[9] = v15;
  v19[10] = v17;
  selfCopy = self;
  sub_1A885A178(0, 0, v8, &unk_1A88E8678, v19);
}

- (void)fileTransferDownloadedSucceededWithLocalURL:(id)l
{
  v3 = sub_1A88C72E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7288();
  sub_1A8783C70(0xD00000000000002ELL, 0x80000001A89185D0);
  (*(v4 + 8))(v6, v3);
}

- (void)fileTransferDownloadFailedWithLocalURL:(id)l error:(id)error
{
  v4 = sub_1A88C72E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7288();
  sub_1A8783C70(0xD00000000000002FLL, 0x80000001A8918600);
  (*(v5 + 8))(v7, v4);
}

- (void)updateNicknameHandlesForSharing:(id)sharing blocked:(id)blocked
{
  v5 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = sub_1A88C88F8();
  v9 = sub_1A88C88F8();
  v14[3] = &type metadata for UpdateNicknameHandlesBroadcast;
  v14[4] = sub_1A8717794();
  v14[0] = v8;
  v14[1] = v9;
  v10 = sub_1A88C87A8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_1A86061B4(v14, v13);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1A860D56C(v13, v11 + 32);
  selfCopy = self;

  sub_1A885A178(0, 0, v7, &unk_1A88E8690, v11);

  sub_1A85F1084(v14);
}

- (void)updatePendingNicknameUpdates:(id)updates handledNicknames:(id)nicknames archivedNicknames:(id)archivedNicknames
{
  v6 = sub_1A88C81A8();
  v7 = sub_1A88C81A8();
  v8 = sub_1A88C81A8();
  selfCopy = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC28updatePendingNicknameUpdates_16handledNicknames08archivedK0ySDys11AnyHashableVypG_A2ItF_0(v6, v7, v8);
}

- (void)unreadCountChanged:(int64_t)changed
{
  v5 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v14 = &type metadata for UnreadCountChangedBroadcast;
  v15 = sub_1A87174F4();
  v12[0] = changed;
  v12[1] = 0;
  v13 = 2;
  v8 = sub_1A88C87A8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1A86061B4(v12, v11);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_1A860D56C(v11, v9 + 32);
  selfCopy = self;
  sub_1A885A178(0, 0, v7, &unk_1A88E8B88, v9);

  sub_1A85F1084(v12);
}

- (void)unreadCountChanged:(int64_t)changed reports:(id)reports
{
  sub_1A8783C24();
  v6 = sub_1A88C85F8();
  selfCopy = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC18unreadCountChanged_7reportsySi_SaySo08IMUnreadG6ReportCGtF_0(changed, v6);
}

- (void)unreadCountReportsUpdated:(id)updated
{
  updatedCopy = updated;
  selfCopy = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC25unreadCountReportsUpdatedyySo08IMUnreadG11ReportDeltaCF_0();
}

- (void)lastFailedMessageDateChanged:(int64_t)changed
{
  v4 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  v10[3] = &type metadata for LastFailedMessageDateChangedBroadcast;
  v10[4] = sub_1A87179E0();
  v10[0] = changed;
  v7 = sub_1A88C87A8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1A86061B4(v10, v9);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_1A860D56C(v9, v8 + 32);
  sub_1A885A178(0, 0, v6, &unk_1A88E8698, v8);

  sub_1A85F1084(v10);
}

- (void)nicknameRequestResponse:(id)response encodedNicknameData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v6 = sub_1A88C7358();
    sub_1A871CD60(v6, v7);

    v4 = vars8;
  }

  sub_1A8783C70(0xD00000000000002FLL, 0x80000001A89188F0);
}

- (void)property:(id)property changedTo:(id)to from:(id)from
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1A88C8CB8();
  swift_unknownObjectRelease();
  sub_1A88C8CB8();
  swift_unknownObjectRelease();
  sub_1A8783C70(0xD00000000000001BLL, 0x80000001A8918A50);
  sub_1A85F1084(&v5);
  sub_1A85F1084(v6);
}

- (void)persistentProperty:(id)property changedTo:(id)to from:(id)from
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1A88C8CB8();
  swift_unknownObjectRelease();
  sub_1A88C8CB8();
  swift_unknownObjectRelease();
  sub_1A8783C70(0xD000000000000025, 0x80000001A8918A70);
  sub_1A85F1084(&v5);
  sub_1A85F1084(v6);
}

- (void)account:(id)account conference:(id)conference receivedUpdateFrom:(id)from data:(id)data
{
  dataCopy = data;
  v7 = sub_1A88C7358();
  sub_1A871CD60(v7, v8);

  sub_1A8783C70(0xD00000000000002ELL, 0x80000001A8918CB0);
}

- (void)account:(id)account buddyPictureChanged:(id)changed imageData:(id)data imageHash:(id)hash
{
  dataCopy = data;
  v7 = sub_1A88C7358();
  sub_1A871CD60(v7, v8);

  sub_1A8783C70(0xD000000000000033, 0x80000001A8919510);
}

- (void)updateNicknameData:(id)data
{
  dataCopy = data;
  v4 = sub_1A88C7358();
  sub_1A871CD60(v4, v5);

  sub_1A8783C70(0xD000000000000016, 0x80000001A8919620);
}

- (void)fileTransfer:(id)transfer updatedWithProperties:(id)properties
{
  v5 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v16 - v6;
  v8 = sub_1A88C82E8();
  v10 = v9;
  v11 = sub_1A88C81A8();
  v17[3] = &type metadata for FileTransferUpdatedWithPropertiesBroadcast;
  v12 = sub_1A8717C20();
  v17[0] = v8;
  v17[1] = v10;
  v17[4] = v12;
  v17[2] = v11;
  v13 = sub_1A88C87A8();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_1A86061B4(v17, v16);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_1A860D56C(v16, v14 + 32);
  selfCopy = self;

  sub_1A885A178(0, 0, v7, &unk_1A88E8690, v14);

  sub_1A85F1084(v17);
}

- (_TtC17IMSharedUtilities23IntentClientBroadcaster)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)chat:(id)chat chatPersonCentricID:(id)d displayNameUpdated:(id)updated
{
  v7 = sub_1A88C82E8();
  v9 = v8;
  if (d)
  {
    v10 = sub_1A88C82E8();
    d = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = sub_1A88C82E8();
  v14 = v13;
  selfCopy = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC4chat_0F15PersonCentricID18displayNameUpdatedySS_SSSgSStF_0(v7, v9, v10, d, v12, v14);
}

- (void)chat:(id)chat chatPersonCentricID:(id)d displayNameUpdated:(id)updated sender:(id)sender
{
  v8 = sub_1A88C82E8();
  v10 = v9;
  if (d)
  {
    v11 = sub_1A88C82E8();
    d = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = sub_1A88C82E8();
  v15 = v14;
  v16 = sub_1A88C82E8();
  v18 = v17;
  selfCopy = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC4chat_0F15PersonCentricID18displayNameUpdated6senderySS_SSSgS2StF_0(v8, v10, v11, d, v13, v15, v16, v18);
}

- (void)chat:(id)chat lastMessageTimeStampOnLoadUpdated:(double)updated
{
  v6 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v15 - v7;
  v9 = sub_1A88C82E8();
  v11 = v10;
  v16[3] = &type metadata for ChatLastMessageTimeStampOnLoadUpdatedBroadcast;
  v16[4] = sub_1A87176EC();
  v16[0] = v9;
  v16[1] = v11;
  *&v16[2] = updated;
  v12 = sub_1A88C87A8();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  sub_1A86061B4(v16, v15);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_1A860D56C(v15, v13 + 32);
  selfCopy = self;

  sub_1A885A178(0, 0, v8, &unk_1A88E8C80, v13);

  sub_1A85F1084(v16);
}

- (void)leftChat:(id)chat
{
  v4 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1A88C82E8();
  v9 = v8;
  v14[3] = &type metadata for LeftChatBroadcast;
  v14[4] = sub_1A871798C();
  v14[0] = v7;
  v14[1] = v9;
  v10 = sub_1A88C87A8();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_1A86061B4(v14, v13);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1A860D56C(v13, v11 + 32);
  selfCopy = self;

  sub_1A885A178(0, 0, v6, &unk_1A88E8C78, v11);

  sub_1A85F1084(v14);
}

- (void)movedMessageGUIDsToRecentlyDeleted:(id)deleted forChatWithGUID:(id)d queryID:(id)iD deletionDate:(id)date
{
  v10 = sub_1A88C85F8();
  if (d)
  {
    v11 = sub_1A88C82E8();
    d = v12;
    if (iD)
    {
LABEL_3:
      v13 = sub_1A88C82E8();
      iD = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (iD)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v15 = sub_1A870CCE0(&unk_1EB3052E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v23 - v16;
  if (date)
  {
    sub_1A88C7448();
    v18 = sub_1A88C7478();
    v19 = *(*(v18 - 8) + 56);
    selfCopy = self;
    v19(v17, 0, 1, v18);
  }

  else
  {
    v21 = sub_1A88C7478();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
    selfCopy2 = self;
  }

  _s17IMSharedUtilities23IntentClientBroadcasterC34movedMessageGUIDsToRecentlyDeleted_8chatGUID7queryID12deletionDateySaySSG_SSSgAI10Foundation0Q0VSgtF_0(v10, v11, d, v13, iD, v17);

  sub_1A85EF638(v17, &unk_1EB3052E0);
}

- (void)movedMessagesToRecentlyDeletedForChatsWithGUIDs:(id)ds queryID:(id)d deletionDate:(id)date
{
  v8 = sub_1A88C85F8();
  if (d)
  {
    v9 = sub_1A88C82E8();
    d = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = sub_1A870CCE0(&unk_1EB3052E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v17 - v12;
  if (date)
  {
    sub_1A88C7448();
    v14 = sub_1A88C7478();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = sub_1A88C7478();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  selfCopy = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC38movedMessagesToRecentlyDeletedForChats9withGUIDs7queryID12deletionDateySaySSG_SSSg10Foundation0R0VSgtF_0(v8, v9, d, v13);

  sub_1A85EF638(v13, &unk_1EB3052E0);
}

- (void)loadedRecoverableMessagesMetadata:(id)metadata queryID:(id)d
{
  v5 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v17 - v6;
  sub_1A870CCE0(&qword_1EB303758);
  v8 = sub_1A88C81A8();
  v9 = sub_1A88C82E8();
  v11 = v10;
  selfCopy = self;
  v13 = sub_1A878C278(v8);
  v18[3] = &type metadata for LoadedRecoverableMessagesMetadataBroadcast;
  v14 = sub_1A8717A34();
  v18[0] = v13;
  v18[1] = v9;
  v18[4] = v14;
  v18[2] = v11;
  v15 = sub_1A88C87A8();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_1A86061B4(v18, v17);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_1A860D56C(v17, v16 + 32);

  sub_1A885A178(0, 0, v7, &unk_1A88E8C68, v16);

  sub_1A85F1084(v18);
}

- (void)permanentlyDeletedRecoverableMessagesForChatsWithGUIDs:(id)ds deletedChatGUIDs:(id)iDs
{
  v5 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = sub_1A88C85F8();
  v9 = sub_1A88C85F8();
  v14[3] = &type metadata for PermanentlyDeletedRecoverableMessagesForChatsBroadcast;
  v14[4] = sub_1A87178E4();
  v14[0] = v8;
  v14[1] = v9;
  v10 = sub_1A88C87A8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_1A86061B4(v14, v13);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1A860D56C(v13, v11 + 32);
  selfCopy = self;

  sub_1A885A178(0, 0, v7, &unk_1A88E8C50, v11);

  sub_1A85F1084(v14);
}

- (void)chatsNeedRemerging:(id)remerging groupedChats:(id)chats
{
  v5 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1A88C85F8();
  v9 = sub_1A88C85F8();
  v10 = sub_1A88C87A8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v8;
  v11[5] = v9;
  v11[6] = self;
  selfCopy = self;
  sub_1A885A178(0, 0, v7, &unk_1A88E8C40, v11);
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD messageSent:(id)sent
{
  v24 = sub_1A88C82E8();
  v14 = v13;
  if (chat)
  {
    v15 = sub_1A88C82E8();
    chat = v16;
    if (!properties)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = 0;
  if (properties)
  {
LABEL_3:
    properties = sub_1A88C81A8();
  }

LABEL_4:
  v17 = sub_1A88C82E8();
  v19 = v18;
  if (iD)
  {
    v20 = sub_1A88C82E8();
    iD = v21;
  }

  else
  {
    v20 = 0;
  }

  sentCopy = sent;
  selfCopy = self;
  sub_1A8795B7C(v24, v14, v15, chat, style, properties, v17, v19, v20, iD, sentCopy);
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style notifySentMessage:(id)message sendTime:(id)time isReplicating:(BOOL)replicating
{
  v14 = sub_1A88C82E8();
  v16 = v15;
  if (chat)
  {
    v17 = sub_1A88C82E8();
    chat = v18;
  }

  else
  {
    v17 = 0;
  }

  messageCopy = message;
  timeCopy = time;
  selfCopy = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC7account_4chat5style17notifySentMessage8sendTime13isReplicatingySS_SSSgSo11IMChatStyleVSo13IMMessageItemCSo8NSNumberCSbtF_0(v14, v16, v17, chat, style, messageCopy, timeCopy, replicating);
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD messageReceived:(id)received
{
  v24 = sub_1A88C82E8();
  v13 = v12;
  v14 = sub_1A88C82E8();
  v16 = v15;
  if (properties)
  {
    properties = sub_1A88C81A8();
  }

  v17 = sub_1A88C82E8();
  v19 = v18;
  if (iD)
  {
    v20 = sub_1A88C82E8();
    iD = v21;
  }

  else
  {
    v20 = 0;
  }

  receivedCopy = received;
  selfCopy = self;
  sub_1A8795F28(v24, v13, v14, v16, style, properties, v17, v19, v20, iD, receivedCopy);
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD messagesReceived:(id)received removed:(id)self0 messagesComingFromStorage:(BOOL)self1
{
  styleCopy = style;
  v27 = sub_1A88C82E8();
  v15 = v14;
  v26 = sub_1A88C82E8();
  v17 = v16;
  if (properties)
  {
    properties = sub_1A88C81A8();
  }

  v18 = sub_1A88C82E8();
  v20 = v19;
  if (iD)
  {
    v21 = sub_1A88C82E8();
    iD = v22;
  }

  else
  {
    v21 = 0;
  }

  sub_1A85E9718(0, &qword_1ED8C94E0);
  v23 = sub_1A88C85F8();
  v24 = sub_1A88C85F8();
  selfCopy = self;
  sub_1A87960FC(v27, v15, v26, v17, styleCopy, properties, v18, v20, v21, iD, v23, v24, storage);
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style messageUpdated:(id)updated
{
  v10 = sub_1A88C82E8();
  v12 = v11;
  if (chat)
  {
    v13 = sub_1A88C82E8();
    chat = v14;
  }

  else
  {
    v13 = 0;
  }

  updatedCopy = updated;
  selfCopy = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC7account_4chat5style14messageUpdatedySS_SSSgSo11IMChatStyleVSo6IMItemCtF_0(v10, v12, v13, chat, style, updatedCopy);
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style messagesUpdated:(id)updated
{
  v9 = sub_1A88C82E8();
  v11 = v10;
  if (chat)
  {
    v12 = sub_1A88C82E8();
    chat = v13;
  }

  else
  {
    v12 = 0;
  }

  sub_1A870CCE0(&qword_1EB303320);
  v14 = sub_1A88C85F8();
  selfCopy = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC7account_4chat5style15messagesUpdatedySS_SSSgSo11IMChatStyleVSaySDys11AnyHashableVypGGtF_0(v9, v11, v12, chat, style, v14);
}

- (void)service:(id)service chat:(id)chat style:(unsigned __int8)style messagesUpdated:(id)updated
{
  v10 = sub_1A88C82E8();
  v12 = v11;
  if (chat)
  {
    v13 = sub_1A88C82E8();
    chat = v14;
    if (!updated)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
  if (updated)
  {
LABEL_3:
    updated = sub_1A88C85F8();
  }

LABEL_4:
  selfCopy = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC7service_4chat5style15messagesUpdatedySS_SSSgSo11IMChatStyleVSayypGSgtF_0(v10, v12, v13, chat, style, updated);
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties groupID:(id)d chatPersonCentricID:(id)iD statusChanged:(int)changed handleInfo:(id)self0
{
  styleCopy = style;
  v13 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_1A88C82E8();
  v37 = v17;
  v38 = v16;
  v18 = sub_1A88C82E8();
  v35 = v19;
  v36 = v18;
  if (properties)
  {
    properties = sub_1A88C81A8();
  }

  infoCopy = info;
  v21 = sub_1A88C82E8();
  v23 = v22;
  if (!iD)
  {
    v25 = 0;
    changedCopy2 = changed;
    if (!info)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  iD = sub_1A88C82E8();
  v25 = v24;
  changedCopy2 = changed;
  if (info)
  {
LABEL_5:
    infoCopy = sub_1A88C85F8();
  }

LABEL_6:
  selfCopy = self;
  v28 = sub_1A88C87A8();
  (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = infoCopy;
  *(v29 + 40) = changedCopy2;
  v31 = v37;
  v30 = v38;
  *(v29 + 48) = selfCopy;
  *(v29 + 56) = v30;
  v32 = v35;
  v33 = v36;
  *(v29 + 64) = v31;
  *(v29 + 72) = v33;
  *(v29 + 80) = v32;
  *(v29 + 88) = styleCopy;
  *(v29 + 96) = properties;
  *(v29 + 104) = v21;
  *(v29 + 112) = v23;
  *(v29 + 120) = iD;
  *(v29 + 128) = v25;
  sub_1A885A178(0, 0, v15, &unk_1A88E8C38, v29);
}

- (void)account:(id)account chat:(id)chat style:(unsigned __int8)style chatProperties:(id)properties chatPersonCentricID:(id)d member:(id)member statusChanged:(int)changed
{
  styleCopy = style;
  v12 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_1A88C82E8();
  v31 = v16;
  v32 = v15;
  v17 = sub_1A88C82E8();
  v19 = v18;
  if (!properties)
  {
    v20 = 0;
    changedCopy2 = changed;
    if (d)
    {
      goto LABEL_3;
    }

LABEL_5:
    v23 = 0;
    goto LABEL_6;
  }

  v20 = sub_1A88C81A8();
  changedCopy2 = changed;
  if (!d)
  {
    goto LABEL_5;
  }

LABEL_3:
  d = sub_1A88C82E8();
  v23 = v22;
LABEL_6:
  v24 = sub_1A88C81A8();
  v25 = sub_1A88C87A8();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v27 = v31;
  v28 = v32;
  *(v26 + 32) = self;
  *(v26 + 40) = v28;
  *(v26 + 48) = v27;
  *(v26 + 56) = v17;
  *(v26 + 64) = v19;
  *(v26 + 72) = styleCopy;
  *(v26 + 80) = v20;
  *(v26 + 88) = d;
  *(v26 + 96) = v23;
  *(v26 + 104) = v24;
  *(v26 + 112) = changedCopy2;
  selfCopy = self;
  sub_1A885A178(0, 0, v14, &unk_1A88E8C30, v26);
}

- (void)account:(id)account handleID:(id)d updatedLastReceivedOnGridMessageDate:(id)date
{
  v6 = sub_1A870CCE0(&unk_1EB3052E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  if (date)
  {
    sub_1A88C7448();
    v9 = sub_1A88C7478();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1A88C7478();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  sub_1A8783C70(0xD000000000000039, 0x80000001A8919E80);
  sub_1A85EF638(v8, &unk_1EB3052E0);
}

- (void)groupPhotoUpdatedForChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account userInfo:(id)info
{
  v9 = sub_1A88C82E8();
  v11 = v10;
  v12 = sub_1A88C82E8();
  v14 = v13;
  if (info)
  {
    info = sub_1A88C81A8();
  }

  selfCopy = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC17groupPhotoUpdated17forChatIdentifier5style7account8userInfoySS_So11IMChatStyleVSSSDys11AnyHashableVypGSgtF_0(v9, v11, style, v12, v14, info);
}

- (void)chat:(id)chat brandLogoUpdated:(id)updated transferGuid:(id)guid
{
  updatedCopy = updated;
  v6 = sub_1A88C7358();
  sub_1A871CD60(v6, v7);

  sub_1A8783C70(0xD000000000000026, 0x80000001A891A2A0);
}

- (void)databaseUpdated:(id)updated
{
  v4 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_1A88C82E8();
  v9 = v8;
  v14[3] = &type metadata for ChatDatabaseUpdatedStampBroadcast;
  v14[4] = sub_1A87174A0();
  v14[0] = v7;
  v14[1] = v9;
  v10 = sub_1A88C87A8();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_1A86061B4(v14, v13);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1A860D56C(v13, v11 + 32);
  selfCopy = self;

  sub_1A885A178(0, 0, v6, &unk_1A88E8690, v11);

  sub_1A85F1084(v14);
}

@end