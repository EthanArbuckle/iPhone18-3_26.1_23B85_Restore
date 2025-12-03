@interface SuggestionsViewController
- (_TtC9MomentsUI25SuggestionsViewController)initWithCoder:(id)coder;
- (_TtC9MomentsUI25SuggestionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation SuggestionsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  SuggestionsViewController.viewDidLoad()();
}

- (_TtC9MomentsUI25SuggestionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    *(&self->super.super._responderFlags + OBJC_IVAR____TtC9MomentsUI25SuggestionsViewController_delegate) = 0;
    swift_unknownObjectWeakInit();
    bundleCopy = bundle;
    v10 = MEMORY[0x21CE91FC0](v6, v8);
  }

  else
  {
    *(&self->super.super._responderFlags + OBJC_IVAR____TtC9MomentsUI25SuggestionsViewController_delegate) = 0;
    swift_unknownObjectWeakInit();
    bundleCopy2 = bundle;
    v10 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for SuggestionsViewController();
  v12 = [(SuggestionsViewController *)&v14 initWithNibName:v10 bundle:bundle];

  return v12;
}

- (_TtC9MomentsUI25SuggestionsViewController)initWithCoder:(id)coder
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC9MomentsUI25SuggestionsViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for SuggestionsViewController();
  coderCopy = coder;
  v6 = [(SuggestionsViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end