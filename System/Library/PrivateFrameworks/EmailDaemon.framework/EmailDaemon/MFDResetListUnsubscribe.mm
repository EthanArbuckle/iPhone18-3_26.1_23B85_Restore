@interface MFDResetListUnsubscribe
- (void)resetListUnsubscribeSuggestionsWithCompletion:(id)completion;
@end

@implementation MFDResetListUnsubscribe

- (void)resetListUnsubscribeSuggestionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v3 = objc_alloc_init(EMListUnsubscribeDetector);
  [v3 removeAllPersistedCommands];
  completionCopy[2](completionCopy, 0);
}

@end