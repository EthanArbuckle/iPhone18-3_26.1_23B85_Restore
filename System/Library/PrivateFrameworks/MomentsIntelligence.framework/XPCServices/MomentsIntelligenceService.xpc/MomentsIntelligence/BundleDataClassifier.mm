@interface BundleDataClassifier
- (_TtC26MomentsIntelligenceService20BundleDataClassifier)init;
- (void)classifyBundleDataWithSystemPrompt:(id)prompt input:(id)input completion:(id)completion;
@end

@implementation BundleDataClassifier

- (void)classifyBundleDataWithSystemPrompt:(id)prompt input:(id)input completion:(id)completion
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  v10 = _Block_copy(completion);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v11;
  v19[5] = v13;
  v19[6] = v14;
  v19[7] = v16;
  v19[8] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> ();
  v19[9] = v17;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:)partial apply, v19);
}

- (_TtC26MomentsIntelligenceService20BundleDataClassifier)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BundleDataClassifier();
  return [(BundleDataClassifier *)&v3 init];
}

@end