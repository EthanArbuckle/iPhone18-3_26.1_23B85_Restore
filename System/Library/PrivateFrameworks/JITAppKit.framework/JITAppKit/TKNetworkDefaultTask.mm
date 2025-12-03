@interface TKNetworkDefaultTask
- (TKNetworkDefaultTask)initWithTask:(id)task;
- (void)cancel;
@end

@implementation TKNetworkDefaultTask

- (TKNetworkDefaultTask)initWithTask:(id)task
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, task);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = TKNetworkDefaultTask;
  selfCopy = [(TKNetworkDefaultTask *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_task, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)cancel
{
  if (self->_task)
  {
    v2 = +[MCLURLDataLoader shared];
    [v2 cancelTask:self->_task];
    MEMORY[0x277D82BD8](v2);
    objc_storeStrong(&self->_task, 0);
  }
}

@end