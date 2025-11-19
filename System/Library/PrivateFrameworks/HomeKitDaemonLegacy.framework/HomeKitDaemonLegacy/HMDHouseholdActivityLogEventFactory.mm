@interface HMDHouseholdActivityLogEventFactory
- (HMDHouseholdActivityLogEventFactory)initWithContributors:(id)a3;
- (id)coalescedLogEventsFromLogEvents:(id)a3 homeUUID:(id)a4;
- (id)logEventsFromDictionary:(id)a3;
- (id)logEventsPopulatedForHomeWithUUID:(id)a3 associatedWithDate:(id)a4;
- (id)serializeLogEvents:(id)a3;
- (void)deleteCountersAfterDate:(id)a3;
- (void)deleteCountersBeforeDate:(id)a3;
@end

@implementation HMDHouseholdActivityLogEventFactory

- (void)deleteCountersAfterDate:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HMDHouseholdActivityLogEventFactory *)self contributors];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) deleteCountersAfterDate:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deleteCountersBeforeDate:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HMDHouseholdActivityLogEventFactory *)self contributors];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) deleteCountersBeforeDate:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)coalescedLogEventsFromLogEvents:(id)a3 homeUUID:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v6;
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

  v17 = [(HMDHouseholdActivityLogEventFactory *)self contributors];
  v18 = [HMDHouseholdActivityLogEvent coalescedEventFromHouseholdActivityLogEvents:v8 homeUUID:v7 contributors:v17];
  v26 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)logEventsFromDictionary:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [HMDHouseholdActivityLogEvent alloc];
  v6 = [(HMDHouseholdActivityLogEventFactory *)self contributors];
  v7 = [(HMDHouseholdActivityLogEvent *)v5 initWithDictionary:v4 contributors:v6];

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

- (id)serializeLogEvents:(id)a3
{
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

  v6 = [v5 serializedMetric];

  return v6;
}

- (id)logEventsPopulatedForHomeWithUUID:(id)a3 associatedWithDate:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [HMDHouseholdActivityLogEvent alloc];
  v9 = [(HMDHouseholdActivityLogEventFactory *)self contributors];
  v10 = [(HMDHouseholdActivityLogEvent *)v8 initPopulatedFromDate:v6 homeUUID:v7 contributors:v9];

  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMDHouseholdActivityLogEventFactory)initWithContributors:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDHouseholdActivityLogEventFactory;
  v6 = [(HMDHouseholdActivityLogEventFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contributors, a3);
  }

  return v7;
}

@end