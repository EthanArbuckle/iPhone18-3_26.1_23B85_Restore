@interface IAMWebProcessJSO
+ (id)eventStringForEvent:(int64_t)a3;
+ (id)stateStringForState:(int64_t)a3;
- (IAMWebProcessJSO)init;
- (IAMWebProcessJSODelegate)delegate;
- (id)getState;
- (void)_callListenersOfEvent:(int64_t)a3 withArguments:(id)a4;
- (void)addEventListener:(id)a3 listener:(id)a4;
- (void)close;
- (void)initializeInContext:(id)a3;
- (void)open:(id)a3 options:(id)a4;
- (void)performAction:(id)a3 options:(id)a4;
- (void)removeEventListener:(id)a3 listener:(id)a4;
- (void)reportEvent:(id)a3;
- (void)setContentPages:(id)a3;
- (void)setState:(int64_t)a3;
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

+ (id)eventStringForEvent:(int64_t)a3
{
  if (a3 > 3)
  {
    return &stru_8290;
  }

  else
  {
    return *(&off_8180 + a3);
  }
}

+ (id)stateStringForState:(int64_t)a3
{
  v3 = &stru_8290;
  if (a3 == 1)
  {
    v3 = @"default";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"loading";
  }
}

- (void)initializeInContext:(id)a3
{
  v3 = a3;
  v7 = [JSValue valueWithNewObjectInContext:v3];
  [v7 _IAM_setConstantValue:@"IAMWebProcessShouldDismissPresentationBeforeOpen" forProperty:@"IAMOpenURLOptionsDismissBeforeOpenKey"];
  v4 = [v3 globalObject];
  [v4 _IAM_setConstantValue:v7 forProperty:@"IAMOpenURLOptions"];

  v5 = [JSValue valueWithNewObjectInContext:v3];
  [v5 _IAM_setConstantValue:@"IAMWebProcessShouldDismissPresentationBeforePerformingAction" forProperty:@"IAMPerformActionOptionsDismissBeforeActionKey"];
  v6 = [v3 globalObject];

  [v6 _IAM_setConstantValue:v5 forProperty:@"IAMPerformActionOptions"];
}

- (void)setContentPages:(id)a3
{
  v5 = a3;
  p_contentPages = &self->_contentPages;
  if (self->_contentPages != v5)
  {
    v7 = v5;
    objc_storeStrong(p_contentPages, a3);
    v5 = v7;
    if (self->_state != 1)
    {
      p_contentPages = [(IAMWebProcessJSO *)self setState:1];
      v5 = v7;
    }
  }

  _objc_release_x1(p_contentPages, v5);
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    v5 = [(IAMWebProcessJSO *)self getState];
    v7 = v5;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [(IAMWebProcessJSO *)self _callListenersOfEvent:3 withArguments:v6];

    if (a3 == 1 && ![(IAMWebProcessJSO *)self hasFiredReadyEvent])
    {
      [(IAMWebProcessJSO *)self _callListenersOfEvent:1 withArguments:0];
      [(IAMWebProcessJSO *)self setHasFiredReadyEvent:1];
    }
  }
}

- (void)_callListenersOfEvent:(int64_t)a3 withArguments:(id)a4
{
  v6 = a4;
  v7 = [IAMWebProcessJSO eventStringForEvent:a3];
  v8 = [(IAMWebProcessJSO *)self listenersDictionary];
  v9 = [v8 objectForKeyedSubscript:v7];

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
          v16 = [v6 copy];
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

- (void)addEventListener:(id)a3 listener:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(IAMWebProcessJSO *)self listenersDictionary];
  v8 = [v7 objectForKeyedSubscript:v10];

  if (!v8)
  {
    v8 = +[NSMutableArray array];
    v9 = [(IAMWebProcessJSO *)self listenersDictionary];
    [v9 setObject:v8 forKey:v10];
  }

  if (([v8 containsObject:v6] & 1) == 0)
  {
    [v8 addObject:v6];
  }
}

- (void)removeEventListener:(id)a3 listener:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(IAMWebProcessJSO *)self listenersDictionary];
  v8 = [v7 objectForKeyedSubscript:v14];
  if (v8)
  {
    v9 = v8;
    v10 = [(IAMWebProcessJSO *)self listenersDictionary];
    v11 = [v10 objectForKeyedSubscript:v14];
    v12 = [v11 containsObject:v6];

    if (!v12)
    {
      goto LABEL_5;
    }

    v7 = [(IAMWebProcessJSO *)self listenersDictionary];
    v13 = [v7 objectForKeyedSubscript:v14];
    [v13 removeObject:v6];
  }

LABEL_5:
}

- (id)getState
{
  v2 = [(IAMWebProcessJSO *)self state];

  return [IAMWebProcessJSO stateStringForState:v2];
}

- (void)reportEvent:(id)a3
{
  v7 = a3;
  v4 = [(IAMWebProcessJSO *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(IAMWebProcessJSO *)self delegate];
    [v6 webProcessJSODidReportEvent:v7];
  }
}

- (void)performAction:(id)a3 options:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(IAMWebProcessJSO *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (v8)
    {
      v9 = [v6 objectForKey:@"IAMWebProcessShouldDismissPresentationBeforePerformingAction"];

      if (v9)
      {
        v10 = [(IAMWebProcessJSO *)self delegate];
        [v10 webProcessJSODidCallPerformAction:v11 options:v6];
      }
    }
  }
}

- (void)open:(id)a3 options:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(IAMWebProcessJSO *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v6)
  {
    if (v8)
    {
      v9 = [v6 objectForKey:@"IAMWebProcessShouldDismissPresentationBeforeOpen"];

      if (v9)
      {
        v10 = [(IAMWebProcessJSO *)self delegate];
        [v10 webProcessJSODidCallOpen:v11 options:v6];
      }
    }
  }
}

- (void)close
{
  v3 = [(IAMWebProcessJSO *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(IAMWebProcessJSO *)self delegate];
    [v5 webProcessJSODidCallClose];
  }
}

- (IAMWebProcessJSODelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end