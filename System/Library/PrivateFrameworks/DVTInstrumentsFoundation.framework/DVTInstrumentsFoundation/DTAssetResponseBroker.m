@interface DTAssetResponseBroker
+ (id)sharedBroker;
- (BOOL)canContinueServingRequestWithIdentifier:(id)a3;
- (DTAssetResponseBroker)init;
- (id)activeHandlerWithIdentifier:(id)a3;
- (void)forwardMessage:(id)a3;
- (void)registerHandler:(id)a3;
- (void)unregisterHandler:(id)a3;
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

- (id)activeHandlerWithIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_247FE02A8;
  v16 = sub_247FE02B8;
  v17 = 0;
  v5 = [(DTAssetResponseBroker *)self activeHandlersQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FE02C0;
  block[3] = &unk_278EF1998;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)forwardMessage:(id)a3
{
  v11 = a3;
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v5 = [v11 error];

  if (v5)
  {
    v6 = [v11 error];
    v7 = [v6 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"RequestIdentifier"];
  }

  else
  {
    v8 = [v11 objectWithAllowedClasses:v4];

    if (!v8)
    {
      goto LABEL_8;
    }

    v6 = [v11 objectWithAllowedClasses:v4];
    v8 = [v6 identifier];
  }

  if (v8)
  {
    v9 = [(DTAssetResponseBroker *)self activeHandlerWithIdentifier:v8];
    if (v9)
    {
      v10 = v9;
      [v9 receivedMessage:v11];
      goto LABEL_9;
    }
  }

LABEL_8:
  v10 = [v11 description];
  syslog(3, "ODR: Got message not meant for any active handler: %s", [v10 UTF8String]);
LABEL_9:
}

- (BOOL)canContinueServingRequestWithIdentifier:(id)a3
{
  v3 = [(DTAssetResponseBroker *)self activeHandlerWithIdentifier:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)registerHandler:(id)a3
{
  v4 = a3;
  v5 = [(DTAssetResponseBroker *)self activeHandlersQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FE0584;
  v7[3] = &unk_278EF1550;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(v5, v7);
}

- (void)unregisterHandler:(id)a3
{
  v4 = a3;
  v5 = [(DTAssetResponseBroker *)self activeHandlersQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FE0700;
  v7[3] = &unk_278EF1550;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(v5, v7);
}

@end