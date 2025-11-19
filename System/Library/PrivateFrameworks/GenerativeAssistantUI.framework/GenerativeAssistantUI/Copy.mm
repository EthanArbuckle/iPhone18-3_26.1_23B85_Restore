@interface Copy
- (BOOL)canPerformWithActivityItems:(id)a3;
- (NSString)activityTitle;
- (_TtC16MarkdownDocument4Copy)init;
- (void)performActivity;
@end

@implementation Copy

- (NSString)activityTitle
{
  v2 = self;
  sub_24FEC90AC();
  v4 = v3;

  if (v4)
  {
    v5 = sub_24FEDE1C4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v3 = self;
  v4 = sub_24FECC65C();

  return v4 & 1;
}

- (void)performActivity
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC16MarkdownDocument4Copy_fullContent);
  v3 = self;
  sub_24FECC7C0(v2);
  [(UIActivity *)v3 activityDidFinish:1];
}

- (_TtC16MarkdownDocument4Copy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end