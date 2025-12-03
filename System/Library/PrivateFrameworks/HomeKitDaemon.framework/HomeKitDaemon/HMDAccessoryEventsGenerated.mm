@interface HMDAccessoryEventsGenerated
+ (BOOL)topicSuffix:(id)suffix isPartOfIndex:(id)index;
+ (id)accessoryIndexForAccessoryUUID:(id)d homeUUID:(id)iD;
+ (id)appleMediaAccessoryTopicsForAccessoryUUID:(id)d homeUUID:(id)iD;
+ (id)forwardingTopicsForTopics:(id)topics residentAccessoryUUID:(id)d homeUUID:(id)iD;
+ (id)indexTopicForTopic:(id)topic;
+ (id)topicsRemovingAccessoryTopics:(id)topics accessoryUUID:(id)d;
@end

@implementation HMDAccessoryEventsGenerated

+ (id)topicsRemovingAccessoryTopics:(id)topics accessoryUUID:(id)d
{
  dCopy = d;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__HMDAccessoryEventsGenerated_topicsRemovingAccessoryTopics_accessoryUUID___block_invoke;
  v9[3] = &unk_278684F48;
  v10 = dCopy;
  v6 = dCopy;
  v7 = [topics na_filter:v9];

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

+ (BOOL)topicSuffix:(id)suffix isPartOfIndex:(id)index
{
  indexCopy = index;
  v6 = [(p *)&unk_283E77D30 objectForKeyedSubscript:suffix];
  v7 = [v6 objectForKeyedSubscript:@"indexes"];
  v8 = [v7 objectForKeyedSubscript:indexCopy];

  return v8 != 0;
}

+ (id)accessoryIndexForAccessoryUUID:(id)d homeUUID:(id)iD
{
  v5 = MEMORY[0x277CCACA8];
  dCopy = d;
  uUIDString = [iD UUIDString];
  uUIDString2 = [dCopy UUIDString];

  v9 = [v5 stringWithFormat:@"index.home.%@.accessory.%@.info", uUIDString, uUIDString2];

  return v9;
}

+ (id)forwardingTopicsForTopics:(id)topics residentAccessoryUUID:(id)d homeUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  topicsCopy = topics;
  v11 = [self accessoryIndexForAccessoryUUID:dCopy homeUUID:iDCopy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__HMDAccessoryEventsGenerated_forwardingTopicsForTopics_residentAccessoryUUID_homeUUID___block_invoke;
  v17[3] = &unk_278684F20;
  v18 = dCopy;
  v19 = v11;
  v20 = iDCopy;
  selfCopy = self;
  v12 = iDCopy;
  v13 = v11;
  v14 = dCopy;
  v15 = [topicsCopy na_map:v17];

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

+ (id)appleMediaAccessoryTopicsForAccessoryUUID:(id)d homeUUID:(id)iD
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  array = [MEMORY[0x277CBEB18] array];
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
          uUIDString = [iDCopy UUIDString];
          uUIDString2 = [dCopy UUIDString];
          v18 = [v15 stringWithFormat:@"home.%@.accessory.%@.%@", uUIDString, uUIDString2, v10];
          v19 = [v14 hmf_cachedInstanceForString:v18];
          [array addObject:v19];
        }
      }

      v7 = [(p *)&unk_283E77178 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v20 = [array copy];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)indexTopicForTopic:(id)topic
{
  v4 = [MEMORY[0x277CD19F0] decodeTopic:topic];
  asAccessorySettingTopic = [v4 asAccessorySettingTopic];
  v6 = asAccessorySettingTopic;
  if (asAccessorySettingTopic)
  {
    v7 = 0;
    asAccessoryTopic = asAccessorySettingTopic;
LABEL_3:
    accessoryUUID = [asAccessoryTopic accessoryUUID];
    homeUUID = [asAccessoryTopic homeUUID];
    v11 = [self accessoryIndexForAccessoryUUID:accessoryUUID homeUUID:homeUUID];

    asAccessoryTopic = v7;
    goto LABEL_8;
  }

  asAccessoryTopic = [v4 asAccessoryTopic];
  if (asAccessoryTopic)
  {
    topicSuffix = [v4 topicSuffix];
    v13 = [(p *)&unk_283E76D90 objectForKeyedSubscript:topicSuffix];
    v14 = [v13 objectForKeyedSubscript:@"indexes"];
    v15 = [v14 objectForKeyedSubscript:@"AppleAccessoryIndex"];

    if (v15)
    {
      v7 = asAccessoryTopic;
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_8:

  return v11;
}

@end