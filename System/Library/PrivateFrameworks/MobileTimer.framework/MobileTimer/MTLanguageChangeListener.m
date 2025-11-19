@interface MTLanguageChangeListener
- (BOOL)handlesNotification:(id)a3 ofType:(int64_t)a4;
- (id)liveDarwinNotifications;
- (void)_handleLanguageChanged;
- (void)handleNotification:(id)a3 ofType:(int64_t)a4 completion:(id)a5;
@end

@implementation MTLanguageChangeListener

- (BOOL)handlesNotification:(id)a3 ofType:(int64_t)a4
{
  v5 = a3;
  v6 = [(MTLanguageChangeListener *)self liveDarwinNotifications];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__MTLanguageChangeListener_handlesNotification_ofType___block_invoke;
  v10[3] = &unk_1E7B0C848;
  v11 = v5;
  v7 = v5;
  v8 = [v6 na_any:v10];

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

- (void)handleNotification:(id)a3 ofType:(int64_t)a4 completion:(id)a5
{
  v11 = a5;
  v7 = a3;
  v8 = [objc_opt_class() _languageChangeNotification];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    [(MTLanguageChangeListener *)self _handleLanguageChanged];
  }

  v10 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11);
    v10 = v11;
  }
}

- (id)liveDarwinNotifications
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() _languageChangeNotification];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end