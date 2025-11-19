@interface PAREngagedCompletionCache
+ (id)sharedInstance;
- (void)addCompletion:(id)a3 forInput:(id)a4;
- (void)addEngagedResults:(id)a3;
- (void)clearAllEngagements;
- (void)clearEngagementsFromDate:(id)a3 toDate:(id)a4;
- (void)clearEngagementsWithTitle:(id)a3;
- (void)topEngagedResultsForInput:(id)a3 maxAmount:(int64_t)a4 completion:(id)a5;
- (void)updateParametersForSmartSearchV1:(id)a3 smartSearchV2:(id)a4;
@end

@implementation PAREngagedCompletionCache

- (void)updateParametersForSmartSearchV1:(id)a3 smartSearchV2:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PARSession sharedSession];
  [v7 updateParametersForSmartSearchV1:v6 smartSearchV2:v5];
}

- (void)topEngagedResultsForInput:(id)a3 maxAmount:(int64_t)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = +[PARSession sharedSession];
  [v9 topEngagedResultsForInput:v8 maxAmount:a4 completion:v7];
}

- (void)addEngagedResults:(id)a3
{
  v3 = a3;
  v4 = +[PARSession sharedSession];
  [v4 addEngagedResults:v3 completion:0];
}

- (void)clearEngagementsWithTitle:(id)a3
{
  v3 = a3;
  v4 = +[PARSession sharedSession];
  [v4 clearEngagementsWithTitle:v3 type:0];
}

- (void)clearAllEngagements
{
  v4 = [MEMORY[0x1E695DF00] distantPast];
  v3 = [MEMORY[0x1E695DF00] distantFuture];
  [(PAREngagedCompletionCache *)self clearEngagementsFromDate:v4 toDate:v3];
}

- (void)clearEngagementsFromDate:(id)a3 toDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PARSession sharedSession];
  [v7 clearEngagementsFromDate:v6 toDate:v5];
}

- (void)addCompletion:(id)a3 forInput:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PARSession sharedSession];
  [v7 addCompletion:v6 forInput:v5];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __43__PAREngagedCompletionCache_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(PAREngagedCompletionCache);

  return MEMORY[0x1EEE66BB8]();
}

@end