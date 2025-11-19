@interface HMDAccessoryEventsGenerated
+ (BOOL)topicSuffix:(id)a3 isPartOfIndex:(id)a4;
+ (id)accessoryIndexForAccessoryUUID:(id)a3 homeUUID:(id)a4;
+ (id)appleMediaAccessoryTopicsForAccessoryUUID:(id)a3 homeUUID:(id)a4;
+ (id)forwardingTopicsForTopics:(id)a3 residentAccessoryUUID:(id)a4 homeUUID:(id)a5;
+ (id)indexTopicForTopic:(id)a3;
+ (id)topicsRemovingAccessoryTopics:(id)a3 accessoryUUID:(id)a4;
@end

@implementation HMDAccessoryEventsGenerated

+ (id)topicsRemovingAccessoryTopics:(id)a3 accessoryUUID:(id)a4
{
  v5 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__HMDAccessoryEventsGenerated_topicsRemovingAccessoryTopics_accessoryUUID___block_invoke;
  v9[3] = &unk_278684F48;
  v10 = v5;
  v6 = v5;
  v7 = [a3 na_filter:v9];

  return v7;
}

uint64_t __75__HMDAccessoryEventsGenerated_topicsRemovingAccessoryTopics_accessoryUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CD19F0] decodeTopic:a2];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [v3 accessoryUUID];
    v7 = [v5 hmf_isEqualToUUID:v6] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)topicSuffix:(id)a3 isPartOfIndex:(id)a4
{
  v5 = a4;
  v6 = [(p *)&unk_283E77D30 objectForKeyedSubscript:a3];
  v7 = [v6 objectForKeyedSubscript:@"indexes"];
  v8 = [v7 objectForKeyedSubscript:v5];

  return v8 != 0;
}

+ (id)accessoryIndexForAccessoryUUID:(id)a3 homeUUID:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [a4 UUIDString];
  v8 = [v6 UUIDString];

  v9 = [v5 stringWithFormat:@"index.home.%@.accessory.%@.info", v7, v8];

  return v9;
}

+ (id)forwardingTopicsForTopics:(id)a3 residentAccessoryUUID:(id)a4 homeUUID:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [a1 accessoryIndexForAccessoryUUID:v8 homeUUID:v9];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__HMDAccessoryEventsGenerated_forwardingTopicsForTopics_residentAccessoryUUID_homeUUID___block_invoke;
  v17[3] = &unk_278684F20;
  v18 = v8;
  v19 = v11;
  v20 = v9;
  v21 = a1;
  v12 = v9;
  v13 = v11;
  v14 = v8;
  v15 = [v10 na_map:v17];

  return v15;
}

id __88__HMDAccessoryEventsGenerated_forwardingTopicsForTopics_residentAccessoryUUID_homeUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CD19F0] decodeTopic:v3];
  v5 = [v4 asIndexAccessoryTopic];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 accessoryUUID];
    v8 = [v7 isEqual:*(a1 + 32)];

    if (v8)
    {
      v9 = v3;
LABEL_7:
      v14 = v9;
      v15 = 0;
      goto LABEL_17;
    }
  }

  v10 = [v4 asAccessorySettingTopic];
  if (v10)
  {
    v11 = v10;
    v12 = [v4 accessoryUUID];
    v13 = [v12 isEqual:*(a1 + 32)];

    if (v13)
    {
      v9 = *(a1 + 40);
      goto LABEL_7;
    }
  }

  v15 = [v4 asAccessoryTopic];
  if (v15)
  {
    v16 = [v4 accessoryUUID];
    v17 = [v16 isEqual:*(a1 + 32)];

    if (v17)
    {
      v18 = [v4 topicSuffix];
      v19 = [(p *)&unk_283E77948 objectForKeyedSubscript:v18];
      v20 = [v19 objectForKeyedSubscript:@"indexes"];
      v21 = [v20 objectForKeyedSubscript:@"AppleAccessoryIndex"];
      v22 = v3;
      if (v21)
      {
        v22 = *(a1 + 40);
      }

      v14 = v22;

      goto LABEL_15;
    }
  }

  v23 = [v4 asIndexHomeTopic];
  if (v23)
  {
    v18 = v23;
    v14 = [*(a1 + 56) accessoryIndexForAccessoryUUID:*(a1 + 32) homeUUID:*(a1 + 48)];
LABEL_15:

    goto LABEL_17;
  }

  v14 = 0;
LABEL_17:

  return v14;
}

+ (id)appleMediaAccessoryTopicsForAccessoryUUID:(id)a3 homeUUID:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v23 = a4;
  v5 = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [(p *)&unk_283E77178 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(&unk_283E77178);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [(p *)&unk_283E77560 objectForKeyedSubscript:v10];
        v12 = [v11 objectForKeyedSubscript:@"indexes"];
        v13 = [v12 objectForKeyedSubscript:@"AppleAccessoryIndex"];

        if (v13)
        {
          v14 = MEMORY[0x277D0F888];
          v15 = MEMORY[0x277CCACA8];
          v16 = [v23 UUIDString];
          v17 = [v24 UUIDString];
          v18 = [v15 stringWithFormat:@"home.%@.accessory.%@.%@", v16, v17, v10];
          v19 = [v14 hmf_cachedInstanceForString:v18];
          [v5 addObject:v19];
        }
      }

      v7 = [(p *)&unk_283E77178 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v20 = [v5 copy];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)indexTopicForTopic:(id)a3
{
  v4 = [MEMORY[0x277CD19F0] decodeTopic:a3];
  v5 = [v4 asAccessorySettingTopic];
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = v5;
LABEL_3:
    v9 = [v8 accessoryUUID];
    v10 = [v8 homeUUID];
    v11 = [a1 accessoryIndexForAccessoryUUID:v9 homeUUID:v10];

    v8 = v7;
    goto LABEL_8;
  }

  v8 = [v4 asAccessoryTopic];
  if (v8)
  {
    v12 = [v4 topicSuffix];
    v13 = [(p *)&unk_283E76D90 objectForKeyedSubscript:v12];
    v14 = [v13 objectForKeyedSubscript:@"indexes"];
    v15 = [v14 objectForKeyedSubscript:@"AppleAccessoryIndex"];

    if (v15)
    {
      v7 = v8;
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_8:

  return v11;
}

@end