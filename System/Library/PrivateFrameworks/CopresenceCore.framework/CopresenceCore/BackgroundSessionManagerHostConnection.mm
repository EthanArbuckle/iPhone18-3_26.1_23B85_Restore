@interface BackgroundSessionManagerHostConnection
- (void)leaveWithIdentifier:(id)a3 completion:(id)a4;
- (void)prewarmWithCompletion:(id)a3;
- (void)updateMembersWithIdentifier:(id)a3 members:(id)a4 completion:(id)a5;
- (void)updateShare:(id)a3 activityID:(id)a4 completion:(id)a5;
@end

@implementation BackgroundSessionManagerHostConnection

- (void)prewarmWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  v3[2](v3, 0);

  _Block_release(v3);
}

- (void)leaveWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self;
  BackgroundSessionManagerHostConnection.leave(identifier:completion:)(v10, thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)updateMembersWithIdentifier:(id)a3 members:(id)a4 completion:(id)a5
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for TUHandle();
  lazy protocol witness table accessor for type AddressableMember and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, type metadata accessor for TUHandle);
  v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v12);
  v14 = self;
  specialized BackgroundSessionManagerHostConnection.updateMembers(identifier:members:completion:)(v11, v13, v14, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v8 + 8))(v11, v7);
}

- (void)updateShare:(id)a3 activityID:(id)a4 completion:(id)a5
{
  v30 = self;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29 - v9;
  v29 = &v29 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  v18 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  (*(v12 + 16))(v15, v17, v11);
  v21 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v30;
  *(v23 + 4) = v30;
  *(v23 + 5) = a3;
  (*(v12 + 32))(&v23[v21], v15, v11);
  v25 = &v23[v22];
  *v25 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ();
  v25[1] = v19;
  v26 = a3;
  v27 = v24;
  v28 = v26;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v29, &closure #1 in BackgroundSessionManagerHostConnection.updateShare(_:activityID:completion:)partial apply, v23);

  (*(v12 + 8))(v17, v11);
}

@end