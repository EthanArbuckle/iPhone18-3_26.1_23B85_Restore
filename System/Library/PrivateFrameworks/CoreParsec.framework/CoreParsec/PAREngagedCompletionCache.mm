@interface PAREngagedCompletionCache
+ (id)sharedInstance;
- (void)addCompletion:(id)completion forInput:(id)input;
- (void)addEngagedResults:(id)results;
- (void)clearAllEngagements;
- (void)clearEngagementsFromDate:(id)date toDate:(id)toDate;
- (void)clearEngagementsWithTitle:(id)title;
- (void)topEngagedResultsForInput:(id)input maxAmount:(int64_t)amount completion:(id)completion;
- (void)updateParametersForSmartSearchV1:(id)v1 smartSearchV2:(id)v2;
@end

@implementation PAREngagedCompletionCache

- (void)updateParametersForSmartSearchV1:(id)v1 smartSearchV2:(id)v2
{
  v2Copy = v2;
  v1Copy = v1;
  v7 = +[PARSession sharedSession];
  [v7 updateParametersForSmartSearchV1:v1Copy smartSearchV2:v2Copy];
}

- (void)topEngagedResultsForInput:(id)input maxAmount:(int64_t)amount completion:(id)completion
{
  completionCopy = completion;
  inputCopy = input;
  v9 = +[PARSession sharedSession];
  [v9 topEngagedResultsForInput:inputCopy maxAmount:amount completion:completionCopy];
}

- (void)addEngagedResults:(id)results
{
  resultsCopy = results;
  v4 = +[PARSession sharedSession];
  [v4 addEngagedResults:resultsCopy completion:0];
}

- (void)clearEngagementsWithTitle:(id)title
{
  titleCopy = title;
  v4 = +[PARSession sharedSession];
  [v4 clearEngagementsWithTitle:titleCopy type:0];
}

- (void)clearAllEngagements
{
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  [(PAREngagedCompletionCache *)self clearEngagementsFromDate:distantPast toDate:distantFuture];
}

- (void)clearEngagementsFromDate:(id)date toDate:(id)toDate
{
  toDateCopy = toDate;
  dateCopy = date;
  v7 = +[PARSession sharedSession];
  [v7 clearEngagementsFromDate:dateCopy toDate:toDateCopy];
}

- (void)addCompletion:(id)completion forInput:(id)input
{
  inputCopy = input;
  completionCopy = completion;
  v7 = +[PARSession sharedSession];
  [v7 addCompletion:completionCopy forInput:inputCopy];
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