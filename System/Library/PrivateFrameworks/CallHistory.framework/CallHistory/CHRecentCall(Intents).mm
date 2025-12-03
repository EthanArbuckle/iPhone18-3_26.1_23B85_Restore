@interface CHRecentCall(Intents)
- (void)interaction;
@end

@implementation CHRecentCall(Intents)

- (void)interaction
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  selfCopy = self;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1C3E90000, log, OS_LOG_TYPE_ERROR, "Retrieving interaction for call with identifier %{public}@ failed with error %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end