@interface HMDHouseholdNetworkStabilityLogEventFactory
- (HMDHouseholdNetworkStabilityLogEventFactory)initWithNetworkObserver:(id)observer;
- (id)coalescedLogEventsFromLogEvents:(id)events homeUUID:(id)d;
- (id)logEventsFromDictionary:(id)dictionary;
- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date;
- (id)serializeLogEvents:(id)events;
- (void)deleteCountersAfterDate:(id)date;
- (void)deleteCountersBeforeDate:(id)date;
@end

@implementation HMDHouseholdNetworkStabilityLogEventFactory

- (void)deleteCountersAfterDate:(id)date
{
  dateCopy = date;
  networkObserver = [(HMDHouseholdNetworkStabilityLogEventFactory *)self networkObserver];
  [networkObserver deleteCountersAfterDate:dateCopy];
}

- (void)deleteCountersBeforeDate:(id)date
{
  dateCopy = date;
  networkObserver = [(HMDHouseholdNetworkStabilityLogEventFactory *)self networkObserver];
  [networkObserver deleteCountersBeforeDate:dateCopy];
}

- (id)coalescedLogEventsFromLogEvents:(id)events homeUUID:(id)d
{
  v58 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dCopy = d;
  v36 = [MEMORY[0x277CBEB58] set];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = eventsCopy;
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
          numWifiAssociations = [v12 numWifiAssociations];
          numWifiDisassociations = [v12 numWifiDisassociations];
          numAPChanges = [v12 numAPChanges];
          numGatewayChanges = [v12 numGatewayChanges];
          numReadWrites = [v12 numReadWrites];
          numReadErrors = [v12 numReadErrors];
          numWriteErrors = [v12 numWriteErrors];
          numSessionErrors = [v12 numSessionErrors];
          ssid = [v12 ssid];
          gatewayMACAddress = [v12 gatewayMACAddress];
          v21 = gatewayMACAddress;
          if (ssid)
          {
            v22 = gatewayMACAddress == 0;
          }

          else
          {
            v22 = 1;
          }

          if (!v22)
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", ssid, gatewayMACAddress];
            v38 = numReadErrors;
            v23 = numReadWrites;
            v24 = numGatewayChanges;
            v25 = numAPChanges;
            v26 = numWifiDisassociations;
            v28 = v27 = numWifiAssociations;
            [v36 addObject:v28];

            numWifiAssociations = v27;
            numWifiDisassociations = v26;
            numAPChanges = v25;
            numGatewayChanges = v24;
            numReadWrites = v23;
            numReadErrors = v38;
          }

          v46 += numWifiAssociations;
          v47 += numWifiDisassociations;
          v50 += numAPChanges;
          ++v51;
          v8 = numGatewayChanges + v45;
          v48 += numReadWrites;
          v49 += numReadErrors;
          v7 = numWriteErrors + v43;
          v6 = numSessionErrors + v44;
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
    v30 = dCopy;
    v31 = [[HMDHouseholdNetworkStabilityLogEvent alloc] initWithHomeUUID:dCopy numStabilityReporters:v51 WifiAssociations:v46 wifiDisassociations:v47 apChanges:v50 gatewayChanges:v8 numReadWrites:v48 numReadErrors:v49 numWriteErrors:v7 numSessionErrors:v6 numNetworkSignatures:v29];
    v56 = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
  }

  else
  {
    v32 = MEMORY[0x277CBEBF8];
    v30 = dCopy;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)logEventsFromDictionary:(id)dictionary
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [dictionary objectForKeyedSubscript:@"networkStabilityLogEvent"];
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
    v10 = @"networkStabilityLogEvent";
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
  networkObserver = [(HMDHouseholdNetworkStabilityLogEventFactory *)self networkObserver];
  v9 = [networkObserver logEventForHomeWithUUID:dCopy associatedWithDate:dateCopy];

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

- (HMDHouseholdNetworkStabilityLogEventFactory)initWithNetworkObserver:(id)observer
{
  observerCopy = observer;
  v9.receiver = self;
  v9.super_class = HMDHouseholdNetworkStabilityLogEventFactory;
  v6 = [(HMDHouseholdNetworkStabilityLogEventFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_networkObserver, observer);
  }

  return v7;
}

@end