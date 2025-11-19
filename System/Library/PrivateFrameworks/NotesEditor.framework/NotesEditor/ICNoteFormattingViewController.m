@interface ICNoteFormattingViewController
- (ICNoteFormattingViewController)initWithConfiguration:(id)a3;
- (ICNoteFormattingViewControllerDelegate)formattingDelegate;
- (void)updateWithDataSource:(id)a3 ignoreTypingAttributes:(BOOL)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ICNoteFormattingViewController

- (ICNoteFormattingViewControllerDelegate)formattingDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_2153B2AE0(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_2153B2C20(a3);
}

- (void)updateWithDataSource:(id)a3 ignoreTypingAttributes:(BOOL)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_2153B2D1C(a3, a4);
  swift_unknownObjectRelease();
}

- (ICNoteFormattingViewController)initWithConfiguration:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end