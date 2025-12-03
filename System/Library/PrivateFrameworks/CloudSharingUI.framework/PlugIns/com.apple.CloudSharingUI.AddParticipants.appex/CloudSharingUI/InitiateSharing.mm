@interface InitiateSharing
- (_TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing)init;
- (void)callForAddParticipantsToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers reply:(id)reply;
- (void)callForCloudKitAddToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite reply:(id)aBlock;
- (void)callForCurrentUserSharingStatus:(id)status reply:(id)reply;
- (void)callForMailContent:(id)content share:(id)share fileURL:(id)l appName:(id)name appIconData:(id)data reply:(id)reply;
- (void)callForSharingURLAddToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite reply:(id)self0;
- (void)callForUserNameAndEmail:(id)email containerSetupInfo:(id)info reply:(id)reply;
@end

@implementation InitiateSharing

- (void)callForCloudKitAddToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite reply:(id)aBlock
{
  v15 = _Block_copy(aBlock);
  v16 = sub_10007B2AC();
  v17 = sub_10007B2AC();
  _Block_copy(v15);
  shareCopy = share;
  infoCopy = info;
  selfCopy = self;
  sub_10003AA00(shareCopy, infoCopy, v16, v17, type, permissionType, invite, v15);
  _Block_release(v15);
  _Block_release(v15);
}

- (void)callForSharingURLAddToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite reply:(id)self0
{
  typeCopy = type;
  permissionTypeCopy = permissionType;
  v12 = sub_10007AC4C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &typeCopy - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(reply);
  sub_10007AC1C();
  v18 = sub_10007B2AC();
  v19 = sub_10007B2AC();
  _Block_copy(v17);
  infoCopy = info;
  selfCopy = self;
  sub_10003C284(v16, infoCopy, v18, v19, typeCopy, permissionTypeCopy, invite, v17);
  _Block_release(v17);
  _Block_release(v17);

  (*(v13 + 8))(v16, v12);
}

- (void)callForMailContent:(id)content share:(id)share fileURL:(id)l appName:(id)name appIconData:(id)data reply:(id)reply
{
  selfCopy = self;
  v12 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v32 - v14;
  v16 = sub_10007AC4C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _Block_copy(reply);
  sub_10007AC1C();
  if (l)
  {
    sub_10007AC1C();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = *(v17 + 56);
  v32 = v16;
  v23(v15, v22, 1, v16);
  v24 = sub_10007B19C();
  v26 = v25;
  shareCopy = share;
  dataCopy = data;
  selfCopy = selfCopy;
  v29 = sub_10007AC7C();
  v31 = v30;

  _Block_copy(v21);
  sub_10003E1E0(v20, shareCopy, v15, v24, v26, v29, v31, v21);
  _Block_release(v21);
  _Block_release(v21);
  sub_10003846C(v29, v31);

  sub_100008824(v15, &unk_10009ED10, &qword_10007D310);
  (*(v17 + 8))(v20, v32);
}

- (void)callForCurrentUserSharingStatus:(id)status reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  statusCopy = status;
  selfCopy = self;
  sub_10003FCD8(statusCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)callForAddParticipantsToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers reply:(id)reply
{
  v10 = _Block_copy(reply);
  v11 = sub_10007B2AC();
  v12 = sub_10007B2AC();
  _Block_copy(v10);
  shareCopy = share;
  infoCopy = info;
  selfCopy = self;
  sub_100040168(shareCopy, infoCopy, v11, v12, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)callForUserNameAndEmail:(id)email containerSetupInfo:(id)info reply:(id)reply
{
  v9 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v18 - v11;
  v13 = _Block_copy(reply);
  if (email)
  {
    sub_10007AC1C();
    v14 = sub_10007AC4C();
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  }

  else
  {
    v15 = sub_10007AC4C();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  }

  _Block_copy(v13);
  infoCopy = info;
  selfCopy = self;
  sub_10004406C(v12, info, v13);
  _Block_release(v13);
  _Block_release(v13);

  sub_100008824(v12, &unk_10009ED10, &qword_10007D310);
}

- (_TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InitiateSharing();
  return [(InitiateSharing *)&v3 init];
}

@end