@interface SearchInArticleViewController
- (NSArray)keyCommands;
- (_TtC12NewsArticles29SearchInArticleViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancelButtonTapped;
- (void)clearSearchTextField;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)loadView;
- (void)nextButtonTapped;
- (void)previousButtonTapped;
- (void)textFieldDidChange:(id)change;
- (void)updateMenuButtonTitle:(id)title;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation SearchInArticleViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D7CF668C();
}

- (void)updateMenuButtonTitle:(id)title
{
  titleCopy = title;
  selfCopy = self;
  sub_1D7CF7BC0(titleCopy);
}

- (void)loadView
{
  type metadata accessor for PassthroughView();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  selfCopy = self;
  v4 = [v3 init];
  [(SearchInArticleViewController *)selfCopy setView:v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(SearchInArticleViewController *)&v6 viewDidAppear:appearCopy];
  v5 = *&v4[OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchTextField];
  [v5 becomeFirstResponder];
}

- (void)cancelButtonTapped
{
  selfCopy = self;
  sub_1D7CF7FA4();
}

- (NSArray)keyCommands
{
  sub_1D7A782C0(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7D3C670;
  v4 = *MEMORY[0x1E69DDEA0];
  v5 = objc_opt_self();
  selfCopy = self;
  *(v3 + 32) = [v5 keyCommandWithInput:v4 modifierFlags:0 action:sel_cancelButtonTapped];

  sub_1D7992EFC(0, &unk_1EE0BF118);
  v7 = sub_1D7D3062C();

  return v7;
}

- (void)nextButtonTapped
{
  selfCopy = self;
  sub_1D7CF8370(&qword_1EC9DFE78);
}

- (void)previousButtonTapped
{
  selfCopy = self;
  sub_1D7CF8370(&qword_1EC9DFE80);
}

- (void)textFieldDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  text = [changeCopy text];
  if (text)
  {
    v6 = text;
    v7 = sub_1D7D3034C();
    v9 = v8;

    v10 = (selfCopy + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchTerm);
    *v10 = v7;
    v10[1] = v9;

    sub_1D7CF8370(&qword_1EC9DFE70);
  }
}

- (void)clearSearchTextField
{
  selfCopy = self;
  sub_1D7CF870C();
}

- (void)keyboardWillShow:(id)show
{
  v4 = sub_1D7D2802C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D27FFC();
  selfCopy = self;
  sub_1D7CF89F4();

  (*(v5 + 8))(v8, v4);
}

- (void)keyboardWillHide:(id)hide
{
  v4 = sub_1D7D2802C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D27FFC();
  v9 = *(v5 + 8);
  selfCopy = self;
  v9(v8, v4);
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_keyboardHeight) = 0;
}

- (_TtC12NewsArticles29SearchInArticleViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end