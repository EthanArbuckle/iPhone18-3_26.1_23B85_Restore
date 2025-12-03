@interface SGSuggestionTableController
- (_TtC17CoreSuggestionsUI27SGSuggestionTableController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC17CoreSuggestionsUI27SGSuggestionTableController)initWithStore:(id)store delegate:(id)delegate suggestionPresenter:(id)presenter suggestionList:(id)list;
- (void)dismissViewController:(id)controller;
- (void)dismissalPressed:(id)pressed;
- (void)presentViewController:(id)controller;
- (void)updateWithSuggestionStore:(id)store;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SGSuggestionTableController

- (_TtC17CoreSuggestionsUI27SGSuggestionTableController)initWithStore:(id)store delegate:(id)delegate suggestionPresenter:(id)presenter suggestionList:(id)list
{
  storeCopy = store;
  swift_unknownObjectRetain();
  return SGSuggestionTableController.init(store:delegate:suggestionPresenter:suggestionList:)(storeCopy, delegate, presenter, list);
}

- (void)updateWithSuggestionStore:(id)store
{
  storeCopy = store;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_12_5();
  sub_1B81BCCEC(v6);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1B81BCF70();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  OUTLINED_FUNCTION_0_0();
  sub_1B81BDA84();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  OUTLINED_FUNCTION_0_0();
  sub_1B81BDC78();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  OUTLINED_FUNCTION_0_0();
  sub_1B81BDE08();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  OUTLINED_FUNCTION_0_0();
  sub_1B81BE020();
}

- (void)presentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_12_5();
  sub_1B81BE1BC(v6);
}

- (void)dismissViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_12_5();
  sub_1B81BE340(v6);
}

- (void)dismissalPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_1B81BE52C();
}

- (_TtC17CoreSuggestionsUI27SGSuggestionTableController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1B81F8F98();
  }

  bundleCopy = bundle;
  SGSuggestionTableController.init(nibName:bundle:)();
}

@end