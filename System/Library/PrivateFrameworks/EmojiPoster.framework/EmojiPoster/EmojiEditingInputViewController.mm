@interface EmojiEditingInputViewController
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (_TtC11EmojiPoster31EmojiEditingInputViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapCloseButton;
- (void)didTapDeleteButton;
- (void)textViewDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation EmojiEditingInputViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24A00FF80();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24A011528(appear);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_24A011908(appearing);
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EmojiEditingInputViewController();
  v2 = v7.receiver;
  [(EmojiEditingInputViewController *)&v7 viewDidLayoutSubviews];
  if ((_s11EmojiPoster8FeaturesV18emojiSearchEnabledSbvgZ_0() & 1) != 0 && (v3 = &v2[OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_delegate], swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = sub_24A00FECC(1);
    (*(v4 + 8))(ObjectType, v4, v6);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24A013650();
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  sub_24A021698();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(length) = sub_24A013C74(location, length);

  return length & 1;
}

- (void)didTapCloseButton
{
  v3 = self + OBJC_IVAR____TtC11EmojiPoster31EmojiEditingInputViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 24);
    selfCopy = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)didTapDeleteButton
{
  selfCopy = self;
  sub_24A0122E8();
}

- (_TtC11EmojiPoster31EmojiEditingInputViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end