@interface CKTipCollectionViewCell
- (UIView)miniTipUIView;
- (_TtC7ChatKit23CKTipCollectionViewCell)initWithCoder:(id)a3;
- (_TtC7ChatKit23CKTipCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)reuseIdentifier;
- (void)setMiniTipUIView:(id)a3;
- (void)setTipHostingView:(id)a3;
@end

@implementation CKTipCollectionViewCell

- (id)reuseIdentifier
{
  v0 = sub_190D56ED0();

  return v0;
}

- (UIView)miniTipUIView
{
  v3 = OBJC_IVAR____TtC7ChatKit23CKTipCollectionViewCell_miniTipUIView;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setMiniTipUIView:(id)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit23CKTipCollectionViewCell_miniTipUIView;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC7ChatKit23CKTipCollectionViewCell)initWithFrame:(CGRect)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit23CKTipCollectionViewCell_miniTipUIView) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(CKTipCollectionViewCell *)&v6 initWithFrame:0.0, 0.0, 0.0, 0.0];
}

- (_TtC7ChatKit23CKTipCollectionViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit23CKTipCollectionViewCell_miniTipUIView) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)setTipHostingView:(id)a3
{
  v5 = a3;
  v6 = self;
  CKTipCollectionViewCell.setTipHostingView(_:)(a3);
}

@end