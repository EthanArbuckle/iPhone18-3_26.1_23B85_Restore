@interface HMDHouseholdActivityLogEventFactory
- (HMDHouseholdActivityLogEventFactory)initWithContributors:(id)contributors;
- (id)coalescedLogEventsFromLogEvents:(id)events homeUUID:(id)d;
- (id)logEventsFromDictionary:(id)dictionary;
- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date;
- (id)serializeLogEvents:(id)events;
- (void)deleteCountersAfterDate:(id)date;
- (void)deleteCountersBeforeDate:(id)date;
@end

@implementation HMDHouseholdActivityLogEventFactory

- (void)deleteCountersAfterDate:(id)date
{
  v16 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  contributors = [(HMDHouseholdActivityLogEventFactory *)self contributors];
  v6 = [contributors countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(contributors);
        }

        [*(*(&v11 + 1) + 8 * v9++) deleteCountersAfterDate:dateCopy];
      }

      while (v7 != v9);
      v7 = [contributors countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deleteCountersBeforeDate:(id)date
{
  v16 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  contributors = [(HMDHouseholdActivityLogEventFactory *)self contributors];
  v6 = [contributors countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(contributors);
        }

        [*(*(&v11 + 1) + 8 * v9++) deleteCountersBeforeDate:dateCopy];
      }

      while (v7 != v9);
      v7 = [contributors countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)coalescedLogEventsFromLogEvents:(id)events homeUUID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dCopy = d;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(eventsCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = eventsCopy;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
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
          [v8 addObject:{v16, v22}];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v11);
  }

  contributors = [(HMDHouseholdActivityLogEventFactory *)self contributors];
  v18 = [HMDHouseholdActivityLogEvent coalescedEventFromHouseholdActivityLogEvents:v8 homeUUID:dCopy contributors:contributors];
  v26 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)logEventsFromDictionary:(id)dictionary
{
  v11[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [HMDHouseholdActivityLogEvent alloc];
  contributors = [(HMDHouseholdActivityLogEventFactory *)self contributors];
  v7 = [(HMDHouseholdActivityLogEvent *)v5 initWithDictionary:dictionaryCopy contributors:contributors];

  if (v7)
  {
    v11[0] = v7;
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

  serializedMetric = [v5 serializedMetric];

  return serializedMetric;
}

- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date
{
  v14[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  v8 = [HMDHouseholdActivityLogEvent alloc];
  contributors = [(HMDHouseholdActivityLogEventFactory *)self contributors];
  v10 = [(HMDHouseholdActivityLogEvent *)v8 initPopulatedFromDate:dateCopy homeUUID:dCopy contributors:contributors];

  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMDHouseholdActivityLogEventFactory)initWithContributors:(id)contributors
{
  contributorsCopy = contributors;
  v9.receiver = self;
  v9.super_class = HMDHouseholdActivityLogEventFactory;
  v6 = [(HMDHouseholdActivityLogEventFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contributors, contributors);
  }

  return v7;
}

@end