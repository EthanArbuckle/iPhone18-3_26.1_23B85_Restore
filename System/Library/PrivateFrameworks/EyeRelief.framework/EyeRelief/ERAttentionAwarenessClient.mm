@interface ERAttentionAwarenessClient
+ (int64_t)_categoryForDistance:(float)a3 withFaceState:(unint64_t)a4;
+ (int64_t)_categoryForDistance:(float)a3 withTooCloseDistanceThreshold:(int64_t)a4 withFaceState:(unint64_t)a5;
+ (void)reportAnalyticsFaceDetectAttentionEvent:(id)a3;
- (BOOL)cancelWithError:(id *)a3;
- (BOOL)invalidateWithError:(id *)a3;
- (ERAttentionAwarenessClient)init;
- (void)_pollForDistanceWithCompletion:(id)a3;
- (void)_resumeStreamingWithCompletion:(id)a3;
@end

@implementation ERAttentionAwarenessClient

- (ERAttentionAwarenessClient)init
{
  v20.receiver = self;
  v20.super_class = ERAttentionAwarenessClient;
  v2 = [(ERAttentionAwarenessClient *)&v20 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.EyeRelief"];
    has_internal_content = os_variant_has_internal_content();
    v5 = objc_opt_new();
    v6 = *(v2 + 3);
    *(v2 + 3) = v5;

    [*(v2 + 3) setIdentifier:@"com.apple.eyerelief"];
    if (has_internal_content && [v3 BOOLForKey:@"demoMode"])
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Demo Mode is enabled"];
      [ERLogging log:v7 withType:3];
    }

    else
    {
      [*(v2 + 3) setUnityStream:1];
    }

    [*(v2 + 3) setActivateEyeRelief:1];
    [*(v2 + 3) setActivateAttentionDetection:0];
    [*(v2 + 3) setContinuousFaceDetectMode:1];
    [*(v2 + 3) setNotificationMask:31];
    v8 = objc_opt_new();
    v9 = *(v2 + 4);
    *(v2 + 4) = v8;

    [*(v2 + 4) setConfiguration:*(v2 + 3)];
    v10 = dispatch_queue_create("com.apple.eyerelief.AttentionAwarenessQueue", 0);
    v11 = *(v2 + 5);
    *(v2 + 5) = v10;

    dispatch_activate(*(v2 + 5));
    objc_initWeak(&location, v2);
    v12 = *(v2 + 4);
    v13 = *(v2 + 5);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __34__ERAttentionAwarenessClient_init__block_invoke;
    v17[3] = &unk_278FD7D00;
    objc_copyWeak(&v18, &location);
    [v12 setNotificationHandlerWithQueue:v13 block:v17];
    if (!has_internal_content || (v14 = [v3 integerForKey:@"distanceThreshold"]) == 0)
    {
      v14 = 300;
    }

    *(v2 + 2) = v14;
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Too close distance threshold setting: %li mm", v14];
    [ERLogging log:v15 withType:0];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __34__ERAttentionAwarenessClient_init__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 5) != 0)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Distance sampling interrupted!"];
    [ERLogging log:v3 withType:1];

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained interruptHandler];

    if (v5)
    {
      v7 = objc_loadWeakRetained((a1 + 32));
      v6 = [v7 interruptHandler];
      v6[2]();
    }
  }
}

- (BOOL)cancelWithError:(id *)a3
{
  v4 = [(ERAttentionAwarenessClient *)self attentionAwarenessClient];
  v10 = 0;
  v5 = [v4 cancelFaceDetectStreamWithError:&v10];
  v6 = v10;

  if ((v5 & 1) == 0)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to cancel AA stream: %@", v6];
    [ERLogging log:v7 withType:1];
  }

  if (a3)
  {
    v8 = v6;
    *a3 = v6;
  }

  return v6 == 0;
}

- (BOOL)invalidateWithError:(id *)a3
{
  v4 = [(ERAttentionAwarenessClient *)self attentionAwarenessClient];
  v10 = 0;
  v5 = [v4 invalidateWithError:&v10];
  v6 = v10;

  if ((v5 & 1) == 0)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to invalidate AA client: %@", v6];
    [ERLogging log:v7 withType:1];
  }

  if (a3)
  {
    v8 = v6;
    *a3 = v6;
  }

  return v6 == 0;
}

- (void)_resumeStreamingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ERAttentionAwarenessClient *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__ERAttentionAwarenessClient__resumeStreamingWithCompletion___block_invoke;
  v7[3] = &unk_278FD7D28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __61__ERAttentionAwarenessClient__resumeStreamingWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attentionAwarenessClient];
  v10 = 0;
  v3 = [v2 resumeWithError:&v10];
  v4 = v10;

  if (v3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resumed distance streaming"];
    [ERLogging log:v5 withType:0];

    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 16);
LABEL_6:
      v7();
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to resume distance streaming: %@", v4];
    [ERLogging log:v8 withType:1];

    v9 = *(a1 + 40);
    if (v9)
    {
      v7 = *(v9 + 16);
      goto LABEL_6;
    }
  }
}

+ (int64_t)_categoryForDistance:(float)a3 withFaceState:(unint64_t)a4
{
  v6 = objc_opt_class();
  *&v7 = a3;

  return [v6 _categoryForDistance:300 withTooCloseDistanceThreshold:a4 withFaceState:v7];
}

+ (int64_t)_categoryForDistance:(float)a3 withTooCloseDistanceThreshold:(int64_t)a4 withFaceState:(unint64_t)a5
{
  if (a5 == 2)
  {
    return 0;
  }

  if (a5 == 1)
  {
    return a4 <= a3;
  }

  return 2;
}

- (void)_pollForDistanceWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(ERAttentionAwarenessClient *)self attentionAwarenessClient];
  v6 = [(ERAttentionAwarenessClient *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__ERAttentionAwarenessClient__pollForDistanceWithCompletion___block_invoke;
  v11[3] = &unk_278FD7D50;
  objc_copyWeak(&v13, &location);
  v7 = v4;
  v12 = v7;
  [v5 setEventStreamerWithQueue:v6 block:v11];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__ERAttentionAwarenessClient__pollForDistanceWithCompletion___block_invoke_2;
  v9[3] = &unk_278FD7D78;
  v8 = v7;
  v10 = v8;
  [(ERAttentionAwarenessClient *)self _resumeStreamingWithCompletion:v9];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

uint64_t __61__ERAttentionAwarenessClient__pollForDistanceWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 distance];
  v5 = v4;
  v6 = [v3 faceState];
  [ERAttentionAwarenessClient reportAnalyticsFaceDetectAttentionEvent:v3];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained tooCloseDistanceThreshold];
  v7 = v5;
  *&v10 = v7;
  v11 = [ERAttentionAwarenessClient _categoryForDistance:v9 withTooCloseDistanceThreshold:v6 withFaceState:v10];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"ER Distance: %f, ER Face State: %llu", *&v5, v6];
  [ERLogging log:v12 withType:0];

  v13 = [v3 eventMask];
  v14 = [ERDistanceEvent alloc];
  *&v15 = v5;
  [(ERDistanceEvent *)v14 initWithDistance:v11 distanceCategory:(v13 >> 7) & 1 andAttention:v15];
  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __61__ERAttentionAwarenessClient__pollForDistanceWithCompletion___block_invoke_2(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))(result, 0);
    }
  }

  return result;
}

+ (void)reportAnalyticsFaceDetectAttentionEvent:(id)a3
{
  v4 = a3;
  v3 = v4;
  AnalyticsSendEventLazy();
}

id __70__ERAttentionAwarenessClient_reportAnalyticsFaceDetectAttentionEvent___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"aw_distance";
  v2 = MEMORY[0x277CCABB0];
  [*(a1 + 32) distance];
  v4 = [v2 numberWithDouble:v3 * 0.1];
  v9[1] = @"aw_face_state";
  v10[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "faceState")}];
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end