@interface ICNoteFormattingViewController
- (ICNoteFormattingViewController)initWithConfiguration:(id)configuration;
- (ICNoteFormattingViewControllerDelegate)formattingDelegate;
- (void)updateWithDataSource:(id)source ignoreTypingAttributes:(BOOL)attributes;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ICNoteFormattingViewController

- (ICNoteFormattingViewControllerDelegate)formattingDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_2153B2AE0(appearing);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_2153B2C20(disappear);
}

- (void)updateWithDataSource:(id)source ignoreTypingAttributes:(BOOL)attributes
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2153B2D1C(source, attributes);
  swift_unknownObjectRelease();
}

- (ICNoteFormattingViewController)initWithConfiguration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end