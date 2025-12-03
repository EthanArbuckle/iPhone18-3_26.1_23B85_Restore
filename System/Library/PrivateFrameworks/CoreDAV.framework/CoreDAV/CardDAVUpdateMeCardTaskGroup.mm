@interface CardDAVUpdateMeCardTaskGroup
- (CardDAVUpdateMeCardTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager homeURL:(id)l cardURL:(id)rL;
- (NSString)description;
- (id)_newPropPatchTask;
- (void)propPatchTask:(id)task parsedResponses:(id)responses error:(id)error;
- (void)startTaskGroup;
@end

@implementation CardDAVUpdateMeCardTaskGroup

- (CardDAVUpdateMeCardTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager homeURL:(id)l cardURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v16.receiver = self;
  v16.super_class = CardDAVUpdateMeCardTaskGroup;
  v13 = [(CoreDAVTaskGroup *)&v16 initWithAccountInfoProvider:provider taskManager:manager];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_homeURL, l);
    objc_storeStrong(&v14->_cardURL, rL);
  }

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ %p: %@", v5, self, self->_cardURL];

  return v6;
}

- (id)_newPropPatchTask
{
  v3 = [[CoreDAVHrefItem alloc] initWithURL:self->_cardURL];
  [(CoreDAVHrefItem *)v3 setWriteStyle:2];
  v4 = [[CoreDAVItemWithHrefChildItem alloc] initWithNameSpace:@"http://calendarserver.org/ns/" andName:@"me-card"];
  [(CoreDAVItemWithHrefChildItem *)v4 setHref:v3];
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v4, 0}];
  v6 = [[CoreDAVPropPatchTask alloc] initWithPropertiesToSet:v5 andRemove:0 atURL:self->_homeURL];

  return v6;
}

- (void)startTaskGroup
{
  _newPropPatchTask = [(CardDAVUpdateMeCardTaskGroup *)self _newPropPatchTask];
  [_newPropPatchTask setDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  [_newPropPatchTask setAccountInfoProvider:WeakRetained];

  [_newPropPatchTask setTimeoutInterval:self->super._timeoutInterval];
  [(NSMutableSet *)self->super._outstandingTasks addObject:_newPropPatchTask];
  v4 = objc_loadWeakRetained(&self->super._taskManager);
  [v4 submitQueuedCoreDAVTask:_newPropPatchTask];
}

- (void)propPatchTask:(id)task parsedResponses:(id)responses error:(id)error
{
  taskCopy = task;
  errorCopy = error;
  if ([(NSMutableSet *)self->super._outstandingTasks containsObject:taskCopy])
  {
    [(NSMutableSet *)self->super._outstandingTasks removeObject:taskCopy];
    if (errorCopy)
    {
      [(CoreDAVTaskGroup *)self bailWithError:errorCopy];
    }

    else
    {
      [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:0 delegateCallbackBlock:0];
    }
  }
}

@end