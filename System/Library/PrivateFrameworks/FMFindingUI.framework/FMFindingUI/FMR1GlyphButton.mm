@interface FMR1GlyphButton
- (_TtC11FMFindingUI15FMR1GlyphButton)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)ringDisplayLinkUpdateWithDisplaylink:(id)displaylink;
@end

@implementation FMR1GlyphButton

- (void)ringDisplayLinkUpdateWithDisplaylink:(id)displaylink
{
  displaylinkCopy = displaylink;
  selfCopy = self;
  sub_24A62A6F8(displaylinkCopy);
}

- (void)drawRect:(CGRect)rect
{
  selfCopy = self;
  sub_24A62B81C();
}

- (_TtC11FMFindingUI15FMR1GlyphButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end