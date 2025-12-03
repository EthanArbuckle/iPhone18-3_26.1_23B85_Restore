@interface DOCServiceContext
- (_TtC26DocumentManagerExecutables17DOCServiceContext)init;
- (_TtC26DocumentManagerExecutables17DOCServiceContext)initWithInputItems:(id)items;
- (_TtC26DocumentManagerExecutables17DOCServiceContext)initWithInputItems:(id)items contextUUID:(id)d;
- (_TtC26DocumentManagerExecutables17DOCServiceContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
- (void)configureAsDocumentBrowserWithHostProxy:(id)proxy configuration:(id)configuration initialUIPBrowserState:(id)state completionBlock:(id)block;
- (void)updateAppearance:(id)appearance completionBlock:(id)block;
- (void)updateAppearance:(id)appearance shouldFlushCA:(BOOL)a completionBlock:(id)block;
- (void)updateEditingTo:(BOOL)to animated:(BOOL)animated;
@end

@implementation DOCServiceContext

- (void)configureAsDocumentBrowserWithHostProxy:(id)proxy configuration:(id)configuration initialUIPBrowserState:(id)state completionBlock:(id)block
{
  v10 = _Block_copy(block);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = swift_allocObject();
  v12[2] = state;
  v12[3] = configuration;
  v12[4] = self;
  v12[5] = proxy;
  v12[6] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCSourceByType) -> ();
  v12[7] = v11;
  swift_unknownObjectRetain_n();
  configurationCopy = configuration;
  stateCopy = state;
  selfCopy = self;
  v16 = stateCopy;
  v17 = configurationCopy;
  v18 = selfCopy;

  DOCRunInMainThread(_:)();

  swift_unknownObjectRelease();
}

- (void)updateAppearance:(id)appearance completionBlock:(id)block
{
  v6 = _Block_copy(block);
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
  appearanceCopy = appearance;
  selfCopy = self;
  v8(appearanceCopy, 0, v6, v7);

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

- (void)updateAppearance:(id)appearance shouldFlushCA:(BOOL)a completionBlock:(id)block
{
  aCopy = a;
  v8 = _Block_copy(block);
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
  appearanceCopy = appearance;
  selfCopy = self;
  v13 = v11();
  (*((*v10 & *v13) + 0x130))(appearanceCopy, aCopy, v8, v9);

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
}

- (void)updateEditingTo:(BOOL)to animated:(BOOL)animated
{
  animatedCopy = animated;
  toCopy = to;
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & self->super.super.isa) + 0x50);
  selfCopy = self;
  v8 = v7();
  (*((*v6 & *v8) + 0x138))(toCopy, animatedCopy);
}

- (_TtC26DocumentManagerExecutables17DOCServiceContext)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCServiceContext();
  return [(DOCServiceContext *)&v3 init];
}

- (_TtC26DocumentManagerExecutables17DOCServiceContext)initWithInputItems:(id)items
{
  if (items)
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

- (_TtC26DocumentManagerExecutables17DOCServiceContext)initWithInputItems:(id)items contextUUID:(id)d
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v13 - v8;
  if (items)
  {
    items = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (d)
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

  return DOCServiceContext.init(inputItems:contextUUID:)(items, v9);
}

- (_TtC26DocumentManagerExecutables17DOCServiceContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v16 - v10;
  if (items)
  {
    items = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (d)
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

  endpointCopy = endpoint;
  return DOCServiceContext.init(inputItems:listenerEndpoint:contextUUID:)(items, endpoint, v11);
}

@end