@interface CKPhotoStackPhotoContentContainerView
- (UIView)contentView;
- (_TtC7ChatKit37CKPhotoStackPhotoContentContainerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setContentView:(id)a3;
@end

@implementation CKPhotoStackPhotoContentContainerView

- (UIView)contentView
{
  v3 = OBJC_IVAR____TtC7ChatKit37CKPhotoStackPhotoContentContainerView_contentView;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setContentView:(id)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit37CKPhotoStackPhotoContentContainerView_contentView;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;
  sub_190BCA534(v6);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_190BCA94C();
}

- (_TtC7ChatKit37CKPhotoStackPhotoContentContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit37CKPhotoStackPhotoContentContainerView_contentView) = 0;
  v8 = OBJC_IVAR____TtC7ChatKit37CKPhotoStackPhotoContentContainerView_containerViewMaskLayer;
  memset(v11, 0, sizeof(v11));
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(type metadata accessor for CKBalloonMaskLayer()) initWithDescriptor_];
  v10.receiver = self;
  v10.super_class = type metadata accessor for CKPhotoStackPhotoContentContainerView();
  return [(CKPhotoStackPhotoContentContainerView *)&v10 initWithFrame:x, y, width, height];
}

@end