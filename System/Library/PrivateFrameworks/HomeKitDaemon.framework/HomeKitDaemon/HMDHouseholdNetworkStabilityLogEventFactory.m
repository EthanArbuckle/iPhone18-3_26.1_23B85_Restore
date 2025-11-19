@interface HMDHouseholdNetworkStabilityLogEventFactory
- (HMDHouseholdNetworkStabilityLogEventFactory)initWithNetworkObserver:(id)a3;
- (id)coalescedLogEventsFromLogEvents:(id)a3 homeUUID:(id)a4;
- (id)logEventsFromDictionary:(id)a3;
- (id)logEventsPopulatedForHomeWithUUID:(id)a3 associatedWithDate:(id)a4;
- (id)serializeLogEvents:(id)a3;
- (void)deleteCountersAfterDate:(id)a3;
- (void)deleteCountersBeforeDate:(id)a3;
@end

@implementation HMDHouseholdNetworkStabilityLogEventFactory

- (void)deleteCountersAfterDate:(id)a3
{
  v4 = a3;
  v5 = [(HMDHouseholdNetworkStabilityLogEventFactory *)self networkObserver];
  [v5 deleteCountersAfterDate:v4];
}

- (void)deleteCountersBeforeDate:(id)a3
{
  v4 = a3;
  v5 = [(HMDHouseholdNetworkStabilityLogEventFactory *)self networkObserver];
  [v5 deleteCountersBeforeDate:v4];
}

- (id)coalescedLogEventsFromLogEvents:(id)a3 homeUUID:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v35 = a4;
  v36 = [MEMORY[0x277CBEB58] set];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v5;
  v40 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  v6 = 0;
  v7 = 0;
  if (v40)
  {
    v48 = 0;
    v49 = 0;
    v8 = 0;
    v50 = 0;
    v51 = 0;
    v46 = 0;
    v47 = 0;
    v39 = *v53;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v53 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v52 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        if (v12)
        {
          v43 = v7;
          v44 = v6;
          v45 = v8;
          v13 = [v12 numWifiAssociations];
          v14 = [v12 numWifiDisassociations];
          v15 = [v12 numAPChanges];
          v16 = [v12 numGatewayChanges];
          v17 = [v12 numReadWrites];
          v18 = [v12 numReadErrors];
          v42 = [v12 numWriteErrors];
          v41 = [v12 numSessionErrors];
          v19 = [v12 ssid];
          v20 = [v12 gatewayMACAddress];
          v21 = v20;
          if (v19)
          {
            v22 = v20 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (!v22)
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v19, v20];
            v38 = v18;
            v23 = v17;
            v24 = v16;
            v25 = v15;
            v26 = v14;
            v28 = v27 = v13;
            [v36 addObject:v28];

            v13 = v27;
            v14 = v26;
            v15 = v25;
            v16 = v24;
            v17 = v23;
            v18 = v38;
          }

          v46 += v13;
          v47 += v14;
          v50 += v15;
          ++v51;
          v8 = v16 + v45;
          v48 += v17;
          v49 += v18;
          v7 = v42 + v43;
          v6 = v41 + v44;
        }
      }

      v40 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v40);
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v8 = 0;
    v50 = 0;
    v51 = 0;
    v46 = 0;
    v47 = 0;
  }

  v29 = [v36 count];
  if (v51)
  {
    v30 = v35;
    v31 = [[HMDHouseholdNetworkStabilityLogEvent alloc] initWithHomeUUID:v35 numStabilityReporters:v51 WifiAssociations:v46 wifiDisassociations:v47 apChanges:v50 gatewayChanges:v8 numReadWrites:v48 numReadErrors:v49 numWriteErrors:v7 numSessionErrors:v6 numNetworkSignatures:v29];
    v56 = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
  }

  else
  {
    v32 = MEMORY[0x277CBEBF8];
    v30 = v35;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)logEventsFromDictionary:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKeyedSubscript:@"networkStabilityLogEvent"];
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

  if (v5 && (v6 = [[HMDNetworkStabilityLogEvent alloc] initWithDictionary:v5]) != 0)
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
    v10 = @"networkStabilityLogEvent";
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
  v8 = [(HMDHouseholdNetworkStabilityLogEventFactory *)self networkObserver];
  v9 = [v8 logEventForHomeWithUUID:v7 associatedWithDate:v6];

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

- (HMDHouseholdNetworkStabilityLogEventFactory)initWithNetworkObserver:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDHouseholdNetworkStabilityLogEventFactory;
  v6 = [(HMDHouseholdNetworkStabilityLogEventFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_networkObserver, a3);
  }

  return v7;
}

@end