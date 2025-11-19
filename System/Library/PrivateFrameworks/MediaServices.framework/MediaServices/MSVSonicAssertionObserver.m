@interface MSVSonicAssertionObserver
- (void)assertion:(id)a3 didInvalidateWithError:(id)a4;
@end

@implementation MSVSonicAssertionObserver

- (void)assertion:(id)a3 didInvalidateWithError:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = os_log_create("com.apple.amp.MediaServices", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = 134218242;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1AC81F000, v7, OS_LOG_TYPE_ERROR, "[MSVSonicAssertion] RBSAssertion %p was invalidated error=%{public}@", &v10, 0x16u);
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotificationName:@"MSVSonicAssertionsWereInvalidatedNotification" object:0];

  v9 = *MEMORY[0x1E69E9840];
}

@end