@interface MGGroupsQueryAgentResult
- (MGGroupsMediator)mediator;
- (MGGroupsQueryAgentResult)initWithGroup:(id)group mediator:(id)mediator;
@end

@implementation MGGroupsQueryAgentResult

- (MGGroupsQueryAgentResult)initWithGroup:(id)group mediator:(id)mediator
{
  groupCopy = group;
  objc_initWeak(&location, mediator);
  v12.receiver = self;
  v12.super_class = MGGroupsQueryAgentResult;
  v8 = [(MGGroupsQueryAgentResult *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_group, group);
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