@interface MDMEvents
+ (id)sharedInstance;
- (MDMEvents)init;
- (void)recordData:(id)a3 forEvent:(id)a4;
- (void)recordDateForEvent:(id)a3;
@end

@implementation MDMEvents

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__MDMEvents_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance__sharedInstance_1;

  return v2;
}

void __27__MDMEvents_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance__sharedInstance_1;
  sharedInstance__sharedInstance_1 = v1;

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = MDMEventsFilePath();
  v5 = [v3 fileExistsAtPath:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277CBEAC0] dictionary];
    v7 = MDMEventsFilePath();
    [v6 DMCWriteToBinaryFile:v7];

    v8 = MDMEventsFilePath();
    DMCSetSkipBackupAttributeToItemAtPath();
  }
}

- (MDMEvents)init
{
  v6.receiver = self;
  v6.super_class = MDMEvents;
  v2 = [(MDMEvents *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("MDMEventQueue", 0);
    writerQueue = v2->_writerQueue;
    v2->_writerQueue = v3;
  }

  return v2;
}

- (void)recordDateForEvent:(id)a3
{
  v4 = a3;
  writerQueue = self->_writerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MDMEvents_recordDateForEvent___block_invoke;
  block[3] = &unk_27982BA78;
  v8 = v4;
  v6 = v4;
  dispatch_async(writerQueue, block);
}

void __32__MDMEvents_recordDateForEvent___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB38];
  v3 = MDMEventsFilePath();
  v7 = [v2 dictionaryWithContentsOfFile:v3];

  v4 = [MEMORY[0x277CBEAA8] date];
  [v7 setObject:v4 forKeyedSubscript:*(a1 + 32)];

  v5 = MDMEventsFilePath();
  [v7 DMCWriteToBinaryFile:v5];

  v6 = MDMEventsFilePath();
  DMCSetSkipBackupAttributeToItemAtPath();
}

- (void)recordData:(id)a3 forEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  writerQueue = self->_writerQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__MDMEvents_recordData_forEvent___block_invoke;
  v11[3] = &unk_27982BAC8;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(writerQueue, v11);
}

void __33__MDMEvents_recordData_forEvent___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB38];
  v3 = MDMEventsFilePath();
  v6 = [v2 dictionaryWithContentsOfFile:v3];

  [v6 setObject:*(a1 + 40) forKeyedSubscript:*(a1 + 32)];
  v4 = MDMEventsFilePath();
  [v6 DMCWriteToBinaryFile:v4];

  v5 = MDMEventsFilePath();
  DMCSetSkipBackupAttributeToItemAtPath();
}

@end