@interface MUImpressionsLogger
- (void)logImpressionElementDidEnter:(id)a3 onDate:(id)a4;
- (void)logImpressionElementDidExit:(id)a3 usingEnterDate:(id)a4 exitDate:(id)a5;
@end

@implementation MUImpressionsLogger

- (void)logImpressionElementDidExit:(id)a3 usingEnterDate:(id)a4 exitDate:(id)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MUGetMUImpressionsLoggerLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v5 debugString];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1C5620000, v6, OS_LOG_TYPE_DEBUG, "Logging element did exit %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)logImpressionElementDidEnter:(id)a3 onDate:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MUGetMUImpressionsLoggerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [v4 debugString];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_DEBUG, "Logging element did enter %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end