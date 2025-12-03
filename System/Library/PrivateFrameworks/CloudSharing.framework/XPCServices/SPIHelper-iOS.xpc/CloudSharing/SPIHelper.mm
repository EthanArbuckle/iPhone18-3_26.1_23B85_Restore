@interface SPIHelper
- (_TtC13SPIHelper_iOS9SPIHelper)init;
- (void)addParticipantsToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers optionsGroups:(id)groups withReply:(id)reply;
- (void)addParticipantsToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers permissionType:(int64_t)type allowOthersToInvite:(BOOL)invite withReply:(id)aBlock;
- (void)addParticipantsToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers withReply:(id)reply;
- (void)addParticipantsToShareWithURLWrapper:(id)wrapper share:(id)share emailAddresses:(id)addresses phoneNumbers:(id)numbers permissionType:(int64_t)type allowOthersToInvite:(BOOL)invite withReply:(id)aBlock;
- (void)addToCloudKitSharing:(id)sharing containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite withReply:(id)aBlock;
- (void)addToShareFromSharingURL:(id)l containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite withReply:(id)self0;
- (void)existingShareForFileWithURLWrapper:(id)wrapper withReply:(id)reply;
- (void)forciblyShareFolder:(id)folder emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite withReply:(id)reply;
- (void)forciblyShareFolder:(id)folder emailAddresses:(id)addresses phoneNumbers:(id)numbers optionsGroups:(id)groups withReply:(id)reply;
- (void)mailContentFromSharingURL:(id)l share:(id)share fileURL:(id)rL appName:(id)name appIconData:(id)data withReply:(id)reply;
- (void)startFileSharingWithURLWrapper:(id)wrapper emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite withReply:(id)aBlock;
- (void)startFileSharingWithURLWrapper:(id)wrapper emailAddresses:(id)addresses phoneNumbers:(id)numbers optionsGroups:(id)groups withReply:(id)reply;
- (void)userNameAndEmailWithURLWrapper:(id)wrapper containerSetupInfo:(id)info withReply:(id)reply;
@end

@implementation SPIHelper

- (void)startFileSharingWithURLWrapper:(id)wrapper emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite withReply:(id)aBlock
{
  v14 = _Block_copy(aBlock);
  v15 = sub_10009DEA0();
  v16 = sub_10009DEA0();
  _Block_copy(v14);
  wrapperCopy = wrapper;
  selfCopy = self;
  sub_100086FF8(wrapperCopy, v15, v16, type, permissionType, invite, selfCopy, v14);
  _Block_release(v14);
  _Block_release(v14);
}

- (void)startFileSharingWithURLWrapper:(id)wrapper emailAddresses:(id)addresses phoneNumbers:(id)numbers optionsGroups:(id)groups withReply:(id)reply
{
  v9 = _Block_copy(reply);
  v10 = sub_10009DEA0();
  v11 = sub_10009DEA0();
  sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);
  v12 = sub_10009DEA0();
  _Block_copy(v9);
  wrapperCopy = wrapper;
  selfCopy = self;
  sub_100087AB0(wrapperCopy, v10, v11, v12, selfCopy, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)addToCloudKitSharing:(id)sharing containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite withReply:(id)aBlock
{
  v15 = _Block_copy(aBlock);
  v16 = sub_10009DEA0();
  v17 = sub_10009DEA0();
  _Block_copy(v15);
  sharingCopy = sharing;
  infoCopy = info;
  selfCopy = self;
  sub_10008813C(sharingCopy, infoCopy, v16, v17, type, permissionType, invite, selfCopy, v15);
  _Block_release(v15);
  _Block_release(v15);
}

- (void)addToShareFromSharingURL:(id)l containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite withReply:(id)self0
{
  typeCopy = type;
  permissionTypeCopy = permissionType;
  inviteCopy = invite;
  v12 = sub_10009D860();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(reply);
  sub_10009D820();
  v18 = sub_10009DEA0();
  v19 = sub_10009DEA0();
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  infoCopy = info;
  selfCopy = self;
  sub_100059628(v16, info, v18, v19, typeCopy, permissionTypeCopy, inviteCopy, sub_10008E5E0, v20);

  (*(v13 + 8))(v16, v12);
}

- (void)mailContentFromSharingURL:(id)l share:(id)share fileURL:(id)rL appName:(id)name appIconData:(id)data withReply:(id)reply
{
  selfCopy = self;
  v12 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v33 - v14;
  v16 = sub_10009D860();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = _Block_copy(reply);
  sub_10009D820();
  if (rL)
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
  shareCopy = share;
  dataCopy = data;
  v28 = selfCopy;
  v29 = sub_10009D880();
  v31 = v30;

  v32 = swift_allocObject();
  *(v32 + 16) = v34;
  sub_1000617A0(v20, shareCopy, v15, v23, v25, v29, v31, sub_10008DC84, v32);

  sub_10000B230(v29, v31);

  sub_100008728(v15, &qword_1000CA250, &qword_10009FDF8);
  (*(v17 + 8))(v20, v35);
}

- (void)addParticipantsToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers withReply:(id)reply
{
  v10 = _Block_copy(reply);
  v11 = sub_10009DEA0();
  v12 = sub_10009DEA0();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  shareCopy = share;
  infoCopy = info;
  selfCopy = self;
  sub_1000684E8(shareCopy, info, v11, v12, sub_10008F4F8, v13);
}

- (void)addParticipantsToShareWithURLWrapper:(id)wrapper share:(id)share emailAddresses:(id)addresses phoneNumbers:(id)numbers permissionType:(int64_t)type allowOthersToInvite:(BOOL)invite withReply:(id)aBlock
{
  v14 = _Block_copy(aBlock);
  v15 = sub_10009DEA0();
  v16 = sub_10009DEA0();
  _Block_copy(v14);
  wrapperCopy = wrapper;
  shareCopy = share;
  selfCopy = self;
  sub_100088F54(wrapperCopy, shareCopy, v15, v16, type, invite, selfCopy, v14);
  _Block_release(v14);
  _Block_release(v14);
}

- (void)addParticipantsToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers permissionType:(int64_t)type allowOthersToInvite:(BOOL)invite withReply:(id)aBlock
{
  v14 = _Block_copy(aBlock);
  v15 = sub_10009DEA0();
  v16 = sub_10009DEA0();
  _Block_copy(v14);
  shareCopy = share;
  infoCopy = info;
  selfCopy = self;
  sub_100089CE8(shareCopy, info, v15, v16, type, invite, selfCopy, v14);
  _Block_release(v14);
  _Block_release(v14);
}

- (void)addParticipantsToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers optionsGroups:(id)groups withReply:(id)reply
{
  v11 = _Block_copy(reply);
  v12 = sub_10009DEA0();
  v13 = sub_10009DEA0();
  sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);
  v14 = sub_10009DEA0();
  _Block_copy(v11);
  shareCopy = share;
  infoCopy = info;
  selfCopy = self;
  sub_10008A594(shareCopy, info, v12, v13, v14, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);
}

- (void)existingShareForFileWithURLWrapper:(id)wrapper withReply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  wrapperCopy = wrapper;
  selfCopy = self;
  sub_10008AA7C(wrapperCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)userNameAndEmailWithURLWrapper:(id)wrapper containerSetupInfo:(id)info withReply:(id)reply
{
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  wrapperCopy = wrapper;
  infoCopy = info;
  selfCopy = self;
  sub_10008B410(wrapper, info, sub_10008CDAC, v9);
}

- (void)forciblyShareFolder:(id)folder emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite withReply:(id)reply
{
  inviteCopy = invite;
  v12 = sub_10009D860();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(reply);
  sub_10009D820();
  v18 = sub_10009DEA0();
  v19 = sub_10009DEA0();
  _Block_copy(v17);
  selfCopy = self;
  sub_10008C3B4(v16, v18, v19, type, permissionType, inviteCopy, selfCopy, v17);
  _Block_release(v17);
  _Block_release(v17);

  (*(v13 + 8))(v16, v12);
}

- (void)forciblyShareFolder:(id)folder emailAddresses:(id)addresses phoneNumbers:(id)numbers optionsGroups:(id)groups withReply:(id)reply
{
  v9 = sub_10009D860();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(reply);
  sub_10009D820();
  v15 = sub_10009DEA0();
  v16 = sub_10009DEA0();
  sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);
  v17 = sub_10009DEA0();
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  selfCopy = self;
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