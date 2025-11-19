@interface HMDHouseholdThreadNetworkStabilityLogEventFactory
- (HMDHouseholdThreadNetworkStabilityLogEventFactory)initWithThreadNetworkObserver:(id)a3;
- (id)coalescedLogEventsFromLogEvents:(id)a3 homeUUID:(id)a4;
- (id)logEventsFromDictionary:(id)a3;
- (id)logEventsPopulatedForHomeWithUUID:(id)a3 associatedWithDate:(id)a4;
- (id)serializeLogEvents:(id)a3;
- (void)deleteCountersAfterDate:(id)a3;
- (void)deleteCountersBeforeDate:(id)a3;
@end

@implementation HMDHouseholdThreadNetworkStabilityLogEventFactory

- (void)deleteCountersAfterDate:(id)a3
{
  v4 = a3;
  v5 = [(HMDHouseholdThreadNetworkStabilityLogEventFactory *)self threadNetworkObserver];
  [v5 deleteCountersAfterDate:v4];
}

- (void)deleteCountersBeforeDate:(id)a3
{
  v4 = a3;
  v5 = [(HMDHouseholdThreadNetworkStabilityLogEventFactory *)self threadNetworkObserver];
  [v5 deleteCountersBeforeDate:v4];
}

- (id)coalescedLogEventsFromLogEvents:(id)a3 homeUUID:(id)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v5;
  v54 = [v5 countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v54)
  {
    v44 = v6;
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
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
    v46 = 0;
    v47 = 0;
    v48 = 0;
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
          v17 = [v16 threadNetworkStatusReport];
          if (v48 <= [v17 numAdvertisedBRs])
          {
            v18 = [v16 threadNetworkStatusReport];
            v48 = [v18 numAdvertisedBRs];
          }

          v19 = [v16 threadNetworkStatusReport];
          if (v52 <= [v19 numAppleBRs])
          {
            v20 = [v16 threadNetworkStatusReport];
            v52 = [v20 numAppleBRs];
          }

          v21 = [v16 threadNetworkStatusReport];
          if (v51 <= [v21 numThirdPartyBRs])
          {
            v22 = [v16 threadNetworkStatusReport];
            v51 = [v22 numThirdPartyBRs];
          }

          v23 = [v16 threadNetworkStatusReport];
          if (v50 <= [v23 numThreadNetworks])
          {
            v24 = [v16 threadNetworkStatusReport];
            v50 = [v24 numThreadNetworks];
          }

          v25 = [v16 threadNetworkStatusReport];
          if (v49 <= [v25 maxSimuIPPrefixesDetected])
          {
            v26 = [v16 threadNetworkStatusReport];
            v49 = [v26 maxSimuIPPrefixesDetected];
          }

          ++v12;

          v27 = [v16 threadNetworkStatusReport];
          v8 += [v27 txDelayAvg];

          v28 = [v16 threadNetworkStatusReport];
          v58 += [v28 txTotal];

          v29 = [v16 threadNetworkStatusReport];
          v7 += [v29 txSuccess];

          v30 = [v16 threadNetworkStatusReport];
          v9 += [v30 rxTotal];

          v31 = [v16 threadNetworkStatusReport];
          v10 += [v31 rxSuccess];

          v32 = [v16 threadNetworkStatusReport];
          v11 += [v32 reportDuration];

          v61 += [v16 threadNetworkUptime];
          v60 += [v16 threadNetworkDowntime];
          v59 += [v16 numReadWrites];
          v57 += [v16 numReadErrors];
          v56 += [v16 numWriteErrors];
          v55 += [v16 numSessionErrors];
          v33 = [v16 threadNetworkStatusReport];
          v34 = [v33 reportDuration];

          if (v34)
          {
            v35 = [v16 threadNetworkStatusReport];
            if (v46 <= [v35 txDelayAvg])
            {
              v36 = [v16 threadNetworkStatusReport];
              v46 = [v36 txDelayAvg];
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
        v37 = v46;
      }

      v38 = [HMDHouseholdThreadNetworkStabilityLogEvent alloc];
      v39 = [[HMDThreadNetworkStatusReport alloc] initWithNumAdvertisedBRs:v48 numAppleBRs:v52 numThirdPartyBRs:v51 numThreadNetworks:v50 maxSimuIPPrefixesDetected:v49 txTotal:v58 txSuccess:v7 txDelayAvg:v37 rxTotal:v9 rxSuccess:v10 reportDuration:v11];
      v6 = v44;
      v40 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)v38 initWithHomeUUID:v44 numStabilityReporters:v12 threadNetworkStatusReport:v39 threadNetworkUptime:v61 threadNetworkDowntime:v60 numReadWrites:v59 numReadErrors:v57 numWriteErrors:v56 numSessionErrors:v55];
      v66 = v40;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
    }

    else
    {
      v41 = MEMORY[0x277CBEBF8];
      v6 = v44;
    }
  }

  else
  {
    v41 = MEMORY[0x277CBEBF8];
  }

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

- (id)logEventsFromDictionary:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKeyedSubscript:@"threadNetworkStabilityLogEvent"];
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

- (id)serializeLogEvents:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [a3 objectAtIndexedSubscript:0];
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
    v6 = [v5 serializedLogEvent];
    v11[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)logEventsPopulatedForHomeWithUUID:(id)a3 associatedWithDate:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(HMDHouseholdThreadNetworkStabilityLogEventFactory *)self threadNetworkObserver];
  v9 = [v8 logEventForHomeWithUUID:v7 associatedWithDate:v6 isDailySummary:1];

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

- (HMDHouseholdThreadNetworkStabilityLogEventFactory)initWithThreadNetworkObserver:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDHouseholdThreadNetworkStabilityLogEventFactory;
  v6 = [(HMDHouseholdThreadNetworkStabilityLogEventFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_threadNetworkObserver, a3);
  }

  return v7;
}

@end