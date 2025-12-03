@interface MastheadTitleLabel
- (NSString)accessibilityLabel;
- (_TtC7NewsUI218MastheadTitleLabel)initWithCoder:(id)coder;
- (_TtC7NewsUI218MastheadTitleLabel)initWithFrame:(CGRect)frame;
@end

@implementation MastheadTitleLabel

- (_TtC7NewsUI218MastheadTitleLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7NewsUI218MastheadTitleLabel_model) = 0xF000000000000007;
  v9 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7NewsUI218MastheadTitleLabel_cachedAccessibilityLabel);
  *v9 = 0;
  v9[1] = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(MastheadTitleLabel *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC7NewsUI218MastheadTitleLabel)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7NewsUI218MastheadTitleLabel_model) = 0xF000000000000007;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC7NewsUI218MastheadTitleLabel_cachedAccessibilityLabel);
  *v3 = 0;
  v3[1] = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_218DBAC78();
  v4 = v3;

  if (v4)
  {
    v5 = sub_219BF53D4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end