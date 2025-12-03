@interface LACRatchetFlowManager
- (LACRatchetFlowManager)initWithPresenter:(id)presenter uiManager:(id)manager;
- (void)dismissWithCompletion:(id)completion;
- (void)showCoolOffSheetWithOptions:(id)options presentationCompletion:(id)completion sheetCompletion:(id)sheetCompletion;
@end

@implementation LACRatchetFlowManager

- (LACRatchetFlowManager)initWithPresenter:(id)presenter uiManager:(id)manager
{
  presenterCopy = presenter;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = LACRatchetFlowManager;
  v9 = [(LACRatchetFlowManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presenter, presenter);
    objc_storeStrong(&v10->_uiManager, manager);
  }

  return v10;
}

- (void)showCoolOffSheetWithOptions:(id)options presentationCompletion:(id)completion sheetCompletion:(id)sheetCompletion
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(completion);
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v10 = thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply;
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v13;
  *(v14 + 40) = xmmword_1B0342B10;
  *(v14 + 56) = v10;
  *(v14 + 64) = v11;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:)partial apply, v14);
}

- (void)dismissWithCompletion:(id)completion
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ();
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  v12[5] = v8;
  v12[6] = v9;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in LACRatchetFlowManager.dismiss(completion:)partial apply, v12);
}

@end