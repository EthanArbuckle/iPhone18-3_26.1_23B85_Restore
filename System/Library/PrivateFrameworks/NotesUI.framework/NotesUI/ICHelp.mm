@interface ICHelp
+ (void)presentWithTopic:(id)topic presentingViewController:(id)controller;
@end

@implementation ICHelp

+ (void)presentWithTopic:(id)topic presentingViewController:(id)controller
{
  v5 = MEMORY[0x1E696AF00];
  controllerCopy = controller;
  topicCopy = topic;
  if (([v5 isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"+[ICHelp presentWithTopic:presentingViewController:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  helpViewController = [MEMORY[0x1E69A45C8] helpViewController];
  [helpViewController setShowTopicViewOnLoad:1];
  [helpViewController setDisplayHelpTopicsOnly:1];
  [helpViewController setSelectedHelpTopicID:topicCopy];

  v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:helpViewController];
  [v8 setModalPresentationStyle:2];
  [controllerCopy presentViewController:v8 animated:1 completion:0];
}

@end