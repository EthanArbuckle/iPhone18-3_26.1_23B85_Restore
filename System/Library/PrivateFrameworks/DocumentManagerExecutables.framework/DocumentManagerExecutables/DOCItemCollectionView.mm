@interface DOCItemCollectionView
- (BOOL)_hasContentForBarInteractions;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC26DocumentManagerExecutables21DOCItemCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (id)indexPathForItemAtPoint:(CGPoint)point;
- (void)_backgroundTapGestureRecognized:(id)recognized;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation DOCItemCollectionView

- (void)layoutSubviews
{
  selfCopy = self;
  DOCItemCollectionView.layoutSubviews()();
}

- (void)safeAreaInsetsDidChange
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCItemCollectionView();
  v2 = v8.receiver;
  safeAreaInsetsDidChange = [(DOCItemCollectionView *)&v8 safeAreaInsetsDidChange];
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x148))(safeAreaInsetsDidChange);
  if (v5)
  {
    v7 = v5;
    (*((*v4 & *v5) + 0x1750))(v5, v6);
  }
}

- (BOOL)_hasContentForBarInteractions
{
  selfCopy = self;
  if ([(DOCItemCollectionView *)selfCopy enclosedInUIPDocumentLanding])
  {
    v3 = (*((*MEMORY[0x277D85000] & selfCopy->super.super.super.super.super.isa) + 0x170))();

    _hasContentForBarInteractions = v3 ^ 1;
  }

  else
  {
    v6.receiver = selfCopy;
    v6.super_class = type metadata accessor for DOCItemCollectionView();
    _hasContentForBarInteractions = [(DOCItemCollectionView *)&v6 _hasContentForBarInteractions];
  }

  return _hasContentForBarInteractions & 1;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;
  DOCItemCollectionView.touchesEnded(_:with:)(v6, event);
}

- (id)indexPathForItemAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v17 - v8;
  selfCopy = self;
  DOCItemCollectionView.indexPathForItem(at:)(v9, x, y);

  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v9, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v9, v11);
    v14 = isa;
  }

  return v14;
}

- (_TtC26DocumentManagerExecutables21DOCItemCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = DOCItemCollectionView.gestureRecognizerShouldBegin(_:)(beginCopy);

  return self & 1;
}

- (void)_backgroundTapGestureRecognized:(id)recognized
{
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x108);
  selfCopy = self;
  if (v3())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 32))(selfCopy, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end