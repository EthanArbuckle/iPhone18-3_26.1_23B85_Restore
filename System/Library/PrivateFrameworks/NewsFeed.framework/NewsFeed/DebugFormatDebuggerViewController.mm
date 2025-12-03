@interface DebugFormatDebuggerViewController
- (_TtC8NewsFeed33DebugFormatDebuggerViewController)initWithCoder:(id)coder;
- (void)viewDidLoad;
@end

@implementation DebugFormatDebuggerViewController

- (_TtC8NewsFeed33DebugFormatDebuggerViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8NewsFeed33DebugFormatDebuggerViewController_selectedCallStackFrame;
  v5 = type metadata accessor for FormatDebuggerCallStackFrame(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D6CBFB40();
}

@end