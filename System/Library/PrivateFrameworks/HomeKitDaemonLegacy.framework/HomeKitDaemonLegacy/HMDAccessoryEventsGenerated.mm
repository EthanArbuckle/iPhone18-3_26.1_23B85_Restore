@interface HMDAccessoryEventsGenerated
+ (BOOL)topicSuffix:(id)suffix isPartOfIndex:(id)index;
+ (id)accessoryIndexForAccessoryUUID:(id)d homeUUID:(id)iD;
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
  v9[3] = &unk_27972FA10;
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
  v6 = [&unk_28662BD58 objectForKeyedSubscript:suffix];
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
  v17[3] = &unk_27972A9E0;
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
      v19 = [&unk_28662B970 objectForKeyedSubscript:v18];
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
    v13 = [&unk_28662B588 objectForKeyedSubscript:topicSuffix];
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