@interface DOCTabSidebarDataSource
- (DOCPickerContext)pickerContext;
- (_TtC26DocumentManagerExecutables23DOCTabSidebarDataSource)init;
- (_TtC26DocumentManagerExecutables23DOCTabSidebarDataSource)initWithConfiguration:(id)a3 sourceObserver:(id)a4 delegate:(id)a5;
- (void)dealloc;
- (void)displayOrderDidChangeFor:(id)a3;
- (void)fistNewlyAddedSourceWith:(id)a3 completion:(id)a4;
- (void)setPickerContext:(id)a3;
- (void)updateSelectionToMatchBrowsedLocation:(id)a3 animated:(BOOL)a4;
@end

@implementation DOCTabSidebarDataSource

- (DOCPickerContext)pickerContext
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_pickerContext;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPickerContext:(id)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarDataSource_pickerContext;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC26DocumentManagerExecutables23DOCTabSidebarDataSource)initWithConfiguration:(id)a3 sourceObserver:(id)a4 delegate:(id)a5
{
  v6 = a3;
  v7 = a4;
  swift_unknownObjectRetain();
  return DOCTabSidebarDataSource.init(configuration:sourceObserver:delegate:)(v6, v7);
}

- (void)dealloc
{
  v2 = self;
  DOCTabSidebarDataSource.stopObserving()();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for DOCTabSidebarDataSource();
  [(DOCTabSidebarDataSource *)&v3 dealloc];
}

- (_TtC26DocumentManagerExecutables23DOCTabSidebarDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)fistNewlyAddedSourceWith:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = v6;
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v9;
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
  v10 = self;
  DOCTabSidebarDataSource.fistNewlyAddedSource(with:completion:)(v8, a3, v7);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7);
}

- (void)updateSelectionToMatchBrowsedLocation:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  specialized DOCTabSidebarDataSource.updateSelectionToMatchBrowsedLocation(_:animated:)(a3);
}

- (void)displayOrderDidChangeFor:(id)a3
{
  v4 = a3;
  v10 = self;
  if (DOCTabSidebarDataSource.sectionManager(for:)(v4))
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v8 = [v4 children];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITab);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 72))(v9, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

@end