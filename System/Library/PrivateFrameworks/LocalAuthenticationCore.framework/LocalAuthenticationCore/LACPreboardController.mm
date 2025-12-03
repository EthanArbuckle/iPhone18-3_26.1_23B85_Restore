@interface LACPreboardController
- (BOOL)isRequired;
- (BOOL)launchPreboardWithError:(id *)error;
- (NSArray)batchOptions;
- (_TtC23LocalAuthenticationCore21LACPreboardController)init;
- (id)uppTeamName;
- (int64_t)useCase;
- (void)enableCurrentUseCaseWithPasscode:(NSString *)passcode completion:(id)completion;
- (void)launchPreboardWithCompletion:(id)completion;
- (void)terminateWithCompletion:(id)completion;
@end

@implementation LACPreboardController

- (NSArray)batchOptions
{
  selfCopy = self;
  LACPreboardController.batchOptions.getter();

  type metadata accessor for NSNumber();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)isRequired
{
  selfCopy = self;
  v3 = LACPreboardController.isRequired.getter();

  return v3 & 1;
}

- (int64_t)useCase
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v4);
  v6 = *(v5 + 8);
  selfCopy = self;
  v8 = v6(v4, v5);

  return v8;
}

- (id)uppTeamName
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_uppManager);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v4);
  v6 = *(v5 + 8);
  selfCopy = self;
  v8 = v6(v4, v5);
  v10 = v9;

  if (v10)
  {
    v11 = MEMORY[0x1B27229A0](v8, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)launchPreboardWithError:(id *)error
{
  selfCopy = self;
  LACPreboardController.launchPreboard()();

  if (v5)
  {
    if (error)
    {
      v6 = _convertErrorToNSError(_:)();

      v7 = v6;
      *error = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (void)launchPreboardWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &async function pointer to partial apply for @objc closure #1 in LACPreboardController.launchPreboard();
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &_sIeghH_IeAgH_TRTA_59Tu;
  v13[5] = v12;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v8, &_sIeAgH_ytIeAgHr_TRTA_64Tu, v13);
}

- (void)enableCurrentUseCaseWithPasscode:(NSString *)passcode completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = passcode;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &async function pointer to partial apply for @objc closure #1 in LACPreboardController.enableCurrentUseCase(withPasscode:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTA_44Tu;
  v15[5] = v14;
  passcodeCopy = passcode;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v10, &_sIeAgH_ytIeAgHr_TRTA_49Tu, v15);
}

- (void)terminateWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &async function pointer to partial apply for @objc closure #1 in LACPreboardController.terminate();
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &_sIeghH_IeAgH_TRTATu;
  v13[5] = v12;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v8, &_sIeAgH_ytIeAgHr_TRTATu, v13);
}

- (_TtC23LocalAuthenticationCore21LACPreboardController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end