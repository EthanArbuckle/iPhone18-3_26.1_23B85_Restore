@interface PARSession
+ (PARSession)sessionWithConfiguration:(id)configuration;
+ (id)sharedPARSessionWithConfiguration:(id)configuration;
+ (id)sharedSession;
- (BOOL)loadCard:(id)card withCompletionHandler:(id)handler;
- (BOOL)loadImage:(id)image withCompletionHandler:(id)handler;
- (BOOL)loadImage:(id)image withContext:(id)context completionHandler:(id)handler;
- (BOOL)loadMoreResults:(id)results withCompletionHandler:(id)handler;
- (id)initInternal:(id)internal startImmediately:(BOOL)immediately;
- (void)clearEngagedResult:(id)result completion:(id)completion;
- (void)reportFeedback:(id)feedback;
- (void)subscribeToChannel:(id)channel reply:(id)reply;
- (void)subscriptionStatusForChannel:(id)channel reply:(id)reply;
- (void)unsubscribeFromChannel:(id)channel reply:(id)reply;
@end

@implementation PARSession

- (void)subscriptionStatusForChannel:(id)channel reply:(id)reply
{
  replyCopy = reply;
  channelCopy = channel;
  internal = [(PARSession *)self internal];
  [internal subscriptionStatusForChannel:channelCopy reply:replyCopy];
}

- (void)unsubscribeFromChannel:(id)channel reply:(id)reply
{
  replyCopy = reply;
  channelCopy = channel;
  internal = [(PARSession *)self internal];
  [internal unsubscribeFromChannel:channelCopy reply:replyCopy];
}

- (void)subscribeToChannel:(id)channel reply:(id)reply
{
  replyCopy = reply;
  channelCopy = channel;
  internal = [(PARSession *)self internal];
  [internal subscribeToChannel:channelCopy reply:replyCopy];
}

- (void)clearEngagedResult:(id)result completion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  resultCopy = result;
  v6 = MEMORY[0x1E695DEC8];
  completionCopy = completion;
  resultCopy2 = result;
  v9 = [v6 arrayWithObjects:&resultCopy count:1];
  [(PARSessionSwiftInternal *)internal clearEngagedResults:v9 completion:completionCopy, resultCopy, v12];

  v10 = *MEMORY[0x1E69E9840];
}

void __32__PARSession_addEngagedResults___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (PARLogHandleForCategory_onceToken_2165 != -1)
  {
    dispatch_once(&PARLogHandleForCategory_onceToken_2165, &__block_literal_global_199);
  }

  v3 = PARLogHandleForCategory_logHandles_2_2166;
  if (os_log_type_enabled(PARLogHandleForCategory_logHandles_2_2166, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&dword_1B1064000, v3, OS_LOG_TYPE_DEBUG, "No completion provided. Please use the new SPI for addEngagedResults and provide a non null completion", v8, 2u);
    if (v2)
    {
      if (PARLogHandleForCategory_onceToken_2165 != -1)
      {
        dispatch_once(&PARLogHandleForCategory_onceToken_2165, &__block_literal_global_199);
      }

      goto LABEL_5;
    }

    if (PARLogHandleForCategory_onceToken_2165 != -1)
    {
      dispatch_once(&PARLogHandleForCategory_onceToken_2165, &__block_literal_global_199);
    }
  }

  else if (v2)
  {
LABEL_5:
    v4 = PARLogHandleForCategory_logHandles_2_2166;
    if (os_log_type_enabled(PARLogHandleForCategory_logHandles_2_2166, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B1064000, v4, OS_LOG_TYPE_ERROR, "Failed to add engagement to cache", buf, 2u);
    }

    goto LABEL_14;
  }

  v5 = PARLogHandleForCategory_logHandles_2_2166;
  if (os_log_type_enabled(PARLogHandleForCategory_logHandles_2_2166, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B1064000, v5, OS_LOG_TYPE_INFO, "Engagement added to cache.", v6, 2u);
  }

LABEL_14:
}

- (void)reportFeedback:(id)feedback
{
  internal = self->_internal;
  feedbackCopy = feedback;
  queryId = [feedbackCopy queryId];
  if (queryId >> 31)
  {
    v5 = 0;
  }

  else
  {
    v5 = queryId;
  }

  [(PARSessionSwiftInternal *)internal reportFeedback:feedbackCopy queryId:v5];
}

- (BOOL)loadMoreResults:(id)results withCompletionHandler:(id)handler
{
  resultsCopy = results;
  handlerCopy = handler;
  moreResultsLoader = [(PARSession *)self moreResultsLoader];
  v9 = [moreResultsLoader canLoadMoreResults:resultsCopy];
  if (v9)
  {
    [moreResultsLoader loadMoreResults:resultsCopy completionHandler:handlerCopy];
  }

  return v9;
}

- (BOOL)loadCard:(id)card withCompletionHandler:(id)handler
{
  cardCopy = card;
  handlerCopy = handler;
  cardLoader = [(PARSession *)self cardLoader];
  v9 = [cardLoader canLoadCard:cardCopy];
  if (v9)
  {
    [cardLoader loadCard:cardCopy completionHandler:handlerCopy];
  }

  return v9;
}

- (BOOL)loadImage:(id)image withCompletionHandler:(id)handler
{
  imageCopy = image;
  handlerCopy = handler;
  imageLoader = [(PARSession *)self imageLoader];
  v9 = [imageLoader canLoadImage:imageCopy context:0];
  if (v9)
  {
    [imageLoader loadImage:imageCopy context:0 completionHandler:handlerCopy];
  }

  return v9;
}

- (BOOL)loadImage:(id)image withContext:(id)context completionHandler:(id)handler
{
  imageCopy = image;
  contextCopy = context;
  handlerCopy = handler;
  imageLoader = [(PARSession *)self imageLoader];
  v12 = [imageLoader canLoadImage:imageCopy context:contextCopy];
  if (v12)
  {
    [imageLoader loadImage:imageCopy context:contextCopy completionHandler:handlerCopy];
  }

  return v12;
}

- (id)initInternal:(id)internal startImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  internalCopy = internal;
  v11.receiver = self;
  v11.super_class = PARSession;
  v8 = [(PARSession *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_internal, internal);
  }

  if (immediatelyCopy)
  {
    [(PARSession *)v9 start];
  }

  return v9;
}

+ (PARSession)sessionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [[self alloc] initWithConfiguration:configurationCopy connection:0 delegate:0 startImmediately:1];

  return v5;
}

+ (id)sharedSession
{
  if (checkValidParsecHost_once != -1)
  {
    dispatch_once(&checkValidParsecHost_once, &__block_literal_global_2685);
  }

  if (checkValidParsecHost_isValidHost == 1)
  {
    if (sharedSession_onceToken != -1)
    {
      dispatch_once(&sharedSession_onceToken, &__block_literal_global_8_2192);
    }

    v2 = sharedSession_sharedSession;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __27__PARSession_sharedSession__block_invoke()
{
  v2 = +[PARSessionConfiguration defaultSessionConfiguration];
  v0 = [PARSession sessionWithConfiguration:v2];
  v1 = sharedSession_sharedSession;
  sharedSession_sharedSession = v0;
}

+ (id)sharedPARSessionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = configurationCopy;
  if (sharedPARSessionWithConfiguration__onceToken == -1)
  {
    if (configurationCopy)
    {
LABEL_3:
      v5 = v4;
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&sharedPARSessionWithConfiguration__onceToken, &__block_literal_global_2195);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v5 = +[PARSessionConfiguration defaultSessionConfiguration];
LABEL_6:
  v6 = v5;
  v7 = [v5 description];
  v8 = sharedPARSessionWithConfiguration__sharedSessions;
  objc_sync_enter(v8);
  v9 = [sharedPARSessionWithConfiguration__sharedSessions objectForKeyedSubscript:v7];
  v10 = v9;
  if (v9)
  {
    [v9 setConfiguration:v4];
  }

  else
  {
    v10 = [PARSession sessionWithConfiguration:v6];
  }

  [sharedPARSessionWithConfiguration__sharedSessions setObject:v10 forKeyedSubscript:v7];
  objc_sync_exit(v8);

  return v10;
}

uint64_t __48__PARSession_sharedPARSessionWithConfiguration___block_invoke()
{
  sharedPARSessionWithConfiguration__sharedSessions = [MEMORY[0x1E695DF90] dictionary];

  return MEMORY[0x1EEE66BB8]();
}

@end