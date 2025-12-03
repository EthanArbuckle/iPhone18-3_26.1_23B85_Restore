@interface CKPhotoStackPhotoContentContainerView
- (UIView)contentView;
- (_TtC7ChatKit37CKPhotoStackPhotoContentContainerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setContentView:(id)view;
@end

@implementation CKPhotoStackPhotoContentContainerView

- (UIView)contentView
{
  v3 = OBJC_IVAR____TtC7ChatKit37CKPhotoStackPhotoContentContainerView_contentView;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setContentView:(id)view
{
  v5 = OBJC_IVAR____TtC7ChatKit37CKPhotoStackPhotoContentContainerView_contentView;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = view;
  viewCopy = view;
  selfCopy = self;
  sub_190BCA534(v6);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190BCA94C();
}

- (_TtC7ChatKit37CKPhotoStackPhotoContentContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit37CKPhotoStackPhotoContentContainerView_contentView) = 0;
  v8 = OBJC_IVAR____TtC7ChatKit37CKPhotoStackPhotoContentContainerView_containerViewMaskLayer;
  memset(v11, 0, sizeof(v11));
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(type metadata accessor for CKBalloonMaskLayer()) initWithDescriptor_];
  v10.receiver = self;
  v10.super_class = type metadata accessor for CKPhotoStackPhotoContentContainerView();
  return [(CKPhotoStackPhotoContentContainerView *)&v10 initWithFrame:x, y, width, height];
}

@end