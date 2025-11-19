@interface HUFakeXPCClient
- (BOOL)sendMessage:(id)a3 errorBlock:(id)a4;
- (void)registerMessageBlock:(id)a3;
@end

@implementation HUFakeXPCClient

- (void)registerMessageBlock:(id)a3
{
  v4 = [a3 copy];
  updateBlock = self->_updateBlock;
  self->_updateBlock = v4;

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)sendMessage:(id)a3 errorBlock:(id)a4
{
  updateBlock = self->_updateBlock;
  if (updateBlock)
  {
    v5 = [a3 payload];
    updateBlock[2](updateBlock, v5);
  }

  return updateBlock != 0;
}

@end