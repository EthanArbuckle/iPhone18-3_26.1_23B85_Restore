@interface TKNetworkDefaultTask
- (TKNetworkDefaultTask)initWithTask:(id)a3;
- (void)cancel;
@end

@implementation TKNetworkDefaultTask

- (TKNetworkDefaultTask)initWithTask:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = TKNetworkDefaultTask;
  v8 = [(TKNetworkDefaultTask *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_task, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
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