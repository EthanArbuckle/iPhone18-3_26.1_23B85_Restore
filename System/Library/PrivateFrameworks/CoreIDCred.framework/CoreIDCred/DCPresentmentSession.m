@interface DCPresentmentSession
- (DCPresentmentSession)init;
- (DCPresentmentSession)initWithPartitions:(id)a3 presentmentType:(unint64_t)a4 options:(id)a5;
- (void)buildCredentialResponseForSelection:(DCPresentmentSelection *)a3 completion:(id)a4;
- (void)buildErrorResponseWithStatus:(unint64_t)a3 completion:(id)a4;
- (void)buildGenericDataResponse:(NSData *)a3 completion:(id)a4;
- (void)buildResponseForSelection:(DCPresentmentSelection *)a3 completion:(id)a4;
- (void)generateTransportKeyForSpecification:(unint64_t)a3 completion:(id)a4;
- (void)interpretGenericDataRequest:(NSData *)a3 completion:(id)a4;
- (void)interpretRequest:(DCPresentmentRequest *)a3 completion:(id)a4;
@end

@implementation DCPresentmentSession

- (DCPresentmentSession)initWithPartitions:(id)a3 presentmentType:(unint64_t)a4 options:(id)a5
{
  v7 = sub_24565BB94();
  v8 = a5;
  return sub_24563E744(v7, a4, a5);
}

- (void)generateTransportKeyForSpecification:(unint64_t)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_24565BC24();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_245661870;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_245661878;
  v16[5] = v15;
  v17 = self;
  sub_24564ADB0(0, 0, v11, &unk_245661880, v16);
}

- (void)interpretRequest:(DCPresentmentRequest *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_24565BC24();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_245661830;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_245661838;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_24564ADB0(0, 0, v11, &unk_245661840, v16);
}

- (void)buildResponseForSelection:(DCPresentmentSelection *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_24565BC24();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_245661800;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_245661808;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_24564ADB0(0, 0, v11, &unk_245661810, v16);
}

- (void)buildCredentialResponseForSelection:(DCPresentmentSelection *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_24565BC24();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_245661760;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_245661768;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_24564ADB0(0, 0, v11, &unk_245661770, v16);
}

- (void)buildErrorResponseWithStatus:(unint64_t)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_24565BC24();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_245661730;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_245661738;
  v16[5] = v15;
  v17 = self;
  sub_24564ADB0(0, 0, v11, &unk_245661740, v16);
}

- (void)interpretGenericDataRequest:(NSData *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_24565BC24();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_245661700;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_245661708;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_24564ADB0(0, 0, v11, &unk_245661710, v16);
}

- (void)buildGenericDataResponse:(NSData *)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_24565BC24();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_245661568;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_245661578;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_24564ADB0(0, 0, v11, &unk_245661588, v16);
}

- (DCPresentmentSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end