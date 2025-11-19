@interface DOCFilenameTransitioningDelegate
- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitioningDelegate)init;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
@end

@implementation DOCFilenameTransitioningDelegate

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = DOCFilenameTransitioningDelegate.animationController(forDismissed:)();

  return v6;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = DOCFilenameTransitioningDelegate.animationController(forDismissed:)();

  return v12;
}

- (_TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitioningDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end