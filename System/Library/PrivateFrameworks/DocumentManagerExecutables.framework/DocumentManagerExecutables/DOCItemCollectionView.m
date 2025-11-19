@interface DOCItemCollectionView
- (BOOL)_hasContentForBarInteractions;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC26DocumentManagerExecutables21DOCItemCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (id)indexPathForItemAtPoint:(CGPoint)a3;
- (void)_backgroundTapGestureRecognized:(id)a3;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation DOCItemCollectionView

- (void)layoutSubviews
{
  v2 = self;
  DOCItemCollectionView.layoutSubviews()();
}

- (void)safeAreaInsetsDidChange
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCItemCollectionView();
  v2 = v8.receiver;
  v3 = [(DOCItemCollectionView *)&v8 safeAreaInsetsDidChange];
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x148))(v3);
  if (v5)
  {
    v7 = v5;
    (*((*v4 & *v5) + 0x1750))(v5, v6);
  }
}

- (BOOL)_hasContentForBarInteractions
{
  v2 = self;
  if ([(DOCItemCollectionView *)v2 enclosedInUIPDocumentLanding])
  {
    v3 = (*((*MEMORY[0x277D85000] & v2->super.super.super.super.super.isa) + 0x170))();

    v4 = v3 ^ 1;
  }

  else
  {
    v6.receiver = v2;
    v6.super_class = type metadata accessor for DOCItemCollectionView();
    v4 = [(DOCItemCollectionView *)&v6 _hasContentForBarInteractions];
  }

  return v4 & 1;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = self;
  DOCItemCollectionView.touchesEnded(_:with:)(v6, a4);
}

- (id)indexPathForItemAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v17 - v8;
  v10 = self;
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

- (_TtC26DocumentManagerExecutables21DOCItemCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = DOCItemCollectionView.gestureRecognizerShouldBegin(_:)(v4);

  return self & 1;
}

- (void)_backgroundTapGestureRecognized:(id)a3
{
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x108);
  v7 = self;
  if (v3())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 32))(v7, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end