@interface CDPExponentialRetryScheduler
- (_TtC15CoreCDPInternal28CDPExponentialRetryScheduler)init;
- (void)retryFetchAccountInfo:(SecureBackup *)a3 cdpContext:(CDPContext *)a4 completionHandler:(id)a5;
- (void)retryFetchAllEscrowRecord:(OTConfigurationContext *)a3 cdpContext:(CDPContext *)a4 completionHandler:(id)a5;
- (void)retryFetchEscrowRecord:(OTConfigurationContext *)a3 cdpContext:(CDPContext *)a4 completionHandler:(id)a5;
- (void)retrySilentAuthWithAuthContext:(AKAppleIDAuthenticationContext *)a3 completionHandler:(id)a4;
@end

@implementation CDPExponentialRetryScheduler

- (void)retryFetchEscrowRecord:(OTConfigurationContext *)a3 cdpContext:(CDPContext *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C2D0, &qword_245199F90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_245193974();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24519A040;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_24519A048;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_24517BC80(0, 0, v12, &unk_24519A050, v17);
}

- (void)retryFetchAllEscrowRecord:(OTConfigurationContext *)a3 cdpContext:(CDPContext *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C2D0, &qword_245199F90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_245193974();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24519A020;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_24519A028;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_24517BC80(0, 0, v12, &unk_24519A030, v17);
}

- (void)retryFetchAccountInfo:(SecureBackup *)a3 cdpContext:(CDPContext *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C2D0, &qword_245199F90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_245193974();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24519A000;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_24519A008;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_24517BC80(0, 0, v12, &unk_24519A010, v17);
}

- (void)retrySilentAuthWithAuthContext:(AKAppleIDAuthenticationContext *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C2D0, &qword_245199F90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_245193974();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_245199FA0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_245199FB0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_24517BC80(0, 0, v10, &unk_245199FC0, v15);
}

- (_TtC15CoreCDPInternal28CDPExponentialRetryScheduler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CDPExponentialRetryScheduler();
  return [(CDPExponentialRetryScheduler *)&v3 init];
}

@end