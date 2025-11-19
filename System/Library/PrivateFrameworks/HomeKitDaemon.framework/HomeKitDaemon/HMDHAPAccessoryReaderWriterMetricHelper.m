@interface HMDHAPAccessoryReaderWriterMetricHelper
+ (BOOL)_isLinkFallback:(id)a3 reportedLinkLayerType:(int64_t)a4;
+ (void)updateLogEvents:(id)a3 withResponses:(id)a4 forTaskID:(id)a5 shouldSubmit:(BOOL)a6;
+ (void)updateLogEvents:(id)a3 withResponses:(id)a4 remoteMessageResponse:(id)a5 forTaskID:(id)a6 shouldSubmit:(BOOL)a7;
@end

@implementation HMDHAPAccessoryReaderWriterMetricHelper

+ (BOOL)_isLinkFallback:(id)a3 reportedLinkLayerType:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if ((a4 - 1) < 2)
  {
    if ([v5 isEqualToString:@"WiFi-Ethernet"])
    {
      goto LABEL_9;
    }

    v7 = @"IP";
  }

  else if (a4 == 3)
  {
    v7 = @"BLE";
  }

  else
  {
    if (a4 != 4)
    {
      goto LABEL_9;
    }

    v7 = @"Thread";
  }

  if (([v6 isEqualToString:v7] & 1) == 0)
  {
    v8 = 1;
    goto LABEL_11;
  }

LABEL_9:
  v8 = 0;
LABEL_11:

  return v8;
}

+ (void)updateLogEvents:(id)a3 withResponses:(id)a4 remoteMessageResponse:(id)a5 forTaskID:(id)a6 shouldSubmit:(BOOL)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [v14 objectForKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];
  v17 = [v16 intValue];

  LOBYTE(v16) = [v14 hmf_BOOLForKey:@"kRemoteMessageIsRapportLinkSlowKey"];
  v18 = [v14 hmf_BOOLForKey:@"kRemoteMessageIsModernTransportUsedKey"];

  [MEMORY[0x277D17DC0] currentTime];
  v20 = v19;
  v21 = [MEMORY[0x277CBEB58] set];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __118__HMDHAPAccessoryReaderWriterMetricHelper_updateLogEvents_withResponses_remoteMessageResponse_forTaskID_shouldSubmit___block_invoke;
  v25[3] = &unk_2786741C0;
  v31 = v17;
  v32 = v16;
  v33 = v18;
  v29 = v20;
  v34 = a7;
  v26 = v12;
  v27 = v21;
  v30 = a1;
  v28 = v13;
  v22 = v13;
  v23 = v21;
  v24 = v12;
  [v15 na_each:v25];
}

void __118__HMDHAPAccessoryReaderWriterMetricHelper_updateLogEvents_withResponses_remoteMessageResponse_forTaskID_shouldSubmit___block_invoke(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 request];
  v5 = [v4 accessory];

  if (([v5 isPrimary] & 1) == 0)
  {
    v6 = [v5 bridge];

    v5 = v6;
  }

  v7 = [v5 uuid];
  v8 = [v7 UUIDString];

  if (v8)
  {
    v9 = [*(a1 + 32) objectForKeyedSubscript:v8];
    v10 = v9;
    if (v9)
    {
      if (([v9 isSubmitted] & 1) == 0)
      {
        [v10 setTransportType:*(a1 + 72)];
        [v10 setIsSlowRapport:*(a1 + 76)];
        [v10 setIsModernTransport:*(a1 + 77)];
        v11 = [v3 error];
        [v10 setResidentFirstError:v11];

        [v10 setResidentFirstEndTime:*(a1 + 56)];
        v12 = objc_opt_class();
        v13 = [v10 expectedTransport];
        [v10 setIsLinkFallback:{objc_msgSend(v12, "_isLinkFallback:reportedLinkLayerType:", v13, objc_msgSend(v10, "linkLayerType"))}];

        if (*(a1 + 78) == 1)
        {
          if (([*(a1 + 40) containsObject:v8] & 1) == 0)
          {
            v14 = objc_autoreleasePoolPush();
            v15 = *(a1 + 64);
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v34 = v14;
              v35 = HMFGetLogIdentifier();
              v17 = *(a1 + 48);
              if ([v10 isWriteOperation])
              {
                v18 = @"Writing";
              }

              else
              {
                v18 = @"Reading";
              }

              v33 = [v10 characteristicsInRequest];
              v29 = [v33 count];
              v32 = [v10 accessoryUUID];
              v31 = [v10 error];
              v30 = [v10 residentFirstError];
              v28 = [v10 durationMilliseconds];
              v27 = [v10 localDurationInMilliseconds];
              v26 = [v10 residentFirstDurationInMilliseconds];
              if ([v10 isLocal])
              {
                [v10 linkType];
                v19 = HAPLinkTypeDescription();
              }

              else
              {
                v20 = [v10 transportType];
                if (v20 > 7)
                {
                  v21 = 0;
                }

                else
                {
                  v21 = off_2786897D0[v20];
                }

                v19 = v21;
              }

              v22 = v19;
              *buf = 138545922;
              v37 = v35;
              v38 = 2114;
              v39 = v17;
              v40 = 2114;
              v41 = v18;
              v42 = 2048;
              v43 = v29;
              v44 = 2114;
              v45 = v32;
              v46 = 2114;
              v47 = v31;
              v48 = 2114;
              v49 = v30;
              v50 = 2048;
              v51 = v28;
              v52 = 2048;
              v53 = v27;
              v54 = 2048;
              v55 = v26;
              v56 = 2114;
              v57 = v19;
              _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@For Task: %{public}@ -- %{public}@ %tu characteristic(s) on accessory %{public}@ completed with error: %{public}@ (Resident first error: %{public}@), Total duration: %ld ms (Local duration: %ld ms, Resident first duration: %ld ms) using transport: %{public}@", buf, 0x70u);

              v14 = v34;
            }

            objc_autoreleasePoolPop(v14);
            [*(a1 + 40) addObject:v8];
          }

          v23 = +[HMDMetricsManager sharedLogEventSubmitter];
          v24 = [v10 residentFirstError];
          [v23 submitLogEvent:v10 error:v24];
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
}

+ (void)updateLogEvents:(id)a3 withResponses:(id)a4 forTaskID:(id)a5 shouldSubmit:(BOOL)a6
{
  v10 = a3;
  v11 = a5;
  v12 = MEMORY[0x277D17DC0];
  v13 = a4;
  [v12 currentTime];
  v15 = v14;
  v16 = [MEMORY[0x277CBEB58] set];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __96__HMDHAPAccessoryReaderWriterMetricHelper_updateLogEvents_withResponses_forTaskID_shouldSubmit___block_invoke;
  v20[3] = &unk_278674198;
  v24 = v15;
  v25 = a1;
  v26 = a6;
  v21 = v10;
  v22 = v16;
  v23 = v11;
  v17 = v11;
  v18 = v16;
  v19 = v10;
  [v13 na_each:v20];
}

void __96__HMDHAPAccessoryReaderWriterMetricHelper_updateLogEvents_withResponses_forTaskID_shouldSubmit___block_invoke(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 request];
  v5 = [v4 accessory];

  if (([v5 isPrimary] & 1) == 0)
  {
    v6 = [v5 bridge];

    v5 = v6;
  }

  v7 = [v5 uuid];
  v8 = [v7 UUIDString];

  if (v8)
  {
    v9 = [*(a1 + 32) objectForKeyedSubscript:v8];
    v10 = v9;
    if (v9)
    {
      if (([v9 isSubmitted] & 1) == 0)
      {
        v11 = [v3 error];
        [v10 setResidentFirstError:v11];

        [v10 setResidentFirstEndTime:*(a1 + 56)];
        v12 = *(a1 + 64);
        v13 = [v10 expectedTransport];
        [v10 setIsLinkFallback:{objc_msgSend(v12, "_isLinkFallback:reportedLinkLayerType:", v13, objc_msgSend(v10, "linkLayerType"))}];

        if (*(a1 + 72) == 1)
        {
          if (([*(a1 + 40) containsObject:v8] & 1) == 0)
          {
            v14 = objc_autoreleasePoolPush();
            v15 = *(a1 + 64);
            v16 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v34 = v14;
              v35 = HMFGetLogIdentifier();
              v17 = *(a1 + 48);
              if ([v10 isWriteOperation])
              {
                v18 = @"Writing";
              }

              else
              {
                v18 = @"Reading";
              }

              v33 = [v10 characteristicsInRequest];
              v29 = [v33 count];
              v32 = [v10 accessoryUUID];
              v31 = [v10 error];
              v30 = [v10 residentFirstError];
              v28 = [v10 durationMilliseconds];
              v27 = [v10 localDurationInMilliseconds];
              v26 = [v10 residentFirstDurationInMilliseconds];
              if ([v10 isLocal])
              {
                [v10 linkType];
                v19 = HAPLinkTypeDescription();
              }

              else
              {
                v20 = [v10 transportType];
                if (v20 > 7)
                {
                  v21 = 0;
                }

                else
                {
                  v21 = off_2786897D0[v20];
                }

                v19 = v21;
              }

              v22 = v19;
              *buf = 138545922;
              v37 = v35;
              v38 = 2114;
              v39 = v17;
              v40 = 2114;
              v41 = v18;
              v42 = 2048;
              v43 = v29;
              v44 = 2114;
              v45 = v32;
              v46 = 2114;
              v47 = v31;
              v48 = 2114;
              v49 = v30;
              v50 = 2048;
              v51 = v28;
              v52 = 2048;
              v53 = v27;
              v54 = 2048;
              v55 = v26;
              v56 = 2114;
              v57 = v19;
              _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@For Task: %{public}@ -- %{public}@ %tu characteristic(s) on accessory %{public}@ completed with error: %{public}@ (Resident first error: %{public}@), Total duration: %ld ms (Local duration: %ld ms, Resident first duration: %ld ms) using transport: %{public}@", buf, 0x70u);

              v14 = v34;
            }

            objc_autoreleasePoolPop(v14);
            [*(a1 + 40) addObject:v8];
          }

          v23 = +[HMDMetricsManager sharedLogEventSubmitter];
          v24 = [v10 residentFirstError];
          [v23 submitLogEvent:v10 error:v24];
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end