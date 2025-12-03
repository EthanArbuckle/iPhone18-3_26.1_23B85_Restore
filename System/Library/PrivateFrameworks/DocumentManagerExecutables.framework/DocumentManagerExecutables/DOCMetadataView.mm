@interface DOCMetadataView
+ (Class)layerClass;
- (BOOL)showsItemLocation;
- (BOOL)showsSeparators;
- (NSArray)nodes;
- (_TtC26DocumentManagerExecutables15DOCMetadataView)init;
- (_TtC26DocumentManagerExecutables15DOCMetadataView)initWithFrame:(CGRect)frame;
- (double)columnWidth;
- (int64_t)levelOfDetail;
- (void)didMoveToWindow;
- (void)didTapWithLabel:(id)label;
- (void)setColumnWidth:(double)width;
- (void)setLevelOfDetail:(int64_t)detail;
- (void)setNodes:(id)nodes;
- (void)setShowsItemLocation:(BOOL)location;
- (void)setShowsSeparators:(BOOL)separators;
@end

@implementation DOCMetadataView

- (NSArray)nodes
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setNodes:(id)nodes
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_nodes;
  swift_beginAccess();
  *(self + v5) = v4;
  selfCopy = self;

  (*((*MEMORY[0x277D85000] & *selfCopy) + 0x1C0))(v7);
}

- (BOOL)showsItemLocation
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsItemLocation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShowsItemLocation:(BOOL)location
{
  locationCopy = location;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsItemLocation;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = locationCopy;
  if (v6 != locationCopy)
  {
    v7 = *((*MEMORY[0x277D85000] & *self) + 0x1C0);
    selfCopy = self;
    v7();
  }
}

- (BOOL)showsSeparators
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsSeparators;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShowsSeparators:(BOOL)separators
{
  separatorsCopy = separators;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_showsSeparators;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = separatorsCopy;
  if (v6 != separatorsCopy)
  {
    v7 = *((*MEMORY[0x277D85000] & *self) + 0x1C8);
    selfCopy = self;
    v7();
  }
}

- (double)columnWidth
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_columnWidth;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setColumnWidth:(double)width
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCMetadataView_columnWidth;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = width;
  if (v6 != width)
  {
    v7 = *((*MEMORY[0x277D85000] & *self) + 0x1C8);
    selfCopy = self;
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

- (void)setLevelOfDetail:(int64_t)detail
{
  selfCopy = self;
  DOCMetadataView.levelOfDetail.setter(detail);
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
  window = [v2 window];
  if (window)
  {

    (*((*MEMORY[0x277D85000] & *v2) + 0x1A8))();
  }
}

- (_TtC26DocumentManagerExecutables15DOCMetadataView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didTapWithLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  specialized DOCMetadataView.didTap(label:)();
}

@end