@interface IAMWebProcessJSO
+ (id)eventStringForEvent:(int64_t)event;
+ (id)stateStringForState:(int64_t)state;
- (IAMWebProcessJSO)init;
- (IAMWebProcessJSODelegate)delegate;
- (id)getState;
- (void)_callListenersOfEvent:(int64_t)event withArguments:(id)arguments;
- (void)addEventListener:(id)listener listener:(id)a4;
- (void)close;
- (void)initializeInContext:(id)context;
- (void)open:(id)open options:(id)options;
- (void)performAction:(id)action options:(id)options;
- (void)removeEventListener:(id)listener listener:(id)a4;
- (void)reportEvent:(id)event;
- (void)setContentPages:(id)pages;
- (void)setState:(int64_t)state;
@end

@implementation IAMWebProcessJSO

- (IAMWebProcessJSO)init
{
  v7.receiver = self;
  v7.super_class = IAMWebProcessJSO;
  v2 = [(IAMWebProcessJSO *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    v2->_hasFiredReadyEvent = 0;
    v4 = +[NSMutableDictionary dictionary];
    listenersDictionary = v3->_listenersDictionary;
    v3->_listenersDictionary = v4;
  }

  return v3;
}

+ (id)eventStringForEvent:(int64_t)event
{
  if (event > 3)
  {
    return &stru_8290;
  }

  else
  {
    return *(&off_8180 + event);
  }
}

+ (id)stateStringForState:(int64_t)state
{
  v3 = &stru_8290;
  if (state == 1)
  {
    v3 = @"default";
  }

  if (state)
  {
    return v3;
  }

  else
  {
    return @"loading";
  }
}

- (void)initializeInContext:(id)context
{
  contextCopy = context;
  v7 = [JSValue valueWithNewObjectInContext:contextCopy];
  [v7 _IAM_setConstantValue:@"IAMWebProcessShouldDismissPresentationBeforeOpen" forProperty:@"IAMOpenURLOptionsDismissBeforeOpenKey"];
  globalObject = [contextCopy globalObject];
  [globalObject _IAM_setConstantValue:v7 forProperty:@"IAMOpenURLOptions"];

  v5 = [JSValue valueWithNewObjectInContext:contextCopy];
  [v5 _IAM_setConstantValue:@"IAMWebProcessShouldDismissPresentationBeforePerformingAction" forProperty:@"IAMPerformActionOptionsDismissBeforeActionKey"];
  globalObject2 = [contextCopy globalObject];

  [globalObject2 _IAM_setConstantValue:v5 forProperty:@"IAMPerformActionOptions"];
}

- (void)setContentPages:(id)pages
{
  pagesCopy = pages;
  p_contentPages = &self->_contentPages;
  if (self->_contentPages != pagesCopy)
  {
    v7 = pagesCopy;
    objc_storeStrong(p_contentPages, pages);
    pagesCopy = v7;
    if (self->_state != 1)
    {
      p_contentPages = [(IAMWebProcessJSO *)self setState:1];
      pagesCopy = v7;
    }
  }

  _objc_release_x1(p_contentPages, pagesCopy);
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    getState = [(IAMWebProcessJSO *)self getState];
    v7 = getState;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [(IAMWebProcessJSO *)self _callListenersOfEvent:3 withArguments:v6];

    if (state == 1 && ![(IAMWebProcessJSO *)self hasFiredReadyEvent])
    {
      [(IAMWebProcessJSO *)self _callListenersOfEvent:1 withArguments:0];
      [(IAMWebProcessJSO *)self setHasFiredReadyEvent:1];
    }
  }
}

- (void)_callListenersOfEvent:(int64_t)event withArguments:(id)arguments
{
  argumentsCopy = arguments;
  v7 = [IAMWebProcessJSO eventStringForEvent:event];
  listenersDictionary = [(IAMWebProcessJSO *)self listenersDictionary];
  v9 = [listenersDictionary objectForKeyedSubscript:v7];

  if (v9 && [v9 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * v14);
          v16 = [argumentsCopy copy];
          v17 = [v15 callWithArguments:v16];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }
}

- (void)addEventListener:(id)listener listener:(id)a4
{
  listenerCopy = listener;
  v6 = a4;
  listenersDictionary = [(IAMWebProcessJSO *)self listenersDictionary];
  v8 = [listenersDictionary objectForKeyedSubscript:listenerCopy];

  if (!v8)
  {
    v8 = +[NSMutableArray array];
    listenersDictionary2 = [(IAMWebProcessJSO *)self listenersDictionary];
    [listenersDictionary2 setObject:v8 forKey:listenerCopy];
  }

  if (([v8 containsObject:v6] & 1) == 0)
  {
    [v8 addObject:v6];
  }
}

- (void)removeEventListener:(id)listener listener:(id)a4
{
  listenerCopy = listener;
  v6 = a4;
  listenersDictionary = [(IAMWebProcessJSO *)self listenersDictionary];
  v8 = [listenersDictionary objectForKeyedSubscript:listenerCopy];
  if (v8)
  {
    v9 = v8;
    listenersDictionary2 = [(IAMWebProcessJSO *)self listenersDictionary];
    v11 = [listenersDictionary2 objectForKeyedSubscript:listenerCopy];
    v12 = [v11 containsObject:v6];

    if (!v12)
    {
      goto LABEL_5;
    }

    listenersDictionary = [(IAMWebProcessJSO *)self listenersDictionary];
    v13 = [listenersDictionary objectForKeyedSubscript:listenerCopy];
    [v13 removeObject:v6];
  }

LABEL_5:
}

- (id)getState
{
  state = [(IAMWebProcessJSO *)self state];

  return [IAMWebProcessJSO stateStringForState:state];
}

- (void)reportEvent:(id)event
{
  eventCopy = event;
  delegate = [(IAMWebProcessJSO *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(IAMWebProcessJSO *)self delegate];
    [delegate2 webProcessJSODidReportEvent:eventCopy];
  }
}

- (void)performAction:(id)action options:(id)options
{
  actionCopy = action;
  optionsCopy = options;
  delegate = [(IAMWebProcessJSO *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (optionsCopy)
  {
    if (v8)
    {
      v9 = [optionsCopy objectForKey:@"IAMWebProcessShouldDismissPresentationBeforePerformingAction"];

      if (v9)
      {
        delegate2 = [(IAMWebProcessJSO *)self delegate];
        [delegate2 webProcessJSODidCallPerformAction:actionCopy options:optionsCopy];
      }
    }
  }
}

- (void)open:(id)open options:(id)options
{
  openCopy = open;
  optionsCopy = options;
  delegate = [(IAMWebProcessJSO *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (optionsCopy)
  {
    if (v8)
    {
      v9 = [optionsCopy objectForKey:@"IAMWebProcessShouldDismissPresentationBeforeOpen"];

      if (v9)
      {
        delegate2 = [(IAMWebProcessJSO *)self delegate];
        [delegate2 webProcessJSODidCallOpen:openCopy options:optionsCopy];
      }
    }
  }
}

- (void)close
{
  delegate = [(IAMWebProcessJSO *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(IAMWebProcessJSO *)self delegate];
    [delegate2 webProcessJSODidCallClose];
  }
}

- (IAMWebProcessJSODelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end