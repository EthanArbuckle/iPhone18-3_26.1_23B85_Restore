@interface EMFDPEventDispatcher
- (EMFDPEventDispatcher)initWithReportingDelegate:(id)delegate;
- (void)didUseEmoji:(id)emoji usageSource:(unint64_t)source replacementContext:(id)context searchQuery:(id)query resultPosition:(id)position numberSearchQueriesRun:(id)run wasPositiveEngagement:(BOOL)engagement completionHandler:(id)self0;
@end

@implementation EMFDPEventDispatcher

- (EMFDPEventDispatcher)initWithReportingDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = EMFDPEventDispatcher;
  v6 = [(EMFDPEventDispatcher *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reportingDelegate, delegate);
    v8 = dispatch_queue_create("com.apple.EmojiFoundation.DifferentialPrivacyRecording", 0);
    reportingBackgroundQueue = v7->_reportingBackgroundQueue;
    v7->_reportingBackgroundQueue = v8;
  }

  return v7;
}

- (void)didUseEmoji:(id)emoji usageSource:(unint64_t)source replacementContext:(id)context searchQuery:(id)query resultPosition:(id)position numberSearchQueriesRun:(id)run wasPositiveEngagement:(BOOL)engagement completionHandler:(id)self0
{
  emojiCopy = emoji;
  contextCopy = context;
  queryCopy = query;
  positionCopy = position;
  runCopy = run;
  handlerCopy = handler;
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
    LOBYTE(v31) = engagement;
    v27 = [[EMFBiomeEmojiUsageRecorder alloc] initWithEmoji:emojiCopy usageSource:source replacementContext:contextCopy searchQuery:queryCopy resultPosition:positionCopy numberSearchQueriesRun:runCopy wasPositiveEngagement:v31];
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
    v39 = handlerCopy;
    v38 = emojiCopy;
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