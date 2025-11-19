@interface DIIdentityAuthorizationController
- (void)cancelRequest;
- (void)checkCanRequestDocument:(DIIdentityDocumentDescriptor *)a3 completion:(id)a4;
- (void)requestDocument:(DIIdentityRequest *)a3 completion:(id)a4;
@end

@implementation DIIdentityAuthorizationController

- (void)checkCanRequestDocument:(DIIdentityDocumentDescriptor *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_21CD83D74();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21CD88E68;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_21CD88E70;
  v16[5] = v15;
  swift_unknownObjectRetain();
  v17 = self;
  sub_21CD01F00(0, 0, v11, &unk_21CD88E78, v16);
}

- (void)requestDocument:(DIIdentityRequest *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_21CD83D74();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21CD88E30;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_21CD8E390;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_21CD01F00(0, 0, v11, &unk_21CD8E280, v16);
}

- (void)cancelRequest
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v11 - v6;
  v8 = sub_21CD83D74();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  v10 = self;
  sub_21CD5C550(0, 0, v7, &unk_21CD88E10, v9);
}

@end