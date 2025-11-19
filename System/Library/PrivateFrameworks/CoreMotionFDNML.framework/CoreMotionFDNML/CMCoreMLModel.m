@interface CMCoreMLModel
+ (id)fromBundlePath:(const char *)a3 error:(id *)a4;
+ (id)fromName:(const char *)a3 error:(id *)a4;
- (_TtC15CoreMotionFDNML13CMCoreMLModel)init;
- (id)predictFor:(id)a3 error:(id *)a4;
- (void)predictAsyncFor:(_TtC15CoreMotionFDNML15CMWrappedArrays *)a3 completionHandler:(id)a4;
@end

@implementation CMCoreMLModel

+ (id)fromName:(const char *)a3 error:(id *)a4
{
  v4 = sub_245F75404();

  return v4;
}

+ (id)fromBundlePath:(const char *)a3 error:(id *)a4
{
  sub_245F768B8();
  v4 = sub_245F75200();

  return v4;
}

- (id)predictFor:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_245F72DA0(v5);

  return v7;
}

- (void)predictAsyncFor:(_TtC15CoreMotionFDNML15CMWrappedArrays *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D38, &qword_245F798B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_245F76928();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_245F79A08;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_245F798C8;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_245F73DE0(0, 0, v10, &unk_245F798D0, v15);
}

- (_TtC15CoreMotionFDNML13CMCoreMLModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end