@interface RoundImageView
- (_TtC9MomentsUI14RoundImageView)initWithCoder:(id)a3;
- (_TtC9MomentsUI14RoundImageView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation RoundImageView

- (_TtC9MomentsUI14RoundImageView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(RoundView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView];
  [v2 bounds];
  [v3 setFrame_];
}

- (_TtC9MomentsUI14RoundImageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end