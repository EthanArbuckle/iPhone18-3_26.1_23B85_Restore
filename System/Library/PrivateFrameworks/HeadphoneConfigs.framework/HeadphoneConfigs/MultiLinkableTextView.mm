@interface MultiLinkableTextView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range;
- (NSString)action;
- (_TtC16HeadphoneConfigsP33_1D5819C84B8241152B4DC57C84788BF621MultiLinkableTextView)initWithCoder:(id)coder;
- (_TtC16HeadphoneConfigsP33_1D5819C84B8241152B4DC57C84788BF621MultiLinkableTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (void)refreshContentsWith:(id)with;
@end

@implementation MultiLinkableTextView

- (NSString)action
{
  selfCopy = self;
  sub_2511FB3D8();
  v4 = v3;

  if (v4)
  {
    v5 = sub_25121176C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range
{
  v6 = sub_251210D7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251210D5C();
  selfCopy = self;
  v12 = sub_2511FB21C();
  if (!v12)
  {

    (*(v7 + 8))(v10, v6);
    return 0;
  }

  v13 = v12;
  result = sub_2511FB3D8();
  if (v15)
  {
    v16 = sub_25121176C();

    v17 = NSSelectorFromString(v16);

    [v13 performSelector:v17 withObject:selfCopy];
    (*(v7 + 8))(v10, v6);
    v18 = v13;
    return 0;
  }

  __break(1u);
  return result;
}

- (void)refreshContentsWith:(id)with
{
  selfCopy = self;
  sub_2511FB210();
  v3 = sub_25121176C();

  [(MultiLinkableTextView *)selfCopy setText:v3];

  sub_2511FB478();
  v4 = sub_25121176C();

  v5 = NSRangeFromString(v4);

  *(&selfCopy->super.super.super.super + OBJC_IVAR____TtC16HeadphoneConfigsP33_1D5819C84B8241152B4DC57C84788BF621MultiLinkableTextView_linkRange) = v5;
  sub_2511FAB7C();
}

- (_TtC16HeadphoneConfigsP33_1D5819C84B8241152B4DC57C84788BF621MultiLinkableTextView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigsP33_1D5819C84B8241152B4DC57C84788BF621MultiLinkableTextView_linkRange);
  *v3 = 0;
  v3[1] = 0;
  result = sub_251211C4C();
  __break(1u);
  return result;
}

- (_TtC16HeadphoneConfigsP33_1D5819C84B8241152B4DC57C84788BF621MultiLinkableTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end