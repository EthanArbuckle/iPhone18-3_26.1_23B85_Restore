@interface EDConversationDailyiCloudExporter
+ (OS_os_log)log;
- (EDConversationDailyiCloudExporter)initWithDelegate:(id)delegate conversationManager:(id)manager;
- (void)run;
@end

@implementation EDConversationDailyiCloudExporter

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__EDConversationDailyiCloudExporter_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (EDConversationDailyiCloudExporter)initWithDelegate:(id)delegate conversationManager:(id)manager
{
  delegateCopy = delegate;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = EDConversationDailyiCloudExporter;
  v9 = [(EDConversationDailyiCloudExporter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_delegate, delegate);
    objc_storeStrong(&v10->_conversationManager, manager);
  }

  return v10;
}

- (void)run
{
  delegate = [(EDConversationDailyiCloudExporter *)self delegate];
  previousSyncAnchorForDailyExport = [delegate previousSyncAnchorForDailyExport];

  delegate2 = [(EDConversationDailyiCloudExporter *)self delegate];
  currentSyncAnchorForDailyExport = [delegate2 currentSyncAnchorForDailyExport];

  delegate3 = [(EDConversationDailyiCloudExporter *)self delegate];
  v10 = [delegate3 flaggedConversationsChangedBetweenStartAnchor:previousSyncAnchorForDailyExport endAnchor:currentSyncAnchorForDailyExport];

  if ([v10 count])
  {
    conversationManager = [(EDConversationDailyiCloudExporter *)self conversationManager];
    [conversationManager performDailyExportForChangedConversations:v10];
  }

  delegate4 = [(EDConversationDailyiCloudExporter *)self delegate];
  [delegate4 setNewPreviousSyncAnchorForDailyExport:currentSyncAnchorForDailyExport];
}

@end