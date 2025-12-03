@interface EmbeddedPicker
- (EmbeddedPicker)initWithCoder:(id)coder;
- (EmbeddedPicker)initWithNibName:(id)name bundle:(id)bundle;
- (void)clientIsReady;
- (void)setupSceneHostingWithConnectionUUID:(id)d;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation EmbeddedPicker

- (void)viewDidLoad
{
  selfCopy = self;
  EmbeddedPicker.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  EmbeddedPicker.viewDidAppear(_:)(appear);
}

- (EmbeddedPicker)initWithCoder:(id)coder
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  *(&self->super.super.super.isa + OBJC_IVAR___EmbeddedPicker_hostingController) = 0;
  v8 = OBJC_IVAR___EmbeddedPicker__clientDidBecomeReady;
  v10[15] = 0;
  Published.init(initialValue:)();
  (*(v5 + 32))(self + v8, v7, v4);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (EmbeddedPicker)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setupSceneHostingWithConnectionUUID:(id)d
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  selfCopy = self;
  EmbeddedPicker.setupSceneHosting(connectionUUID:)(v7);

  outlined destroy of UTType?(v7, &_s10Foundation4UUIDVSgMd);
}

- (void)clientIsReady
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  selfCopy = self;

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v5, &closure #1 in EmbeddedPicker.clientIsReady()partial apply, v10);
}

@end