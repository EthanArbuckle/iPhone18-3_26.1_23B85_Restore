@interface ICHelp
+ (void)presentWithTopic:(id)a3 presentingViewController:(id)a4;
@end

@implementation ICHelp

+ (void)presentWithTopic:(id)a3 presentingViewController:(id)a4
{
  v5 = MEMORY[0x1E696AF00];
  v6 = a4;
  v7 = a3;
  if (([v5 isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"+[ICHelp presentWithTopic:presentingViewController:]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  v9 = [MEMORY[0x1E69A45C8] helpViewController];
  [v9 setShowTopicViewOnLoad:1];
  [v9 setDisplayHelpTopicsOnly:1];
  [v9 setSelectedHelpTopicID:v7];

  v8 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v9];
  [v8 setModalPresentationStyle:2];
  [v6 presentViewController:v8 animated:1 completion:0];
}

@end