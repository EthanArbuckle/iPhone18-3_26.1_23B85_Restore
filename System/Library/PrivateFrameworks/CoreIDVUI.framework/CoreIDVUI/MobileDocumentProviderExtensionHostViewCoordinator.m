@interface MobileDocumentProviderExtensionHostViewCoordinator
- (_TtC9CoreIDVUI50MobileDocumentProviderExtensionHostViewCoordinator)init;
- (void)hostViewControllerDidActivate:(id)a3;
- (void)releaseRequestWithCompletionHandler:(id)a3;
@end

@implementation MobileDocumentProviderExtensionHostViewCoordinator

- (void)hostViewControllerDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2458CE4BC(v4);
}

- (void)releaseRequestWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_245910D64();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24591D0E8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24591D030;
  v12[5] = v11;
  v13 = self;
  sub_2459090D0(0, 0, v7, &unk_24591CD60, v12);
}

- (_TtC9CoreIDVUI50MobileDocumentProviderExtensionHostViewCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end