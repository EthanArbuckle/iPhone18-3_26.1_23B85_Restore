@interface CircularProgressView
- (_TtC7ChatKit20CircularProgressView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation CircularProgressView

- (_TtC7ChatKit20CircularProgressView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit20CircularProgressView_lineWidth) = 0x4008000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit20CircularProgressView_progressValue) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit20CircularProgressView____lazy_storage___backgroundLayer) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit20CircularProgressView____lazy_storage___progressLayer) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_19093BFDC();
}

@end