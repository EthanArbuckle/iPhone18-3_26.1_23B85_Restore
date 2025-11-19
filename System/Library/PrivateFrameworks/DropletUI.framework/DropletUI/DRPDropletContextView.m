@interface DRPDropletContextView
- (BOOL)disableDropletEffectFilters;
- (DRPDropletContextKeylineStyle)keylineStyle;
- (DRPDropletContextView)initWithCoder:(id)a3;
- (UIColor)dropletColor;
- (double)dropletRadius;
- (id)acquireGeometricChangeAssertionForReason:(id)a3;
- (id)addContainerWithContentView:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (unint64_t)boundaryEdges;
- (void)applyKeylineStyle:(id)a3 forContainerView:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)layoutSubviews;
- (void)removeContainer:(id)a3;
- (void)setBoundaryEdges:(unint64_t)a3;
- (void)setDisableDropletEffectFilters:(BOOL)a3;
- (void)setDropletColor:(id)a3;
- (void)setDropletRadius:(double)a3;
- (void)setKeylineStyle:(id)a3;
@end

@implementation DRPDropletContextView

- (BOOL)disableDropletEffectFilters
{
  v2 = self;
  v3 = sub_249ECCA8C();

  LOBYTE(v2) = *(*&v3[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView] + OBJC_IVAR____TtC9DropletUI16DropletGroupView_disableDropletEffectFilters);
  return v2;
}

- (void)setDisableDropletEffectFilters:(BOOL)a3
{
  v3 = a3;
  v7 = self;
  v4 = sub_249ECCA8C();
  v5 = *&v4[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView];
  v6 = *(v5 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_disableDropletEffectFilters);
  *(v5 + OBJC_IVAR____TtC9DropletUI16DropletGroupView_disableDropletEffectFilters) = v3;
  if (v6 != v3)
  {
    sub_249EB6188();
  }
}

- (unint64_t)boundaryEdges
{
  v2 = self;
  v3 = DRPDropletContextView.boundaryEdges.getter();

  return v3;
}

- (void)setBoundaryEdges:(unint64_t)a3
{
  v4 = self;
  DRPDropletContextView.boundaryEdges.setter(a3);
}

- (double)dropletRadius
{
  v2 = self;
  v3 = sub_249ECCA8C();

  v4 = *(*&v3[OBJC_IVAR____TtC9DropletUI16DropletShapeView_dropletGroupView] + OBJC_IVAR____TtC9DropletUI30DropletParticipantTrackingView_dropletParticipantRadiusOfInfluence);
  return v4;
}

- (void)setDropletRadius:(double)a3
{
  v4 = self;
  DRPDropletContextView.dropletRadius.setter(a3);
}

- (UIColor)dropletColor
{
  v3 = OBJC_IVAR___DRPDropletContextView_dropletColor;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setDropletColor:(id)a3
{
  v5 = OBJC_IVAR___DRPDropletContextView_dropletColor;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;
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

- (void)setKeylineStyle:(id)a3
{
  v5 = OBJC_IVAR___DRPDropletContextView_keylineStyle;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  swift_unknownObjectRetain_n();
  v7 = self;
  swift_unknownObjectRelease();
  [(DRPDropletContextView *)v7 applyKeylineStyle:a3 forContainerView:0];
  swift_unknownObjectRelease();
}

- (void)applyKeylineStyle:(id)a3 forContainerView:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  DRPDropletContextView.applyKeylineStyle(_:for:)(a3, a4);
  swift_unknownObjectRelease();
}

- (id)addContainerWithContentView:(id)a3
{
  v5 = a3;
  v6 = self;
  DRPDropletContextView.addContainer(contentView:)(v7, a3);
  v9 = v8;

  return v9;
}

- (void)removeContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  DRPDropletContextView.removeContainer(_:)(v4);
}

- (id)acquireGeometricChangeAssertionForReason:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_249ECCA8C();
  v7 = *&v6[OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions];
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = [v9 acquireForReason_];

    return v10;
  }

  else
  {

    __break(1u);
  }

  return result;
}

- (void)invalidate
{
  v4 = self;
  v2 = sub_249ECCA8C();
  v3 = *&v2[OBJC_IVAR____TtC9DropletUI16DropletShapeView_geometryChangingAssertions];

  [v3 invalidate];
}

- (DRPDropletContextView)initWithCoder:(id)a3
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
  v2 = self;
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

  v6.receiver = v2;
  v6.super_class = DRPDropletContextView;
  [(DRPDropletContextView *)&v6 dealloc];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v15.value.super.isa = a4;
  DRPDropletContextView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (void)layoutSubviews
{
  v2 = self;
  DRPDropletContextView.layoutSubviews()();
}

@end