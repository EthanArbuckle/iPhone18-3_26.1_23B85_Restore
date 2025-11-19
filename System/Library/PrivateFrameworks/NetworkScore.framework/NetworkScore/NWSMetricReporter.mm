@interface NWSMetricReporter
- (void)sendHTTPMetrics:(id)a3 onQueue:(id)a4;
- (void)sendStreamMetrics:(id)a3 onQueue:(id)a4;
@end

@implementation NWSMetricReporter

- (void)sendHTTPMetrics:(id)a3 onQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content())
  {
    v8 = [(NWSClientConnection *)self connection];

    if (!v8)
    {
      [(NWSClientConnection *)self activateConnectionOn:v7];
    }

    if (![v6 count] || (objc_msgSend(v6, "objectAtIndex:", 0), v9 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9, (isKindOfClass & 1) == 0))
    {
      v11 = nws_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [NWSMetricReporter sendHTTPMetrics:onQueue:];
      }
    }

    v12 = [(NWSClientConnection *)self connection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __45__NWSMetricReporter_sendHTTPMetrics_onQueue___block_invoke;
    v15[3] = &unk_27996CFE0;
    v15[4] = self;
    v13 = [v12 remoteObjectProxyWithErrorHandler:v15];

    if (v13)
    {
      [v13 sendHTTPMetricsWithMetrics:v6];
    }

    else
    {
      v14 = nws_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [NWSMetricReporter sendHTTPMetrics:onQueue:];
      }
    }
  }
}

void __45__NWSMetricReporter_sendHTTPMetrics_onQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nws_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __45__NWSMetricReporter_sendHTTPMetrics_onQueue___block_invoke_cold_1(v3);
  }

  v5 = [*(a1 + 32) connection];
  [v5 invalidate];

  [*(a1 + 32) setConnection:0];
}

- (void)sendStreamMetrics:(id)a3 onQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content())
  {
    v8 = [(NWSClientConnection *)self connection];

    if (!v8)
    {
      [(NWSClientConnection *)self activateConnectionOn:v7];
    }

    if (![v6 count] || (objc_msgSend(v6, "objectAtIndex:", 0), v9 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9, (isKindOfClass & 1) == 0))
    {
      v11 = nws_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [NWSMetricReporter sendStreamMetrics:onQueue:];
      }
    }

    v12 = [(NWSClientConnection *)self connection];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__NWSMetricReporter_sendStreamMetrics_onQueue___block_invoke;
    v15[3] = &unk_27996CFE0;
    v15[4] = self;
    v13 = [v12 remoteObjectProxyWithErrorHandler:v15];

    if (v13)
    {
      [v13 sendStreamingMetricsWithMetrics:v6];
    }

    else
    {
      v14 = nws_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [NWSMetricReporter sendHTTPMetrics:onQueue:];
      }
    }
  }
}

void __47__NWSMetricReporter_sendStreamMetrics_onQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nws_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __45__NWSMetricReporter_sendHTTPMetrics_onQueue___block_invoke_cold_1(v3);
  }

  v5 = [*(a1 + 32) connection];
  [v5 invalidate];

  [*(a1 + 32) setConnection:0];
}

void __45__NWSMetricReporter_sendHTTPMetrics_onQueue___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2(&dword_25BA15000, v2, v3, "connection failed with error : %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end