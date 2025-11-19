@interface HMDLogEventMessageEventsAnalyzer
+ (id)managedEventCounterRequestGroups;
- (HMDLogEventMessageEventsAnalyzer)initWithDataSource:(id)a3;
- (id)periodicRemoteMessageCounterEventNameWithMessageName:(id)a3 peerInformation:(id)a4;
- (unsigned)messageDirectionStringForRemoteMessageCounterRequestGroup:(id)a3;
- (unsigned)transportTypeForRemoteMessageCounterRequestGroup:(id)a3;
- (void)_handleRemoteMessageLogEvent:(id)a3;
- (void)_handleXPCMessageCounterLogEvent:(id)a3;
- (void)_updateDailySubmissionGroupRemoteMessageEventCountersForTransportType:(int)a3 messageDirectionSending:(BOOL)a4;
- (void)_updatePeriodicSubmissionGroupRemoteMessageEventCountersForMessageName:(id)a3 peerInformation:(id)a4 transportType:(int)a5 messageDirectionSending:(BOOL)a6 identifier:(id)a7;
- (void)addTTRThresholdTrigger:(id)a3 forEventName:(id)a4 requestGroup:(id)a5 atThreshold:(unint64_t)a6 radarInitiator:(id)a7;
- (void)handlePrimaryResidentChangedNotification:(id)a3;
- (void)observeEvent:(id)a3;
- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4;
- (void)registerEWSTriggersWithDataSource:(id)a3;
- (void)registerTTRTriggersWithDataSource:(id)a3;
- (void)resetAggregationAnalysisContext;
- (void)submitDailyMessageEvents;
- (void)submitRemoteMessageCounters;
- (void)submitRemoteMessageCountersForGroup:(id)a3;
- (void)submitXPCMessageCounters;
- (void)submitXPCMessageCountersForGroup:(id)a3;
@end

@implementation HMDLogEventMessageEventsAnalyzer

- (void)submitDailyMessageEvents
{
  [(HMDLogEventMessageEventsAnalyzer *)self submitRemoteMessageCounters];

  [(HMDLogEventMessageEventsAnalyzer *)self submitXPCMessageCounters];
}

- (void)resetAggregationAnalysisContext
{
  v3 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  [v3 resetEventCountersForRequestGroup:@"HMDLogEventXPCAcceptedMessagesCountDailyRequestGroup"];

  v4 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  [v4 resetEventCountersForRequestGroup:@"HMDLogEventXPCSentMessagesCountDailyRequestGroup"];

  v5 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  [v5 resetEventCountersForRequestGroup:@"HMDLogEventXPCAErroredMessagesCountDailyRequestGroup"];

  v6 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  [v6 resetEventCountersForRequestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup"];

  v7 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  [v7 resetEventCountersForRequestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup"];

  v8 = [(HMDLogEventMessageEventsAnalyzer *)self residentSyncGroup];
  [v8 resetEventCounters];

  v9 = [(HMDLogEventMessageEventsAnalyzer *)self homeManagerMessagesGroup];
  [v9 resetEventCounters];
}

- (void)populateAggregationAnalysisLogEvent:(id)a3 forDate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  v9 = [v8 counterGroupForName:@"HMDLogEventXPCAcceptedMessagesCountDailyRequestGroup"];
  [v7 setAcceptedXPCRequestsCount:{objc_msgSend(v9, "summedEventCountersForDate:", v6)}];

  v10 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  v11 = [v10 counterGroupForName:@"HMDLogEventXPCSentMessagesCountDailyRequestGroup"];
  [v7 setSentXPCNotificationsCount:{objc_msgSend(v11, "summedEventCountersForDate:", v6)}];

  v12 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  v13 = [v12 counterGroupForName:@"HMDLogEventXPCAErroredMessagesCountDailyRequestGroup"];
  [v7 setErroredXPCRequestsCount:{objc_msgSend(v13, "summedEventCountersForDate:", v6)}];

  v14 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  v22 = [v14 counterGroupForName:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup"];

  v15 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  v16 = [v15 counterGroupForName:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup"];

  [v7 setRxIDSMessagesCount:{objc_msgSend(v22, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSEventCounter", v6)}];
  [v7 setTxIDSMessagesCount:{objc_msgSend(v16, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSEventCounter", v6)}];
  [v7 setRxIDSProxyMessagesCount:{objc_msgSend(v22, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSProxyEventCounter", v6)}];
  [v7 setTxIDSProxyMessagesCount:{objc_msgSend(v16, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSProxyEventCounter", v6)}];
  [v7 setRxLoxyMessagesCount:{objc_msgSend(v22, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeLoxyEventCounter", v6)}];
  [v7 setTxLoxyMessagesCount:{objc_msgSend(v16, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeLoxyEventCounter", v6)}];
  [v7 setRxRapportMessagesCount:{objc_msgSend(v22, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeRapportEventCounter", v6)}];
  [v7 setTxRapportMessagesCount:{objc_msgSend(v16, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeRapportEventCounter", v6)}];
  [v7 setRxRapportOverBLEMessagesCount:{objc_msgSend(v22, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeRapportOverBLEEventCounter", v6)}];
  [v7 setTxRapportOverBLEMessagesCount:{objc_msgSend(v16, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeRapportOverBLEEventCounter", v6)}];
  [v7 setRxSecureMessagesCount:{objc_msgSend(v22, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeSecureEventCounter", v6)}];
  [v7 setTxSecureMessagesCount:{objc_msgSend(v16, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeSecureEventCounter", v6)}];
  [v7 setRemoteMessagesSentCount:{objc_msgSend(v7, "txIDSProxyMessagesCount") + objc_msgSend(v7, "txIDSMessagesCount") + objc_msgSend(v7, "txRapportMessagesCount") + objc_msgSend(v7, "txRapportOverBLEMessagesCount") + objc_msgSend(v7, "txLoxyMessagesCount")}];
  [v7 setRemoteMessagesReceivedCount:{objc_msgSend(v7, "rxLoxyMessagesCount") + objc_msgSend(v7, "rxIDSMessagesCount") + objc_msgSend(v7, "rxIDSProxyMessagesCount") + objc_msgSend(v7, "rxRapportMessagesCount") + objc_msgSend(v7, "rxRapportOverBLEMessagesCount") + objc_msgSend(v7, "rxSecureMessagesCount")}];
  v17 = [(HMDLogEventMessageEventsAnalyzer *)self residentSyncGroup];
  [v7 setResidentSyncHomeDataChangedNotificationCount:{objc_msgSend(v17, "fetchEventCounterForEventName:forDate:", @"HMDLogEventResidentSyncHomeDataChangedNotificationCounter", v6)}];

  v18 = [(HMDLogEventMessageEventsAnalyzer *)self residentSyncGroup];
  [v7 setResidentSyncFetchHomeDataRequestCount:{objc_msgSend(v18, "fetchEventCounterForEventName:forDate:", @"HMDLogEventResidentSyncFetchHomeDataRequestCounter", v6)}];

  v19 = [(HMDLogEventMessageEventsAnalyzer *)self homeManagerMessagesGroup];
  [v7 setGenerationCounterIncrementCount:{objc_msgSend(v19, "fetchEventCounterForEventName:forDate:", @"HMDMessageEventsAnalyzerHomeManagerIncrementGenerationCounterEvent", v6)}];

  v20 = [(HMDLogEventMessageEventsAnalyzer *)self homeManagerMessagesGroup];
  v21 = [v20 fetchEventCounterForEventName:@"HMDMessageEventsAnalyzerHomeManagerNotifyXPCClientsEvent" forDate:v6];

  [v7 setNotifyXPCClientsHomeDataChangedCount:v21];
}

- (void)handlePrimaryResidentChangedNotification:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
    v10 = [v9 counterGroupForName:@"HMDLogEventMessageAnalyzerCommon"];

    if ([v8 isCurrentDevice])
    {
      [v10 resumeDurationCounter:@"PrimaryResidentDuration"];
    }

    else
    {
      [v10 pauseDurationCounter:@"PrimaryResidentDuration"];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly received update primary resident notification but the primary resident is nil", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleXPCMessageCounterLogEvent:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 type];
  if ([v5 isEqual:@"XPCAcceptedRequests"])
  {
    v6 = @"HMDLogEventXPCAcceptedMessagesCountDailyRequestGroup";
LABEL_5:

    goto LABEL_6;
  }

  if ([v5 isEqual:@"XPCSentNotifications"])
  {
    v6 = @"HMDLogEventXPCSentMessagesCountDailyRequestGroup";
    goto LABEL_5;
  }

  v17 = [v5 isEqual:@"XPCErroredRequests"];
  v18 = v17;
  if (v17)
  {
    v6 = @"HMDLogEventXPCAErroredMessagesCountDailyRequestGroup";
  }

  else
  {
    v6 = 0;
  }

  if (v18)
  {
LABEL_6:
    v7 = [v4 peerInformation];
    v8 = [HMDMetricsUtilities shouldRedactBundleID:v7];
    v9 = @"Third-party app";
    if (!v8)
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = MEMORY[0x277CCACA8];
    v12 = [v4 messageName];
    v13 = [v11 stringWithFormat:@"%@/%@", v10, v12];

    v14 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
    v15 = [v4 count];
    [v14 incrementEventCounterForEventName:v13 requestGroup:v6 withValue:{objc_msgSend(v15, "unsignedIntegerValue")}];

    goto LABEL_9;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v21;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Unknown XPC message counter type - dropping the LogEvent %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
LABEL_9:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_updatePeriodicSubmissionGroupRemoteMessageEventCountersForMessageName:(id)a3 peerInformation:(id)a4 transportType:(int)a5 messageDirectionSending:(BOOL)a6 identifier:(id)a7
{
  v8 = a6;
  v31 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (a5 > 3)
  {
    switch(a5)
    {
      case 4:
        v15 = @"HMDLogEventMessageAnalyzerRxIDSProxyMessagesCountPeriodicRequestGroup";
        v16 = @"HMDLogEventMessageAnalyzerTxIDSProxyMessagesCountPeriodicRequestGroup";
        goto LABEL_17;
      case 6:
        v15 = @"HMDLogEventMessageAnalyzerRxRapportMessagesCountPeriodicRequestGroup";
        v16 = @"HMDLogEventMessageAnalyzerTxRapportMessagesCountPeriodicRequestGroup";
        goto LABEL_17;
      case 7:
        v15 = @"HMDLogEventMessageAnalyzerRxRapportOverBLEMessagesCountPeriodicRequestGroup";
        v16 = @"HMDLogEventMessageAnalyzerTxRapportOverBLEMessagesCountPeriodicRequestGroup";
        goto LABEL_17;
    }
  }

  else
  {
    switch(a5)
    {
      case 1:
        v15 = @"HMDLogEventMessageAnalyzerRxSecureMessagesCountPeriodicRequestGroup";
        v16 = @"HMDLogEventMessageAnalyzerTxSecureMessagesCountPeriodicRequestGroup";
        goto LABEL_17;
      case 2:
        v15 = @"HMDLogEventMessageAnalyzerRxIDSMessagesCountPeriodicRequestGroup";
        v16 = @"HMDLogEventMessageAnalyzerTxIDSMessagesCountPeriodicRequestGroup";
        goto LABEL_17;
      case 3:
        v15 = @"HMDLogEventMessageAnalyzerRxLoxyMessagesCountPeriodicRequestGroup";
        v16 = @"HMDLogEventMessageAnalyzerTxLoxyMessagesCountPeriodicRequestGroup";
LABEL_17:
        if (v8)
        {
          v15 = v16;
        }

        v20 = v15;
        v21 = [(HMDLogEventMessageEventsAnalyzer *)self periodicRemoteMessageCounterEventNameWithMessageName:v12 peerInformation:v13];
        if (v21)
        {
          v22 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
          [v22 incrementEventCounterForEventName:v21 requestGroup:v20];
        }

        else
        {
          v23 = objc_autoreleasePoolPush();
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            v25 = HMFGetLogIdentifier();
            v27 = 138543618;
            v28 = v25;
            v29 = 2112;
            v30 = v14;
            _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Unable to retrieve eventName for remoteMessage - dropping remote message log event with identifier %@", &v27, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
        }

        goto LABEL_25;
    }
  }

  v17 = objc_autoreleasePoolPush();
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = HMFGetLogIdentifier();
    v27 = 138543618;
    v28 = v19;
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Invalid transport type - dropping remote message log event with identifier %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
LABEL_25:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_updateDailySubmissionGroupRemoteMessageEventCountersForTransportType:(int)a3 messageDirectionSending:(BOOL)a4
{
  v5 = a3 - 1;
  if (a3 - 1) <= 6 && ((0x6Fu >> v5))
  {
    v7 = off_279723A70[v5];
    v8 = @"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup";
    if (a4)
    {
      v8 = @"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup";
    }

    v9 = v8;
    v10 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
    [v10 incrementEventCounterForEventName:v7 requestGroup:v9];
  }
}

- (void)_handleRemoteMessageLogEvent:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 secure];
    v10 = &stru_286509E58;
    if (v9)
    {
      v10 = @"secure ";
    }

    v26 = v10;
    v11 = [v4 msgName];
    if ([v4 sending])
    {
      v12 = @"sent";
    }

    else
    {
      v12 = @"received";
    }

    v13 = [v4 transportType];
    if (v13 > 7)
    {
      v14 = 0;
    }

    else
    {
      v14 = off_279735698[v13];
    }

    v15 = v14;
    v16 = [v4 msgType];
    if (v16 > 3)
    {
      v17 = 0;
    }

    else
    {
      v17 = off_2797356F0[v16];
    }

    v18 = v17;
    [v4 msgQoS];
    v19 = HMFQualityOfServiceToString();
    *buf = 138544898;
    v28 = v8;
    v29 = 2114;
    v30 = v26;
    v31 = 2114;
    v32 = v11;
    v33 = 2114;
    v34 = v12;
    v35 = 2114;
    v36 = v15;
    v37 = 2114;
    v38 = v18;
    v39 = 2114;
    v40 = v19;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@[CA] HMDRemoteMessageLogEvent -- %{public}@message %{public}@ %{public}@ over %{public}@ as %{public}@ (QoS: %{public}@)", buf, 0x48u);
  }

  objc_autoreleasePoolPop(v5);
  -[HMDLogEventMessageEventsAnalyzer _updateDailySubmissionGroupRemoteMessageEventCountersForTransportType:messageDirectionSending:](v6, "_updateDailySubmissionGroupRemoteMessageEventCountersForTransportType:messageDirectionSending:", [v4 transportType], objc_msgSend(v4, "sending"));
  v20 = [v4 msgName];
  v21 = [v4 peerInformation];
  v22 = [v4 transportType];
  v23 = [v4 sending];
  v24 = [v4 msgIdentifier];
  [(HMDLogEventMessageEventsAnalyzer *)v6 _updatePeriodicSubmissionGroupRemoteMessageEventCountersForMessageName:v20 peerInformation:v21 transportType:v22 messageDirectionSending:v23 identifier:v24];

  [(HMDLogEventMessageEventsAnalyzer *)v6 _updateResidentSyncCountersWithRemoteMessageLogEvent:v4];
  v25 = *MEMORY[0x277D85DE8];
}

- (id)periodicRemoteMessageCounterEventNameWithMessageName:(id)a3 peerInformation:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    if (!v5)
    {
      v6 = @"Unknown";
    }

    a3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v6, a3];
  }

  return a3;
}

- (void)observeEvent:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HMDLogEventMessageEventsAnalyzer_observeEvent___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

void __49__HMDLogEventMessageEventsAnalyzer_observeEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v14 = v3;

  if (v14)
  {
    [*(a1 + 40) _handleRemoteMessageLogEvent:v14];
  }

  else
  {
    v4 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6)
    {
      [*(a1 + 40) _handleXPCMessageCounterLogEvent:v6];
    }

    else
    {
      v7 = *(a1 + 32);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      if (v9)
      {
        v10 = [*(a1 + 40) homeManagerMessagesGroup];
        [v10 incrementEventCounterForEventName:@"HMDMessageEventsAnalyzerHomeManagerIncrementGenerationCounterEvent"];
      }

      else
      {
        v11 = *(a1 + 32);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        v10 = v12;

        if (v10)
        {
          v13 = [*(a1 + 40) homeManagerMessagesGroup];
          [v13 incrementEventCounterForEventName:@"HMDMessageEventsAnalyzerHomeManagerNotifyXPCClientsEvent"];
        }
      }
    }
  }
}

- (void)submitRemoteMessageCounters
{
  [(HMDLogEventMessageEventsAnalyzer *)self submitRemoteMessageCountersForGroup:@"HMDLogEventMessageAnalyzerRxIDSMessagesCountPeriodicRequestGroup"];
  [(HMDLogEventMessageEventsAnalyzer *)self submitRemoteMessageCountersForGroup:@"HMDLogEventMessageAnalyzerTxIDSMessagesCountPeriodicRequestGroup"];
  [(HMDLogEventMessageEventsAnalyzer *)self submitRemoteMessageCountersForGroup:@"HMDLogEventMessageAnalyzerRxIDSProxyMessagesCountPeriodicRequestGroup"];
  [(HMDLogEventMessageEventsAnalyzer *)self submitRemoteMessageCountersForGroup:@"HMDLogEventMessageAnalyzerTxIDSProxyMessagesCountPeriodicRequestGroup"];
  [(HMDLogEventMessageEventsAnalyzer *)self submitRemoteMessageCountersForGroup:@"HMDLogEventMessageAnalyzerRxLoxyMessagesCountPeriodicRequestGroup"];
  [(HMDLogEventMessageEventsAnalyzer *)self submitRemoteMessageCountersForGroup:@"HMDLogEventMessageAnalyzerTxLoxyMessagesCountPeriodicRequestGroup"];
  [(HMDLogEventMessageEventsAnalyzer *)self submitRemoteMessageCountersForGroup:@"HMDLogEventMessageAnalyzerRxRapportMessagesCountPeriodicRequestGroup"];
  [(HMDLogEventMessageEventsAnalyzer *)self submitRemoteMessageCountersForGroup:@"HMDLogEventMessageAnalyzerTxRapportMessagesCountPeriodicRequestGroup"];
  [(HMDLogEventMessageEventsAnalyzer *)self submitRemoteMessageCountersForGroup:@"HMDLogEventMessageAnalyzerRxRapportOverBLEMessagesCountPeriodicRequestGroup"];
  [(HMDLogEventMessageEventsAnalyzer *)self submitRemoteMessageCountersForGroup:@"HMDLogEventMessageAnalyzerTxRapportOverBLEMessagesCountPeriodicRequestGroup"];
  [(HMDLogEventMessageEventsAnalyzer *)self submitRemoteMessageCountersForGroup:@"HMDLogEventMessageAnalyzerRxSecureMessagesCountPeriodicRequestGroup"];

  [(HMDLogEventMessageEventsAnalyzer *)self submitRemoteMessageCountersForGroup:@"HMDLogEventMessageAnalyzerTxSecureMessagesCountPeriodicRequestGroup"];
}

- (void)submitXPCMessageCounters
{
  [(HMDLogEventMessageEventsAnalyzer *)self submitXPCMessageCountersForGroup:@"HMDLogEventXPCAcceptedMessagesCountDailyRequestGroup"];
  [(HMDLogEventMessageEventsAnalyzer *)self submitXPCMessageCountersForGroup:@"HMDLogEventXPCSentMessagesCountDailyRequestGroup"];

  [(HMDLogEventMessageEventsAnalyzer *)self submitXPCMessageCountersForGroup:@"HMDLogEventXPCAErroredMessagesCountDailyRequestGroup"];
}

- (void)submitRemoteMessageCountersForGroup:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  v6 = [v5 counterGroupForName:@"HMDLogEventMessageAnalyzerCommon"];
  [v6 durationForCounter:@"PrimaryResidentDuration"];
  v8 = v7;

  v9 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  v10 = [v9 fetchEventCountersForRequestGroup:v4];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = v10;
  obj = [v10 allKeys];
  v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v26 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = [v14 componentsSeparatedByString:@"/"];
        v16 = [v15 firstObject];
        v17 = [v15 lastObject];
        v18 = [(HMDLogEventMessageEventsAnalyzer *)self transportTypeForRemoteMessageCounterRequestGroup:v4];
        v19 = [(HMDLogEventMessageEventsAnalyzer *)self messageDirectionStringForRemoteMessageCounterRequestGroup:v4];
        v20 = [v27 hmf_numberForKey:v14];
        if (v18 && v19)
        {
          v21 = [HMDAggregateRemoteMessageCountersLogEvent aggregateRemoteCountersLogEventWithMessageName:v17 deviceType:v16 transportType:v18 direction:v19 primaryResidentDuration:v20 count:v8];
          v22 = [(HMDLogEventMessageEventsAnalyzer *)self logEventSubmitter];
          [v22 submitLogEvent:v21];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  v23 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  [v23 resetEventCountersForRequestGroup:v4];

  v24 = *MEMORY[0x277D85DE8];
}

- (unsigned)messageDirectionStringForRemoteMessageCounterRequestGroup:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"HMDLogEventMessageAnalyzerTxIDSMessagesCountPeriodicRequestGroup"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HMDLogEventMessageAnalyzerTxIDSProxyMessagesCountPeriodicRequestGroup") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HMDLogEventMessageAnalyzerTxLoxyMessagesCountPeriodicRequestGroup") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HMDLogEventMessageAnalyzerTxRapportMessagesCountPeriodicRequestGroup") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HMDLogEventMessageAnalyzerTxRapportOverBLEMessagesCountPeriodicRequestGroup") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HMDLogEventMessageAnalyzerTxSecureMessagesCountPeriodicRequestGroup"))
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"HMDLogEventMessageAnalyzerRxIDSMessagesCountPeriodicRequestGroup"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HMDLogEventMessageAnalyzerRxIDSProxyMessagesCountPeriodicRequestGroup") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HMDLogEventMessageAnalyzerRxLoxyMessagesCountPeriodicRequestGroup") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HMDLogEventMessageAnalyzerRxRapportMessagesCountPeriodicRequestGroup"))
  {
    v4 = 2;
  }

  else
  {
    v4 = 2;
    if (([v3 isEqualToString:@"HMDLogEventMessageAnalyzerRxRapportOverBLEMessagesCountPeriodicRequestGroup"] & 1) == 0)
    {
      if ([v3 isEqualToString:@"HMDLogEventMessageAnalyzerRxSecureMessagesCountPeriodicRequestGroup"])
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (unsigned)transportTypeForRemoteMessageCounterRequestGroup:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"HMDLogEventMessageAnalyzerTxIDSMessagesCountPeriodicRequestGroup"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HMDLogEventMessageAnalyzerRxIDSMessagesCountPeriodicRequestGroup"))
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"HMDLogEventMessageAnalyzerTxIDSProxyMessagesCountPeriodicRequestGroup"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HMDLogEventMessageAnalyzerRxIDSProxyMessagesCountPeriodicRequestGroup"))
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"HMDLogEventMessageAnalyzerTxLoxyMessagesCountPeriodicRequestGroup"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HMDLogEventMessageAnalyzerRxLoxyMessagesCountPeriodicRequestGroup"))
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"HMDLogEventMessageAnalyzerTxRapportMessagesCountPeriodicRequestGroup"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HMDLogEventMessageAnalyzerRxRapportMessagesCountPeriodicRequestGroup"))
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"HMDLogEventMessageAnalyzerTxRapportOverBLEMessagesCountPeriodicRequestGroup"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"HMDLogEventMessageAnalyzerRxRapportOverBLEMessagesCountPeriodicRequestGroup"))
  {
    v4 = 5;
  }

  else
  {
    v4 = 5;
    if (([v3 isEqualToString:@"HMDLogEventMessageAnalyzerTxSecureMessagesCountPeriodicRequestGroup"] & 1) == 0)
    {
      if ([v3 isEqualToString:@"HMDLogEventMessageAnalyzerRxSecureMessagesCountPeriodicRequestGroup"])
      {
        v4 = 5;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (void)submitXPCMessageCountersForGroup:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  v6 = [v5 counterGroupForName:@"HMDLogEventMessageAnalyzerCommon"];
  [v6 durationForCounter:@"PrimaryResidentDuration"];
  v8 = v7;

  v28 = self;
  v9 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  v31 = v4;
  v10 = [v9 fetchEventCountersForRequestGroup:v4];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [v10 allKeys];
  v11 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = @"/";
    v14 = *v33;
    do
    {
      v15 = 0;
      v29 = v12;
      do
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v32 + 1) + 8 * v15);
        v17 = [v16 componentsSeparatedByString:v13];
        v18 = [v17 firstObject];
        v19 = [v17 lastObject];
        v20 = [v10 hmf_numberForKey:v16];
        if ([v20 intValue] >= 101)
        {
          v21 = v14;
          v22 = v10;
          v23 = v13;
          if ([v31 isEqualToString:@"HMDLogEventXPCAcceptedMessagesCountDailyRequestGroup"])
          {
            v24 = [HMDAggregateXPCMessageCountersLogEvent xpcAcceptedCountersLogEventWithPeerInformation:v18 messageName:v19 primaryResidentDuration:v20 count:v8];
          }

          else
          {
            v24 = 0;
          }

          if ([v31 isEqualToString:@"HMDLogEventXPCSentMessagesCountDailyRequestGroup"])
          {
            v25 = [HMDAggregateXPCMessageCountersLogEvent xpcSentCountersLogEventWithPeerInformation:v18 messageName:v19 primaryResidentDuration:v20 count:v8];

            v24 = v25;
          }

          if (v24)
          {
            v26 = [(HMDLogEventMessageEventsAnalyzer *)v28 logEventSubmitter];
            [v26 submitLogEvent:v24];
          }

          v13 = v23;
          v10 = v22;
          v14 = v21;
          v12 = v29;
        }

        ++v15;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v12);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)addTTRThresholdTrigger:(id)a3 forEventName:(id)a4 requestGroup:(id)a5 atThreshold:(unint64_t)a6 radarInitiator:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v17 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  v16 = [[HMDCounterThresholdTTRTrigger alloc] initWithThreshold:a6 displayReason:v15 radarInitiator:v12];

  [v17 addObserver:v16 forEventName:v14 requestGroup:v13];
}

- (void)registerTTRTriggersWithDataSource:(id)a3
{
  v4 = [a3 radarInitiator];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:100000 radarInitiator:v4];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSProxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:100000 radarInitiator:v6];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeRapportEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:100000 radarInitiator:v6];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeRapportOverBLEEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:100000 radarInitiator:v6];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeLoxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:100000 radarInitiator:v6];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeSecureEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:100000 radarInitiator:v6];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:100000 radarInitiator:v6];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSProxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:100000 radarInitiator:v6];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeRapportEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:100000 radarInitiator:v6];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeRapportOverBLEEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:100000 radarInitiator:v6];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeLoxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:100000 radarInitiator:v6];
    v4 = [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeSecureEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:100000 radarInitiator:v6];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)registerEWSTriggersWithDataSource:(id)a3
{
  v3 = a3;
  [v3 addThresholdTrigger:@"sentIDSMessageCount" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:5000];
  [v3 addThresholdTrigger:@"receivedIDSMessageCount" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:5000];
  [v3 addThresholdTrigger:@"sentIDSProxyMessageCount" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSProxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:5000];
  [v3 addThresholdTrigger:@"receivedIDSProxyMessageCount" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSProxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:5000];
  [v3 addThresholdTrigger:@"sentLoXYMessageCount" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeLoxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:5000];
  [v3 addThresholdTrigger:@"receivedLoXYMessageCount" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeLoxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:5000];
  [v3 addRateTrigger:@"sentIDSMessageRate" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:100 windowSize:3600];
  [v3 addRateTrigger:@"receivedIDSMessageRate" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:100 windowSize:3600];
  [v3 addRateTrigger:@"sentIDSProxyMessageRate" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSProxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:100 windowSize:3600];
  [v3 addRateTrigger:@"receivedIDSProxyMessageRate" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSProxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:100 windowSize:3600];
  [v3 addRateTrigger:@"sentLoXYMessageRate" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeLoxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:100 windowSize:3600];
  [v3 addRateTrigger:@"receivedLoXYMessageRate" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeLoxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:100 windowSize:3600];
}

- (HMDLogEventMessageEventsAnalyzer)initWithDataSource:(id)a3
{
  v25[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = HMDLogEventMessageEventsAnalyzer;
  v5 = [(HMDLogEventMessageEventsAnalyzer *)&v24 init];
  if (v5)
  {
    v6 = [v4 legacyCountersManager];
    eventCountersManager = v5->_eventCountersManager;
    v5->_eventCountersManager = v6;

    v8 = [v4 logEventSubmitter];
    logEventSubmitter = v5->_logEventSubmitter;
    v5->_logEventSubmitter = v8;

    v10 = [v4 userDefaults];
    userDefaults = v5->_userDefaults;
    v5->_userDefaults = v10;

    v12 = [v4 logEventDispatcher];
    v13 = [v12 clientQueue];
    workQueue = v5->_workQueue;
    v5->_workQueue = v13;

    v15 = [(HMDEventCountersManager *)v5->_eventCountersManager counterGroupForName:@"HMDLogEventResidentSyncRemoteMessagesRequestGroup"];
    residentSyncGroup = v5->_residentSyncGroup;
    v5->_residentSyncGroup = v15;

    v17 = [(HMDEventCountersManager *)v5->_eventCountersManager counterGroupForName:@"HMDMessageEventsAnalyzerHomeManagerMessagesRequestGroup"];
    homeManagerMessagesGroup = v5->_homeManagerMessagesGroup;
    v5->_homeManagerMessagesGroup = v17;

    v19 = [v4 logEventDispatcher];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v25[3] = objc_opt_class();
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
    [v19 addObserver:v5 forEventClasses:v20];

    v21 = [v4 notificationCenter];
    [v21 addObserver:v5 selector:sel_handlePrimaryResidentChangedNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];

    [(HMDLogEventMessageEventsAnalyzer *)v5 registerEWSTriggersWithDataSource:v4];
    [(HMDLogEventMessageEventsAnalyzer *)v5 registerTTRTriggersWithDataSource:v4];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)managedEventCounterRequestGroups
{
  v5[19] = *MEMORY[0x277D85DE8];
  v5[0] = @"HMDLogEventMessageAnalyzerRxIDSMessagesCountPeriodicRequestGroup";
  v5[1] = @"HMDLogEventMessageAnalyzerTxIDSMessagesCountPeriodicRequestGroup";
  v5[2] = @"HMDLogEventMessageAnalyzerRxIDSProxyMessagesCountPeriodicRequestGroup";
  v5[3] = @"HMDLogEventMessageAnalyzerTxIDSProxyMessagesCountPeriodicRequestGroup";
  v5[4] = @"HMDLogEventMessageAnalyzerRxLoxyMessagesCountPeriodicRequestGroup";
  v5[5] = @"HMDLogEventMessageAnalyzerTxLoxyMessagesCountPeriodicRequestGroup";
  v5[6] = @"HMDLogEventMessageAnalyzerRxRapportMessagesCountPeriodicRequestGroup";
  v5[7] = @"HMDLogEventMessageAnalyzerTxRapportMessagesCountPeriodicRequestGroup";
  v5[8] = @"HMDLogEventMessageAnalyzerRxRapportOverBLEMessagesCountPeriodicRequestGroup";
  v5[9] = @"HMDLogEventMessageAnalyzerTxRapportOverBLEMessagesCountPeriodicRequestGroup";
  v5[10] = @"HMDLogEventMessageAnalyzerRxSecureMessagesCountPeriodicRequestGroup";
  v5[11] = @"HMDLogEventMessageAnalyzerTxSecureMessagesCountPeriodicRequestGroup";
  v5[12] = @"HMDLogEventXPCAcceptedMessagesCountDailyRequestGroup";
  v5[13] = @"HMDLogEventXPCSentMessagesCountDailyRequestGroup";
  v5[14] = @"HMDLogEventXPCAErroredMessagesCountDailyRequestGroup";
  v5[15] = @"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup";
  v5[16] = @"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup";
  v5[17] = @"HMDLogEventResidentSyncRemoteMessagesRequestGroup";
  v5[18] = @"HMDMessageEventsAnalyzerHomeManagerMessagesRequestGroup";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:19];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end