@interface LACUIRatchetViewModel
+ (id)mapError:(id)error;
- (BOOL)isInvalidated;
- (_TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel)init;
- (void)ratchetStateDidChange:(id)change;
- (void)setIsInvalidated:(BOOL)invalidated;
- (void)start;
- (void)stopWithReason:(id)reason invalidate:(BOOL)invalidate;
@end

@implementation LACUIRatchetViewModel

- (BOOL)isInvalidated
{
  v3 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isInvalidated;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsInvalidated:(BOOL)invalidated
{
  v5 = OBJC_IVAR____TtC25LocalAuthenticationCoreUI21LACUIRatchetViewModel_isInvalidated;
  swift_beginAccess();
  *(&self->super.isa + v5) = invalidated;
}

- (void)start
{
  selfCopy = self;
  LACUIRatchetViewModel.start()();
}

- (void)stopWithReason:(id)reason invalidate:(BOOL)invalidate
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
  *(v14 + 56) = invalidate;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &closure #1 in LACUIRatchetViewModel.stop(withReason:invalidate:)partial apply, v14);
}

+ (id)mapError:(id)error
{
  errorCopy = error;
  v5 = specialized static LACUIRatchetViewModel.mapError(_:)(error);

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

- (void)ratchetStateDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  LACUIRatchetViewModel.ratchetStateDidChange(_:)(changeCopy);
}

@end