@interface MTCFUserNotificationPoster
+ (id)sharedInstance;
+ (void)cancelNotificationsWithIdentifiers:(id)identifiers;
+ (void)postNotificationWithIdentifier:(id)identifier title:(id)title message:(id)message defaultButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle bypassDND:(BOOL)d handler:(id)handler;
- (MTCFUserNotificationPoster)init;
@end

@implementation MTCFUserNotificationPoster

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[MTCFUserNotificationPoster sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __44__MTCFUserNotificationPoster_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (MTCFUserNotificationPoster)init
{
  v6.receiver = self;
  v6.super_class = MTCFUserNotificationPoster;
  v2 = [(MTCFUserNotificationPoster *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    notifications = v2->_notifications;
    v2->_notifications = v3;
  }

  return v2;
}

+ (void)postNotificationWithIdentifier:(id)identifier title:(id)title message:(id)message defaultButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle bypassDND:(BOOL)d handler:(id)handler
{
  v41[4] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  otherButtonTitleCopy = otherButtonTitle;
  handlerCopy = handler;
  v19 = *MEMORY[0x1E695EE60];
  v40[0] = *MEMORY[0x1E695EE58];
  v40[1] = v19;
  v41[0] = titleCopy;
  v41[1] = messageCopy;
  v20 = *MEMORY[0x1E695EE70];
  v40[2] = *MEMORY[0x1E695EE78];
  v40[3] = v20;
  v41[2] = buttonTitleCopy;
  v41[3] = otherButtonTitleCopy;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:4];
  error = 0;
  v22 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v21);
  if (v22)
  {
    v23 = error == 0;
    v24 = MTLogForCategory(3);
    v25 = v24;
    if (v23)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy = self;
        v38 = 2114;
        v39 = identifierCopy;
        _os_log_impl(&dword_1B1F9F000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ posting CFUserNotification for %{public}@", buf, 0x16u);
      }

      CFRetain(v22);
      obj = +[MTCFUserNotificationPoster sharedInstance];
      objc_sync_enter(obj);
      v26 = objc_opt_new();
      [v26 setIdentifier:identifierCopy];
      [v26 setHandler:handlerCopy];
      v27 = [MTOSTransaction transactionWithDescription:identifierCopy timeout:1800.0];
      [v26 setTransaction:v27];

      [v26 setNotification:v22];
      v28 = +[MTCFUserNotificationPoster sharedInstance];
      notifications = [v28 notifications];
      [notifications setObject:v26 forKeyedSubscript:identifierCopy];

      objc_sync_exit(obj);
      RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v22, _CFUserNotificationCallback, 0);
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, *MEMORY[0x1E695E8D0]);
      CFRelease(RunLoopSource);
    }

    else
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [MTCFUserNotificationPoster postNotificationWithIdentifier:self title:v25 message:? defaultButtonTitle:? otherButtonTitle:? bypassDND:? handler:?];
      }
    }

    CFRelease(v22);
  }

  v32 = *MEMORY[0x1E69E9840];
}

+ (void)cancelNotificationsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = +[MTCFUserNotificationPoster sharedInstance];
  objc_sync_enter(v5);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__MTCFUserNotificationPoster_cancelNotificationsWithIdentifiers___block_invoke;
  v6[3] = &__block_descriptor_40_e18_v16__0__NSString_8l;
  v6[4] = self;
  [identifiersCopy na_each:v6];
  objc_sync_exit(v5);
}

void __65__MTCFUserNotificationPoster_cancelNotificationsWithIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[MTCFUserNotificationPoster sharedInstance];
  v5 = [v4 notifications];
  v6 = [v5 objectForKeyedSubscript:v3];

  if (v6)
  {
    v7 = MTLogForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [v6 identifier];
      v13 = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelling CFUserNotification for %{public}@", &v13, 0x16u);
    }

    CFUserNotificationCancel([v6 notification]);
    v10 = +[MTCFUserNotificationPoster sharedInstance];
    v11 = [v10 notifications];
    [v11 removeObjectForKey:v3];
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)postNotificationWithIdentifier:(uint64_t)a1 title:(NSObject *)a2 message:defaultButtonTitle:otherButtonTitle:bypassDND:handler:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_ERROR, "%{public}@ failed to post CFUserNotification", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end