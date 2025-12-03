@interface CMFoundationModelClient
- (BOOL)requestPrewarmAndReturnError:(id *)error;
- (_TtC15CoreMotionFDNML23CMFoundationModelClient)initWithSupportedAssetBundleIdentifiers:(id)identifiers useCaseID:(id)d onBehalfOfPID:(int64_t)iD loggingIdentifier:(id)identifier;
- (void)sendAsyncWithRequest:(_TtC15CoreMotionFDNML24CMFoundationModelRequest *)request loggingID:(NSString *)d completionHandler:(id)handler;
@end

@implementation CMFoundationModelClient

- (_TtC15CoreMotionFDNML23CMFoundationModelClient)initWithSupportedAssetBundleIdentifiers:(id)identifiers useCaseID:(id)d onBehalfOfPID:(int64_t)iD loggingIdentifier:(id)identifier
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

- (BOOL)requestPrewarmAndReturnError:(id *)error
{
  if (*(&self->super.isa + OBJC_IVAR____TtC15CoreMotionFDNML23CMFoundationModelClient_maybeSession))
  {
    selfCopy = self;

    sub_245F76578();
  }

  return 1;
}

- (void)sendAsyncWithRequest:(_TtC15CoreMotionFDNML24CMFoundationModelRequest *)request loggingID:(NSString *)d completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE38D38, &qword_245F798B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = request;
  v14[3] = d;
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
  requestCopy = request;
  dCopy = d;
  selfCopy = self;
  sub_245F73DE0(0, 0, v12, &unk_245F798D0, v17);
}

@end