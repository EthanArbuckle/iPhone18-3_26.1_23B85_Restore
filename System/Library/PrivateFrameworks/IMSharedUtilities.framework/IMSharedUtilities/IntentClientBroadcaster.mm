@interface IntentClientBroadcaster
- (_TtC17IMSharedUtilities23IntentClientBroadcaster)init;
- (void)account:(id)a3 buddyPictureChanged:(id)a4 imageData:(id)a5 imageHash:(id)a6;
- (void)account:(id)a3 chat:(id)a4 style:(unsigned __int8)a5 chatProperties:(id)a6 chatPersonCentricID:(id)a7 member:(id)a8 statusChanged:(int)a9;
- (void)account:(id)a3 chat:(id)a4 style:(unsigned __int8)a5 chatProperties:(id)a6 groupID:(id)a7 chatPersonCentricID:(id)a8 messageReceived:(id)a9;
- (void)account:(id)a3 chat:(id)a4 style:(unsigned __int8)a5 chatProperties:(id)a6 groupID:(id)a7 chatPersonCentricID:(id)a8 messageSent:(id)a9;
- (void)account:(id)a3 chat:(id)a4 style:(unsigned __int8)a5 chatProperties:(id)a6 groupID:(id)a7 chatPersonCentricID:(id)a8 messagesReceived:(id)a9 removed:(id)a10 messagesComingFromStorage:(BOOL)a11;
- (void)account:(id)a3 chat:(id)a4 style:(unsigned __int8)a5 chatProperties:(id)a6 groupID:(id)a7 chatPersonCentricID:(id)a8 statusChanged:(int)a9 handleInfo:(id)a10;
- (void)account:(id)a3 chat:(id)a4 style:(unsigned __int8)a5 messageUpdated:(id)a6;
- (void)account:(id)a3 chat:(id)a4 style:(unsigned __int8)a5 messagesUpdated:(id)a6;
- (void)account:(id)a3 chat:(id)a4 style:(unsigned __int8)a5 notifySentMessage:(id)a6 sendTime:(id)a7 isReplicating:(BOOL)a8;
- (void)account:(id)a3 conference:(id)a4 receivedUpdateFrom:(id)a5 data:(id)a6;
- (void)account:(id)a3 handleID:(id)a4 updatedLastReceivedOnGridMessageDate:(id)a5;
- (void)chat:(id)a3 brandLogoUpdated:(id)a4 transferGuid:(id)a5;
- (void)chat:(id)a3 chatPersonCentricID:(id)a4 displayNameUpdated:(id)a5;
- (void)chat:(id)a3 chatPersonCentricID:(id)a4 displayNameUpdated:(id)a5 sender:(id)a6;
- (void)chat:(id)a3 lastMessageTimeStampOnLoadUpdated:(double)a4;
- (void)chatsNeedRemerging:(id)a3 groupedChats:(id)a4;
- (void)databaseUpdated:(id)a3;
- (void)fileTransfer:(id)a3 explicitDownloadSucceededWithPath:(id)a4 livePhotoBundlePath:(id)a5;
- (void)fileTransfer:(id)a3 updatedWithProperties:(id)a4;
- (void)fileTransferDownloadFailedWithLocalURL:(id)a3 error:(id)a4;
- (void)fileTransferDownloadedSucceededWithLocalURL:(id)a3;
- (void)groupPhotoUpdatedForChatIdentifier:(id)a3 style:(unsigned __int8)a4 account:(id)a5 userInfo:(id)a6;
- (void)lastFailedMessageDateChanged:(int64_t)a3;
- (void)leftChat:(id)a3;
- (void)loadedRecoverableMessagesMetadata:(id)a3 queryID:(id)a4;
- (void)movedMessageGUIDsToRecentlyDeleted:(id)a3 forChatWithGUID:(id)a4 queryID:(id)a5 deletionDate:(id)a6;
- (void)movedMessagesToRecentlyDeletedForChatsWithGUIDs:(id)a3 queryID:(id)a4 deletionDate:(id)a5;
- (void)nicknameRequestResponse:(id)a3 encodedNicknameData:(id)a4;
- (void)permanentlyDeletedRecoverableMessagesForChatsWithGUIDs:(id)a3 deletedChatGUIDs:(id)a4;
- (void)persistentProperty:(id)a3 changedTo:(id)a4 from:(id)a5;
- (void)property:(id)a3 changedTo:(id)a4 from:(id)a5;
- (void)service:(id)a3 chat:(id)a4 style:(unsigned __int8)a5 messagesUpdated:(id)a6;
- (void)unreadCountChanged:(int64_t)a3;
- (void)unreadCountChanged:(int64_t)a3 reports:(id)a4;
- (void)unreadCountReportsUpdated:(id)a3;
- (void)updateNicknameData:(id)a3;
- (void)updateNicknameHandlesForSharing:(id)a3 blocked:(id)a4;
- (void)updatePendingNicknameUpdates:(id)a3 handledNicknames:(id)a4 archivedNicknames:(id)a5;
@end

@implementation IntentClientBroadcaster

- (void)fileTransfer:(id)a3 explicitDownloadSucceededWithPath:(id)a4 livePhotoBundlePath:(id)a5
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
  v20 = self;
  sub_1A885A178(0, 0, v8, &unk_1A88E8678, v19);
}

- (void)fileTransferDownloadedSucceededWithLocalURL:(id)a3
{
  v3 = sub_1A88C72E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7288();
  sub_1A8783C70(0xD00000000000002ELL, 0x80000001A89185D0);
  (*(v4 + 8))(v6, v3);
}

- (void)fileTransferDownloadFailedWithLocalURL:(id)a3 error:(id)a4
{
  v4 = sub_1A88C72E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7288();
  sub_1A8783C70(0xD00000000000002FLL, 0x80000001A8918600);
  (*(v5 + 8))(v7, v4);
}

- (void)updateNicknameHandlesForSharing:(id)a3 blocked:(id)a4
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
  v12 = self;

  sub_1A885A178(0, 0, v7, &unk_1A88E8690, v11);

  sub_1A85F1084(v14);
}

- (void)updatePendingNicknameUpdates:(id)a3 handledNicknames:(id)a4 archivedNicknames:(id)a5
{
  v6 = sub_1A88C81A8();
  v7 = sub_1A88C81A8();
  v8 = sub_1A88C81A8();
  v9 = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC28updatePendingNicknameUpdates_16handledNicknames08archivedK0ySDys11AnyHashableVypG_A2ItF_0(v6, v7, v8);
}

- (void)unreadCountChanged:(int64_t)a3
{
  v5 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v14 = &type metadata for UnreadCountChangedBroadcast;
  v15 = sub_1A87174F4();
  v12[0] = a3;
  v12[1] = 0;
  v13 = 2;
  v8 = sub_1A88C87A8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1A86061B4(v12, v11);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_1A860D56C(v11, v9 + 32);
  v10 = self;
  sub_1A885A178(0, 0, v7, &unk_1A88E8B88, v9);

  sub_1A85F1084(v12);
}

- (void)unreadCountChanged:(int64_t)a3 reports:(id)a4
{
  sub_1A8783C24();
  v6 = sub_1A88C85F8();
  v7 = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC18unreadCountChanged_7reportsySi_SaySo08IMUnreadG6ReportCGtF_0(a3, v6);
}

- (void)unreadCountReportsUpdated:(id)a3
{
  v4 = a3;
  v5 = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC25unreadCountReportsUpdatedyySo08IMUnreadG11ReportDeltaCF_0();
}

- (void)lastFailedMessageDateChanged:(int64_t)a3
{
  v4 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  v10[3] = &type metadata for LastFailedMessageDateChangedBroadcast;
  v10[4] = sub_1A87179E0();
  v10[0] = a3;
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

- (void)nicknameRequestResponse:(id)a3 encodedNicknameData:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = sub_1A88C7358();
    sub_1A871CD60(v6, v7);

    v4 = vars8;
  }

  sub_1A8783C70(0xD00000000000002FLL, 0x80000001A89188F0);
}

- (void)property:(id)a3 changedTo:(id)a4 from:(id)a5
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

- (void)persistentProperty:(id)a3 changedTo:(id)a4 from:(id)a5
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

- (void)account:(id)a3 conference:(id)a4 receivedUpdateFrom:(id)a5 data:(id)a6
{
  v6 = a6;
  v7 = sub_1A88C7358();
  sub_1A871CD60(v7, v8);

  sub_1A8783C70(0xD00000000000002ELL, 0x80000001A8918CB0);
}

- (void)account:(id)a3 buddyPictureChanged:(id)a4 imageData:(id)a5 imageHash:(id)a6
{
  v6 = a5;
  v7 = sub_1A88C7358();
  sub_1A871CD60(v7, v8);

  sub_1A8783C70(0xD000000000000033, 0x80000001A8919510);
}

- (void)updateNicknameData:(id)a3
{
  v3 = a3;
  v4 = sub_1A88C7358();
  sub_1A871CD60(v4, v5);

  sub_1A8783C70(0xD000000000000016, 0x80000001A8919620);
}

- (void)fileTransfer:(id)a3 updatedWithProperties:(id)a4
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
  v15 = self;

  sub_1A885A178(0, 0, v7, &unk_1A88E8690, v14);

  sub_1A85F1084(v17);
}

- (_TtC17IMSharedUtilities23IntentClientBroadcaster)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)chat:(id)a3 chatPersonCentricID:(id)a4 displayNameUpdated:(id)a5
{
  v7 = sub_1A88C82E8();
  v9 = v8;
  if (a4)
  {
    v10 = sub_1A88C82E8();
    a4 = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = sub_1A88C82E8();
  v14 = v13;
  v15 = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC4chat_0F15PersonCentricID18displayNameUpdatedySS_SSSgSStF_0(v7, v9, v10, a4, v12, v14);
}

- (void)chat:(id)a3 chatPersonCentricID:(id)a4 displayNameUpdated:(id)a5 sender:(id)a6
{
  v8 = sub_1A88C82E8();
  v10 = v9;
  if (a4)
  {
    v11 = sub_1A88C82E8();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = sub_1A88C82E8();
  v15 = v14;
  v16 = sub_1A88C82E8();
  v18 = v17;
  v19 = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC4chat_0F15PersonCentricID18displayNameUpdated6senderySS_SSSgS2StF_0(v8, v10, v11, a4, v13, v15, v16, v18);
}

- (void)chat:(id)a3 lastMessageTimeStampOnLoadUpdated:(double)a4
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
  *&v16[2] = a4;
  v12 = sub_1A88C87A8();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  sub_1A86061B4(v16, v15);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_1A860D56C(v15, v13 + 32);
  v14 = self;

  sub_1A885A178(0, 0, v8, &unk_1A88E8C80, v13);

  sub_1A85F1084(v16);
}

- (void)leftChat:(id)a3
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
  v12 = self;

  sub_1A885A178(0, 0, v6, &unk_1A88E8C78, v11);

  sub_1A85F1084(v14);
}

- (void)movedMessageGUIDsToRecentlyDeleted:(id)a3 forChatWithGUID:(id)a4 queryID:(id)a5 deletionDate:(id)a6
{
  v10 = sub_1A88C85F8();
  if (a4)
  {
    v11 = sub_1A88C82E8();
    a4 = v12;
    if (a5)
    {
LABEL_3:
      v13 = sub_1A88C82E8();
      a5 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v15 = sub_1A870CCE0(&unk_1EB3052E0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v23 - v16;
  if (a6)
  {
    sub_1A88C7448();
    v18 = sub_1A88C7478();
    v19 = *(*(v18 - 8) + 56);
    v20 = self;
    v19(v17, 0, 1, v18);
  }

  else
  {
    v21 = sub_1A88C7478();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
    v22 = self;
  }

  _s17IMSharedUtilities23IntentClientBroadcasterC34movedMessageGUIDsToRecentlyDeleted_8chatGUID7queryID12deletionDateySaySSG_SSSgAI10Foundation0Q0VSgtF_0(v10, v11, a4, v13, a5, v17);

  sub_1A85EF638(v17, &unk_1EB3052E0);
}

- (void)movedMessagesToRecentlyDeletedForChatsWithGUIDs:(id)a3 queryID:(id)a4 deletionDate:(id)a5
{
  v8 = sub_1A88C85F8();
  if (a4)
  {
    v9 = sub_1A88C82E8();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = sub_1A870CCE0(&unk_1EB3052E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v17 - v12;
  if (a5)
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

  v16 = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC38movedMessagesToRecentlyDeletedForChats9withGUIDs7queryID12deletionDateySaySSG_SSSg10Foundation0R0VSgtF_0(v8, v9, a4, v13);

  sub_1A85EF638(v13, &unk_1EB3052E0);
}

- (void)loadedRecoverableMessagesMetadata:(id)a3 queryID:(id)a4
{
  v5 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v17 - v6;
  sub_1A870CCE0(&qword_1EB303758);
  v8 = sub_1A88C81A8();
  v9 = sub_1A88C82E8();
  v11 = v10;
  v12 = self;
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

- (void)permanentlyDeletedRecoverableMessagesForChatsWithGUIDs:(id)a3 deletedChatGUIDs:(id)a4
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
  v12 = self;

  sub_1A885A178(0, 0, v7, &unk_1A88E8C50, v11);

  sub_1A85F1084(v14);
}

- (void)chatsNeedRemerging:(id)a3 groupedChats:(id)a4
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
  v12 = self;
  sub_1A885A178(0, 0, v7, &unk_1A88E8C40, v11);
}

- (void)account:(id)a3 chat:(id)a4 style:(unsigned __int8)a5 chatProperties:(id)a6 groupID:(id)a7 chatPersonCentricID:(id)a8 messageSent:(id)a9
{
  v24 = sub_1A88C82E8();
  v14 = v13;
  if (a4)
  {
    v15 = sub_1A88C82E8();
    a4 = v16;
    if (!a6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = 0;
  if (a6)
  {
LABEL_3:
    a6 = sub_1A88C81A8();
  }

LABEL_4:
  v17 = sub_1A88C82E8();
  v19 = v18;
  if (a8)
  {
    v20 = sub_1A88C82E8();
    a8 = v21;
  }

  else
  {
    v20 = 0;
  }

  v22 = a9;
  v23 = self;
  sub_1A8795B7C(v24, v14, v15, a4, a5, a6, v17, v19, v20, a8, v22);
}

- (void)account:(id)a3 chat:(id)a4 style:(unsigned __int8)a5 notifySentMessage:(id)a6 sendTime:(id)a7 isReplicating:(BOOL)a8
{
  v14 = sub_1A88C82E8();
  v16 = v15;
  if (a4)
  {
    v17 = sub_1A88C82E8();
    a4 = v18;
  }

  else
  {
    v17 = 0;
  }

  v19 = a6;
  v20 = a7;
  v21 = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC7account_4chat5style17notifySentMessage8sendTime13isReplicatingySS_SSSgSo11IMChatStyleVSo13IMMessageItemCSo8NSNumberCSbtF_0(v14, v16, v17, a4, a5, v19, v20, a8);
}

- (void)account:(id)a3 chat:(id)a4 style:(unsigned __int8)a5 chatProperties:(id)a6 groupID:(id)a7 chatPersonCentricID:(id)a8 messageReceived:(id)a9
{
  v24 = sub_1A88C82E8();
  v13 = v12;
  v14 = sub_1A88C82E8();
  v16 = v15;
  if (a6)
  {
    a6 = sub_1A88C81A8();
  }

  v17 = sub_1A88C82E8();
  v19 = v18;
  if (a8)
  {
    v20 = sub_1A88C82E8();
    a8 = v21;
  }

  else
  {
    v20 = 0;
  }

  v22 = a9;
  v23 = self;
  sub_1A8795F28(v24, v13, v14, v16, a5, a6, v17, v19, v20, a8, v22);
}

- (void)account:(id)a3 chat:(id)a4 style:(unsigned __int8)a5 chatProperties:(id)a6 groupID:(id)a7 chatPersonCentricID:(id)a8 messagesReceived:(id)a9 removed:(id)a10 messagesComingFromStorage:(BOOL)a11
{
  v28 = a5;
  v27 = sub_1A88C82E8();
  v15 = v14;
  v26 = sub_1A88C82E8();
  v17 = v16;
  if (a6)
  {
    a6 = sub_1A88C81A8();
  }

  v18 = sub_1A88C82E8();
  v20 = v19;
  if (a8)
  {
    v21 = sub_1A88C82E8();
    a8 = v22;
  }

  else
  {
    v21 = 0;
  }

  sub_1A85E9718(0, &qword_1ED8C94E0);
  v23 = sub_1A88C85F8();
  v24 = sub_1A88C85F8();
  v25 = self;
  sub_1A87960FC(v27, v15, v26, v17, v28, a6, v18, v20, v21, a8, v23, v24, a11);
}

- (void)account:(id)a3 chat:(id)a4 style:(unsigned __int8)a5 messageUpdated:(id)a6
{
  v10 = sub_1A88C82E8();
  v12 = v11;
  if (a4)
  {
    v13 = sub_1A88C82E8();
    a4 = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = a6;
  v16 = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC7account_4chat5style14messageUpdatedySS_SSSgSo11IMChatStyleVSo6IMItemCtF_0(v10, v12, v13, a4, a5, v15);
}

- (void)account:(id)a3 chat:(id)a4 style:(unsigned __int8)a5 messagesUpdated:(id)a6
{
  v9 = sub_1A88C82E8();
  v11 = v10;
  if (a4)
  {
    v12 = sub_1A88C82E8();
    a4 = v13;
  }

  else
  {
    v12 = 0;
  }

  sub_1A870CCE0(&qword_1EB303320);
  v14 = sub_1A88C85F8();
  v15 = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC7account_4chat5style15messagesUpdatedySS_SSSgSo11IMChatStyleVSaySDys11AnyHashableVypGGtF_0(v9, v11, v12, a4, a5, v14);
}

- (void)service:(id)a3 chat:(id)a4 style:(unsigned __int8)a5 messagesUpdated:(id)a6
{
  v10 = sub_1A88C82E8();
  v12 = v11;
  if (a4)
  {
    v13 = sub_1A88C82E8();
    a4 = v14;
    if (!a6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
  if (a6)
  {
LABEL_3:
    a6 = sub_1A88C85F8();
  }

LABEL_4:
  v15 = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC7service_4chat5style15messagesUpdatedySS_SSSgSo11IMChatStyleVSayypGSgtF_0(v10, v12, v13, a4, a5, a6);
}

- (void)account:(id)a3 chat:(id)a4 style:(unsigned __int8)a5 chatProperties:(id)a6 groupID:(id)a7 chatPersonCentricID:(id)a8 statusChanged:(int)a9 handleInfo:(id)a10
{
  v39 = a5;
  v13 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_1A88C82E8();
  v37 = v17;
  v38 = v16;
  v18 = sub_1A88C82E8();
  v35 = v19;
  v36 = v18;
  if (a6)
  {
    a6 = sub_1A88C81A8();
  }

  v20 = a10;
  v21 = sub_1A88C82E8();
  v23 = v22;
  if (!a8)
  {
    v25 = 0;
    v26 = a9;
    if (!a10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  a8 = sub_1A88C82E8();
  v25 = v24;
  v26 = a9;
  if (a10)
  {
LABEL_5:
    v20 = sub_1A88C85F8();
  }

LABEL_6:
  v27 = self;
  v28 = sub_1A88C87A8();
  (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v20;
  *(v29 + 40) = v26;
  v31 = v37;
  v30 = v38;
  *(v29 + 48) = v27;
  *(v29 + 56) = v30;
  v32 = v35;
  v33 = v36;
  *(v29 + 64) = v31;
  *(v29 + 72) = v33;
  *(v29 + 80) = v32;
  *(v29 + 88) = v39;
  *(v29 + 96) = a6;
  *(v29 + 104) = v21;
  *(v29 + 112) = v23;
  *(v29 + 120) = a8;
  *(v29 + 128) = v25;
  sub_1A885A178(0, 0, v15, &unk_1A88E8C38, v29);
}

- (void)account:(id)a3 chat:(id)a4 style:(unsigned __int8)a5 chatProperties:(id)a6 chatPersonCentricID:(id)a7 member:(id)a8 statusChanged:(int)a9
{
  v33 = a5;
  v12 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_1A88C82E8();
  v31 = v16;
  v32 = v15;
  v17 = sub_1A88C82E8();
  v19 = v18;
  if (!a6)
  {
    v20 = 0;
    v21 = a9;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v23 = 0;
    goto LABEL_6;
  }

  v20 = sub_1A88C81A8();
  v21 = a9;
  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  a7 = sub_1A88C82E8();
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
  *(v26 + 72) = v33;
  *(v26 + 80) = v20;
  *(v26 + 88) = a7;
  *(v26 + 96) = v23;
  *(v26 + 104) = v24;
  *(v26 + 112) = v21;
  v29 = self;
  sub_1A885A178(0, 0, v14, &unk_1A88E8C30, v26);
}

- (void)account:(id)a3 handleID:(id)a4 updatedLastReceivedOnGridMessageDate:(id)a5
{
  v6 = sub_1A870CCE0(&unk_1EB3052E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  if (a5)
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

- (void)groupPhotoUpdatedForChatIdentifier:(id)a3 style:(unsigned __int8)a4 account:(id)a5 userInfo:(id)a6
{
  v9 = sub_1A88C82E8();
  v11 = v10;
  v12 = sub_1A88C82E8();
  v14 = v13;
  if (a6)
  {
    a6 = sub_1A88C81A8();
  }

  v15 = self;
  _s17IMSharedUtilities23IntentClientBroadcasterC17groupPhotoUpdated17forChatIdentifier5style7account8userInfoySS_So11IMChatStyleVSSSDys11AnyHashableVypGSgtF_0(v9, v11, a4, v12, v14, a6);
}

- (void)chat:(id)a3 brandLogoUpdated:(id)a4 transferGuid:(id)a5
{
  v5 = a4;
  v6 = sub_1A88C7358();
  sub_1A871CD60(v6, v7);

  sub_1A8783C70(0xD000000000000026, 0x80000001A891A2A0);
}

- (void)databaseUpdated:(id)a3
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
  v12 = self;

  sub_1A885A178(0, 0, v6, &unk_1A88E8690, v11);

  sub_1A85F1084(v14);
}

@end