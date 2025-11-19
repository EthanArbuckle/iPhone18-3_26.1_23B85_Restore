@interface SearchInArticleViewController
- (NSArray)keyCommands;
- (_TtC12NewsArticles29SearchInArticleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancelButtonTapped;
- (void)clearSearchTextField;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)loadView;
- (void)nextButtonTapped;
- (void)previousButtonTapped;
- (void)textFieldDidChange:(id)a3;
- (void)updateMenuButtonTitle:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SearchInArticleViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1D7CF668C();
}

- (void)updateMenuButtonTitle:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D7CF7BC0(v4);
}

- (void)loadView
{
  type metadata accessor for PassthroughView();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = self;
  v4 = [v3 init];
  [(SearchInArticleViewController *)v5 setView:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(SearchInArticleViewController *)&v6 viewDidAppear:v3];
  v5 = *&v4[OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchTextField];
  [v5 becomeFirstResponder];
}

- (void)cancelButtonTapped
{
  v2 = self;
  sub_1D7CF7FA4();
}

- (NSArray)keyCommands
{
  sub_1D7A782C0(0, &qword_1EE0BE7F0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7D3C670;
  v4 = *MEMORY[0x1E69DDEA0];
  v5 = objc_opt_self();
  v6 = self;
  *(v3 + 32) = [v5 keyCommandWithInput:v4 modifierFlags:0 action:sel_cancelButtonTapped];

  sub_1D7992EFC(0, &unk_1EE0BF118);
  v7 = sub_1D7D3062C();

  return v7;
}

- (void)nextButtonTapped
{
  v2 = self;
  sub_1D7CF8370(&qword_1EC9DFE78);
}

- (void)previousButtonTapped
{
  v2 = self;
  sub_1D7CF8370(&qword_1EC9DFE80);
}

- (void)textFieldDidChange:(id)a3
{
  v4 = a3;
  v11 = self;
  v5 = [v4 text];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1D7D3034C();
    v9 = v8;

    v10 = (v11 + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_searchTerm);
    *v10 = v7;
    v10[1] = v9;

    sub_1D7CF8370(&qword_1EC9DFE70);
  }
}

- (void)clearSearchTextField
{
  v2 = self;
  sub_1D7CF870C();
}

- (void)keyboardWillShow:(id)a3
{
  v4 = sub_1D7D2802C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D27FFC();
  v9 = self;
  sub_1D7CF89F4();

  (*(v5 + 8))(v8, v4);
}

- (void)keyboardWillHide:(id)a3
{
  v4 = sub_1D7D2802C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D27FFC();
  v9 = *(v5 + 8);
  v10 = self;
  v9(v8, v4);
  *(&v10->super.super.super.isa + OBJC_IVAR____TtC12NewsArticles29SearchInArticleViewController_keyboardHeight) = 0;
}

- (_TtC12NewsArticles29SearchInArticleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end