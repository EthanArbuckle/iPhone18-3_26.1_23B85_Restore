@interface TapbackBlurView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (_TtC7ChatKit15TapbackBlurView)initWithCoder:(id)a3;
- (_TtC7ChatKit15TapbackBlurView)initWithFrame:(CGRect)a3;
@end

@implementation TapbackBlurView

- (_TtC7ChatKit15TapbackBlurView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if (a3)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = sub_190B4CA80(v4, v6);

  return v8 & 1;
}

- (_TtC7ChatKit15TapbackBlurView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end