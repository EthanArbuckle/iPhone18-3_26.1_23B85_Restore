@interface MapsSuggestionsRealAppProtectionConnector
- (MapsSuggestionsAppProtectionStatusMonitoring)delegate;
- (void)addMonitor:(id)monitor;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
@end

@implementation MapsSuggestionsRealAppProtectionConnector

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  v20 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  subscriptionCopy = subscription;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(changedCopy, "count")}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__MapsSuggestionsRealAppProtectionConnector_appProtectionSubjectsChanged_forSubscription___block_invoke;
  v12[3] = &unk_1E81F7D08;
  v9 = v8;
  v13 = v9;
  [changedCopy enumerateObjectsUsingBlock:v12];
  delegate = [(MapsSuggestionsRealAppProtectionConnector *)self delegate];
  if (delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate appProtectionStatusChanged:v9];
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

- (void)addMonitor:(id)monitor
{
  subjectMonitorRegistry = [MEMORY[0x1E698B0F0] subjectMonitorRegistry];
  v4 = [subjectMonitorRegistry addMonitor:self];
}

- (MapsSuggestionsAppProtectionStatusMonitoring)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end