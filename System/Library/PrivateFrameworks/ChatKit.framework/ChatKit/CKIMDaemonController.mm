@interface CKIMDaemonController
+ (id)sharedInstance;
+ (void)beginSimulatingDaemon;
- (CKIMDaemonController)init;
- (void)sendBalloonPayload:(id)a3 attachments:(id)a4 withMessageGUID:(id)a5 bundleID:(id)a6;
@end

@implementation CKIMDaemonController

+ (id)sharedInstance
{
  if (sharedInstance_creation != -1)
  {
    +[CKIMDaemonController sharedInstance];
  }

  v3 = sharedInstance_sInstance_1;

  return v3;
}

void __38__CKIMDaemonController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CKIMDaemonController);
  v1 = sharedInstance_sInstance_1;
  sharedInstance_sInstance_1 = v0;
}

+ (void)beginSimulatingDaemon
{
  if (beginSimulatingDaemon_onceToken != -1)
  {
    +[CKIMDaemonController beginSimulatingDaemon];
  }
}

void __45__CKIMDaemonController_beginSimulatingDaemon__block_invoke()
{
  v0 = objc_opt_class();
  ClassMethod = class_getClassMethod(v0, sel_sharedInstance);
  v2 = objc_opt_class();
  v3 = class_getClassMethod(v2, sel_sharedInstance);
  method_exchangeImplementations(ClassMethod, v3);
  v4 = objc_opt_class();
  v5 = class_getClassMethod(v4, sel_sharedController);
  v6 = objc_opt_class();
  v7 = class_getClassMethod(v6, sel_sharedController);
  method_exchangeImplementations(v5, v7);
  v9 = [MEMORY[0x1E69A5B50] sharedInstance];
  v8 = [v9 listener];
  [v8 setupComplete:1 info:&unk_1F04E9258];
}

- (CKIMDaemonController)init
{
  v8.receiver = self;
  v8.super_class = CKIMDaemonController;
  v2 = [(IMDaemonController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E696AE48]);
    v4 = IMGetDaemonProtocol();
    v5 = [v3 initWithProtocol:v4];
    protocol = v2->_protocol;
    v2->_protocol = v5;
  }

  return v2;
}

- (void)sendBalloonPayload:(id)a3 attachments:(id)a4 withMessageGUID:(id)a5 bundleID:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [(CKIMDaemonController *)self listeners];
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * v18++) simulatedDaemon:self willSendBalloonPayload:v10 attachments:v11 messageGUID:v12 bundleID:v13];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

@end