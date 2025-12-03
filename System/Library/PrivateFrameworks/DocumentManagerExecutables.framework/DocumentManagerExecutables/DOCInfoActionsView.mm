@interface DOCInfoActionsView
- (CGRect)bounds;
- (CGRect)frame;
- (NSArray)nodes;
- (_TtC26DocumentManagerExecutables18DOCInfoActionsView)initWithFrame:(CGRect)frame;
- (double)spacing;
- (void)layoutSubviews;
- (void)setNodes:(id)nodes;
- (void)setSpacing:(double)spacing;
@end

@implementation DOCInfoActionsView

- (double)spacing
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCInfoActionsView();
  [(DOCInfoActionsView *)&v3 spacing];
  return result;
}

- (void)setSpacing:(double)spacing
{
  v5 = type metadata accessor for DOCInfoActionsView();
  v11.receiver = self;
  v11.super_class = v5;
  selfCopy = self;
  [(DOCInfoActionsView *)&v11 spacing];
  v8 = v7;
  v10.receiver = selfCopy;
  v10.super_class = v5;
  [(DOCInfoActionsView *)&v10 setSpacing:spacing];
  [(DOCInfoActionsView *)selfCopy spacing];
  if (v9 != v8)
  {
    DOCInfoActionsView.updateForSpacingChange()();
  }
}

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
  selfCopy = self;
  DOCInfoActionsView.nodes.setter(v4);
}

- (void)layoutSubviews
{
  selfCopy = self;
  DOCInfoActionsView.layoutSubviews()();
}

- (CGRect)bounds
{
  @objc DOCInfoActionsView.bounds.getter(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)frame
{
  @objc DOCInfoActionsView.bounds.getter(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (_TtC26DocumentManagerExecutables18DOCInfoActionsView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end