@interface HMDHouseholdThreadNetworkStabilityLogEventFactory
- (HMDHouseholdThreadNetworkStabilityLogEventFactory)initWithThreadNetworkObserver:(id)observer;
- (id)coalescedLogEventsFromLogEvents:(id)events homeUUID:(id)d;
- (id)logEventsFromDictionary:(id)dictionary;
- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date;
- (id)serializeLogEvents:(id)events;
- (void)deleteCountersAfterDate:(id)date;
- (void)deleteCountersBeforeDate:(id)date;
@end

@implementation HMDHouseholdThreadNetworkStabilityLogEventFactory

- (void)deleteCountersAfterDate:(id)date
{
  dateCopy = date;
  threadNetworkObserver = [(HMDHouseholdThreadNetworkStabilityLogEventFactory *)self threadNetworkObserver];
  [threadNetworkObserver deleteCountersAfterDate:dateCopy];
}

- (void)deleteCountersBeforeDate:(id)date
{
  dateCopy = date;
  threadNetworkObserver = [(HMDHouseholdThreadNetworkStabilityLogEventFactory *)self threadNetworkObserver];
  [threadNetworkObserver deleteCountersBeforeDate:dateCopy];
}

- (id)coalescedLogEventsFromLogEvents:(id)events homeUUID:(id)d
{
  v68 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dCopy = d;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = eventsCopy;
  v54 = [eventsCopy countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v54)
  {
    v44 = dCopy;
    numThirdPartyBRs = 0;
    numAppleBRs = 0;
    maxSimuIPPrefixesDetected = 0;
    numThreadNetworks = 0;
    v58 = 0;
    v59 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v60 = 0;
    v61 = 0;
    v56 = 0;
    v57 = 0;
    v55 = 0;
    txDelayAvg = 0;
    v47 = 0;
    numAdvertisedBRs = 0;
    v12 = 0;
    v53 = *v63;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v63 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v62 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        if (v16)
        {
          threadNetworkStatusReport = [v16 threadNetworkStatusReport];
          if (numAdvertisedBRs <= [threadNetworkStatusReport numAdvertisedBRs])
          {
            threadNetworkStatusReport2 = [v16 threadNetworkStatusReport];
            numAdvertisedBRs = [threadNetworkStatusReport2 numAdvertisedBRs];
          }

          threadNetworkStatusReport3 = [v16 threadNetworkStatusReport];
          if (numAppleBRs <= [threadNetworkStatusReport3 numAppleBRs])
          {
            threadNetworkStatusReport4 = [v16 threadNetworkStatusReport];
            numAppleBRs = [threadNetworkStatusReport4 numAppleBRs];
          }

          threadNetworkStatusReport5 = [v16 threadNetworkStatusReport];
          if (numThirdPartyBRs <= [threadNetworkStatusReport5 numThirdPartyBRs])
          {
            threadNetworkStatusReport6 = [v16 threadNetworkStatusReport];
            numThirdPartyBRs = [threadNetworkStatusReport6 numThirdPartyBRs];
          }

          threadNetworkStatusReport7 = [v16 threadNetworkStatusReport];
          if (numThreadNetworks <= [threadNetworkStatusReport7 numThreadNetworks])
          {
            threadNetworkStatusReport8 = [v16 threadNetworkStatusReport];
            numThreadNetworks = [threadNetworkStatusReport8 numThreadNetworks];
          }

          threadNetworkStatusReport9 = [v16 threadNetworkStatusReport];
          if (maxSimuIPPrefixesDetected <= [threadNetworkStatusReport9 maxSimuIPPrefixesDetected])
          {
            threadNetworkStatusReport10 = [v16 threadNetworkStatusReport];
            maxSimuIPPrefixesDetected = [threadNetworkStatusReport10 maxSimuIPPrefixesDetected];
          }

          ++v12;

          threadNetworkStatusReport11 = [v16 threadNetworkStatusReport];
          v8 += [threadNetworkStatusReport11 txDelayAvg];

          threadNetworkStatusReport12 = [v16 threadNetworkStatusReport];
          v58 += [threadNetworkStatusReport12 txTotal];

          threadNetworkStatusReport13 = [v16 threadNetworkStatusReport];
          v7 += [threadNetworkStatusReport13 txSuccess];

          threadNetworkStatusReport14 = [v16 threadNetworkStatusReport];
          v9 += [threadNetworkStatusReport14 rxTotal];

          threadNetworkStatusReport15 = [v16 threadNetworkStatusReport];
          v10 += [threadNetworkStatusReport15 rxSuccess];

          threadNetworkStatusReport16 = [v16 threadNetworkStatusReport];
          v11 += [threadNetworkStatusReport16 reportDuration];

          v61 += [v16 threadNetworkUptime];
          v60 += [v16 threadNetworkDowntime];
          v59 += [v16 numReadWrites];
          v57 += [v16 numReadErrors];
          v56 += [v16 numWriteErrors];
          v55 += [v16 numSessionErrors];
          threadNetworkStatusReport17 = [v16 threadNetworkStatusReport];
          reportDuration = [threadNetworkStatusReport17 reportDuration];

          if (reportDuration)
          {
            threadNetworkStatusReport18 = [v16 threadNetworkStatusReport];
            if (txDelayAvg <= [threadNetworkStatusReport18 txDelayAvg])
            {
              threadNetworkStatusReport19 = [v16 threadNetworkStatusReport];
              txDelayAvg = [threadNetworkStatusReport19 txDelayAvg];
            }

            ++v47;
          }
        }
      }

      v54 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
    }

    while (v54);
    if (v12)
    {
      if (v47)
      {
        v37 = v8 / v47;
      }

      else
      {
        v37 = txDelayAvg;
      }

      v38 = [HMDHouseholdThreadNetworkStabilityLogEvent alloc];
      v39 = [[HMDThreadNetworkStatusReport alloc] initWithNumAdvertisedBRs:numAdvertisedBRs numAppleBRs:numAppleBRs numThirdPartyBRs:numThirdPartyBRs numThreadNetworks:numThreadNetworks maxSimuIPPrefixesDetected:maxSimuIPPrefixesDetected txTotal:v58 txSuccess:v7 txDelayAvg:v37 rxTotal:v9 rxSuccess:v10 reportDuration:v11];
      dCopy = v44;
      v40 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)v38 initWithHomeUUID:v44 numStabilityReporters:v12 threadNetworkStatusReport:v39 threadNetworkUptime:v61 threadNetworkDowntime:v60 numReadWrites:v59 numReadErrors:v57 numWriteErrors:v56 numSessionErrors:v55];
      v66 = v40;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
    }

    else
    {
      v41 = MEMORY[0x277CBEBF8];
      dCopy = v44;
    }
  }

  else
  {
    v41 = MEMORY[0x277CBEBF8];
  }

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

- (id)logEventsFromDictionary:(id)dictionary
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [dictionary objectForKeyedSubscript:@"threadNetworkStabilityLogEvent"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5 && (v6 = [[HMDThreadNetworkStabilityLogEvent alloc] initWithDictionary:v5]) != 0)
  {
    v7 = v6;
    v11[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)serializeLogEvents:(id)events
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [events objectAtIndexedSubscript:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v10 = @"threadNetworkStabilityLogEvent";
    serializedLogEvent = [v5 serializedLogEvent];
    v11[0] = serializedLogEvent;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date
{
  v13[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  threadNetworkObserver = [(HMDHouseholdThreadNetworkStabilityLogEventFactory *)self threadNetworkObserver];
  v9 = [threadNetworkObserver logEventForHomeWithUUID:dCopy associatedWithDate:dateCopy isDailySummary:1];

  if (v9)
  {
    v13[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (HMDHouseholdThreadNetworkStabilityLogEventFactory)initWithThreadNetworkObserver:(id)observer
{
  observerCopy = observer;
  v9.receiver = self;
  v9.super_class = HMDHouseholdThreadNetworkStabilityLogEventFactory;
  v6 = [(HMDHouseholdThreadNetworkStabilityLogEventFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_threadNetworkObserver, observer);
  }

  return v7;
}

@end