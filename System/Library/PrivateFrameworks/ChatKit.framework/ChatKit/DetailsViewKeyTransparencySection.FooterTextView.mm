@interface DetailsViewKeyTransparencySection.FooterTextView
- (_TtCV7ChatKit33DetailsViewKeyTransparencySection14FooterTextView)initWithCoder:(id)a3;
- (_TtCV7ChatKit33DetailsViewKeyTransparencySection14FooterTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5;
- (void)layoutSubviews;
@end

@implementation DetailsViewKeyTransparencySection.FooterTextView

- (_TtCV7ChatKit33DetailsViewKeyTransparencySection14FooterTextView)initWithCoder:(id)a3
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5
{
  _s14FooterTextViewCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a3;
  v9 = a5;
  if ([v8 isKindOfClass_])
  {
    sub_1908D84D0();
    v10 = sub_190D57DC0();

    v9 = v10;
  }

  return v9;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _s14FooterTextViewCMa();
  v2 = v3.receiver;
  [(DetailsViewKeyTransparencySection.FooterTextView *)&v3 layoutSubviews];
  [v2 sizeToFit];
}

- (_TtCV7ChatKit33DetailsViewKeyTransparencySection14FooterTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end