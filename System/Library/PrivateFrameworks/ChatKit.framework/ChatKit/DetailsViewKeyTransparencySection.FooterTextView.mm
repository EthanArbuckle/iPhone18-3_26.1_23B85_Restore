@interface DetailsViewKeyTransparencySection.FooterTextView
- (_TtCV7ChatKit33DetailsViewKeyTransparencySection14FooterTextView)initWithCoder:(id)coder;
- (_TtCV7ChatKit33DetailsViewKeyTransparencySection14FooterTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (void)layoutSubviews;
@end

@implementation DetailsViewKeyTransparencySection.FooterTextView

- (_TtCV7ChatKit33DetailsViewKeyTransparencySection14FooterTextView)initWithCoder:(id)coder
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  _s14FooterTextViewCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  viewCopy = view;
  actionCopy = action;
  if ([viewCopy isKindOfClass_])
  {
    sub_1908D84D0();
    v10 = sub_190D57DC0();

    actionCopy = v10;
  }

  return actionCopy;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _s14FooterTextViewCMa();
  v2 = v3.receiver;
  [(DetailsViewKeyTransparencySection.FooterTextView *)&v3 layoutSubviews];
  [v2 sizeToFit];
}

- (_TtCV7ChatKit33DetailsViewKeyTransparencySection14FooterTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end