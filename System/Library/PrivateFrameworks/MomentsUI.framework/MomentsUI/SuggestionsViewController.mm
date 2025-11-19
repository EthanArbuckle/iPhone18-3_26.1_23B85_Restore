@interface SuggestionsViewController
- (_TtC9MomentsUI25SuggestionsViewController)initWithCoder:(id)a3;
- (_TtC9MomentsUI25SuggestionsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation SuggestionsViewController

- (void)viewDidLoad
{
  v2 = self;
  SuggestionsViewController.viewDidLoad()();
}

- (_TtC9MomentsUI25SuggestionsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    *(&self->super.super._responderFlags + OBJC_IVAR____TtC9MomentsUI25SuggestionsViewController_delegate) = 0;
    swift_unknownObjectWeakInit();
    v9 = a4;
    v10 = MEMORY[0x21CE91FC0](v6, v8);
  }

  else
  {
    *(&self->super.super._responderFlags + OBJC_IVAR____TtC9MomentsUI25SuggestionsViewController_delegate) = 0;
    swift_unknownObjectWeakInit();
    v11 = a4;
    v10 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for SuggestionsViewController();
  v12 = [(SuggestionsViewController *)&v14 initWithNibName:v10 bundle:a4];

  return v12;
}

- (_TtC9MomentsUI25SuggestionsViewController)initWithCoder:(id)a3
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC9MomentsUI25SuggestionsViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for SuggestionsViewController();
  v5 = a3;
  v6 = [(SuggestionsViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end