@interface InitiateSharing
- (_TtC12CloudSharing15InitiateSharing)init;
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
  v16 = sub_243B18E3C();
  v17 = sub_243B18E3C();
  _Block_copy(v15);
  shareCopy = share;
  infoCopy = info;
  selfCopy = self;
  sub_243B0CE44(shareCopy, infoCopy, v16, v17, type, permissionType, invite, v15);
  _Block_release(v15);
  _Block_release(v15);
}

- (void)callForSharingURLAddToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite reply:(id)self0
{
  typeCopy = type;
  permissionTypeCopy = permissionType;
  v12 = sub_243B18CDC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &typeCopy - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(reply);
  sub_243B18CCC();
  v18 = sub_243B18E3C();
  v19 = sub_243B18E3C();
  _Block_copy(v17);
  infoCopy = info;
  selfCopy = self;
  sub_243B0E2B8(v16, infoCopy, v18, v19, typeCopy, permissionTypeCopy, invite, v17);
  _Block_release(v17);
  _Block_release(v17);

  (*(v13 + 8))(v16, v12);
}

- (void)callForMailContent:(id)content share:(id)share fileURL:(id)l appName:(id)name appIconData:(id)data reply:(id)reply
{
  selfCopy = self;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v32 - v14;
  v16 = sub_243B18CDC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _Block_copy(reply);
  sub_243B18CCC();
  if (l)
  {
    sub_243B18CCC();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = *(v17 + 56);
  v32 = v16;
  v23(v15, v22, 1, v16);
  v24 = sub_243B18D8C();
  v26 = v25;
  shareCopy = share;
  dataCopy = data;
  selfCopy = selfCopy;
  v29 = sub_243B18D0C();
  v31 = v30;

  _Block_copy(v21);
  sub_243B0FDCC(v20, shareCopy, v15, v24, v26, v29, v31, v21);
  _Block_release(v21);
  _Block_release(v21);
  sub_243B0A5A0(v29, v31);

  sub_243B0A49C(v15, &qword_27EDA1750, &qword_243B19A68);
  (*(v17 + 8))(v20, v32);
}

- (void)callForCurrentUserSharingStatus:(id)status reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  statusCopy = status;
  selfCopy = self;
  sub_243B11530(statusCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)callForAddParticipantsToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers reply:(id)reply
{
  v10 = _Block_copy(reply);
  v11 = sub_243B18E3C();
  v12 = sub_243B18E3C();
  _Block_copy(v10);
  shareCopy = share;
  infoCopy = info;
  selfCopy = self;
  sub_243B1196C(shareCopy, infoCopy, v11, v12, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)callForUserNameAndEmail:(id)email containerSetupInfo:(id)info reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = _Block_copy(reply);
  if (email)
  {
    sub_243B18CCC();
    v14 = sub_243B18CDC();
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  }

  else
  {
    v15 = sub_243B18CDC();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  }

  _Block_copy(v13);
  infoCopy = info;
  selfCopy = self;
  sub_243B15104(v12, info, v13);
  _Block_release(v13);
  _Block_release(v13);

  sub_243B0A49C(v12, &qword_27EDA1750, &qword_243B19A68);
}

- (_TtC12CloudSharing15InitiateSharing)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InitiateSharing();
  return [(InitiateSharing *)&v3 init];
}

@end