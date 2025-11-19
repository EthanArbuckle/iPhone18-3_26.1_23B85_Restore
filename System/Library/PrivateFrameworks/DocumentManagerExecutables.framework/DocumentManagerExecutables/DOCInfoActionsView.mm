@interface DOCInfoActionsView
- (CGRect)bounds;
- (CGRect)frame;
- (NSArray)nodes;
- (_TtC26DocumentManagerExecutables18DOCInfoActionsView)initWithFrame:(CGRect)a3;
- (double)spacing;
- (void)layoutSubviews;
- (void)setNodes:(id)a3;
- (void)setSpacing:(double)a3;
@end

@implementation DOCInfoActionsView

- (double)spacing
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCInfoActionsView();
  [(DOCInfoActionsView *)&v3 spacing];
  return result;
}

- (void)setSpacing:(double)a3
{
  v5 = type metadata accessor for DOCInfoActionsView();
  v11.receiver = self;
  v11.super_class = v5;
  v6 = self;
  [(DOCInfoActionsView *)&v11 spacing];
  v8 = v7;
  v10.receiver = v6;
  v10.super_class = v5;
  [(DOCInfoActionsView *)&v10 setSpacing:a3];
  [(DOCInfoActionsView *)v6 spacing];
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

- (void)setNodes:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  DOCInfoActionsView.nodes.setter(v4);
}

- (void)layoutSubviews
{
  v2 = self;
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

- (_TtC26DocumentManagerExecutables18DOCInfoActionsView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end