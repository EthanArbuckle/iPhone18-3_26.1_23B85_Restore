@interface EmojiEditingInputViewController
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (_TtC11EmojiPoster31EmojiEditingInputViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapCloseButton;
- (void)didTapDeleteButton;
- (void)textViewDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation EmojiEditingInputViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_24A00FF80();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_24A011528(a3);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_24A011908(a3);
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

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A013650();
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  sub_24A021698();
  v9 = a3;
  v10 = self;
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
    v6 = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)didTapDeleteButton
{
  v2 = self;
  sub_24A0122E8();
}

- (_TtC11EmojiPoster31EmojiEditingInputViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end