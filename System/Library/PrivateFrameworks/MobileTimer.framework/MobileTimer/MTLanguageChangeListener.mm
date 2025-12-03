@interface MTLanguageChangeListener
- (BOOL)handlesNotification:(id)notification ofType:(int64_t)type;
- (id)liveDarwinNotifications;
- (void)_handleLanguageChanged;
- (void)handleNotification:(id)notification ofType:(int64_t)type completion:(id)completion;
@end

@implementation MTLanguageChangeListener

- (BOOL)handlesNotification:(id)notification ofType:(int64_t)type
{
  notificationCopy = notification;
  liveDarwinNotifications = [(MTLanguageChangeListener *)self liveDarwinNotifications];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__MTLanguageChangeListener_handlesNotification_ofType___block_invoke;
  v10[3] = &unk_1E7B0C848;
  v11 = notificationCopy;
  v7 = notificationCopy;
  v8 = [liveDarwinNotifications na_any:v10];

  return v8;
}

- (void)_handleLanguageChanged
{
  v2 = MTLogForCategory(1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "mobiletimerd - System language changed, terminating daemon", v3, 2u);
  }

  xpc_transaction_exit_clean();
}

- (void)handleNotification:(id)notification ofType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  notificationCopy = notification;
  _languageChangeNotification = [objc_opt_class() _languageChangeNotification];
  v9 = [notificationCopy isEqualToString:_languageChangeNotification];

  if (v9)
  {
    [(MTLanguageChangeListener *)self _handleLanguageChanged];
  }

  v10 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v10 = completionCopy;
  }
}

- (id)liveDarwinNotifications
{
  v6[1] = *MEMORY[0x1E69E9840];
  _languageChangeNotification = [objc_opt_class() _languageChangeNotification];
  v6[0] = _languageChangeNotification;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end