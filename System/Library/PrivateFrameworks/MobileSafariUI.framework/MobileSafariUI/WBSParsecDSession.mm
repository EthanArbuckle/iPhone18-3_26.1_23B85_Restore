@interface WBSParsecDSession
+ (void)sendLaunchFeedbackWithEvent:(char)event isPrivate:(char)private usesLoweredSearchBar:;
+ (void)sendSuspendFeedbackWithEvent:(char)event isPrivate:;
@end

@implementation WBSParsecDSession

+ (void)sendLaunchFeedbackWithEvent:(char)event isPrivate:(char)private usesLoweredSearchBar:
{
  objc_opt_self();
  if ((event & 1) == 0)
  {
    currentQueryID = [MEMORY[0x277D49ED8] currentQueryID];
    v8 = dispatch_get_global_queue(-32768, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__WBSParsecDSession_FeedbackHelpers__sendLaunchFeedbackWithEvent_isPrivate_usesLoweredSearchBar___block_invoke;
    block[3] = &__block_descriptor_49_e5_v8__0l;
    block[4] = a2;
    block[5] = currentQueryID;
    privateCopy = private;
    dispatch_async(v8, block);
  }
}

void __97__WBSParsecDSession_FeedbackHelpers__sendLaunchFeedbackWithEvent_isPrivate_usesLoweredSearchBar___block_invoke(uint64_t a1)
{
  v3 = +[UniversalSearchSession sharedSession];
  v2 = [v3 feedbackDispatcher];
  [v2 searchViewAppearedBecauseOfEvent:*(a1 + 32) forQueryID:*(a1 + 40) usesLoweredSearchBar:*(a1 + 48)];
}

+ (void)sendSuspendFeedbackWithEvent:(char)event isPrivate:
{
  objc_opt_self();
  if ((event & 1) == 0)
  {
    currentQueryID = [MEMORY[0x277D49ED8] currentQueryID];
    v8 = +[UniversalSearchSession sharedSession];
    feedbackDispatcher = [v8 feedbackDispatcher];
    [feedbackDispatcher searchViewDisappearedBecauseOfEvent:a2 forQueryID:currentQueryID];

    feedbackDispatcher2 = [v8 feedbackDispatcher];
    [feedbackDispatcher2 flush];
  }
}

@end