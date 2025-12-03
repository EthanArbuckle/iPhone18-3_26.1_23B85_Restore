@interface DDParsecYeaAction
- (id)createViewController;
- (id)feedbackListener;
- (void)performFromView:(id)view;
- (void)prepareViewControllerForActionController:(id)controller;
- (void)report;
@end

@implementation DDParsecYeaAction

- (id)createViewController
{
  v4.receiver = self;
  v4.super_class = DDParsecYeaAction;
  createViewController = [(DDParsecAction *)&v4 createViewController];

  return createViewController;
}

- (id)feedbackListener
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__DDParsecYeaAction_feedbackListener__block_invoke;
  block[3] = &unk_278290B50;
  block[4] = self;
  if (_MergedGlobals_6 == -1)
  {
    v2 = qword_280B122C8;
  }

  else
  {
    dispatch_once(&_MergedGlobals_6, block);
    v2 = qword_280B122C8;
  }

  return v2;
}

void __37__DDParsecYeaAction_feedbackListener__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v2 objectForInfoDictionaryKey:*MEMORY[0x277CBED58]];

  if ([(__CFString *)v19 length])
  {
    v4 = v19;
  }

  else
  {

    v4 = @"1.0";
  }

  v20 = v4;
  Helper_x8__kPARLookupClient = gotLoadHelper_x8__kPARLookupClient(v3);
  v9 = [v7 stringWithFormat:@"%@/%@", Helper_x8__kPARLookupClient, **(v6 + 2016), v8];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.lookup"];
  gotLoadHelper_x8__OBJC_CLASS___PARSessionConfiguration(v11);
  v13 = [objc_alloc(*(v12 + 1992)) initWithId:v10 userAgent:v9];
  Helper_x8__OBJC_CLASS___PARSession = gotLoadHelper_x8__OBJC_CLASS___PARSession(v14);
  v17 = [*(v16 + 1984) sessionWithConfiguration:{v13, Helper_x8__OBJC_CLASS___PARSession}];
  v18 = qword_280B122C8;
  qword_280B122C8 = v17;
}

- (void)report
{
  if (self->super.super.super._result)
  {
    v12 = DDResultGetParsecRawDomain();
    result = self->super.super.super._result;
    v4 = DDResultGetMatchedString();
    gotLoadHelper_x8__OBJC_CLASS___SFLookupHintRelevancyFeedback(v5);
    v7 = objc_alloc(*(v6 + 1072));
    v8 = [v4 length];
    v9 = self->super.super.super._result;
    v10 = [v7 initWithContext:v4 hintRange:0 domain:v8 discarded:v12 grade:{DDShouldUseDebugHighlightForResult(), -[DDParsecYeaAction relevancy](self, "relevancy")}];
    feedbackListener = [(DDParsecYeaAction *)self feedbackListener];
    [feedbackListener didGradeLookupHintRelevancy:v10];
  }
}

- (void)prepareViewControllerForActionController:(id)controller
{
  controllerCopy = controller;
  [(DDParsecYeaAction *)self report];
  v5.receiver = self;
  v5.super_class = DDParsecYeaAction;
  [(DDAction *)&v5 prepareViewControllerForActionController:controllerCopy];
}

- (void)performFromView:(id)view
{
  viewCopy = view;
  [(DDParsecYeaAction *)self report];
  v5.receiver = self;
  v5.super_class = DDParsecYeaAction;
  [(DDAction *)&v5 performFromView:viewCopy];
}

@end