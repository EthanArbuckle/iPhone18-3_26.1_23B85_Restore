@interface EDConversationDailyiCloudExporter
+ (OS_os_log)log;
- (EDConversationDailyiCloudExporter)initWithDelegate:(id)a3 conversationManager:(id)a4;
- (void)run;
@end

@implementation EDConversationDailyiCloudExporter

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__EDConversationDailyiCloudExporter_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_28 != -1)
  {
    dispatch_once(&log_onceToken_28, block);
  }

  v2 = log_log_28;

  return v2;
}

void __40__EDConversationDailyiCloudExporter_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_28;
  log_log_28 = v1;
}

- (EDConversationDailyiCloudExporter)initWithDelegate:(id)a3 conversationManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EDConversationDailyiCloudExporter;
  v9 = [(EDConversationDailyiCloudExporter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_delegate, a3);
    objc_storeStrong(&v10->_conversationManager, a4);
  }

  return v10;
}

- (void)run
{
  v8 = [(EDConversationDailyiCloudExporter *)self delegate];
  v3 = [v8 previousSyncAnchorForDailyExport];

  v9 = [(EDConversationDailyiCloudExporter *)self delegate];
  v4 = [v9 currentSyncAnchorForDailyExport];

  v5 = [(EDConversationDailyiCloudExporter *)self delegate];
  v10 = [v5 flaggedConversationsChangedBetweenStartAnchor:v3 endAnchor:v4];

  if ([v10 count])
  {
    v6 = [(EDConversationDailyiCloudExporter *)self conversationManager];
    [v6 performDailyExportForChangedConversations:v10];
  }

  v7 = [(EDConversationDailyiCloudExporter *)self delegate];
  [v7 setNewPreviousSyncAnchorForDailyExport:v4];
}

@end