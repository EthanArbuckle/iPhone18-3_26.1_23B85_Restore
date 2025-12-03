@interface DOCTabSidebarDataSource
- (DOCPickerContext)pickerContext;
- (_TtC26DocumentManagerExecutables23DOCTabSidebarDataSource)init;
- (_TtC26DocumentManagerExecutables23DOCTabSidebarDataSource)initWithConfiguration:(id)configuration sourceObserver:(id)observer delegate:(id)delegate;
- (void)dealloc;
- (void)displayOrderDidChangeFor:(id)for;
- (void)fistNewlyAddedSourceWith:(id)with completion:(id)completion;
- (void)setPickerContext:(id)context;
- (void)updateSelectionToMatchBrowsedLocation:(id)location animated:(BOOL)animated;
@end

@implementation DOCTabSidebarDataSource

- (DOCPickerContext)pickerContext
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_pickerContext;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPickerContext:(id)context
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_pickerContext;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = context;
  contextCopy = context;
}

- (_TtC26DocumentManagerExecutables23DOCTabSidebarDataSource)initWithConfiguration:(id)configuration sourceObserver:(id)observer delegate:(id)delegate
{
  configurationCopy = configuration;
  observerCopy = observer;
  swift_unknownObjectRetain();
  return DOCTabSidebarDataSource.init(configuration:sourceObserver:delegate:)(configurationCopy, observerCopy);
}

- (void)dealloc
{
  selfCopy = self;
  DOCTabSidebarDataSource.stopObserving()();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for DOCTabSidebarDataSource();
  [(DOCTabSidebarDataSource *)&v3 dealloc];
}

- (_TtC26DocumentManagerExecutables23DOCTabSidebarDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)fistNewlyAddedSourceWith:(id)with completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = v6;
  if (with)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    with = v9;
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (v6)
  {
LABEL_3:
    *(swift_allocObject() + 16) = v7;
    v7 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCSourceByType) -> ();
  }

LABEL_5:
  selfCopy = self;
  DOCTabSidebarDataSource.fistNewlyAddedSource(with:completion:)(v8, with, v7);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7);
}

- (void)updateSelectionToMatchBrowsedLocation:(id)location animated:(BOOL)animated
{
  locationCopy = location;
  selfCopy = self;
  specialized DOCTabSidebarDataSource.updateSelectionToMatchBrowsedLocation(_:animated:)(location);
}

- (void)displayOrderDidChangeFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  if (DOCTabSidebarDataSource.sectionManager(for:)(forCopy))
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    children = [forCopy children];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 72))(v9, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

@end