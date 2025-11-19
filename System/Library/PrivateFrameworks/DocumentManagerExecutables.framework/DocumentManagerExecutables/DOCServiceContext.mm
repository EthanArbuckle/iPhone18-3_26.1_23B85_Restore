@interface DOCServiceContext
- (_TtC26DocumentManagerExecutables17DOCServiceContext)init;
- (_TtC26DocumentManagerExecutables17DOCServiceContext)initWithInputItems:(id)a3;
- (_TtC26DocumentManagerExecutables17DOCServiceContext)initWithInputItems:(id)a3 contextUUID:(id)a4;
- (_TtC26DocumentManagerExecutables17DOCServiceContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5;
- (void)configureAsDocumentBrowserWithHostProxy:(id)a3 configuration:(id)a4 initialUIPBrowserState:(id)a5 completionBlock:(id)a6;
- (void)updateAppearance:(id)a3 completionBlock:(id)a4;
- (void)updateAppearance:(id)a3 shouldFlushCA:(BOOL)a4 completionBlock:(id)a5;
- (void)updateEditingTo:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation DOCServiceContext

- (void)configureAsDocumentBrowserWithHostProxy:(id)a3 configuration:(id)a4 initialUIPBrowserState:(id)a5 completionBlock:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a4;
  v12[4] = self;
  v12[5] = a3;
  v12[6] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCSourceByType) -> ();
  v12[7] = v11;
  swift_unknownObjectRetain_n();
  v13 = a4;
  v14 = a5;
  v15 = self;
  v16 = v14;
  v17 = v13;
  v18 = v15;

  DOCRunInMainThread(_:)();

  swift_unknownObjectRelease();
}

- (void)updateAppearance:(id)a3 completionBlock:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  else
  {
    v7 = 0;
  }

  v8 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0x68);
  v10 = a3;
  v9 = self;
  v8(v10, 0, v6, v7);

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

- (void)updateAppearance:(id)a3 shouldFlushCA:(BOOL)a4 completionBlock:(id)a5
{
  v5 = a4;
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  else
  {
    v9 = 0;
  }

  v10 = MEMORY[0x277D85000];
  v11 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0x50);
  v14 = a3;
  v12 = self;
  v13 = v11();
  (*((*v10 & *v13) + 0x130))(v14, v5, v8, v9);

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
}

- (void)updateEditingTo:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0x50);
  v9 = self;
  v8 = v7();
  (*((*v6 & *v8) + 0x138))(v5, v4);
}

- (_TtC26DocumentManagerExecutables17DOCServiceContext)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCServiceContext();
  return [(DOCServiceContext *)&v3 init];
}

- (_TtC26DocumentManagerExecutables17DOCServiceContext)initWithInputItems:(id)a3
{
  if (a3)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCServiceContext();
  v5 = [(DOCServiceContext *)&v7 initWithInputItems:v4.super.isa];

  if (v5)
  {
  }

  return v5;
}

- (_TtC26DocumentManagerExecutables17DOCServiceContext)initWithInputItems:(id)a3 contextUUID:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v13 - v8;
  if (a3)
  {
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a4)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  return DOCServiceContext.init(inputItems:contextUUID:)(a3, v9);
}

- (_TtC26DocumentManagerExecutables17DOCServiceContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v16 - v10;
  if (a3)
  {
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a5)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = a4;
  return DOCServiceContext.init(inputItems:listenerEndpoint:contextUUID:)(a3, a4, v11);
}

@end