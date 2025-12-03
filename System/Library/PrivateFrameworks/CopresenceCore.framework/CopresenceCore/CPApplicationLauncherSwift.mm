@interface CPApplicationLauncherSwift
- (CPApplicationLauncherSwift)init;
- (NSString)placementSceneIdentifier;
- (void)authorizePiPForActivitySession:(id)session completion:(id)completion;
- (void)launchAppForActivitySession:(id)session options:(int64_t)options completion:(id)completion;
- (void)revokeBackgroundAuthorizationForBundleID:(id)d;
- (void)revokeBackgroundAuthorizationForSession:(id)session;
- (void)setPlacementSceneIdentifier:(id)identifier;
@end

@implementation CPApplicationLauncherSwift

- (NSString)placementSceneIdentifier
{
  v2 = (self + OBJC_IVAR___CPApplicationLauncherSwift_placementSceneIdentifier);
  swift_beginAccess();
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;

    v5 = MEMORY[0x1B270FF70](v4, v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPlacementSceneIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  ApplicationLauncher.placementSceneIdentifier.setter(v4, v6);
}

- (void)launchAppForActivitySession:(id)session options:(int64_t)options completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()partial apply;
  }

  else
  {
    v9 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  ApplicationLauncher.launchApplication(for:options:completion:)(session, options, v8, v9);
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v8);
  swift_unknownObjectRelease();
}

- (void)revokeBackgroundAuthorizationForBundleID:(id)d
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = v8;
  v12[6] = v10;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in ApplicationLauncher.revokeBackgroundAuthorization(for:)partial apply, v12);
}

- (void)revokeBackgroundAuthorizationForSession:(id)session
{
  swift_unknownObjectRetain();
  selfCopy = self;
  activity = [session activity];
  bundleIdentifier = [activity bundleIdentifier];

  if (bundleIdentifier)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    (*((*MEMORY[0x1E69E7D40] & *selfCopy) + 0xD0))(v7, v9);
  }

  swift_unknownObjectRelease();
}

- (void)authorizePiPForActivitySession:(id)session completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = *(self + OBJC_IVAR___CPApplicationLauncherSwift_pegasusLaunchBehavior);
  if (v13)
  {
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;
    v15[5] = session;
    v15[6] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ();
    v15[7] = v12;
    swift_unknownObjectRetain_n();
    selfCopy = self;
    _Block_copy(v11);

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &closure #1 in ApplicationLauncher.authorizePiP(for:completion:)partial apply, v15);

    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
    selfCopy2 = self;
    _Block_copy(v11);
    (*(v11 + 2))(v11, 0, 0);

    _Block_release(v11);
    swift_unknownObjectRelease();
    v17 = selfCopy2;
  }
}

- (CPApplicationLauncherSwift)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end