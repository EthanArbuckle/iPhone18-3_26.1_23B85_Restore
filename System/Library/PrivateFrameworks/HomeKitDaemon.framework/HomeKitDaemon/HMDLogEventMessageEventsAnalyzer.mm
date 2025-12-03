@interface HMDLogEventMessageEventsAnalyzer
+ (id)managedEventCounterRequestGroups;
- (HMDLogEventMessageEventsAnalyzer)initWithDataSource:(id)source;
- (id)periodicRemoteMessageCounterEventNameWithMessageName:(id)name peerInformation:(id)information;
- (unsigned)messageDirectionStringForRemoteMessageCounterRequestGroup:(id)group;
- (unsigned)transportTypeForRemoteMessageCounterRequestGroup:(id)group;
- (void)_handleRemoteMessageLogEvent:(id)event;
- (void)_handleXPCMessageCounterLogEvent:(id)event;
- (void)_updateDailySubmissionGroupRemoteMessageEventCountersForTransportType:(int)type messageDirectionSending:(BOOL)sending;
- (void)_updatePeriodicSubmissionGroupRemoteMessageEventCountersForMessageName:(id)name peerInformation:(id)information transportType:(int)type messageDirectionSending:(BOOL)sending identifier:(id)identifier;
- (void)_updateResidentSyncCountersWithRemoteMessageLogEvent:(id)event;
- (void)addTTRThresholdTrigger:(id)trigger forEventName:(id)name requestGroup:(id)group atThreshold:(unint64_t)threshold radarInitiator:(id)initiator;
- (void)handlePrimaryResidentChangedNotification:(id)notification;
- (void)observeEvent:(id)event;
- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date;
- (void)registerEWSTriggersWithDataSource:(id)source;
- (void)registerTTRTriggersWithDataSource:(id)source;
- (void)resetAggregationAnalysisContext;
- (void)submitDailyMessageEvents;
- (void)submitRemoteMessageCounters;
- (void)submitRemoteMessageCountersForGroup:(id)group;
- (void)submitXPCMessageCounters;
- (void)submitXPCMessageCountersForGroup:(id)group;
@end

@implementation HMDLogEventMessageEventsAnalyzer

- (void)submitDailyMessageEvents
{
  [(HMDLogEventMessageEventsAnalyzer *)self submitRemoteMessageCounters];

  [(HMDLogEventMessageEventsAnalyzer *)self submitXPCMessageCounters];
}

- (void)resetAggregationAnalysisContext
{
  eventCountersManager = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  [eventCountersManager resetEventCountersForRequestGroup:@"HMDLogEventXPCAcceptedMessagesCountDailyRequestGroup"];

  eventCountersManager2 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  [eventCountersManager2 resetEventCountersForRequestGroup:@"HMDLogEventXPCSentMessagesCountDailyRequestGroup"];

  eventCountersManager3 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  [eventCountersManager3 resetEventCountersForRequestGroup:@"HMDLogEventXPCAErroredMessagesCountDailyRequestGroup"];

  eventCountersManager4 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  [eventCountersManager4 resetEventCountersForRequestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup"];

  eventCountersManager5 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  [eventCountersManager5 resetEventCountersForRequestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup"];

  residentSyncGroup = [(HMDLogEventMessageEventsAnalyzer *)self residentSyncGroup];
  [residentSyncGroup resetEventCounters];

  homeManagerMessagesGroup = [(HMDLogEventMessageEventsAnalyzer *)self homeManagerMessagesGroup];
  [homeManagerMessagesGroup resetEventCounters];
}

- (void)populateAggregationAnalysisLogEvent:(id)event forDate:(id)date
{
  dateCopy = date;
  eventCopy = event;
  eventCountersManager = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  v9 = [eventCountersManager counterGroupForName:@"HMDLogEventXPCAcceptedMessagesCountDailyRequestGroup"];
  [eventCopy setAcceptedXPCRequestsCount:{objc_msgSend(v9, "summedEventCountersForDate:", dateCopy)}];

  eventCountersManager2 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  v11 = [eventCountersManager2 counterGroupForName:@"HMDLogEventXPCSentMessagesCountDailyRequestGroup"];
  [eventCopy setSentXPCNotificationsCount:{objc_msgSend(v11, "summedEventCountersForDate:", dateCopy)}];

  eventCountersManager3 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  v13 = [eventCountersManager3 counterGroupForName:@"HMDLogEventXPCAErroredMessagesCountDailyRequestGroup"];
  [eventCopy setErroredXPCRequestsCount:{objc_msgSend(v13, "summedEventCountersForDate:", dateCopy)}];

  eventCountersManager4 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  v22 = [eventCountersManager4 counterGroupForName:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup"];

  eventCountersManager5 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  v16 = [eventCountersManager5 counterGroupForName:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup"];

  [eventCopy setRxIDSMessagesCount:{objc_msgSend(v22, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSEventCounter", dateCopy)}];
  [eventCopy setTxIDSMessagesCount:{objc_msgSend(v16, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSEventCounter", dateCopy)}];
  [eventCopy setRxIDSProxyMessagesCount:{objc_msgSend(v22, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSProxyEventCounter", dateCopy)}];
  [eventCopy setTxIDSProxyMessagesCount:{objc_msgSend(v16, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSProxyEventCounter", dateCopy)}];
  [eventCopy setRxLoxyMessagesCount:{objc_msgSend(v22, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeLoxyEventCounter", dateCopy)}];
  [eventCopy setTxLoxyMessagesCount:{objc_msgSend(v16, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeLoxyEventCounter", dateCopy)}];
  [eventCopy setRxRapportMessagesCount:{objc_msgSend(v22, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeRapportEventCounter", dateCopy)}];
  [eventCopy setTxRapportMessagesCount:{objc_msgSend(v16, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeRapportEventCounter", dateCopy)}];
  [eventCopy setRxRapportOverBLEMessagesCount:{objc_msgSend(v22, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeRapportOverBLEEventCounter", dateCopy)}];
  [eventCopy setTxRapportOverBLEMessagesCount:{objc_msgSend(v16, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeRapportOverBLEEventCounter", dateCopy)}];
  [eventCopy setRxSecureMessagesCount:{objc_msgSend(v22, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeSecureEventCounter", dateCopy)}];
  [eventCopy setTxSecureMessagesCount:{objc_msgSend(v16, "fetchEventCounterForEventName:forDate:", @"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeSecureEventCounter", dateCopy)}];
  [eventCopy setRemoteMessagesSentCount:{objc_msgSend(eventCopy, "txIDSProxyMessagesCount") + objc_msgSend(eventCopy, "txIDSMessagesCount") + objc_msgSend(eventCopy, "txRapportMessagesCount") + objc_msgSend(eventCopy, "txRapportOverBLEMessagesCount") + objc_msgSend(eventCopy, "txLoxyMessagesCount")}];
  [eventCopy setRemoteMessagesReceivedCount:{objc_msgSend(eventCopy, "rxLoxyMessagesCount") + objc_msgSend(eventCopy, "rxIDSMessagesCount") + objc_msgSend(eventCopy, "rxIDSProxyMessagesCount") + objc_msgSend(eventCopy, "rxRapportMessagesCount") + objc_msgSend(eventCopy, "rxRapportOverBLEMessagesCount") + objc_msgSend(eventCopy, "rxSecureMessagesCount")}];
  residentSyncGroup = [(HMDLogEventMessageEventsAnalyzer *)self residentSyncGroup];
  [eventCopy setResidentSyncHomeDataChangedNotificationCount:{objc_msgSend(residentSyncGroup, "fetchEventCounterForEventName:forDate:", @"HMDLogEventResidentSyncHomeDataChangedNotificationCounter", dateCopy)}];

  residentSyncGroup2 = [(HMDLogEventMessageEventsAnalyzer *)self residentSyncGroup];
  [eventCopy setResidentSyncFetchHomeDataRequestCount:{objc_msgSend(residentSyncGroup2, "fetchEventCounterForEventName:forDate:", @"HMDLogEventResidentSyncFetchHomeDataRequestCounter", dateCopy)}];

  homeManagerMessagesGroup = [(HMDLogEventMessageEventsAnalyzer *)self homeManagerMessagesGroup];
  [eventCopy setGenerationCounterIncrementCount:{objc_msgSend(homeManagerMessagesGroup, "fetchEventCounterForEventName:forDate:", @"HMDMessageEventsAnalyzerHomeManagerIncrementGenerationCounterEvent", dateCopy)}];

  homeManagerMessagesGroup2 = [(HMDLogEventMessageEventsAnalyzer *)self homeManagerMessagesGroup];
  v21 = [homeManagerMessagesGroup2 fetchEventCounterForEventName:@"HMDMessageEventsAnalyzerHomeManagerNotifyXPCClientsEvent" forDate:dateCopy];

  [eventCopy setNotifyXPCClientsHomeDataChangedCount:v21];
}

- (void)handlePrimaryResidentChangedNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDResidentDeviceManagerResidentDeviceNotificationKey"];
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
    eventCountersManager = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
    v10 = [eventCountersManager counterGroupForName:@"HMDLogEventMessageAnalyzerCommon"];

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
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly received update primary resident notification but the primary resident is nil", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_handleXPCMessageCounterLogEvent:(id)event
{
  v26 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  type = [eventCopy type];
  if ([type isEqual:@"XPCAcceptedRequests"])
  {
    v6 = @"HMDLogEventXPCAcceptedMessagesCountDailyRequestGroup";
LABEL_5:

    goto LABEL_6;
  }

  if ([type isEqual:@"XPCSentNotifications"])
  {
    v6 = @"HMDLogEventXPCSentMessagesCountDailyRequestGroup";
    goto LABEL_5;
  }

  v17 = [type isEqual:@"XPCErroredRequests"];
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
    peerInformation = [eventCopy peerInformation];
    v8 = [HMDMetricsUtilities shouldRedactBundleID:peerInformation];
    v9 = @"Third-party app";
    if (!v8)
    {
      v9 = peerInformation;
    }

    v10 = v9;

    v11 = MEMORY[0x277CCACA8];
    messageName = [eventCopy messageName];
    v13 = [v11 stringWithFormat:@"%@/%@", v10, messageName];

    eventCountersManager = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
    v15 = [eventCopy count];
    [eventCountersManager incrementEventCounterForEventName:v13 requestGroup:v6 withValue:{objc_msgSend(v15, "unsignedIntegerValue")}];

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
    v25 = eventCopy;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Unknown XPC message counter type - dropping the LogEvent %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
LABEL_9:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_updateResidentSyncCountersWithRemoteMessageLogEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy sending])
  {
    msgName = [eventCopy msgName];
    v5 = [msgName isEqualToString:@"HMDHomeDataChangedMessage"];

    if (v5)
    {
      v6 = @"HMDLogEventResidentSyncHomeDataChangedNotificationCounter";
    }

    else
    {
      msgName2 = [eventCopy msgName];
      v8 = [msgName2 isEqualToString:@"HMDFetchHomeDataMessage"];

      if (!v8)
      {
        goto LABEL_7;
      }

      v6 = @"HMDLogEventResidentSyncFetchHomeDataRequestCounter";
    }

    residentSyncGroup = [(HMDLogEventMessageEventsAnalyzer *)self residentSyncGroup];
    [residentSyncGroup incrementEventCounterForEventName:v6];
  }

LABEL_7:
}

- (void)_updatePeriodicSubmissionGroupRemoteMessageEventCountersForMessageName:(id)name peerInformation:(id)information transportType:(int)type messageDirectionSending:(BOOL)sending identifier:(id)identifier
{
  sendingCopy = sending;
  v31 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  informationCopy = information;
  identifierCopy = identifier;
  if (type > 3)
  {
    switch(type)
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
    switch(type)
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
        if (sendingCopy)
        {
          v15 = v16;
        }

        v20 = v15;
        v21 = [(HMDLogEventMessageEventsAnalyzer *)self periodicRemoteMessageCounterEventNameWithMessageName:nameCopy peerInformation:informationCopy];
        if (v21)
        {
          eventCountersManager = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
          [eventCountersManager incrementEventCounterForEventName:v21 requestGroup:v20];
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
            v30 = identifierCopy;
            _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Unable to retrieve eventName for remoteMessage - dropping remote message log event with identifier %@", &v27, 0x16u);
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
    v30 = identifierCopy;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Invalid transport type - dropping remote message log event with identifier %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
LABEL_25:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_updateDailySubmissionGroupRemoteMessageEventCountersForTransportType:(int)type messageDirectionSending:(BOOL)sending
{
  v5 = type - 1;
  if (type - 1) <= 6 && ((0x6Fu >> v5))
  {
    v7 = off_278671A10[v5];
    v8 = @"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup";
    if (sending)
    {
      v8 = @"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup";
    }

    v9 = v8;
    eventCountersManager = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
    [eventCountersManager incrementEventCounterForEventName:v7 requestGroup:v9];
  }
}

- (void)_handleRemoteMessageLogEvent:(id)event
{
  v41 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    secure = [eventCopy secure];
    v10 = &stru_283CF9D50;
    if (secure)
    {
      v10 = @"secure ";
    }

    v26 = v10;
    msgName = [eventCopy msgName];
    if ([eventCopy sending])
    {
      v12 = @"sent";
    }

    else
    {
      v12 = @"received";
    }

    transportType = [eventCopy transportType];
    if (transportType > 7)
    {
      v14 = 0;
    }

    else
    {
      v14 = off_2786897D0[transportType];
    }

    v15 = v14;
    msgType = [eventCopy msgType];
    if (msgType > 3)
    {
      v17 = 0;
    }

    else
    {
      v17 = off_278689828[msgType];
    }

    v18 = v17;
    [eventCopy msgQoS];
    v19 = HMFQualityOfServiceToString();
    *buf = 138544898;
    v28 = v8;
    v29 = 2114;
    v30 = v26;
    v31 = 2114;
    v32 = msgName;
    v33 = 2114;
    v34 = v12;
    v35 = 2114;
    v36 = v15;
    v37 = 2114;
    v38 = v18;
    v39 = 2114;
    v40 = v19;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@[CA] HMDRemoteMessageLogEvent -- %{public}@message %{public}@ %{public}@ over %{public}@ as %{public}@ (QoS: %{public}@)", buf, 0x48u);
  }

  objc_autoreleasePoolPop(v5);
  -[HMDLogEventMessageEventsAnalyzer _updateDailySubmissionGroupRemoteMessageEventCountersForTransportType:messageDirectionSending:](selfCopy, "_updateDailySubmissionGroupRemoteMessageEventCountersForTransportType:messageDirectionSending:", [eventCopy transportType], objc_msgSend(eventCopy, "sending"));
  msgName2 = [eventCopy msgName];
  peerInformation = [eventCopy peerInformation];
  transportType2 = [eventCopy transportType];
  sending = [eventCopy sending];
  msgIdentifier = [eventCopy msgIdentifier];
  [(HMDLogEventMessageEventsAnalyzer *)selfCopy _updatePeriodicSubmissionGroupRemoteMessageEventCountersForMessageName:msgName2 peerInformation:peerInformation transportType:transportType2 messageDirectionSending:sending identifier:msgIdentifier];

  [(HMDLogEventMessageEventsAnalyzer *)selfCopy _updateResidentSyncCountersWithRemoteMessageLogEvent:eventCopy];
  v25 = *MEMORY[0x277D85DE8];
}

- (id)periodicRemoteMessageCounterEventNameWithMessageName:(id)name peerInformation:(id)information
{
  informationCopy = information;
  v6 = informationCopy;
  if (name)
  {
    if (!informationCopy)
    {
      v6 = @"Unknown";
    }

    name = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v6, name];
  }

  return name;
}

- (void)observeEvent:(id)event
{
  eventCopy = event;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HMDLogEventMessageEventsAnalyzer_observeEvent___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
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

- (void)submitRemoteMessageCountersForGroup:(id)group
{
  v33 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  eventCountersManager = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  v6 = [eventCountersManager counterGroupForName:@"HMDLogEventMessageAnalyzerCommon"];
  [v6 durationForCounter:@"PrimaryResidentDuration"];
  v8 = v7;

  eventCountersManager2 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  v10 = [eventCountersManager2 fetchEventCountersForRequestGroup:groupCopy];

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
        firstObject = [v15 firstObject];
        lastObject = [v15 lastObject];
        v18 = [(HMDLogEventMessageEventsAnalyzer *)self transportTypeForRemoteMessageCounterRequestGroup:groupCopy];
        v19 = [(HMDLogEventMessageEventsAnalyzer *)self messageDirectionStringForRemoteMessageCounterRequestGroup:groupCopy];
        v20 = [v27 hmf_numberForKey:v14];
        if (v18 && v19)
        {
          v21 = [HMDAggregateRemoteMessageCountersLogEvent aggregateRemoteCountersLogEventWithMessageName:lastObject deviceType:firstObject transportType:v18 direction:v19 primaryResidentDuration:v20 count:v8];
          logEventSubmitter = [(HMDLogEventMessageEventsAnalyzer *)self logEventSubmitter];
          [logEventSubmitter submitLogEvent:v21];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  eventCountersManager3 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  [eventCountersManager3 resetEventCountersForRequestGroup:groupCopy];

  v24 = *MEMORY[0x277D85DE8];
}

- (unsigned)messageDirectionStringForRemoteMessageCounterRequestGroup:(id)group
{
  groupCopy = group;
  if ([groupCopy isEqualToString:@"HMDLogEventMessageAnalyzerTxIDSMessagesCountPeriodicRequestGroup"] & 1) != 0 || (objc_msgSend(groupCopy, "isEqualToString:", @"HMDLogEventMessageAnalyzerTxIDSProxyMessagesCountPeriodicRequestGroup") & 1) != 0 || (objc_msgSend(groupCopy, "isEqualToString:", @"HMDLogEventMessageAnalyzerTxLoxyMessagesCountPeriodicRequestGroup") & 1) != 0 || (objc_msgSend(groupCopy, "isEqualToString:", @"HMDLogEventMessageAnalyzerTxRapportMessagesCountPeriodicRequestGroup") & 1) != 0 || (objc_msgSend(groupCopy, "isEqualToString:", @"HMDLogEventMessageAnalyzerTxRapportOverBLEMessagesCountPeriodicRequestGroup") & 1) != 0 || (objc_msgSend(groupCopy, "isEqualToString:", @"HMDLogEventMessageAnalyzerTxSecureMessagesCountPeriodicRequestGroup"))
  {
    v4 = 1;
  }

  else if ([groupCopy isEqualToString:@"HMDLogEventMessageAnalyzerRxIDSMessagesCountPeriodicRequestGroup"] & 1) != 0 || (objc_msgSend(groupCopy, "isEqualToString:", @"HMDLogEventMessageAnalyzerRxIDSProxyMessagesCountPeriodicRequestGroup") & 1) != 0 || (objc_msgSend(groupCopy, "isEqualToString:", @"HMDLogEventMessageAnalyzerRxLoxyMessagesCountPeriodicRequestGroup") & 1) != 0 || (objc_msgSend(groupCopy, "isEqualToString:", @"HMDLogEventMessageAnalyzerRxRapportMessagesCountPeriodicRequestGroup"))
  {
    v4 = 2;
  }

  else
  {
    v4 = 2;
    if (([groupCopy isEqualToString:@"HMDLogEventMessageAnalyzerRxRapportOverBLEMessagesCountPeriodicRequestGroup"] & 1) == 0)
    {
      if ([groupCopy isEqualToString:@"HMDLogEventMessageAnalyzerRxSecureMessagesCountPeriodicRequestGroup"])
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

- (unsigned)transportTypeForRemoteMessageCounterRequestGroup:(id)group
{
  groupCopy = group;
  if ([groupCopy isEqualToString:@"HMDLogEventMessageAnalyzerTxIDSMessagesCountPeriodicRequestGroup"] & 1) != 0 || (objc_msgSend(groupCopy, "isEqualToString:", @"HMDLogEventMessageAnalyzerRxIDSMessagesCountPeriodicRequestGroup"))
  {
    v4 = 1;
  }

  else if ([groupCopy isEqualToString:@"HMDLogEventMessageAnalyzerTxIDSProxyMessagesCountPeriodicRequestGroup"] & 1) != 0 || (objc_msgSend(groupCopy, "isEqualToString:", @"HMDLogEventMessageAnalyzerRxIDSProxyMessagesCountPeriodicRequestGroup"))
  {
    v4 = 2;
  }

  else if ([groupCopy isEqualToString:@"HMDLogEventMessageAnalyzerTxLoxyMessagesCountPeriodicRequestGroup"] & 1) != 0 || (objc_msgSend(groupCopy, "isEqualToString:", @"HMDLogEventMessageAnalyzerRxLoxyMessagesCountPeriodicRequestGroup"))
  {
    v4 = 3;
  }

  else if ([groupCopy isEqualToString:@"HMDLogEventMessageAnalyzerTxRapportMessagesCountPeriodicRequestGroup"] & 1) != 0 || (objc_msgSend(groupCopy, "isEqualToString:", @"HMDLogEventMessageAnalyzerRxRapportMessagesCountPeriodicRequestGroup"))
  {
    v4 = 4;
  }

  else if ([groupCopy isEqualToString:@"HMDLogEventMessageAnalyzerTxRapportOverBLEMessagesCountPeriodicRequestGroup"] & 1) != 0 || (objc_msgSend(groupCopy, "isEqualToString:", @"HMDLogEventMessageAnalyzerRxRapportOverBLEMessagesCountPeriodicRequestGroup"))
  {
    v4 = 5;
  }

  else
  {
    v4 = 5;
    if (([groupCopy isEqualToString:@"HMDLogEventMessageAnalyzerTxSecureMessagesCountPeriodicRequestGroup"] & 1) == 0)
    {
      if ([groupCopy isEqualToString:@"HMDLogEventMessageAnalyzerRxSecureMessagesCountPeriodicRequestGroup"])
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

- (void)submitXPCMessageCountersForGroup:(id)group
{
  v37 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  eventCountersManager = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  v6 = [eventCountersManager counterGroupForName:@"HMDLogEventMessageAnalyzerCommon"];
  [v6 durationForCounter:@"PrimaryResidentDuration"];
  v8 = v7;

  selfCopy = self;
  eventCountersManager2 = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  v31 = groupCopy;
  v10 = [eventCountersManager2 fetchEventCountersForRequestGroup:groupCopy];

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
        firstObject = [v17 firstObject];
        lastObject = [v17 lastObject];
        v20 = [v10 hmf_numberForKey:v16];
        if ([v20 intValue] >= 101)
        {
          v21 = v14;
          v22 = v10;
          v23 = v13;
          if ([v31 isEqualToString:@"HMDLogEventXPCAcceptedMessagesCountDailyRequestGroup"])
          {
            v24 = [HMDAggregateXPCMessageCountersLogEvent xpcAcceptedCountersLogEventWithPeerInformation:firstObject messageName:lastObject primaryResidentDuration:v20 count:v8];
          }

          else
          {
            v24 = 0;
          }

          if ([v31 isEqualToString:@"HMDLogEventXPCSentMessagesCountDailyRequestGroup"])
          {
            v25 = [HMDAggregateXPCMessageCountersLogEvent xpcSentCountersLogEventWithPeerInformation:firstObject messageName:lastObject primaryResidentDuration:v20 count:v8];

            v24 = v25;
          }

          if (v24)
          {
            logEventSubmitter = [(HMDLogEventMessageEventsAnalyzer *)selfCopy logEventSubmitter];
            [logEventSubmitter submitLogEvent:v24];
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

- (void)addTTRThresholdTrigger:(id)trigger forEventName:(id)name requestGroup:(id)group atThreshold:(unint64_t)threshold radarInitiator:(id)initiator
{
  initiatorCopy = initiator;
  groupCopy = group;
  nameCopy = name;
  triggerCopy = trigger;
  eventCountersManager = [(HMDLogEventMessageEventsAnalyzer *)self eventCountersManager];
  v16 = [[HMDCounterThresholdTTRTrigger alloc] initWithThreshold:threshold displayReason:triggerCopy radarInitiator:initiatorCopy];

  [eventCountersManager addObserver:v16 forEventName:nameCopy requestGroup:groupCopy];
}

- (void)registerTTRTriggersWithDataSource:(id)source
{
  radarInitiator = [source radarInitiator];
  if (radarInitiator)
  {
    v5 = radarInitiator;
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:100000 radarInitiator:radarInitiator];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSProxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:100000 radarInitiator:v5];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeRapportEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:100000 radarInitiator:v5];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeRapportOverBLEEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:100000 radarInitiator:v5];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeLoxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:100000 radarInitiator:v5];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeSecureEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:100000 radarInitiator:v5];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:100000 radarInitiator:v5];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSProxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:100000 radarInitiator:v5];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeRapportEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:100000 radarInitiator:v5];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeRapportOverBLEEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:100000 radarInitiator:v5];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeLoxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:100000 radarInitiator:v5];
    [(HMDLogEventMessageEventsAnalyzer *)self addTTRThresholdTrigger:@"we detected excessive remote message counts" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeSecureEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:100000 radarInitiator:v5];
    radarInitiator = v5;
  }
}

- (void)registerEWSTriggersWithDataSource:(id)source
{
  sourceCopy = source;
  [sourceCopy addThresholdTrigger:@"sentIDSMessageCount" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:5000];
  [sourceCopy addThresholdTrigger:@"receivedIDSMessageCount" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:5000];
  [sourceCopy addThresholdTrigger:@"sentIDSProxyMessageCount" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSProxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:5000];
  [sourceCopy addThresholdTrigger:@"receivedIDSProxyMessageCount" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSProxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:5000];
  [sourceCopy addThresholdTrigger:@"sentLoXYMessageCount" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeLoxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:5000];
  [sourceCopy addThresholdTrigger:@"receivedLoXYMessageCount" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeLoxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:5000];
  [sourceCopy addRateTrigger:@"sentIDSMessageRate" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:100 windowSize:3600];
  [sourceCopy addRateTrigger:@"receivedIDSMessageRate" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:100 windowSize:3600];
  [sourceCopy addRateTrigger:@"sentIDSProxyMessageRate" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSProxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:100 windowSize:3600];
  [sourceCopy addRateTrigger:@"receivedIDSProxyMessageRate" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeIDSProxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:100 windowSize:3600];
  [sourceCopy addRateTrigger:@"sentLoXYMessageRate" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeLoxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageSentDailyRequestGroup" atThreshold:100 windowSize:3600];
  [sourceCopy addRateTrigger:@"receivedLoXYMessageRate" forEventName:@"HMDLogEventMessageAnalyzerRemoteMessageTransportTypeLoxyEventCounter" requestGroup:@"HMDLogEventMessageAnalyzerRemoteMessageReceivedDailyRequestGroup" atThreshold:100 windowSize:3600];
}

- (HMDLogEventMessageEventsAnalyzer)initWithDataSource:(id)source
{
  v25[4] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v24.receiver = self;
  v24.super_class = HMDLogEventMessageEventsAnalyzer;
  v5 = [(HMDLogEventMessageEventsAnalyzer *)&v24 init];
  if (v5)
  {
    legacyCountersManager = [sourceCopy legacyCountersManager];
    eventCountersManager = v5->_eventCountersManager;
    v5->_eventCountersManager = legacyCountersManager;

    logEventSubmitter = [sourceCopy logEventSubmitter];
    logEventSubmitter = v5->_logEventSubmitter;
    v5->_logEventSubmitter = logEventSubmitter;

    userDefaults = [sourceCopy userDefaults];
    userDefaults = v5->_userDefaults;
    v5->_userDefaults = userDefaults;

    logEventDispatcher = [sourceCopy logEventDispatcher];
    clientQueue = [logEventDispatcher clientQueue];
    workQueue = v5->_workQueue;
    v5->_workQueue = clientQueue;

    v15 = [(HMDEventCountersManager *)v5->_eventCountersManager counterGroupForName:@"HMDLogEventResidentSyncRemoteMessagesRequestGroup"];
    residentSyncGroup = v5->_residentSyncGroup;
    v5->_residentSyncGroup = v15;

    v17 = [(HMDEventCountersManager *)v5->_eventCountersManager counterGroupForName:@"HMDMessageEventsAnalyzerHomeManagerMessagesRequestGroup"];
    homeManagerMessagesGroup = v5->_homeManagerMessagesGroup;
    v5->_homeManagerMessagesGroup = v17;

    logEventDispatcher2 = [sourceCopy logEventDispatcher];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v25[3] = objc_opt_class();
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
    [logEventDispatcher2 addObserver:v5 forEventClasses:v20];

    notificationCenter = [sourceCopy notificationCenter];
    [notificationCenter addObserver:v5 selector:sel_handlePrimaryResidentChangedNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];

    [(HMDLogEventMessageEventsAnalyzer *)v5 registerEWSTriggersWithDataSource:sourceCopy];
    [(HMDLogEventMessageEventsAnalyzer *)v5 registerTTRTriggersWithDataSource:sourceCopy];
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