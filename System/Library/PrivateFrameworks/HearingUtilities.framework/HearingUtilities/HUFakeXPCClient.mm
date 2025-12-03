@interface HUFakeXPCClient
- (BOOL)sendMessage:(id)message errorBlock:(id)block;
- (void)registerMessageBlock:(id)block;
@end

@implementation HUFakeXPCClient

- (void)registerMessageBlock:(id)block
{
  v4 = [block copy];
  updateBlock = self->_updateBlock;
  self->_updateBlock = v4;

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)sendMessage:(id)message errorBlock:(id)block
{
  updateBlock = self->_updateBlock;
  if (updateBlock)
  {
    payload = [message payload];
    updateBlock[2](updateBlock, payload);
  }

  return updateBlock != 0;
}

@end