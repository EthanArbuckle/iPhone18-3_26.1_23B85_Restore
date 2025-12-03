@interface XPCConnectionManager
- (void)receiveWithBetaEnrollmentHomeID:(NSUUID *)d completionHandler:(id)handler;
- (void)receiveWithBetaEnrollmentHomeID:(NSUUID *)d identifiers:(NSSet *)identifiers completionHandler:(id)handler;
- (void)receiveWithCarrySettingsHomeID:(NSUUID *)d completionHandler:(id)handler;
- (void)receiveWithCarrySettingsHomeID:(NSUUID *)d identifiers:(NSSet *)identifiers completionHandler:(id)handler;
@end

@implementation XPCConnectionManager

- (void)receiveWithCarrySettingsHomeID:(NSUUID *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2542AD7DC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2542AEFF0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2542AEFF8;
  v15[5] = v14;
  dCopy = d;

  sub_2542A5A74(0, 0, v10, &unk_2542AF000, v15);
}

- (void)receiveWithCarrySettingsHomeID:(NSUUID *)d identifiers:(NSSet *)identifiers completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = identifiers;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_2542AD7DC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2542AEFD0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2542AEFD8;
  v17[5] = v16;
  dCopy = d;
  identifiersCopy = identifiers;

  sub_2542A5A74(0, 0, v12, &unk_2542AEFE0, v17);
}

- (void)receiveWithBetaEnrollmentHomeID:(NSUUID *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2542AD7DC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2542AF658;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2542AF660;
  v15[5] = v14;
  dCopy = d;

  sub_2542A5A74(0, 0, v10, &unk_2542AF668, v15);
}

- (void)receiveWithBetaEnrollmentHomeID:(NSUUID *)d identifiers:(NSSet *)identifiers completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DD5E0, &qword_2542AF3A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = identifiers;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_2542AD7DC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2542AF620;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2542AEFD8;
  v17[5] = v16;
  dCopy = d;
  identifiersCopy = identifiers;

  sub_2542A5A74(0, 0, v12, &unk_2542AEFE0, v17);
}

@end