@interface BRUITestMessageCenter
+ (id)defaultCenter;
- (BRUITestMessageCenter)init;
- (id)_init;
- (void)_sendMessageNamed:(id)named userInfo:(id)info isReply:(BOOL)reply messageUUID:(id)d reply:(id)a7;
- (void)didReceiveMessage:(id)message;
- (void)startReceiver;
- (void)startSender;
- (void)stop;
@end

@implementation BRUITestMessageCenter

- (BRUITestMessageCenter)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = objc_opt_class();
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[BRUITestMessageCenter init]"];
  v7 = NSStringFromSelector(sel_defaultCenter);
  [v3 raise:v4 format:{@"-[%@ %@] is unavailable, use %@ instead.", v5, v6, v7}];

  return 0;
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = BRUITestMessageCenter;
  v2 = [(BRUITestMessageCenter *)&v10 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pendingReplies = v2->_pendingReplies;
    v2->_pendingReplies = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    messageHandlers = v2->_messageHandlers;
    v2->_messageHandlers = dictionary2;

    v7 = dispatch_queue_create("BRUITestMessageCenter-message-queue", 0);
    messageQueue = v2->_messageQueue;
    v2->_messageQueue = v7;
  }

  return v2;
}

+ (id)defaultCenter
{
  if (defaultCenter_onceToken != -1)
  {
    +[BRUITestMessageCenter defaultCenter];
  }

  v3 = defaultCenter_defaultCenter;

  return v3;
}

uint64_t __38__BRUITestMessageCenter_defaultCenter__block_invoke()
{
  v0 = [[BRUITestMessageCenter alloc] _init];
  v1 = defaultCenter_defaultCenter;
  defaultCenter_defaultCenter = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)startSender
{
  self->_isSender = 1;
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter addObserver:self selector:sel_didReceiveMessage_ name:@"_BRUITestMessageReceiver" object:0];
}

- (void)startReceiver
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter addObserver:self selector:sel_didReceiveMessage_ name:@"_BRUITestMessageSender" object:0];
}

- (void)stop
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)_sendMessageNamed:(id)named userInfo:(id)info isReply:(BOOL)reply messageUUID:(id)d reply:(id)a7
{
  replyCopy = reply;
  v29[4] = *MEMORY[0x277D85DE8];
  namedCopy = named;
  infoCopy = info;
  dCopy = d;
  v15 = a7;
  if (!dCopy)
  {
    dCopy = [MEMORY[0x277CCAD78] UUID];
  }

  v28[0] = @"_kBRUITestMessageUUID";
  uUIDString = [dCopy UUIDString];
  v29[0] = uUIDString;
  v29[1] = namedCopy;
  v25 = namedCopy;
  v28[1] = @"_kBRUITestMessageName";
  v28[2] = @"_kBRUITestMessageIsReply";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:replyCopy];
  v29[2] = v17;
  v28[3] = @"_kBRUITestPid";
  v18 = [MEMORY[0x277CCABB0] numberWithInt:getpid()];
  v29[3] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
  v20 = [v19 mutableCopy];

  if (infoCopy)
  {
    [v20 setObject:infoCopy forKeyedSubscript:@"_kBRUITestMessagePayload"];
  }

  if (!replyCopy)
  {
    if (v15)
    {
      null = MEMORY[0x245D41DF0](v15);
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v22 = null;
    [(NSMutableDictionary *)self->_pendingReplies setObject:null forKeyedSubscript:dCopy];
  }

  messageQueue = self->_messageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__BRUITestMessageCenter__sendMessageNamed_userInfo_isReply_messageUUID_reply___block_invoke;
  block[3] = &unk_278DD6200;
  block[4] = self;
  v27 = v20;
  v24 = v20;
  dispatch_async(messageQueue, block);
}

void __78__BRUITestMessageCenter__sendMessageNamed_userInfo_isReply_messageUUID_reply___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  v4 = v2;
  if (*(*(a1 + 32) + 33))
  {
    v3 = @"_BRUITestMessageSender";
  }

  else
  {
    v3 = @"_BRUITestMessageReceiver";
  }

  [v2 postNotificationName:v3 object:0 userInfo:*(a1 + 40)];
}

- (void)didReceiveMessage:(id)message
{
  userInfo = [message userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"_kBRUITestPid"];
  integerValue = [v5 integerValue];
  v7 = getpid();

  if (integerValue != v7)
  {
    v8 = [userInfo objectForKeyedSubscript:@"_kBRUITestMessagePayload"];
    v9 = [userInfo objectForKeyedSubscript:@"_kBRUITestMessageUUID"];
    v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
    v11 = [userInfo objectForKeyedSubscript:@"_kBRUITestMessageIsReply"];
    bOOLValue = [v11 BOOLValue];

    if (bOOLValue)
    {
      v13 = [(NSMutableDictionary *)self->_pendingReplies objectForKeyedSubscript:v10];
      [(NSMutableDictionary *)self->_pendingReplies setObject:0 forKeyedSubscript:v10];
      null = [MEMORY[0x277CBEB68] null];
      v15 = [v13 isEqual:null];

      if (v15)
      {
LABEL_7:

        goto LABEL_8;
      }

      v16 = MEMORY[0x245D41DF0](v13);
      v16[2](v16, v8);
    }

    else
    {
      v17 = [userInfo objectForKeyedSubscript:@"_kBRUITestMessageName"];
      v18 = [(NSMutableDictionary *)self->_messageHandlers objectForKeyedSubscript:v17];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__BRUITestMessageCenter_didReceiveMessage___block_invoke;
      block[3] = &unk_278DD6B60;
      v20 = v18;
      v21 = v17;
      v22 = v8;
      selfCopy = self;
      v24 = v10;
      v16 = v17;
      v13 = v18;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    goto LABEL_7;
  }

LABEL_8:
}

void __43__BRUITestMessageCenter_didReceiveMessage___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__BRUITestMessageCenter_didReceiveMessage___block_invoke_2;
  v5[3] = &unk_278DD6B38;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 56);
  v6 = v2;
  v7 = *(a1 + 64);
  [v3 didReceiveMessageNamed:v6 userInfo:v4 reply:v5];
}

@end