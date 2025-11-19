@interface SFFluidCollectionReusableView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC12MobileSafari29SFFluidCollectionReusableView)initWithCoder:(id)a3;
@end

@implementation SFFluidCollectionReusableView

- (_TtC12MobileSafari29SFFluidCollectionReusableView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_reuseIdentifier);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_representedElement) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isSelected) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isHighlighted) = 0;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for SFFluidCollectionReusableView();
  v7 = a4;
  v8 = v13.receiver;
  if ([(SFFluidCollectionReusableView *)&v13 pointInside:v7 withEvent:x, y])
  {
    v9 = 1;
    v10 = v7;
  }

  else
  {
    v11 = *&v8[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView];
    [v8 convertPoint:v11 toCoordinateSpace:{x, y, v13.receiver, v13.super_class}];
    v9 = [v11 pointInside:v7 withEvent:?];
    v10 = v8;
    v8 = v7;
  }

  return v9;
}

@end