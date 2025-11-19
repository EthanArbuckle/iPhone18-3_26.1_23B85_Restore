@interface CSVTUITrainingSelfLogger
+ (id)sharedLogger;
@end

@implementation CSVTUITrainingSelfLogger

void __125__CSVTUITrainingSelfLogger_logSiriSetupEnrollmentSessionSummaryWithSiriSetupID_lastOpenedPage_completedPage_pageAttemptsMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69CF550];
  v6 = a3;
  v7 = a2;
  v10 = objc_alloc_init(v5);
  v8 = [v7 unsignedIntValue];

  [v10 setPageNumber:v8];
  v9 = [v6 unsignedIntValue];

  [v10 setNumAttempts:v9];
  [*(a1 + 32) addObject:v10];
}

+ (id)sharedLogger
{
  if (sharedLogger_onceToken != -1)
  {
    dispatch_once(&sharedLogger_onceToken, &__block_literal_global_1577);
  }

  v3 = sharedLogger_sharedVTUITrainingSelfLogger;

  return v3;
}

uint64_t __40__CSVTUITrainingSelfLogger_sharedLogger__block_invoke()
{
  sharedLogger_sharedVTUITrainingSelfLogger = objc_alloc_init(CSVTUITrainingSelfLogger);

  return MEMORY[0x1EEE66BB8]();
}

@end