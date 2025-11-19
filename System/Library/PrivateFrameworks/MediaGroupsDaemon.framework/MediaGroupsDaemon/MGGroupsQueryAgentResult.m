@interface MGGroupsQueryAgentResult
- (MGGroupsMediator)mediator;
- (MGGroupsQueryAgentResult)initWithGroup:(id)a3 mediator:(id)a4;
@end

@implementation MGGroupsQueryAgentResult

- (MGGroupsQueryAgentResult)initWithGroup:(id)a3 mediator:(id)a4
{
  v7 = a3;
  objc_initWeak(&location, a4);
  v12.receiver = self;
  v12.super_class = MGGroupsQueryAgentResult;
  v8 = [(MGGroupsQueryAgentResult *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_group, a3);
    v10 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v9->_mediator, v10);
  }

  objc_destroyWeak(&location);

  return v9;
}

- (MGGroupsMediator)mediator
{
  WeakRetained = objc_loadWeakRetained(&self->_mediator);

  return WeakRetained;
}

@end