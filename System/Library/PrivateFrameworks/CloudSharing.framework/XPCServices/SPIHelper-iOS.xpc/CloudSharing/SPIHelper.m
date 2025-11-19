@interface SPIHelper
- (_TtC13SPIHelper_iOS9SPIHelper)init;
- (void)addParticipantsToShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 optionsGroups:(id)a7 withReply:(id)a8;
- (void)addParticipantsToShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 permissionType:(int64_t)a7 allowOthersToInvite:(BOOL)a8 withReply:(id)aBlock;
- (void)addParticipantsToShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 withReply:(id)a7;
- (void)addParticipantsToShareWithURLWrapper:(id)a3 share:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 permissionType:(int64_t)a7 allowOthersToInvite:(BOOL)a8 withReply:(id)aBlock;
- (void)addToCloudKitSharing:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 accessType:(int64_t)a7 permissionType:(int64_t)a8 allowOthersToInvite:(BOOL)a9 withReply:(id)aBlock;
- (void)addToShareFromSharingURL:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 accessType:(int64_t)a7 permissionType:(int64_t)a8 allowOthersToInvite:(BOOL)a9 withReply:(id)a10;
- (void)existingShareForFileWithURLWrapper:(id)a3 withReply:(id)a4;
- (void)forciblyShareFolder:(id)a3 emailAddresses:(id)a4 phoneNumbers:(id)a5 accessType:(int64_t)a6 permissionType:(int64_t)a7 allowOthersToInvite:(BOOL)a8 withReply:(id)a9;
- (void)forciblyShareFolder:(id)a3 emailAddresses:(id)a4 phoneNumbers:(id)a5 optionsGroups:(id)a6 withReply:(id)a7;
- (void)mailContentFromSharingURL:(id)a3 share:(id)a4 fileURL:(id)a5 appName:(id)a6 appIconData:(id)a7 withReply:(id)a8;
- (void)startFileSharingWithURLWrapper:(id)a3 emailAddresses:(id)a4 phoneNumbers:(id)a5 accessType:(int64_t)a6 permissionType:(int64_t)a7 allowOthersToInvite:(BOOL)a8 withReply:(id)aBlock;
- (void)startFileSharingWithURLWrapper:(id)a3 emailAddresses:(id)a4 phoneNumbers:(id)a5 optionsGroups:(id)a6 withReply:(id)a7;
- (void)userNameAndEmailWithURLWrapper:(id)a3 containerSetupInfo:(id)a4 withReply:(id)a5;
@end

@implementation SPIHelper

- (void)startFileSharingWithURLWrapper:(id)a3 emailAddresses:(id)a4 phoneNumbers:(id)a5 accessType:(int64_t)a6 permissionType:(int64_t)a7 allowOthersToInvite:(BOOL)a8 withReply:(id)aBlock
{
  v14 = _Block_copy(aBlock);
  v15 = sub_10009DEA0();
  v16 = sub_10009DEA0();
  _Block_copy(v14);
  v17 = a3;
  v18 = self;
  sub_100086FF8(v17, v15, v16, a6, a7, a8, v18, v14);
  _Block_release(v14);
  _Block_release(v14);
}

- (void)startFileSharingWithURLWrapper:(id)a3 emailAddresses:(id)a4 phoneNumbers:(id)a5 optionsGroups:(id)a6 withReply:(id)a7
{
  v9 = _Block_copy(a7);
  v10 = sub_10009DEA0();
  v11 = sub_10009DEA0();
  sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);
  v12 = sub_10009DEA0();
  _Block_copy(v9);
  v13 = a3;
  v14 = self;
  sub_100087AB0(v13, v10, v11, v12, v14, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)addToCloudKitSharing:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 accessType:(int64_t)a7 permissionType:(int64_t)a8 allowOthersToInvite:(BOOL)a9 withReply:(id)aBlock
{
  v15 = _Block_copy(aBlock);
  v16 = sub_10009DEA0();
  v17 = sub_10009DEA0();
  _Block_copy(v15);
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_10008813C(v18, v19, v16, v17, a7, a8, a9, v20, v15);
  _Block_release(v15);
  _Block_release(v15);
}

- (void)addToShareFromSharingURL:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 accessType:(int64_t)a7 permissionType:(int64_t)a8 allowOthersToInvite:(BOOL)a9 withReply:(id)a10
{
  v25 = a7;
  v26 = a8;
  v24 = a9;
  v12 = sub_10009D860();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a10);
  sub_10009D820();
  v18 = sub_10009DEA0();
  v19 = sub_10009DEA0();
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  v21 = a4;
  v22 = self;
  sub_100059628(v16, a4, v18, v19, v25, v26, v24, sub_10008E5E0, v20);

  (*(v13 + 8))(v16, v12);
}

- (void)mailContentFromSharingURL:(id)a3 share:(id)a4 fileURL:(id)a5 appName:(id)a6 appIconData:(id)a7 withReply:(id)a8
{
  v36 = self;
  v12 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v33 - v14;
  v16 = sub_10009D860();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = _Block_copy(a8);
  sub_10009D820();
  if (a5)
  {
    sub_10009D820();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v17 + 56))(v15, v21, 1, v16);
  v22 = sub_10009DD90();
  v35 = v16;
  v23 = v22;
  v25 = v24;
  v26 = a4;
  v27 = a7;
  v28 = v36;
  v29 = sub_10009D880();
  v31 = v30;

  v32 = swift_allocObject();
  *(v32 + 16) = v34;
  sub_1000617A0(v20, v26, v15, v23, v25, v29, v31, sub_10008DC84, v32);

  sub_10000B230(v29, v31);

  sub_100008728(v15, &qword_1000CA250, &qword_10009FDF8);
  (*(v17 + 8))(v20, v35);
}

- (void)addParticipantsToShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 withReply:(id)a7
{
  v10 = _Block_copy(a7);
  v11 = sub_10009DEA0();
  v12 = sub_10009DEA0();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = a3;
  v15 = a4;
  v16 = self;
  sub_1000684E8(v14, a4, v11, v12, sub_10008F4F8, v13);
}

- (void)addParticipantsToShareWithURLWrapper:(id)a3 share:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 permissionType:(int64_t)a7 allowOthersToInvite:(BOOL)a8 withReply:(id)aBlock
{
  v14 = _Block_copy(aBlock);
  v15 = sub_10009DEA0();
  v16 = sub_10009DEA0();
  _Block_copy(v14);
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_100088F54(v17, v18, v15, v16, a7, a8, v19, v14);
  _Block_release(v14);
  _Block_release(v14);
}

- (void)addParticipantsToShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 permissionType:(int64_t)a7 allowOthersToInvite:(BOOL)a8 withReply:(id)aBlock
{
  v14 = _Block_copy(aBlock);
  v15 = sub_10009DEA0();
  v16 = sub_10009DEA0();
  _Block_copy(v14);
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_100089CE8(v17, a4, v15, v16, a7, a8, v19, v14);
  _Block_release(v14);
  _Block_release(v14);
}

- (void)addParticipantsToShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 optionsGroups:(id)a7 withReply:(id)a8
{
  v11 = _Block_copy(a8);
  v12 = sub_10009DEA0();
  v13 = sub_10009DEA0();
  sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);
  v14 = sub_10009DEA0();
  _Block_copy(v11);
  v15 = a3;
  v16 = a4;
  v17 = self;
  sub_10008A594(v15, a4, v12, v13, v14, v17, v11);
  _Block_release(v11);
  _Block_release(v11);
}

- (void)existingShareForFileWithURLWrapper:(id)a3 withReply:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10008AA7C(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)userNameAndEmailWithURLWrapper:(id)a3 containerSetupInfo:(id)a4 withReply:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_10008B410(a3, a4, sub_10008CDAC, v9);
}

- (void)forciblyShareFolder:(id)a3 emailAddresses:(id)a4 phoneNumbers:(id)a5 accessType:(int64_t)a6 permissionType:(int64_t)a7 allowOthersToInvite:(BOOL)a8 withReply:(id)a9
{
  v22 = a8;
  v12 = sub_10009D860();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a9);
  sub_10009D820();
  v18 = sub_10009DEA0();
  v19 = sub_10009DEA0();
  _Block_copy(v17);
  v20 = self;
  sub_10008C3B4(v16, v18, v19, a6, a7, v22, v20, v17);
  _Block_release(v17);
  _Block_release(v17);

  (*(v13 + 8))(v16, v12);
}

- (void)forciblyShareFolder:(id)a3 emailAddresses:(id)a4 phoneNumbers:(id)a5 optionsGroups:(id)a6 withReply:(id)a7
{
  v9 = sub_10009D860();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a7);
  sub_10009D820();
  v15 = sub_10009DEA0();
  v16 = sub_10009DEA0();
  sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);
  v17 = sub_10009DEA0();
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  v19 = self;
  sub_100072F58(v13, v15, v16, v17, sub_1000791F4, v18);

  (*(v10 + 8))(v13, v9);
}

- (_TtC13SPIHelper_iOS9SPIHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end