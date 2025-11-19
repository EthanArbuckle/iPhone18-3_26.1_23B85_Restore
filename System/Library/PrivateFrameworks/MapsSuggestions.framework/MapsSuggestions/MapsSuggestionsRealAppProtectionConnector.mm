@interface MapsSuggestionsRealAppProtectionConnector
- (MapsSuggestionsAppProtectionStatusMonitoring)delegate;
- (void)addMonitor:(id)a3;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
@end

@implementation MapsSuggestionsRealAppProtectionConnector

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__MapsSuggestionsRealAppProtectionConnector_appProtectionSubjectsChanged_forSubscription___block_invoke;
  v12[3] = &unk_1E81F7D08;
  v9 = v8;
  v13 = v9;
  [v6 enumerateObjectsUsingBlock:v12];
  v10 = [(MapsSuggestionsRealAppProtectionConnector *)self delegate];
  if (v10)
  {
    if (objc_opt_respondsToSelector())
    {
      [v10 appProtectionStatusChanged:v9];
    }
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "MapsSuggestionsRealAppProtectionConnector.m";
      v16 = 1026;
      v17 = 78;
      v18 = 2082;
      v19 = "[MapsSuggestionsRealAppProtectionConnector appProtectionSubjectsChanged:forSubscription:]";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongDelegate went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void __90__MapsSuggestionsRealAppProtectionConnector_appProtectionSubjectsChanged_forSubscription___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [v5 bundleIdentifier];
    [v3 addObject:v4];
  }
}

- (void)addMonitor:(id)a3
{
  v5 = [MEMORY[0x1E698B0F0] subjectMonitorRegistry];
  v4 = [v5 addMonitor:self];
}

- (MapsSuggestionsAppProtectionStatusMonitoring)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end