@interface CMFoundationModelClient
- (BOOL)requestPrewarmAndReturnError:(id *)a3;
- (_TtC15CoreMotionFDNML23CMFoundationModelClient)initWithSupportedAssetBundleIdentifiers:(id)a3 useCaseID:(id)a4 onBehalfOfPID:(int64_t)a5 loggingIdentifier:(id)a6;
- (void)sendAsyncWithRequest:(_TtC15CoreMotionFDNML24CMFoundationModelRequest *)a3 loggingID:(NSString *)a4 completionHandler:(id)a5;
@end

@implementation CMFoundationModelClient

- (_TtC15CoreMotionFDNML23CMFoundationModelClient)initWithSupportedAssetBundleIdentifiers:(id)a3 useCaseID:(id)a4 onBehalfOfPID:(int64_t)a5 loggingIdentifier:(id)a6
{
  sub_245F768E8();
  sub_245F76878();
  sub_245F76878();
  v7 = OBJC_IVAR____TtC15CoreMotionFDNML23CMFoundationModelClient_maybeSession;
  *(&self->super.isa + OBJC_IVAR____TtC15CoreMotionFDNML23CMFoundationModelClient_maybeSession) = 0;
  sub_245F76598();
  v8 = sub_245F76588();
  v9 = *(&self->super.isa + v7);
  *(&self->super.isa + v7) = v8;

  v11.receiver = self;
  v11.super_class = type metadata accessor for CMFoundationModelClient();
  return [(CMFoundationModelClient *)&v11 init];
}

- (BOOL)requestPrewarmAndReturnError:(id *)a3
{
  if (*(&self->super.isa + OBJC_IVAR____TtC15CoreMotionFDNML23CMFoundationModelClient_maybeSession))
  {
    v3 = self;

    sub_245F76578();
  }

  return 1;
}

- (void)sendAsyncWithRequest:(_TtC15CoreMotionFDNML24CMFoundationModelRequest *)a3 loggingID:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D38, &qword_245F798B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_245F76928();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_245F798C0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_245F798C8;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_245F73DE0(0, 0, v12, &unk_245F798D0, v17);
}

@end