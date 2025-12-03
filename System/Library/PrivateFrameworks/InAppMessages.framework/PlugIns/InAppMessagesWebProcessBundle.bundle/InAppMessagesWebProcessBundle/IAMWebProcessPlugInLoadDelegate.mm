@interface IAMWebProcessPlugInLoadDelegate
- (void)setWebProcessJSOContentPages:(id)pages;
- (void)setWebProcessJSOState:(int64_t)state;
- (void)webProcessJSODidCallClose;
- (void)webProcessJSODidCallOpen:(id)open options:(id)options;
- (void)webProcessJSODidCallPerformAction:(id)action options:(id)options;
- (void)webProcessJSODidReportEvent:(id)event;
- (void)webProcessPlugInBrowserContextController:(id)controller globalObjectIsAvailableForFrame:(id)frame inScriptWorld:(id)world;
@end

@implementation IAMWebProcessPlugInLoadDelegate

- (void)webProcessPlugInBrowserContextController:(id)controller globalObjectIsAvailableForFrame:(id)frame inScriptWorld:(id)world
{
  frameCopy = frame;
  worldCopy = world;
  currentJSContext = [(IAMWebProcessPlugInLoadDelegate *)self currentJSContext];

  if (!currentJSContext)
  {
    v9 = [frameCopy jsContextForWorld:worldCopy];
    [(IAMWebProcessPlugInLoadDelegate *)self setCurrentJSContext:v9];

    v10 = objc_opt_new();
    [(IAMWebProcessPlugInLoadDelegate *)self setWebProcessJSO:v10];

    webProcessJSO = [(IAMWebProcessPlugInLoadDelegate *)self webProcessJSO];
    [webProcessJSO setDelegate:self];

    webProcessJSO2 = [(IAMWebProcessPlugInLoadDelegate *)self webProcessJSO];
    currentJSContext2 = [(IAMWebProcessPlugInLoadDelegate *)self currentJSContext];
    [currentJSContext2 setObject:webProcessJSO2 forKeyedSubscript:@"inappmessages"];

    webProcessJSO3 = [(IAMWebProcessPlugInLoadDelegate *)self webProcessJSO];
    currentJSContext3 = [(IAMWebProcessPlugInLoadDelegate *)self currentJSContext];
    [webProcessJSO3 initializeInContext:currentJSContext3];

    webProcessDelegate = [(IAMWebProcessPlugInLoadDelegate *)self webProcessDelegate];
    [webProcessDelegate webProcessPlugInBrowserContextControllerGlobalObjectIsAvailableForFrame];
  }
}

- (void)webProcessJSODidReportEvent:(id)event
{
  eventCopy = event;
  webProcessDelegate = [(IAMWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  [webProcessDelegate webProcessJSODidReportEvent:eventCopy];
}

- (void)webProcessJSODidCallPerformAction:(id)action options:(id)options
{
  optionsCopy = options;
  actionCopy = action;
  webProcessDelegate = [(IAMWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  [webProcessDelegate webProcessJSODidCallPerformAction:actionCopy options:optionsCopy];
}

- (void)webProcessJSODidCallOpen:(id)open options:(id)options
{
  optionsCopy = options;
  openCopy = open;
  webProcessDelegate = [(IAMWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  [webProcessDelegate webProcessJSODidCallOpen:openCopy options:optionsCopy];
}

- (void)webProcessJSODidCallClose
{
  webProcessDelegate = [(IAMWebProcessPlugInLoadDelegate *)self webProcessDelegate];
  [webProcessDelegate webProcessJSODidCallClose];
}

- (void)setWebProcessJSOContentPages:(id)pages
{
  pagesCopy = pages;
  webProcessJSO = [(IAMWebProcessPlugInLoadDelegate *)self webProcessJSO];

  if (webProcessJSO)
  {
    webProcessJSO2 = [(IAMWebProcessPlugInLoadDelegate *)self webProcessJSO];
    [webProcessJSO2 setContentPages:pagesCopy];
  }
}

- (void)setWebProcessJSOState:(int64_t)state
{
  webProcessJSO = [(IAMWebProcessPlugInLoadDelegate *)self webProcessJSO];

  if (webProcessJSO)
  {
    webProcessJSO2 = [(IAMWebProcessPlugInLoadDelegate *)self webProcessJSO];
    [webProcessJSO2 setState:state];
  }
}

@end