@interface CNTUCallProviderManagerDelegate
- (CNTUCallProviderManagerDelegate)initWithBlock:(id)block;
- (void)providersChangedForProviderManager:(id)manager;
@end

@implementation CNTUCallProviderManagerDelegate

- (CNTUCallProviderManagerDelegate)initWithBlock:(id)block
{
  blockCopy = block;
  v10.receiver = self;
  v10.super_class = CNTUCallProviderManagerDelegate;
  v5 = [(CNTUCallProviderManagerDelegate *)&v10 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    block = v5->_block;
    v5->_block = v6;

    v8 = v5;
  }

  return v5;
}

- (void)providersChangedForProviderManager:(id)manager
{
  managerCopy = manager;
  block = [(CNTUCallProviderManagerDelegate *)self block];
  block[2](block, managerCopy);
}

@end