@interface MFDResetListUnsubscribe
- (void)resetListUnsubscribeSuggestionsWithCompletion:(id)a3;
@end

@implementation MFDResetListUnsubscribe

- (void)resetListUnsubscribeSuggestionsWithCompletion:(id)a3
{
  v4 = a3;
  v3 = objc_alloc_init(EMListUnsubscribeDetector);
  [v3 removeAllPersistedCommands];
  v4[2](v4, 0);
}

@end