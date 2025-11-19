@interface DOCMetadataView
+ (Class)layerClass;
- (BOOL)showsItemLocation;
- (BOOL)showsSeparators;
- (NSArray)nodes;
- (_TtC26DocumentManagerExecutables15DOCMetadataView)init;
- (_TtC26DocumentManagerExecutables15DOCMetadataView)initWithFrame:(CGRect)a3;
- (double)columnWidth;
- (int64_t)levelOfDetail;
- (void)didMoveToWindow;
- (void)didTapWithLabel:(id)a3;
- (void)setColumnWidth:(double)a3;
- (void)setLevelOfDetail:(int64_t)a3;
- (void)setNodes:(id)a3;
- (void)setShowsItemLocation:(BOOL)a3;
- (void)setShowsSeparators:(BOOL)a3;
@end

@implementation DOCMetadataView

- (NSArray)nodes
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setNodes:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_nodes;
  swift_beginAccess();
  *(self + v5) = v4;
  v6 = self;

  (*((*MEMORY[0x277D85000] & *v6) + 0x1C0))(v7);
}

- (BOOL)showsItemLocation
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsItemLocation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShowsItemLocation:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsItemLocation;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v3;
  if (v6 != v3)
  {
    v7 = *((*MEMORY[0x277D85000] & *self) + 0x1C0);
    v8 = self;
    v7();
  }
}

- (BOOL)showsSeparators
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsSeparators;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShowsSeparators:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsSeparators;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v3;
  if (v6 != v3)
  {
    v7 = *((*MEMORY[0x277D85000] & *self) + 0x1C8);
    v8 = self;
    v7();
  }
}

- (double)columnWidth
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_columnWidth;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setColumnWidth:(double)a3
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_columnWidth;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  if (v6 != a3)
  {
    v7 = *((*MEMORY[0x277D85000] & *self) + 0x1C8);
    v8 = self;
    v7();
  }
}

+ (Class)layerClass
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for CALayer);

  return swift_getObjCClassFromMetadata();
}

- (int64_t)levelOfDetail
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_levelOfDetail;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLevelOfDetail:(int64_t)a3
{
  v4 = self;
  DOCMetadataView.levelOfDetail.setter(a3);
}

- (_TtC26DocumentManagerExecutables15DOCMetadataView)init
{
  ObjectType = swift_getObjectType();
  v3 = (*(ObjectType + 416))(&outlined read-only object #0 of one-time initialization function for allValues, 0);
  swift_deallocPartialClassInstance();
  return v3;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCMetadataView();
  v2 = v4.receiver;
  [(DOCMetadataView *)&v4 didMoveToWindow];
  v3 = [v2 window];
  if (v3)
  {

    (*((*MEMORY[0x277D85000] & *v2) + 0x1A8))();
  }
}

- (_TtC26DocumentManagerExecutables15DOCMetadataView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didTapWithLabel:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCMetadataView.didTap(label:)();
}

@end