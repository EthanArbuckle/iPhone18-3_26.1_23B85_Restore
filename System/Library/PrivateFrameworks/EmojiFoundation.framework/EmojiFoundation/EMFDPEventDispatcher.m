@interface EMFDPEventDispatcher
- (EMFDPEventDispatcher)initWithReportingDelegate:(id)a3;
- (void)didUseEmoji:(id)a3 usageSource:(unint64_t)a4 replacementContext:(id)a5 searchQuery:(id)a6 resultPosition:(id)a7 numberSearchQueriesRun:(id)a8 wasPositiveEngagement:(BOOL)a9 completionHandler:(id)a10;
@end

@implementation EMFDPEventDispatcher

- (EMFDPEventDispatcher)initWithReportingDelegate:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = EMFDPEventDispatcher;
  v6 = [(EMFDPEventDispatcher *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reportingDelegate, a3);
    v8 = dispatch_queue_create("com.apple.EmojiFoundation.DifferentialPrivacyRecording", 0);
    reportingBackgroundQueue = v7->_reportingBackgroundQueue;
    v7->_reportingBackgroundQueue = v8;
  }

  return v7;
}

- (void)didUseEmoji:(id)a3 usageSource:(unint64_t)a4 replacementContext:(id)a5 searchQuery:(id)a6 resultPosition:(id)a7 numberSearchQueriesRun:(id)a8 wasPositiveEngagement:(BOOL)a9 completionHandler:(id)a10
{
  v14 = a3;
  v35 = a5;
  v34 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a10;
  v18 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  v19 = v18;
  error[1] = v18;
  if (!v18)
  {
    goto LABEL_20;
  }

  error[0] = 0;
  v20 = SecTaskCopyValueForEntitlement(v18, @"com.apple.private.biome.read-write", error);
  v40 = v20;
  if (error[0])
  {
    CFRelease(error[0]);
    v21 = 0;
  }

  else
  {
    if (!v20)
    {
      v21 = 0;
      goto LABEL_16;
    }

    v22 = CFGetTypeID(v20);
    if (v22 != CFArrayGetTypeID() || CFArrayGetCount(v20) < 1)
    {
      v21 = 0;
      goto LABEL_15;
    }

    for (i = 0; ; ++i)
    {
      Count = CFArrayGetCount(v20);
      v21 = i < Count;
      if (i >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v20, i);
      v26 = CFGetTypeID(ValueAtIndex);
      if (v26 == CFStringGetTypeID() && CFStringCompare(ValueAtIndex, @"Emoji.Engagement", 0) == kCFCompareEqualTo)
      {
        break;
      }
    }
  }

  if (v20)
  {
LABEL_15:
    CFRelease(v20);
  }

LABEL_16:
  CFRelease(v19);
  if (v21)
  {
    LOBYTE(v31) = a9;
    v27 = [[EMFBiomeEmojiUsageRecorder alloc] initWithEmoji:v14 usageSource:a4 replacementContext:v35 searchQuery:v34 resultPosition:v15 numberSearchQueriesRun:v16 wasPositiveEngagement:v31];
    v28 = v27;
    if (self->_reportingDelegate)
    {
      [(EMFDPRecorder *)v27 setDelegate:?];
    }

    reportingBackgroundQueue = self->_reportingBackgroundQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __157__EMFDPEventDispatcher_didUseEmoji_usageSource_replacementContext_searchQuery_resultPosition_numberSearchQueriesRun_wasPositiveEngagement_completionHandler___block_invoke;
    block[3] = &unk_1E7A5F5E0;
    v37 = v28;
    v39 = v17;
    v38 = v14;
    v30 = v28;
    dispatch_async(reportingBackgroundQueue, block);
  }

LABEL_20:
}

uint64_t __157__EMFDPEventDispatcher_didUseEmoji_usageSource_replacementContext_searchQuery_resultPosition_numberSearchQueriesRun_wasPositiveEngagement_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) report];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end