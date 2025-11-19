@interface InitiateSharing
- (_TtC12CloudSharing15InitiateSharing)init;
- (void)callForAddParticipantsToShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 reply:(id)a7;
- (void)callForCloudKitAddToShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 accessType:(int64_t)a7 permissionType:(int64_t)a8 allowOthersToInvite:(BOOL)a9 reply:(id)aBlock;
- (void)callForCurrentUserSharingStatus:(id)a3 reply:(id)a4;
- (void)callForMailContent:(id)a3 share:(id)a4 fileURL:(id)a5 appName:(id)a6 appIconData:(id)a7 reply:(id)a8;
- (void)callForSharingURLAddToShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 accessType:(int64_t)a7 permissionType:(int64_t)a8 allowOthersToInvite:(BOOL)a9 reply:(id)a10;
- (void)callForUserNameAndEmail:(id)a3 containerSetupInfo:(id)a4 reply:(id)a5;
@end

@implementation InitiateSharing

- (void)callForCloudKitAddToShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 accessType:(int64_t)a7 permissionType:(int64_t)a8 allowOthersToInvite:(BOOL)a9 reply:(id)aBlock
{
  v15 = _Block_copy(aBlock);
  v16 = sub_243B18E3C();
  v17 = sub_243B18E3C();
  _Block_copy(v15);
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_243B0CE44(v18, v19, v16, v17, a7, a8, a9, v15);
  _Block_release(v15);
  _Block_release(v15);
}

- (void)callForSharingURLAddToShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 accessType:(int64_t)a7 permissionType:(int64_t)a8 allowOthersToInvite:(BOOL)a9 reply:(id)a10
{
  v22 = a7;
  v23 = a8;
  v12 = sub_243B18CDC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a10);
  sub_243B18CCC();
  v18 = sub_243B18E3C();
  v19 = sub_243B18E3C();
  _Block_copy(v17);
  v20 = a4;
  v21 = self;
  sub_243B0E2B8(v16, v20, v18, v19, v22, v23, a9, v17);
  _Block_release(v17);
  _Block_release(v17);

  (*(v13 + 8))(v16, v12);
}

- (void)callForMailContent:(id)a3 share:(id)a4 fileURL:(id)a5 appName:(id)a6 appIconData:(id)a7 reply:(id)a8
{
  v33 = self;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v32 - v14;
  v16 = sub_243B18CDC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _Block_copy(a8);
  sub_243B18CCC();
  if (a5)
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
  v27 = a4;
  v28 = a7;
  v33 = v33;
  v29 = sub_243B18D0C();
  v31 = v30;

  _Block_copy(v21);
  sub_243B0FDCC(v20, v27, v15, v24, v26, v29, v31, v21);
  _Block_release(v21);
  _Block_release(v21);
  sub_243B0A5A0(v29, v31);

  sub_243B0A49C(v15, &qword_27EDA1750, &qword_243B19A68);
  (*(v17 + 8))(v20, v32);
}

- (void)callForCurrentUserSharingStatus:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_243B11530(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)callForAddParticipantsToShare:(id)a3 containerSetupInfo:(id)a4 emailAddresses:(id)a5 phoneNumbers:(id)a6 reply:(id)a7
{
  v10 = _Block_copy(a7);
  v11 = sub_243B18E3C();
  v12 = sub_243B18E3C();
  _Block_copy(v10);
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_243B1196C(v13, v14, v11, v12, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)callForUserNameAndEmail:(id)a3 containerSetupInfo:(id)a4 reply:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = _Block_copy(a5);
  if (a3)
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
  v16 = a4;
  v17 = self;
  sub_243B15104(v12, a4, v13);
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