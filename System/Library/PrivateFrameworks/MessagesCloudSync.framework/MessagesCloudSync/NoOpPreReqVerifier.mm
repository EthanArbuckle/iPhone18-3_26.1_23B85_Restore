@interface NoOpPreReqVerifier
- (void)verifyAllPreReqsWithRequireEnablement:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation NoOpPreReqVerifier

- (void)verifyAllPreReqsWithRequireEnablement:(BOOL)a3 completionHandler:(id)a4
{
  v7 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v17 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = v12;
  *(v13 + 32) = self;
  v14 = sub_22BA1030C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22BA1AD38;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22BA18590;
  v16[5] = v15;

  sub_22BA04B0C(0, 0, v11, &unk_22BA18598, v16);
}

@end