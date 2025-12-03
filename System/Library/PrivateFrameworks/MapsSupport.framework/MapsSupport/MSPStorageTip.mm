@interface MSPStorageTip
- (MSPStorageTip)initWithTitle:(id)title message:(id)message expectedSize:(int64_t)size enablementAction:(id)action;
- (void)enableWithCompletionHandler:(id)handler;
@end

@implementation MSPStorageTip

- (void)enableWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  global_queue = geo_get_global_queue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__MSPStorageTip_enableWithCompletionHandler___block_invoke;
  v7[3] = &unk_279868010;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(global_queue, v7);
}

void __45__MSPStorageTip_enableWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __45__MSPStorageTip_enableWithCompletionHandler___block_invoke_2;
  v2[3] = &unk_279867770;
  v3 = *(a1 + 40);
  (*(v1 + 16))(v1, v2);
}

void __45__MSPStorageTip_enableWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__MSPStorageTip_enableWithCompletionHandler___block_invoke_3;
  v6[3] = &unk_2798674D8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (MSPStorageTip)initWithTitle:(id)title message:(id)message expectedSize:(int64_t)size enablementAction:(id)action
{
  titleCopy = title;
  messageCopy = message;
  actionCopy = action;
  v22.receiver = self;
  v22.super_class = MSPStorageTip;
  v13 = [(MSPStorageTip *)&v22 init];
  if (v13)
  {
    v14 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v14;

    v16 = [messageCopy copy];
    message = v13->_message;
    v13->_message = v16;

    v13->_expectedSize = size;
    v18 = [actionCopy copy];
    enablementAction = v13->_enablementAction;
    v13->_enablementAction = v18;

    v20 = v13;
  }

  return v13;
}

@end