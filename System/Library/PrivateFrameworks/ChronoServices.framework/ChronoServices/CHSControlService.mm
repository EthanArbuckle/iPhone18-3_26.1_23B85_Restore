@interface CHSControlService
+ (CHSControlService)sharedInstance;
- (CHSControlService)init;
- (void)allControlConfigurationsByHostWithCompletion:(id)a3;
- (void)fetchControlDescriptorsForExtensionBundleIdentifier:(id)a3 userInitiated:(BOOL)a4 reason:(id)a5 completion:(id)a6;
- (void)reloadControlsForExtension:(id)a3 kind:(id)a4 reason:(id)a5;
@end

@implementation CHSControlService

+ (CHSControlService)sharedInstance
{
  if (qword_1EAEEC150 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAEEC158;

  return v3;
}

- (void)reloadControlsForExtension:(id)a3 kind:(id)a4 reason:(id)a5
{
  v7 = sub_195FA08B8();
  v9 = v8;
  if (a4)
  {
    v10 = sub_195FA08B8();
    a4 = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = sub_195FA08B8();
  v14 = v13;
  v15 = self;
  _sSo17CHSControlServiceC14ChronoServicesE14reloadControls12forExtension4kind6reasonySS_SSSgSStF_0(v7, v9, v10, a4, v12, v14);
}

- (CHSControlService)init
{
  v3.receiver = self;
  v3.super_class = CHSControlService;
  return [(CHSControlService *)&v3 init];
}

- (void)allControlConfigurationsByHostWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE330, &qword_195FAFCB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = sub_195FA0BC8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = sub_195F71200;
  v12[6] = v10;
  v13 = self;
  sub_195F6FE44(0, 0, v8, &unk_195FAFCE0, v12);
}

- (void)fetchControlDescriptorsForExtensionBundleIdentifier:(id)a3 userInitiated:(BOOL)a4 reason:(id)a5 completion:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_195FA08B8();
  v11 = v10;
  v12 = sub_195FA08B8();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  v16 = self;
  CHSControlService.fetchControlDescriptors(forExtensionBundleIdentifier:userInitiated:reason:completion:)(v9, v11, a4, v12, v14, sub_195F711F8, v15);
}

@end