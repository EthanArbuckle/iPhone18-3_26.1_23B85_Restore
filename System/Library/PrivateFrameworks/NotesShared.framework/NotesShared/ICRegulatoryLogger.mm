@interface ICRegulatoryLogger
- (ICRegulatoryLogger)init;
- (void)dealloc;
- (void)didReadAttachment:(id)attachment;
@end

@implementation ICRegulatoryLogger

- (ICRegulatoryLogger)init
{
  v7.receiver = self;
  v7.super_class = ICRegulatoryLogger;
  v2 = [(ICRegulatoryLogger *)&v7 init];
  if (v2)
  {
    [(ICRegulatoryLogger *)v2 setGreenTeaLogger:ct_green_tea_logger_create_delayInitStub(v3)];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_didReadAttachment_ name:@"ICRegulatoryLoggerAttachmentAddedNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_didReadAttachment_ name:@"ICRegulatoryLoggerAttachmentPlayedNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICRegulatoryLogger;
  [(ICRegulatoryLogger *)&v4 dealloc];
}

- (void)didReadAttachment:(id)attachment
{
  attachmentCopy = attachment;
  objc_opt_class();
  userInfo = [attachmentCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:@"ICRegulatoryLoggerAttachmentKey"];
  v7 = ICDynamicCast();

  managedObjectContext = [v7 managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__ICRegulatoryLogger_didReadAttachment___block_invoke;
  v10[3] = &unk_278194AD8;
  v11 = v7;
  selfCopy = self;
  v9 = v7;
  [managedObjectContext performBlock:v10];
}

void __40__ICRegulatoryLogger_didReadAttachment___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) attachmentType] == 4)
  {
    [*(a1 + 40) greenTeaLogger];
    v3 = getCTGreenTeaOsLogHandle_delayInitStub(v2);
    v4 = v3;
    if (!v3 || !os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    v10 = 0;
    v5 = "Reading audio data";
    v6 = &v10;
    goto LABEL_9;
  }

  if ([*(a1 + 32) attachmentType] != 5)
  {
    return;
  }

  [*(a1 + 40) greenTeaLogger];
  v8 = getCTGreenTeaOsLogHandle_delayInitStub(v7);
  v4 = v8;
  if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 0;
    v5 = "Reading video data";
    v6 = &v9;
LABEL_9:
    _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
  }

LABEL_10:
}

@end