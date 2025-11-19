@interface LACUIRatchetViewModel
+ (id)mapError:(id)a3;
- (BOOL)isInvalidated;
- (_TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel)init;
- (void)ratchetStateDidChange:(id)a3;
- (void)setIsInvalidated:(BOOL)a3;
- (void)start;
- (void)stopWithReason:(id)a3 invalidate:(BOOL)a4;
@end

@implementation LACUIRatchetViewModel

- (BOOL)isInvalidated
{
  v3 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isInvalidated;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsInvalidated:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isInvalidated;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)start
{
  v2 = self;
  LACUIRatchetViewModel.start()();
}

- (void)stopWithReason:(id)a3 invalidate:(BOOL)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = self;
  *(v14 + 40) = v10;
  *(v14 + 48) = v12;
  *(v14 + 56) = a4;
  v15 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &closure #1 in LACUIRatchetViewModel.stop(withReason:invalidate:)partial apply, v14);
}

+ (id)mapError:(id)a3
{
  v4 = a3;
  v5 = specialized static LACUIRatchetViewModel.mapError(_:)(a3);

  if (v5)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)ratchetStateDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  LACUIRatchetViewModel.ratchetStateDidChange(_:)(v4);
}

@end