@interface PARSession
+ (PARSession)sessionWithConfiguration:(id)a3;
+ (id)sharedPARSessionWithConfiguration:(id)a3;
+ (id)sharedSession;
- (BOOL)loadCard:(id)a3 withCompletionHandler:(id)a4;
- (BOOL)loadImage:(id)a3 withCompletionHandler:(id)a4;
- (BOOL)loadImage:(id)a3 withContext:(id)a4 completionHandler:(id)a5;
- (BOOL)loadMoreResults:(id)a3 withCompletionHandler:(id)a4;
- (id)initInternal:(id)a3 startImmediately:(BOOL)a4;
- (void)clearEngagedResult:(id)a3 completion:(id)a4;
- (void)reportFeedback:(id)a3;
- (void)subscribeToChannel:(id)a3 reply:(id)a4;
- (void)subscriptionStatusForChannel:(id)a3 reply:(id)a4;
- (void)unsubscribeFromChannel:(id)a3 reply:(id)a4;
@end

@implementation PARSession

- (void)subscriptionStatusForChannel:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PARSession *)self internal];
  [v8 subscriptionStatusForChannel:v7 reply:v6];
}

- (void)unsubscribeFromChannel:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PARSession *)self internal];
  [v8 unsubscribeFromChannel:v7 reply:v6];
}

- (void)subscribeToChannel:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PARSession *)self internal];
  [v8 subscribeToChannel:v7 reply:v6];
}

- (void)clearEngagedResult:(id)a3 completion:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v11 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v11 count:1];
  [(PARSessionSwiftInternal *)internal clearEngagedResults:v9 completion:v7, v11, v12];

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

- (void)reportFeedback:(id)a3
{
  internal = self->_internal;
  v6 = a3;
  v4 = [v6 queryId];
  if (v4 >> 31)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  [(PARSessionSwiftInternal *)internal reportFeedback:v6 queryId:v5];
}

- (BOOL)loadMoreResults:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PARSession *)self moreResultsLoader];
  v9 = [v8 canLoadMoreResults:v6];
  if (v9)
  {
    [v8 loadMoreResults:v6 completionHandler:v7];
  }

  return v9;
}

- (BOOL)loadCard:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PARSession *)self cardLoader];
  v9 = [v8 canLoadCard:v6];
  if (v9)
  {
    [v8 loadCard:v6 completionHandler:v7];
  }

  return v9;
}

- (BOOL)loadImage:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PARSession *)self imageLoader];
  v9 = [v8 canLoadImage:v6 context:0];
  if (v9)
  {
    [v8 loadImage:v6 context:0 completionHandler:v7];
  }

  return v9;
}

- (BOOL)loadImage:(id)a3 withContext:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PARSession *)self imageLoader];
  v12 = [v11 canLoadImage:v8 context:v9];
  if (v12)
  {
    [v11 loadImage:v8 context:v9 completionHandler:v10];
  }

  return v12;
}

- (id)initInternal:(id)a3 startImmediately:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PARSession;
  v8 = [(PARSession *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_internal, a3);
  }

  if (v4)
  {
    [(PARSession *)v9 start];
  }

  return v9;
}

+ (PARSession)sessionWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithConfiguration:v4 connection:0 delegate:0 startImmediately:1];

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

+ (id)sharedPARSessionWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (sharedPARSessionWithConfiguration__onceToken == -1)
  {
    if (v3)
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