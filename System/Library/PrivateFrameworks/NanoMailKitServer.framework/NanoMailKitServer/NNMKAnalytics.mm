@interface NNMKAnalytics
+ (id)sharedInstance;
- (id)stringForAction:(unint64_t)action;
- (id)stringForAttachmentType:(unint64_t)type;
- (id)stringForCompositionSource:(int64_t)source;
- (id)stringForDeviceMode:(unint64_t)mode;
- (id)stringForDeviceSource:(unint64_t)source;
- (id)stringForFetchType:(unint64_t)type;
- (id)stringForMailboxFilterType:(unint64_t)type;
- (id)stringForMailboxType:(unint64_t)type;
- (id)stringForMessageType:(unint64_t)type;
- (id)stringForSendingType:(unint64_t)type;
- (id)stringForSource:(unint64_t)source;
- (int64_t)_delayInMSFromDate:(id)date;
- (void)NNMKSendEventLazyWithKey:(id)key metadataBuilder:(id)builder;
- (void)reportAction:(unint64_t)action source:(unint64_t)source;
- (void)reportAttachmentDataReceivedWithType:(unint64_t)type sizeInBytes:(unint64_t)bytes mode:(unint64_t)mode;
- (void)reportAttachmentDisplayedWithType:(unint64_t)type actionable:(BOOL)actionable source:(unint64_t)source;
- (void)reportAttachmentDownloadFailedInMode:(unint64_t)mode;
- (void)reportAttachmentTappedWithType:(unint64_t)type actionable:(BOOL)actionable source:(unint64_t)source;
- (void)reportCannedReplyUsed:(id)used sendingType:(unint64_t)type;
- (void)reportCellRighSwipeActionChanged:(id)changed;
- (void)reportContentDisplayedForMessageWithId:(id)id hasMainAlternative:(BOOL)alternative hasTextAlternative:(BOOL)textAlternative;
- (void)reportContentDownloadFailedInMode:(unint64_t)mode;
- (void)reportContentDownloadedForMessageWithId:(id)id textSizeInBytes:(unint64_t)bytes htmlSizeInBytes:(unint64_t)inBytes startTime:(id)time;
- (void)reportContentSyncedForMessageWithId:(id)id textSizeInBytes:(unint64_t)bytes htmlSizeInBytes:(unint64_t)inBytes fullSyncVersion:(unint64_t)version dateSynced:(id)synced;
- (void)reportDisplayingMessageWithType:(unint64_t)type isNotification:(BOOL)notification;
- (void)reportFailedFetchWithType:(unint64_t)type inMode:(unint64_t)mode;
- (void)reportFetch:(unint64_t)fetch inMode:(unint64_t)mode accountType:(id)type;
- (void)reportFullSyncRequestedFromDevice:(unint64_t)device corruptionDetected:(BOOL)detected migrationRelated:(BOOL)related idsFailureRelated:(BOOL)failureRelated fullSyncVersionMatchRelated:(BOOL)matchRelated;
- (void)reportHaltSyncRequestedFromSource:(unint64_t)source;
- (void)reportMailboxSelectionChanged:(id)changed source:(unint64_t)source;
- (void)reportMessageDeletionReceivedForMessageWithId:(id)id fullSyncVersion:(unint64_t)version dateSynced:(id)synced;
- (void)reportMessageDeliveryDurationWithStartDate:(id)date inMode:(unint64_t)mode;
- (void)reportMessageDeliveryFailedInMode:(unint64_t)mode;
- (void)reportMessageReceivedWithId:(id)id willGenerateNotification:(BOOL)notification fullSyncVersion:(unint64_t)version dateSynced:(id)synced;
- (void)reportMessageSentFrom:(int64_t)from sendingType:(unint64_t)type attachmentCount:(unint64_t)count sizeInBytes:(unint64_t)bytes;
- (void)reportMessageUpdateReceivedForMessageWithId:(id)id fullSyncVersion:(unint64_t)version dateSynced:(id)synced;
- (void)reportMoreMessagesReceivedConversationSpecific:(BOOL)specific fullSyncVersion:(unint64_t)version dateSynced:(id)synced;
- (void)reportNotificationReceivedInMode:(unint64_t)mode isPCC:(BOOL)c accountType:(id)type;
- (void)reportOpenedMailboxWithFilter:(id)filter mailboxType:(unint64_t)type accountType:(id)accountType;
- (void)reportOriginalMessageContentSizeInBytes:(unint64_t)bytes source:(unint64_t)source;
- (void)reportReachedActionButtonsWithSource:(unint64_t)source;
- (void)reportRenderedNotificationUsingLocalContent:(BOOL)content mailboxSynced:(BOOL)synced messageSynced:(BOOL)messageSynced contentDownloaded:(BOOL)downloaded;
- (void)reportSubscribedToNotificationForAccountType:(id)type isPCC:(BOOL)c;
- (void)reportThreadViewedWithMessageCount:(int64_t)count;
@end

@implementation NNMKAnalytics

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[NNMKAnalytics sharedInstance];
  }

  v3 = _instance;

  return v3;
}

uint64_t __31__NNMKAnalytics_sharedInstance__block_invoke()
{
  _instance = objc_alloc_init(NNMKAnalytics);

  return MEMORY[0x2821F96F8]();
}

- (void)reportFetch:(unint64_t)fetch inMode:(unint64_t)mode accountType:(id)type
{
  typeCopy = type;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__NNMKAnalytics_reportFetch_inMode_accountType___block_invoke;
  v10[3] = &unk_2799358A0;
  fetchCopy = fetch;
  modeCopy = mode;
  v10[4] = self;
  v11 = typeCopy;
  v9 = typeCopy;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.fetch" metadataBuilder:v10];
}

id __48__NNMKAnalytics_reportFetch_inMode_accountType___block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"type";
  v2 = [*(a1 + 32) stringForFetchType:*(a1 + 48)];
  v10[0] = v2;
  v9[1] = @"mode";
  v3 = [*(a1 + 32) stringForDeviceMode:*(a1 + 56)];
  v4 = v3;
  v9[2] = @"accountType";
  v5 = *(a1 + 40);
  if (!v5)
  {
    v5 = @"unknown";
  }

  v10[1] = v3;
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)reportFailedFetchWithType:(unint64_t)type inMode:(unint64_t)mode
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__NNMKAnalytics_reportFailedFetchWithType_inMode___block_invoke;
  v4[3] = &unk_2799358C8;
  v4[4] = self;
  v4[5] = type;
  v4[6] = mode;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.fetch.failure" metadataBuilder:v4];
}

id __50__NNMKAnalytics_reportFailedFetchWithType_inMode___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"type";
  v2 = [*(a1 + 32) stringForFetchType:*(a1 + 40)];
  v7[1] = @"mode";
  v8[0] = v2;
  v3 = [*(a1 + 32) stringForDeviceMode:*(a1 + 48)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)reportMessageReceivedWithId:(id)id willGenerateNotification:(BOOL)notification fullSyncVersion:(unint64_t)version dateSynced:(id)synced
{
  idCopy = id;
  v11 = [(NNMKAnalytics *)self _delayInMSFromDate:synced];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __97__NNMKAnalytics_reportMessageReceivedWithId_willGenerateNotification_fullSyncVersion_dateSynced___block_invoke;
  v13[3] = &unk_2799358F0;
  v14 = idCopy;
  v15 = v11;
  notificationCopy = notification;
  versionCopy = version;
  v12 = idCopy;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.messageReceived" metadataBuilder:v13];
}

id __97__NNMKAnalytics_reportMessageReceivedWithId_willGenerateNotification_fullSyncVersion_dateSynced___block_invoke(uint64_t a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"delay";
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 40)];
  v3 = *(a1 + 32);
  v10[0] = v2;
  v10[1] = v3;
  v9[1] = @"messageId";
  v9[2] = @"willGenerateNotification";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v10[2] = v4;
  v9[3] = @"fullSyncVersion";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)reportMoreMessagesReceivedConversationSpecific:(BOOL)specific fullSyncVersion:(unint64_t)version dateSynced:(id)synced
{
  v8 = [(NNMKAnalytics *)self _delayInMSFromDate:synced];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__NNMKAnalytics_reportMoreMessagesReceivedConversationSpecific_fullSyncVersion_dateSynced___block_invoke;
  v9[3] = &__block_descriptor_49_e19___NSDictionary_8__0l;
  specificCopy = specific;
  v9[4] = v8;
  v9[5] = version;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.moreMessagesReceived" metadataBuilder:v9];
}

id __91__NNMKAnalytics_reportMoreMessagesReceivedConversationSpecific_fullSyncVersion_dateSynced___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"forConversation";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v9[0] = v2;
  v8[1] = @"delay";
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 32)];
  v9[1] = v3;
  v8[2] = @"fullSyncVersion";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)reportMessageUpdateReceivedForMessageWithId:(id)id fullSyncVersion:(unint64_t)version dateSynced:(id)synced
{
  idCopy = id;
  v9 = [(NNMKAnalytics *)self _delayInMSFromDate:synced];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__NNMKAnalytics_reportMessageUpdateReceivedForMessageWithId_fullSyncVersion_dateSynced___block_invoke;
  v11[3] = &unk_2799358C8;
  v12 = idCopy;
  v13 = v9;
  versionCopy = version;
  v10 = idCopy;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.messageUpdated" metadataBuilder:v11];
}

id __88__NNMKAnalytics_reportMessageUpdateReceivedForMessageWithId_fullSyncVersion_dateSynced___block_invoke(void *a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"delay";
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:a1[5]];
  v3 = a1[4];
  v9[0] = v2;
  v9[1] = v3;
  v8[1] = @"messageId";
  v8[2] = @"fullSyncVersion";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)reportMessageDeletionReceivedForMessageWithId:(id)id fullSyncVersion:(unint64_t)version dateSynced:(id)synced
{
  idCopy = id;
  v9 = [(NNMKAnalytics *)self _delayInMSFromDate:synced];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__NNMKAnalytics_reportMessageDeletionReceivedForMessageWithId_fullSyncVersion_dateSynced___block_invoke;
  v11[3] = &unk_2799358C8;
  v12 = idCopy;
  v13 = v9;
  versionCopy = version;
  v10 = idCopy;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.messageDeleted" metadataBuilder:v11];
}

id __90__NNMKAnalytics_reportMessageDeletionReceivedForMessageWithId_fullSyncVersion_dateSynced___block_invoke(void *a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"delay";
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:a1[5]];
  v3 = a1[4];
  v9[0] = v2;
  v9[1] = v3;
  v8[1] = @"messageId";
  v8[2] = @"fullSyncVersion";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)reportOpenedMailboxWithFilter:(id)filter mailboxType:(unint64_t)type accountType:(id)accountType
{
  filterCopy = filter;
  accountTypeCopy = accountType;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__NNMKAnalytics_reportOpenedMailboxWithFilter_mailboxType_accountType___block_invoke;
  v12[3] = &unk_279935938;
  v13 = filterCopy;
  selfCopy = self;
  v15 = accountTypeCopy;
  typeCopy = type;
  v10 = accountTypeCopy;
  v11 = filterCopy;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.Mailbox.Displayed" metadataBuilder:v12];
}

id __71__NNMKAnalytics_reportOpenedMailboxWithFilter_mailboxType_accountType___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  v3 = MEMORY[0x277CCABB0];
  v4 = [*(a1 + 32) mailboxIds];
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
  [v2 setObject:v5 forKeyedSubscript:@"size"];

  v6 = [*(a1 + 32) mailboxIds];
  if ([v6 count] > 1)
  {
    [*(a1 + 40) stringForMailboxFilterType:{objc_msgSend(*(a1 + 32), "mailboxType")}];
  }

  else
  {
    [*(a1 + 40) stringForMailboxType:*(a1 + 56)];
  }
  v7 = ;
  [v2 setObject:v7 forKeyedSubscript:@"type"];

  if ([*(a1 + 48) length])
  {
    if (*(a1 + 48))
    {
      v8 = *(a1 + 48);
    }

    else
    {
      v8 = @"unknown";
    }

    [v2 setObject:v8 forKeyedSubscript:@"accountType"];
  }

  return v2;
}

- (void)reportThreadViewedWithMessageCount:(int64_t)count
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__NNMKAnalytics_reportThreadViewedWithMessageCount___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = count;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.Thread.Displayed" metadataBuilder:v3];
}

id __52__NNMKAnalytics_reportThreadViewedWithMessageCount___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"size";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)reportOriginalMessageContentSizeInBytes:(unint64_t)bytes source:(unint64_t)source
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__NNMKAnalytics_reportOriginalMessageContentSizeInBytes_source___block_invoke;
  v4[3] = &unk_2799358C8;
  v4[4] = self;
  v4[5] = bytes;
  v4[6] = source;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.addedContent" metadataBuilder:v4];
}

id __64__NNMKAnalytics_reportOriginalMessageContentSizeInBytes_source___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"size";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40) / 1000.0];
  v7[1] = @"source";
  v8[0] = v2;
  v3 = [*(a1 + 32) stringForDeviceSource:*(a1 + 48)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)reportContentSyncedForMessageWithId:(id)id textSizeInBytes:(unint64_t)bytes htmlSizeInBytes:(unint64_t)inBytes fullSyncVersion:(unint64_t)version dateSynced:(id)synced
{
  idCopy = id;
  v13 = [(NNMKAnalytics *)self _delayInMSFromDate:synced];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __112__NNMKAnalytics_reportContentSyncedForMessageWithId_textSizeInBytes_htmlSizeInBytes_fullSyncVersion_dateSynced___block_invoke;
  v15[3] = &unk_279935980;
  inBytesCopy = inBytes;
  v19 = v13;
  v16 = idCopy;
  bytesCopy = bytes;
  versionCopy = version;
  v14 = idCopy;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.contentReceived" metadataBuilder:v15];
}

id __112__NNMKAnalytics_reportContentSyncedForMessageWithId_textSizeInBytes_htmlSizeInBytes_fullSyncVersion_dateSynced___block_invoke(void *a1)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"textSize";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:a1[5] / 1000.0];
  v11[0] = v2;
  v10[1] = @"htmlSize";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:a1[6] / 1000.0];
  v11[1] = v3;
  v10[2] = @"delay";
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a1[7]];
  v5 = a1[4];
  v11[2] = v4;
  v11[3] = v5;
  v10[3] = @"messageId";
  v10[4] = @"fullSyncVersion";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[8]];
  v11[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)reportContentDownloadedForMessageWithId:(id)id textSizeInBytes:(unint64_t)bytes htmlSizeInBytes:(unint64_t)inBytes startTime:(id)time
{
  idCopy = id;
  v11 = [(NNMKAnalytics *)self _delayInMSFromDate:time];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __99__NNMKAnalytics_reportContentDownloadedForMessageWithId_textSizeInBytes_htmlSizeInBytes_startTime___block_invoke;
  v13[3] = &unk_2799359A8;
  inBytesCopy = inBytes;
  v17 = v11;
  v14 = idCopy;
  bytesCopy = bytes;
  v12 = idCopy;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.contentDownloaded" metadataBuilder:v13];
}

id __99__NNMKAnalytics_reportContentDownloadedForMessageWithId_textSizeInBytes_htmlSizeInBytes_startTime___block_invoke(void *a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"textSize";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:a1[5] / 1000.0];
  v10[0] = v2;
  v9[1] = @"htmlSize";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:a1[6] / 1000.0];
  v10[1] = v3;
  v9[2] = @"duration";
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a1[7]];
  v9[3] = @"messageId";
  v5 = a1[4];
  v10[2] = v4;
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)reportContentDownloadFailedInMode:(unint64_t)mode
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__NNMKAnalytics_reportContentDownloadFailedInMode___block_invoke;
  v3[3] = &unk_2799359D0;
  v3[4] = self;
  v3[5] = mode;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.contentDownload.failure" metadataBuilder:v3];
}

id __51__NNMKAnalytics_reportContentDownloadFailedInMode___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"mode";
  v1 = [*(a1 + 32) stringForDeviceMode:*(a1 + 40)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)reportAttachmentDataReceivedWithType:(unint64_t)type sizeInBytes:(unint64_t)bytes mode:(unint64_t)mode
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__NNMKAnalytics_reportAttachmentDataReceivedWithType_sizeInBytes_mode___block_invoke;
  v5[3] = &unk_2799359A8;
  v5[4] = self;
  v5[5] = bytes;
  v5[6] = type;
  v5[7] = mode;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.attachmentReceived" metadataBuilder:v5];
}

id __71__NNMKAnalytics_reportAttachmentDataReceivedWithType_sizeInBytes_mode___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40) / 1000.0];
  [v2 setObject:v3 forKeyedSubscript:@"size"];

  v4 = [*(a1 + 32) stringForAttachmentType:*(a1 + 48)];
  [v2 setObject:v4 forKeyedSubscript:@"type"];

  v5 = [*(a1 + 32) stringForDeviceMode:*(a1 + 56)];
  [v2 setObject:v5 forKeyedSubscript:@"mode"];

  return v2;
}

- (void)reportAttachmentDisplayedWithType:(unint64_t)type actionable:(BOOL)actionable source:(unint64_t)source
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__NNMKAnalytics_reportAttachmentDisplayedWithType_actionable_source___block_invoke;
  v5[3] = &unk_2799358F0;
  v5[4] = self;
  v5[5] = type;
  v5[6] = source;
  actionableCopy = actionable;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.attachmentDisplayed" metadataBuilder:v5];
}

id __69__NNMKAnalytics_reportAttachmentDisplayedWithType_actionable_source___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  v3 = [*(a1 + 32) stringForAttachmentType:*(a1 + 40)];
  [v2 setObject:v3 forKeyedSubscript:@"type"];

  v4 = [*(a1 + 32) stringForSource:*(a1 + 48)];
  [v2 setObject:v4 forKeyedSubscript:@"source"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  [v2 setObject:v5 forKeyedSubscript:@"actionable"];

  return v2;
}

- (void)reportAttachmentTappedWithType:(unint64_t)type actionable:(BOOL)actionable source:(unint64_t)source
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__NNMKAnalytics_reportAttachmentTappedWithType_actionable_source___block_invoke;
  v5[3] = &unk_2799358F0;
  v5[4] = self;
  v5[5] = type;
  v5[6] = source;
  actionableCopy = actionable;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.attachmentTapped" metadataBuilder:v5];
}

id __66__NNMKAnalytics_reportAttachmentTappedWithType_actionable_source___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  v3 = [*(a1 + 32) stringForAttachmentType:*(a1 + 40)];
  [v2 setObject:v3 forKeyedSubscript:@"type"];

  v4 = [*(a1 + 32) stringForSource:*(a1 + 48)];
  [v2 setObject:v4 forKeyedSubscript:@"source"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  [v2 setObject:v5 forKeyedSubscript:@"actionable"];

  return v2;
}

- (void)reportAttachmentDownloadFailedInMode:(unint64_t)mode
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__NNMKAnalytics_reportAttachmentDownloadFailedInMode___block_invoke;
  v3[3] = &unk_2799359D0;
  v3[4] = self;
  v3[5] = mode;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.attachmentDownload.failure" metadataBuilder:v3];
}

id __54__NNMKAnalytics_reportAttachmentDownloadFailedInMode___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"mode";
  v1 = [*(a1 + 32) stringForDeviceMode:*(a1 + 40)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)reportReachedActionButtonsWithSource:(unint64_t)source
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__NNMKAnalytics_reportReachedActionButtonsWithSource___block_invoke;
  v3[3] = &unk_2799359D0;
  v3[4] = self;
  v3[5] = source;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.action.reached" metadataBuilder:v3];
}

id __54__NNMKAnalytics_reportReachedActionButtonsWithSource___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"source";
  v1 = [*(a1 + 32) stringForSource:*(a1 + 40)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)reportNotificationReceivedInMode:(unint64_t)mode isPCC:(BOOL)c accountType:(id)type
{
  typeCopy = type;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__NNMKAnalytics_reportNotificationReceivedInMode_isPCC_accountType___block_invoke;
  v10[3] = &unk_279935A18;
  v11 = typeCopy;
  modeCopy = mode;
  cCopy = c;
  v10[4] = self;
  v9 = typeCopy;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.notification.received" metadataBuilder:v10];
}

id __68__NNMKAnalytics_reportNotificationReceivedInMode_isPCC_accountType___block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"mode";
  v2 = [*(a1 + 32) stringForDeviceMode:*(a1 + 48)];
  v10[0] = v2;
  v9[1] = @"pccNotification";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v4 = v3;
  v9[2] = @"accountType";
  v5 = *(a1 + 40);
  if (!v5)
  {
    v5 = @"unknown";
  }

  v10[1] = v3;
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)reportRenderedNotificationUsingLocalContent:(BOOL)content mailboxSynced:(BOOL)synced messageSynced:(BOOL)messageSynced contentDownloaded:(BOOL)downloaded
{
  v6 = @"forwardedContentNotDownloadedByCompanion";
  if (downloaded)
  {
    v6 = @"forwardedContentNotSynced";
  }

  if (!messageSynced)
  {
    v6 = @"forwardedMessageAndContent";
  }

  if (!synced)
  {
    v6 = @"mailboxNotSynced";
  }

  if (content)
  {
    v6 = @"realContent";
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __107__NNMKAnalytics_reportRenderedNotificationUsingLocalContent_mailboxSynced_messageSynced_contentDownloaded___block_invoke;
  v7[3] = &unk_279935A40;
  v8 = v6;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.notificationRendered" metadataBuilder:v7];
}

id __107__NNMKAnalytics_reportRenderedNotificationUsingLocalContent_mailboxSynced_messageSynced_contentDownloaded___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"type";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)reportSubscribedToNotificationForAccountType:(id)type isPCC:(BOOL)c
{
  typeCopy = type;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__NNMKAnalytics_reportSubscribedToNotificationForAccountType_isPCC___block_invoke;
  v8[3] = &unk_279935A68;
  cCopy = c;
  v9 = typeCopy;
  v7 = typeCopy;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.notification.subscribed" metadataBuilder:v8];
}

id __68__NNMKAnalytics_reportSubscribedToNotificationForAccountType_isPCC___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"pccNotification";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v7[1] = @"accountType";
  v8[0] = v2;
  v3 = *(a1 + 32);
  if (!v3)
  {
    v3 = @"unknown";
  }

  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)reportFullSyncRequestedFromDevice:(unint64_t)device corruptionDetected:(BOOL)detected migrationRelated:(BOOL)related idsFailureRelated:(BOOL)failureRelated fullSyncVersionMatchRelated:(BOOL)matchRelated
{
  v7 = @"none";
  if (matchRelated)
  {
    v7 = @"versionMatch";
  }

  if (failureRelated)
  {
    v7 = @"IDSFailure";
  }

  if (related)
  {
    v7 = @"migration";
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __133__NNMKAnalytics_reportFullSyncRequestedFromDevice_corruptionDetected_migrationRelated_idsFailureRelated_fullSyncVersionMatchRelated___block_invoke;
  v8[3] = &unk_279935A90;
  if (detected)
  {
    v7 = @"corruption";
  }

  v9 = v7;
  selfCopy = self;
  deviceCopy = device;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.fullSync" metadataBuilder:v8];
}

id __133__NNMKAnalytics_reportFullSyncRequestedFromDevice_corruptionDetected_migrationRelated_idsFailureRelated_fullSyncVersionMatchRelated___block_invoke(void *a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v1 = a1[5];
  v7[0] = @"reason";
  v7[1] = @"source";
  v8[0] = v2;
  v3 = [v1 stringForDeviceSource:a1[6]];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)reportHaltSyncRequestedFromSource:(unint64_t)source
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__NNMKAnalytics_reportHaltSyncRequestedFromSource___block_invoke;
  v3[3] = &unk_2799359D0;
  v3[4] = self;
  v3[5] = source;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.haltSyncRequested" metadataBuilder:v3];
}

id __51__NNMKAnalytics_reportHaltSyncRequestedFromSource___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"source";
  v1 = [*(a1 + 32) stringForDeviceSource:*(a1 + 40)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)reportContentDisplayedForMessageWithId:(id)id hasMainAlternative:(BOOL)alternative hasTextAlternative:(BOOL)textAlternative
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __94__NNMKAnalytics_reportContentDisplayedForMessageWithId_hasMainAlternative_hasTextAlternative___block_invoke;
  v5[3] = &__block_descriptor_34_e19___NSDictionary_8__0l;
  alternativeCopy = alternative;
  textAlternativeCopy = textAlternative;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.Content.Text.Rendered" metadataBuilder:v5];
}

id __94__NNMKAnalytics_reportContentDisplayedForMessageWithId_hasMainAlternative_hasTextAlternative___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v1 = @"main";
  }

  else if (*(a1 + 33))
  {
    v1 = @"text";
  }

  else
  {
    v1 = @"none";
  }

  v5 = @"alternativeType";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)reportDisplayingMessageWithType:(unint64_t)type isNotification:(BOOL)notification
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__NNMKAnalytics_reportDisplayingMessageWithType_isNotification___block_invoke;
  v4[3] = &unk_279935AD8;
  v4[4] = self;
  v4[5] = type;
  notificationCopy = notification;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.Content.Displayed" metadataBuilder:v4];
}

id __64__NNMKAnalytics_reportDisplayingMessageWithType_isNotification___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"type";
  v2 = [*(a1 + 32) stringForMessageType:*(a1 + 40)];
  v7[1] = @"source";
  v8[0] = v2;
  v3 = [*(a1 + 32) stringForSource:*(a1 + 48)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)reportMailboxSelectionChanged:(id)changed source:(unint64_t)source
{
  changedCopy = changed;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__NNMKAnalytics_reportMailboxSelectionChanged_source___block_invoke;
  v8[3] = &unk_279935A90;
  v9 = changedCopy;
  sourceCopy = source;
  v8[4] = self;
  v7 = changedCopy;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.mailboxSelectionChanged" metadataBuilder:v8];
}

id __54__NNMKAnalytics_reportMailboxSelectionChanged_source___block_invoke(uint64_t a1)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB38]);
  v33[0] = @"source";
  v3 = [*(a1 + 32) stringForDeviceSource:*(a1 + 48)];
  v33[1] = @"mailboxCount";
  v34[0] = v3;
  v4 = MEMORY[0x277CCABB0];
  v5 = [*(a1 + 40) allMailboxesSyncEnabled];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  v34[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v8 = [v2 initWithDictionary:v7];

  v9 = [*(a1 + 40) aggregatedMailboxes];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isMailboxFilterEnabled:", 1)}];
    [v8 setObject:v11 forKeyedSubscript:@"allInboxes"];

    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isMailboxFilterEnabled:", 2)}];
    [v8 setObject:v12 forKeyedSubscript:@"vip"];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isMailboxFilterEnabled:", 4)}];
    [v8 setObject:v13 forKeyedSubscript:@"flagged"];

    v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isMailboxFilterEnabled:", 8)}];
    [v8 setObject:v14 forKeyedSubscript:@"unread"];

    v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isMailboxFilterEnabled:", 16)}];
    [v8 setObject:v15 forKeyedSubscript:@"toOrCC"];

    v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isMailboxFilterEnabled:", 32)}];
    [v8 setObject:v16 forKeyedSubscript:@"importantThreads"];

    v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isMailboxFilterEnabled:", 64)}];
    [v8 setObject:v17 forKeyedSubscript:@"today"];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = [*(a1 + 40) mailboxesWithAllMessagesSyncEnabled];
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(a1 + 32) stringForMailboxType:{objc_msgSend(*(*(&v28 + 1) + 8 * i), "type")}];
          v24 = [v8 objectForKeyedSubscript:v23];
          v25 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v24, "intValue") - 1}];
          [v8 setObject:v25 forKeyedSubscript:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v20);
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)reportAction:(unint64_t)action source:(unint64_t)source
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__NNMKAnalytics_reportAction_source___block_invoke;
  v4[3] = &unk_2799358C8;
  v4[4] = self;
  v4[5] = action;
  v4[6] = source;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.action" metadataBuilder:v4];
}

id __37__NNMKAnalytics_reportAction_source___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"type";
  v2 = [*(a1 + 32) stringForAction:*(a1 + 40)];
  v7[1] = @"source";
  v8[0] = v2;
  v3 = [*(a1 + 32) stringForSource:*(a1 + 48)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)reportCellRighSwipeActionChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__NNMKAnalytics_reportCellRighSwipeActionChanged___block_invoke;
  v6[3] = &unk_279935A40;
  v7 = changedCopy;
  v5 = changedCopy;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.cellSwipe.changed" metadataBuilder:v6];
}

id __50__NNMKAnalytics_reportCellRighSwipeActionChanged___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5[0] = @"type";
  v5[1] = @"side";
  v6[0] = v1;
  v6[1] = @"right";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)reportMessageSentFrom:(int64_t)from sendingType:(unint64_t)type attachmentCount:(unint64_t)count sizeInBytes:(unint64_t)bytes
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__NNMKAnalytics_reportMessageSentFrom_sendingType_attachmentCount_sizeInBytes___block_invoke;
  v6[3] = &unk_279935980;
  v6[4] = self;
  v6[5] = type;
  v6[6] = bytes;
  v6[7] = from;
  v6[8] = count;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.composedMessage" metadataBuilder:v6];
}

id __79__NNMKAnalytics_reportMessageSentFrom_sendingType_attachmentCount_sizeInBytes___block_invoke(uint64_t a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"type";
  v2 = [*(a1 + 32) stringForSendingType:*(a1 + 40)];
  v10[0] = v2;
  v9[1] = @"size";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48) / 1000.0];
  v10[1] = v3;
  v9[2] = @"source";
  v4 = [*(a1 + 32) stringForCompositionSource:*(a1 + 56)];
  v10[2] = v4;
  v9[3] = @"includesAttachments";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 64) != 0];
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)reportMessageDeliveryFailedInMode:(unint64_t)mode
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__NNMKAnalytics_reportMessageDeliveryFailedInMode___block_invoke;
  v3[3] = &unk_2799359D0;
  v3[4] = self;
  v3[5] = mode;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.composedMessage.failure" metadataBuilder:v3];
}

id __51__NNMKAnalytics_reportMessageDeliveryFailedInMode___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"mode";
  v1 = [*(a1 + 32) stringForDeviceMode:*(a1 + 40)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)reportMessageDeliveryDurationWithStartDate:(id)date inMode:(unint64_t)mode
{
  v6 = [(NNMKAnalytics *)self _delayInMSFromDate:date];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__NNMKAnalytics_reportMessageDeliveryDurationWithStartDate_inMode___block_invoke;
  v7[3] = &unk_2799358C8;
  v7[4] = self;
  v7[5] = v6;
  v7[6] = mode;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.messageDelivery.duration" metadataBuilder:v7];
}

id __67__NNMKAnalytics_reportMessageDeliveryDurationWithStartDate_inMode___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"duration";
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 40)];
  v7[1] = @"mode";
  v8[0] = v2;
  v3 = [*(a1 + 32) stringForDeviceMode:*(a1 + 48)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)reportCannedReplyUsed:(id)used sendingType:(unint64_t)type
{
  usedCopy = used;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__NNMKAnalytics_reportCannedReplyUsed_sendingType___block_invoke;
  v8[3] = &unk_279935A90;
  v9 = usedCopy;
  typeCopy = type;
  v8[4] = self;
  v7 = usedCopy;
  [(NNMKAnalytics *)self NNMKSendEventLazyWithKey:@"com.apple.NanoMail.composedMessage.cannedReply" metadataBuilder:v8];
}

id __51__NNMKAnalytics_reportCannedReplyUsed_sendingType___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"type";
  v2 = [*(a1 + 32) stringForSendingType:*(a1 + 48)];
  v6[1] = @"value";
  v7[0] = v2;
  v7[1] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)NNMKSendEventLazyWithKey:(id)key metadataBuilder:(id)builder
{
  builderCopy = builder;
  v4 = builderCopy;
  AnalyticsSendEventLazy();
}

- (int64_t)_delayInMSFromDate:(id)date
{
  [date timeIntervalSinceNow];
  v4 = v3 * -1000.0;
  if (v4 <= 0xEA60)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (id)stringForAction:(unint64_t)action
{
  if (action - 1 > 0xA)
  {
    return @"read";
  }

  else
  {
    return off_279935B20[action - 1];
  }
}

- (id)stringForDeviceSource:(unint64_t)source
{
  if (source)
  {
    return @"watch";
  }

  else
  {
    return @"phone";
  }
}

- (id)stringForSource:(unint64_t)source
{
  v3 = @"messageView";
  if (source == 1)
  {
    v3 = @"notification";
  }

  if (source == 2)
  {
    return @"swipeAction";
  }

  else
  {
    return v3;
  }
}

- (id)stringForMailboxType:(unint64_t)type
{
  if (type - 1 > 8)
  {
    return @"none";
  }

  else
  {
    return off_279935B78[type - 1];
  }
}

- (id)stringForMailboxFilterType:(unint64_t)type
{
  v3 = @"unknown";
  v4 = @"importantThreads";
  v5 = @"today";
  if (type != 64)
  {
    v5 = @"unknown";
  }

  if (type != 32)
  {
    v4 = v5;
  }

  v6 = @"toOrCC";
  if (type != 16)
  {
    v6 = @"unknown";
  }

  if (type == 8)
  {
    v6 = @"unread";
  }

  if (type <= 31)
  {
    v4 = v6;
  }

  if (type == 4)
  {
    v3 = @"flagged";
  }

  if (type == 2)
  {
    v3 = @"vip";
  }

  if (type == 1)
  {
    v3 = @"allInboxes";
  }

  if (type <= 7)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

- (id)stringForSendingType:(unint64_t)type
{
  v3 = @"reply";
  if (type == 1)
  {
    v3 = @"compose";
  }

  if (type == 4)
  {
    return @"forward";
  }

  else
  {
    return v3;
  }
}

- (id)stringForDeviceMode:(unint64_t)mode
{
  v3 = @"sync";
  if (mode == 1)
  {
    v3 = @"standalone";
  }

  if (mode == 2)
  {
    return @"cloud";
  }

  else
  {
    return v3;
  }
}

- (id)stringForFetchType:(unint64_t)type
{
  v3 = @"manual";
  if (type == 1)
  {
    v3 = @"resume";
  }

  if (type == 2)
  {
    return @"older";
  }

  else
  {
    return v3;
  }
}

- (id)stringForMessageType:(unint64_t)type
{
  if (type)
  {
    return @"html";
  }

  else
  {
    return @"text";
  }
}

- (id)stringForAttachmentType:(unint64_t)type
{
  if (type - 1 > 0x16)
  {
    return @"unknown";
  }

  else
  {
    return off_279935BC0[type - 1];
  }
}

- (id)stringForCompositionSource:(int64_t)source
{
  if ((source - 1) > 5)
  {
    return @"nanoMail";
  }

  else
  {
    return off_279935C78[source - 1];
  }
}

@end