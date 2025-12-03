@interface DTAssetResponseBroker
+ (id)sharedBroker;
- (BOOL)canContinueServingRequestWithIdentifier:(id)identifier;
- (DTAssetResponseBroker)init;
- (id)activeHandlerWithIdentifier:(id)identifier;
- (void)forwardMessage:(id)message;
- (void)registerHandler:(id)handler;
- (void)unregisterHandler:(id)handler;
@end

@implementation DTAssetResponseBroker

- (DTAssetResponseBroker)init
{
  v6.receiver = self;
  v6.super_class = DTAssetResponseBroker;
  v2 = [(DTAssetResponseBroker *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(DTAssetResponseBroker *)v2 setActiveHandlers:v3];

    v4 = dispatch_queue_create("com.apple.dt.DTAssetResponseBroker", MEMORY[0x277D85CD8]);
    [(DTAssetResponseBroker *)v2 setActiveHandlersQueue:v4];
  }

  return v2;
}

+ (id)sharedBroker
{
  if (qword_27EE84458 != -1)
  {
    sub_24802FC68();
  }

  v3 = qword_27EE84450;

  return v3;
}

- (id)activeHandlerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_247FE02A8;
  v16 = sub_247FE02B8;
  v17 = 0;
  activeHandlersQueue = [(DTAssetResponseBroker *)self activeHandlersQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FE02C0;
  block[3] = &unk_278EF1998;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(activeHandlersQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)forwardMessage:(id)message
{
  messageCopy = message;
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  error = [messageCopy error];

  if (error)
  {
    error2 = [messageCopy error];
    userInfo = [error2 userInfo];
    identifier = [userInfo objectForKeyedSubscript:@"RequestIdentifier"];
  }

  else
  {
    identifier = [messageCopy objectWithAllowedClasses:v4];

    if (!identifier)
    {
      goto LABEL_8;
    }

    error2 = [messageCopy objectWithAllowedClasses:v4];
    identifier = [error2 identifier];
  }

  if (identifier)
  {
    v9 = [(DTAssetResponseBroker *)self activeHandlerWithIdentifier:identifier];
    if (v9)
    {
      v10 = v9;
      [v9 receivedMessage:messageCopy];
      goto LABEL_9;
    }
  }

LABEL_8:
  v10 = [messageCopy description];
  syslog(3, "ODR: Got message not meant for any active handler: %s", [v10 UTF8String]);
LABEL_9:
}

- (BOOL)canContinueServingRequestWithIdentifier:(id)identifier
{
  v3 = [(DTAssetResponseBroker *)self activeHandlerWithIdentifier:identifier];
  v4 = v3 != 0;

  return v4;
}

- (void)registerHandler:(id)handler
{
  handlerCopy = handler;
  activeHandlersQueue = [(DTAssetResponseBroker *)self activeHandlersQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FE0584;
  v7[3] = &unk_278EF1550;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_barrier_sync(activeHandlersQueue, v7);
}

- (void)unregisterHandler:(id)handler
{
  handlerCopy = handler;
  activeHandlersQueue = [(DTAssetResponseBroker *)self activeHandlersQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FE0700;
  v7[3] = &unk_278EF1550;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_barrier_sync(activeHandlersQueue, v7);
}

@end