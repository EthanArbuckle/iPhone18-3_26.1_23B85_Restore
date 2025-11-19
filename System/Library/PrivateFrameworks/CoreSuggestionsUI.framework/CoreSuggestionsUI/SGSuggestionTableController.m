@interface SGSuggestionTableController
- (_TtC17CoreSuggestionsUI27SGSuggestionTableController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC17CoreSuggestionsUI27SGSuggestionTableController)initWithStore:(id)a3 delegate:(id)a4 suggestionPresenter:(id)a5 suggestionList:(id)a6;
- (void)dismissViewController:(id)a3;
- (void)dismissalPressed:(id)a3;
- (void)presentViewController:(id)a3;
- (void)updateWithSuggestionStore:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SGSuggestionTableController

- (_TtC17CoreSuggestionsUI27SGSuggestionTableController)initWithStore:(id)a3 delegate:(id)a4 suggestionPresenter:(id)a5 suggestionList:(id)a6
{
  v9 = a3;
  swift_unknownObjectRetain();
  return SGSuggestionTableController.init(store:delegate:suggestionPresenter:suggestionList:)(v9, a4, a5, a6);
}

- (void)updateWithSuggestionStore:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_12_5();
  sub_1B81BCCEC(v6);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1B81BCF70();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = self;
  OUTLINED_FUNCTION_0_0();
  sub_1B81BDA84();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  OUTLINED_FUNCTION_0_0();
  sub_1B81BDC78();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = self;
  OUTLINED_FUNCTION_0_0();
  sub_1B81BDE08();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = self;
  OUTLINED_FUNCTION_0_0();
  sub_1B81BE020();
}

- (void)presentViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_12_5();
  sub_1B81BE1BC(v6);
}

- (void)dismissViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_12_5();
  sub_1B81BE340(v6);
}

- (void)dismissalPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B81BE52C();
}

- (_TtC17CoreSuggestionsUI27SGSuggestionTableController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1B81F8F98();
  }

  v5 = a4;
  SGSuggestionTableController.init(nibName:bundle:)();
}

@end