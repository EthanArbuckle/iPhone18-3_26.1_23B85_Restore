@interface DRPDropletContextView
- (BOOL)disableDropletEffectFilters;
- (DRPDropletContextKeylineStyle)keylineStyle;
- (DRPDropletContextView)initWithCoder:(id)coder;
- (UIColor)dropletColor;
- (double)dropletRadius;
- (id)acquireGeometricChangeAssertionForReason:(id)reason;
- (id)addContainerWithContentView:(id)view;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (unint64_t)boundaryEdges;
- (void)applyKeylineStyle:(id)style forContainerView:(id)view;
- (void)dealloc;
- (void)invalidate;
- (void)layoutSubviews;
- (void)removeContainer:(id)container;
- (void)setBoundaryEdges:(unint64_t)edges;
- (void)setDisableDropletEffectFilters:(BOOL)filters;
- (void)setDropletColor:(id)color;
- (void)setDropletRadius:(double)radius;
- (void)setKeylineStyle:(id)style;
@end

@implementation DRPDropletContextView

- (BOOL)disableDropletEffectFilters
{
  selfCopy = self;
  v3 = sub_249ECCA8C();

  LOBYTE(selfCopy) = *(*&v3[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView] + OBJC_IVAR____TtC9DropletUI16DropletGroupView_disableDropletEffectFilters);
  return selfCopy;
}

- (void)setDisableDropletEffectFilters:(BOOL)filters
{
  filtersCopy = filters;
  selfCopy = self;
  v4 = sub_249ECCA8C();
  v5 = *&v4[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView];
  v6 = *(v5 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_disableDropletEffectFilters);
  *(v5 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_disableDropletEffectFilters) = filtersCopy;
  if (v6 != filtersCopy)
  {
    sub_249EB6188();
  }
}

- (unint64_t)boundaryEdges
{
  selfCopy = self;
  v3 = DRPDropletContextView.boundaryEdges.getter();

  return v3;
}

- (void)setBoundaryEdges:(unint64_t)edges
{
  selfCopy = self;
  DRPDropletContextView.boundaryEdges.setter(edges);
}

- (double)dropletRadius
{
  selfCopy = self;
  v3 = sub_249ECCA8C();

  v4 = *(*&v3[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView] + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence);
  return v4;
}

- (void)setDropletRadius:(double)radius
{
  selfCopy = self;
  DRPDropletContextView.dropletRadius.setter(radius);
}

- (UIColor)dropletColor
{
  v3 = OBJC_IVAR___DRPDropletContextView_dropletColor;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setDropletColor:(id)color
{
  v5 = OBJC_IVAR___DRPDropletContextView_dropletColor;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = color;
  colorCopy = color;
  selfCopy = self;
  sub_249ECD5D0(v6);
}

- (DRPDropletContextKeylineStyle)keylineStyle
{
  v3 = OBJC_IVAR___DRPDropletContextView_keylineStyle;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setKeylineStyle:(id)style
{
  v5 = OBJC_IVAR___DRPDropletContextView_keylineStyle;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = style;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  swift_unknownObjectRelease();
  [(DRPDropletContextView *)selfCopy applyKeylineStyle:style forContainerView:0];
  swift_unknownObjectRelease();
}

- (void)applyKeylineStyle:(id)style forContainerView:(id)view
{
  swift_unknownObjectRetain();
  viewCopy = view;
  selfCopy = self;
  DRPDropletContextView.applyKeylineStyle(_:for:)(style, view);
  swift_unknownObjectRelease();
}

- (id)addContainerWithContentView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  DRPDropletContextView.addContainer(contentView:)(v7, view);
  v9 = v8;

  return v9;
}

- (void)removeContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  DRPDropletContextView.removeContainer(_:)(containerCopy);
}

- (id)acquireGeometricChangeAssertionForReason:(id)reason
{
  reasonCopy = reason;
  selfCopy = self;
  v6 = sub_249ECCA8C();
  v7 = *&v6[OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions];
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    acquireForReason_ = [v9 acquireForReason_];

    return acquireForReason_;
  }

  else
  {

    __break(1u);
  }

  return result;
}

- (void)invalidate
{
  selfCopy = self;
  v2 = sub_249ECCA8C();
  v3 = *&v2[OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions];

  [v3 invalidate];
}

- (DRPDropletContextView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___DRPDropletContextView_dropletColor) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___DRPDropletContextView_keylineStyle) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___DRPDropletContextView____lazy_storage___containerViewsParentView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___DRPDropletContextView____lazy_storage___dropletShapeView) = 0;
  result = sub_249ED6E50();
  __break(1u);
  return result;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = sub_249ECCA8C();
  v4 = *&v3[OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions];
  v5 = v4;

  if (v4)
  {
    if ([v5 isActive])
    {
      [v5 invalidate];
    }
  }

  v6.receiver = selfCopy;
  v6.super_class = DRPDropletContextView;
  [(DRPDropletContextView *)&v6 dealloc];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  DRPDropletContextView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (void)layoutSubviews
{
  selfCopy = self;
  DRPDropletContextView.layoutSubviews()();
}

@end