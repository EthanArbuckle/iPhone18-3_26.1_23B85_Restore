@interface DUXPCClient
+ (id)sharedInstance;
- (DUXPCClient)init;
- (void)addOrUpdateSearchableItems:(id)items bundleID:(id)d completion:(id)completion;
- (void)addSerializedDocument:(id)document documentType:(int64_t)type completion:(id)completion;
- (void)foundInEventResultWithSerializedDocument:(id)document documentType:(int64_t)type completion:(id)completion;
@end

@implementation DUXPCClient

- (void)foundInEventResultWithSerializedDocument:(id)document documentType:(int64_t)type completion:(id)completion
{
  documentCopy = document;
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DocumentUnderstandingClient initiating call to textunderstandingd - foundInEventResultWithSerializedDocument", v11, 2u);
  }

  _syncRemoteObjectProxy = [(DUXPCClient *)self _syncRemoteObjectProxy];
  [_syncRemoteObjectProxy foundInEventResultWithSerializedDocument:documentCopy documentType:type completion:completionCopy];
}

- (void)addSerializedDocument:(id)document documentType:(int64_t)type completion:(id)completion
{
  documentCopy = document;
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DocumentUnderstandingClient initiating call to textunderstandingd - addSerializedDocument", v11, 2u);
  }

  _syncRemoteObjectProxy = [(DUXPCClient *)self _syncRemoteObjectProxy];
  [_syncRemoteObjectProxy addSerializedDocument:documentCopy documentType:type completion:completionCopy];
}

- (void)addOrUpdateSearchableItems:(id)items bundleID:(id)d completion:(id)completion
{
  itemsCopy = items;
  dCopy = d;
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DocumentUnderstandingClient initiating call to textunderstandingd - addOrUpdateSearchableItems", v12, 2u);
  }

  _syncRemoteObjectProxy = [(DUXPCClient *)self _syncRemoteObjectProxy];
  [_syncRemoteObjectProxy addOrUpdateSearchableItems:itemsCopy bundleID:dCopy completion:completionCopy];
}

- (DUXPCClient)init
{
  v16.receiver = self;
  v16.super_class = DUXPCClient;
  v2 = [(DUXPCClient *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285CF6548];
    v4 = objc_autoreleasePoolPush();
    v5 = objc_alloc(MEMORY[0x277CBEB98]);
    v6 = objc_opt_class();
    v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v4);
    [v3 setClasses:v7 forSelector:sel_addOrUpdateSearchableItems_bundleID_completion_ argumentIndex:0 ofReply:0];

    v8 = objc_autoreleasePoolPush();
    v9 = objc_alloc(MEMORY[0x277CBEB98]);
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v9 initWithObjects:{v10, v11, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v8);
    [v3 setClasses:v12 forSelector:sel_synchronousEventExtractionWithSerializedDocument_documentType_pid_completion_ argumentIndex:0 ofReply:1];

    v13 = [[DUXPCClientHelpers alloc] initWithServiceName:@"com.apple.TextUnderstanding.DocumentUnderstandingHarvesting" whitelistedServerInterface:v3 clientExportedObject:v2 interruptionHandler:&unk_285CF0770 invalidationHandler:&unk_285CF0790];
    clientHelpers = v2->_clientHelpers;
    v2->_clientHelpers = v13;
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_249D21718;
  block[3] = &unk_278FB56E0;
  block[4] = self;
  if (qword_280D9DE38 != -1)
  {
    dispatch_once(&qword_280D9DE38, block);
  }

  v2 = qword_280D9DE40;

  return v2;
}

@end