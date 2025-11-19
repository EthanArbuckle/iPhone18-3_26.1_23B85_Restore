@interface MOSplunkLogger
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)_onQueue_loadConfiguration;
- (void)logEventNamed:(id)a3 value:(id)a4;
- (void)uploadEventsWithCompletion:(id)a3;
@end

@implementation MOSplunkLogger

- (void)_onQueue_loadConfiguration
{
  v3 = [(MOSplunkLogger *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = dispatch_semaphore_create(0);
  v5 = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  v6 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v5 delegate:self delegateQueue:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__MOSplunkLogger__onQueue_loadConfiguration__block_invoke;
  v15[3] = &unk_279917168;
  v15[4] = self;
  v16 = v4;
  v7 = v4;
  v8 = _Block_copy(v15);
  v9 = [(MOSplunkLogger *)self configurationURL];
  v10 = [v6 dataTaskWithURL:v9 completionHandler:v8];

  MOLogWrite(0, 3, "[MOSplunkLogger _onQueue_loadConfiguration]", @"Loading configuration", v11, v12, v13, v14, v15[0]);
  [v10 resume];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

void __44__MOSplunkLogger__onQueue_loadConfiguration__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v15 = v9;
    v16 = 0;
LABEL_5:
    MOLogWrite(0, 3, "[MOSplunkLogger _onQueue_loadConfiguration]_block_invoke", @"Unable to load configuration. Error: %@", v11, v12, v13, v14, v15);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_6;
  }

  v51 = 0;
  v16 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v51];
  v17 = v51;
  if (v17)
  {
    v15 = v17;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v16;
    v19 = [v16 objectForKeyedSubscript:@"metricsUrl"];
    if (v19)
    {
      v50 = [MEMORY[0x277CBEBC0] URLWithString:v19];
      v29 = [*(a1 + 32) version];
      v30 = [v50 URLByAppendingPathComponent:v29];
      v31 = [*(a1 + 32) splunkTopic];
      v32 = [v30 URLByAppendingPathComponent:v31];
      [*(a1 + 32) setSplunkUploadURL:v32];

      v33 = [*(a1 + 32) splunkUploadURL];
      MOLogWrite(0, 3, "[MOSplunkLogger _onQueue_loadConfiguration]_block_invoke", @"Splunk upload URL set to %@", v34, v35, v36, v37, v33);
    }

    else
    {
      MOLogWrite(0, 3, "[MOSplunkLogger _onQueue_loadConfiguration]_block_invoke", @"Could not find metrics URL in configuration", v25, v26, v27, v28, v48);
    }

    v38 = [v16 objectForKeyedSubscript:@"performance"];
    v18 = [v38 objectForKeyedSubscript:@"samplingPercentage"];

    if (v18)
    {
      [*(a1 + 32) setSamplingPercentage:v18];
      MOLogWrite(0, 3, "[MOSplunkLogger _onQueue_loadConfiguration]_block_invoke", @"Sampling percentage set to %@", v43, v44, v45, v46, v18);
    }

    else
    {
      MOLogWrite(0, 3, "[MOSplunkLogger _onQueue_loadConfiguration]_block_invoke", @"Could not find sampling percentage in configuration", v39, v40, v41, v42, v49);
    }

    v15 = [*(a1 + 32) samplingPercentage];
    if (v15)
    {
      v47 = [*(a1 + 32) splunkUploadURL];

      if (v47)
      {
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        [*(a1 + 32) setLastSuccessfulConfigurationLoad:?];
      }

      v15 = 0;
    }

    v20 = v16;
  }

  else
  {
    MOLogWrite(0, 3, "[MOSplunkLogger _onQueue_loadConfiguration]_block_invoke", @"Configuration does not have the expected format", v21, v22, v23, v24, v48);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v15 = 0;
  }

LABEL_6:
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)uploadEventsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MOSplunkLogger *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MOSplunkLogger_uploadEventsWithCompletion___block_invoke;
  block[3] = &unk_279917190;
  block[4] = self;
  dispatch_async(v5, block);

  v6 = [(MOSplunkLogger *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__MOSplunkLogger_uploadEventsWithCompletion___block_invoke_2;
  v8[3] = &unk_2799171E0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

uint64_t __45__MOSplunkLogger_uploadEventsWithCompletion___block_invoke(uint64_t a1)
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v3 = v2;
  result = [*(a1 + 32) lastSuccessfulConfigurationLoad];
  if (v3 - v5 > 86400.0)
  {
    v6 = *(a1 + 32);

    return [v6 _onQueue_loadConfiguration];
  }

  return result;
}

void __45__MOSplunkLogger_uploadEventsWithCompletion___block_invoke_2(uint64_t a1)
{
  v38[2] = *MEMORY[0x277D85DE8];
  v2 = arc4random_uniform(0x64u);
  v3 = [*(a1 + 32) samplingPercentage];
  [v3 floatValue];
  v5 = v4 * 100.0;

  if (v5 >= v2)
  {
    v8 = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    v9 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v8 delegate:*(a1 + 32) delegateQueue:0];
    v10 = objc_alloc_init(MEMORY[0x277CCAB70]);
    v11 = [*(a1 + 32) splunkUploadURL];
    [v10 setURL:v11];

    [v10 setHTTPMethod:@"POST"];
    v37[0] = @"postTime";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:clock_gettime_nsec_np(_CLOCK_REALTIME) / 0xF4240];
    v37[1] = @"events";
    v38[0] = v12;
    v13 = [*(a1 + 32) events];
    v38[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];

    v36 = 0;
    v15 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v14 options:0 error:&v36];
    v16 = v36;
    v21 = v16;
    if (!v15 || v16)
    {
      MOLogWrite(0, 3, "[MOSplunkLogger uploadEventsWithCompletion:]_block_invoke_2", @"Failed to serialize Splunk payload: %@", v17, v18, v19, v20, v16);
    }

    else
    {
      [v10 setHTTPBody:v15];
      v22 = dispatch_semaphore_create(0);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __45__MOSplunkLogger_uploadEventsWithCompletion___block_invoke_3;
      aBlock[3] = &unk_2799171B8;
      v23 = *(a1 + 40);
      aBlock[4] = *(a1 + 32);
      v34 = v22;
      v35 = v23;
      v24 = v22;
      v25 = _Block_copy(aBlock);
      v26 = [v9 dataTaskWithRequest:v10 completionHandler:v25];
      MOLogWrite(0, 3, "[MOSplunkLogger uploadEventsWithCompletion:]_block_invoke_2", @"Splunk upload start", v27, v28, v29, v30, v32);
      [v26 resume];
      dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
    }

    v31 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);
    v7 = *MEMORY[0x277D85DE8];

    v6();
  }
}

void __45__MOSplunkLogger_uploadEventsWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = a2;
  v7 = a3;
  v8 = a4;
  v13 = v8;
  if (v8)
  {
    MOLogWrite(0, 3, "[MOSplunkLogger uploadEventsWithCompletion:]_block_invoke_3", @"Error in uploading the events to splunk: %@", v9, v10, v11, v12, v8);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v7;
      if ([v14 statusCode] < 200 || objc_msgSend(v14, "statusCode") > 299)
      {
        v31 = [v14 statusCode];
        MOLogWrite(0, 3, "[MOSplunkLogger uploadEventsWithCompletion:]_block_invoke_3", @"Splunk upload unexpected status: %d", v25, v26, v27, v28, v31);
      }

      else
      {
        MOLogWrite(0, 3, "[MOSplunkLogger uploadEventsWithCompletion:]_block_invoke_3", @"Splunk upload successful", v15, v16, v17, v18, v30);
        v19 = [*(a1 + 32) events];
        [v19 removeAllObjects];
      }
    }

    else
    {
      v20 = objc_opt_class();
      v14 = NSStringFromClass(v20);
      MOLogWrite(0, 3, "[MOSplunkLogger uploadEventsWithCompletion:]_block_invoke_3", @"Received the wrong kind of response: %@", v21, v22, v23, v24, v14);
    }
  }

  v29 = *(a1 + 48);
  if (v29)
  {
    (*(v29 + 16))(v29, v13);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)logEventNamed:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = [a4 mutableCopy];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:clock_gettime_nsec_np(_CLOCK_REALTIME) / 0xF4240];
  [v7 setObject:v8 forKeyedSubscript:@"eventTime"];

  v9 = [(MOSplunkLogger *)self splunkTopic];
  [v7 setObject:v9 forKeyedSubscript:@"topic"];

  [v7 setObject:v6 forKeyedSubscript:@"eventType"];
  v10 = [(MOSplunkLogger *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__MOSplunkLogger_logEventNamed_value___block_invoke;
  v12[3] = &unk_279917208;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  dispatch_async(v10, v12);
}

void __38__MOSplunkLogger_logEventNamed_value___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) events];
  [v2 addObject:*(a1 + 40)];

  v3 = [*(a1 + 32) events];
  v4 = [v3 count];

  if (v4 >= 0x3E9)
  {
    MOLogWrite(0, 3, "[MOSplunkLogger logEventNamed:value:]_block_invoke", @"Maximum number of events exceeded. Discarding oldest event.", v5, v6, v7, v8, v9);
    v10 = [*(a1 + 32) events];
    [v10 removeObjectAtIndex:0];
  }
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  MOLogWrite(0, 3, "[MOSplunkLogger URLSession:didReceiveChallenge:completionHandler:]", @"Splunk upload challenge", v9, v10, v11, v12, v28);
  v30 = 0;
  if ([v7 previousFailureCount] >= 1)
  {
    goto LABEL_2;
  }

  v13 = [v7 protectionSpace];
  v14 = [v13 authenticationMethod];
  v15 = [v14 isEqualToString:*MEMORY[0x277CCA720]];

  if (!v15)
  {
    v8[2](v8, 1, 0);
    goto LABEL_11;
  }

  v16 = [v7 protectionSpace];
  MEMORY[0x25F84B1B0]([v16 serverTrust], &v30);

  if (![(MOSplunkLogger *)self allowInvalidCert]&& v30 != 4 && v30 != 1)
  {
    MOLogWrite(0, 3, "[MOSplunkLogger URLSession:didReceiveChallenge:completionHandler:]", @"Error evaluating trust. SecTrustResultType=%d", v17, v18, v19, v20, v30);
LABEL_2:
    v8[2](v8, 2, 0);
    goto LABEL_11;
  }

  if ([(MOSplunkLogger *)self allowInvalidCert])
  {
    MOLogWrite(0, 3, "[MOSplunkLogger URLSession:didReceiveChallenge:completionHandler:]", @"Force Accepting Credential", v21, v22, v23, v24, v29);
  }

  v25 = MEMORY[0x277CCACF0];
  v26 = [v7 protectionSpace];
  v27 = [v25 credentialForTrust:{objc_msgSend(v26, "serverTrust")}];

  (v8)[2](v8, 0, v27);
LABEL_11:
}

@end