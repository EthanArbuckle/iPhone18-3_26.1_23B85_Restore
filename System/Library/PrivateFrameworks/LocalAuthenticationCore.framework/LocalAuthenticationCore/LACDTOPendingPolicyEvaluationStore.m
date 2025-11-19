@interface LACDTOPendingPolicyEvaluationStore
+ (NSString)storeKey;
- (NSArray)pendingEvaluations;
- (_TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore)init;
- (_TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore)initWithPersistentStore:(id)a3 workQueue:(id)a4;
- (id)pendingEvaluationWithIdentifier:(id)a3;
- (void)addPendingEvaluation:(id)a3;
- (void)loadPersistedEvaluationsWithCompletion:(id)a3;
- (void)loadWithCompletionHandler:(id)a3;
- (void)persistEvaluations;
- (void)removePendingEvaluationWith:(id)a3;
@end

@implementation LACDTOPendingPolicyEvaluationStore

+ (NSString)storeKey
{
  v2 = MEMORY[0x1B27229A0](0xD000000000000012, 0x80000001B0354A00);

  return v2;
}

- (NSArray)pendingEvaluations
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict);

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationC_SD6ValuesVySSAF_GTt0g5(v3);
  type metadata accessor for LACDTOMutablePendingPolicyEvaluation();
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (_TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore)initWithPersistentStore:(id)a3 workQueue:(id)a4
{
  v7 = OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_taskGroup;
  v8 = type metadata accessor for SerialTask();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC23LocalAuthenticationCore10SerialTask_continuation;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GMd, &_sScS12ContinuationVyyyYac_GMR);
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  swift_unknownObjectRetain();
  v14 = a4;
  SerialTask.start()();
  *(&self->super.isa + v7) = v11;
  v15 = OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict;
  *(&self->super.isa + v15) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_store) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_workQueue) = v14;
  v17.receiver = self;
  v17.super_class = type metadata accessor for LACDTOPendingPolicyEvaluationStore();
  return [(LACDTOPendingPolicyEvaluationStore *)&v17 init];
}

- (void)loadPersistedEvaluationsWithCompletion:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  v12[5] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> ();
  v12[6] = v9;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:)partial apply, v12);
}

- (void)loadWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &async function pointer to partial apply for @objc closure #1 in LACDTOPendingPolicyEvaluationStore.load();
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &_sIeghH_IeAgH_TRTATu;
  v13[5] = v12;
  v14 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v8, &_sIeAgH_ytIeAgHr_TRTATu, v13);
}

- (void)persistEvaluations
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x88);
  v5 = self;
  v6 = v4();
  v7 = *(&v5->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_taskGroup);
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v6;
  v8[4] = ObjectType;
  v9 = *(*v7 + 120);
  v10 = v5;
  v9(&closure #1 in LACDTOPendingPolicyEvaluationStore.persist()partial apply, v8);
}

- (void)addPendingEvaluation:(id)a3
{
  v4 = *(a3 + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier);
  v5 = *(a3 + OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier + 8);
  v6 = *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict);
  v7 = a3;
  v9 = self;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, v4, v5, isUniquelyReferenced_nonNull_native);

  LACDTOPendingPolicyEvaluationStore.pendingEvaluationsDict.setter(v6);
}

- (id)pendingEvaluationWithIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8 = LACDTOPendingPolicyEvaluationStore.pendingEvaluation(withIdentifier:)(v4, v6);

  return v8;
}

- (void)removePendingEvaluationWith:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v9 = *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict);
  v8 = self;

  v7 = specialized Dictionary._Variant.removeValue(forKey:)(v4, v6);

  LACDTOPendingPolicyEvaluationStore.pendingEvaluationsDict.setter(v9);
}

- (_TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end