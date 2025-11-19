@interface HMDHomeEventsGenerated
+ (id)accessorySettingsTopicsForAccessory:(id)a3 homeUUID:(id)a4;
+ (id)accessoryTopicsForAccessory:(id)a3 homeUUID:(id)a4;
+ (id)clientIndexToHomeTopicsForHomeUUID:(id)a3;
+ (id)expandedTopicsWithTopics:(id)a3 homeManager:(id)a4;
+ (id)forwardingTopicsWithTopics:(id)a3 forHomeRouterWithUUID:(id)a4;
+ (id)indexTopicForTopicSuffix:(id)a3 indexName:(id)a4;
+ (id)upstreamClientTopicForTopic:(id)a3;
+ (id)upstreamHomeAndAccessoryTopicsForTopic:(id)a3 homeUUID:(id)a4 accessoryUUID:(id)a5;
+ (id)upstreamHomeTopicForTopic:(id)a3 homeUUID:(id)a4;
+ (id)upstreamTopicsForTopic:(id)a3;
@end

@implementation HMDHomeEventsGenerated

+ (id)expandedTopicsWithTopics:(id)a3 homeManager:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CBEB58];
  v8 = a3;
  v9 = [v7 set];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__HMDHomeEventsGenerated_expandedTopicsWithTopics_homeManager___block_invoke;
  v14[3] = &unk_2797235E8;
  v15 = v6;
  v16 = v9;
  v17 = a1;
  v10 = v9;
  v11 = v6;
  [v8 na_each:v14];

  v12 = [v10 allObjects];

  return v12;
}

void __63__HMDHomeEventsGenerated_expandedTopicsWithTopics_homeManager___block_invoke(uint64_t a1, void *a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CD19F0] decodeTopic:v3];
  v5 = v4;
  if (v4 && [v4 isIndexTopic])
  {
    v6 = [v5 asIndexAccessoryTopic];
    if (v6 && (v7 = v6, [v5 topicSuffix], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"info"), v8, v7, v9))
    {
      v10 = *(a1 + 32);
      v11 = [v5 accessoryUUID];
      v12 = [v10 accessoryWithUUID:v11];

      if (v12)
      {
        v13 = *(a1 + 40);
        v14 = *(a1 + 48);
        v15 = [v5 homeUUID];
        v16 = [v14 accessoryTopicsForAccessory:v12 homeUUID:v15];
        [v13 addObjectsFromArray:v16];

        v17 = *(a1 + 40);
        v18 = *(a1 + 48);
        v19 = [v5 homeUUID];
        v20 = [v18 accessorySettingsTopicsForAccessory:v12 homeUUID:v19];
        [v17 addObjectsFromArray:v20];
      }
    }

    else
    {
      v22 = [v5 asIndexHomeTopic];
      if (!v22 || (v23 = v22, [v5 topicSuffix], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isEqualToString:", @"info"), v24, v23, !v25))
      {
        if ([v3 isEqualToString:@"index.xpc.client.spi"])
        {
          v46 = [*(a1 + 32) homes];
          v47 = [v46 copy];
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __63__HMDHomeEventsGenerated_expandedTopicsWithTopics_homeManager___block_invoke_3;
          v62[3] = &unk_2797235C0;
          v48 = *(a1 + 40);
          v49 = *(a1 + 48);
          v63 = v48;
          v64 = v49;
          [v47 na_each:v62];

          v50 = v63;
        }

        else
        {
          if (![v3 isEqualToString:@"index.xpc.client.spi.settings"])
          {
            goto LABEL_9;
          }

          v51 = [*(a1 + 32) homes];
          v52 = [v51 copy];
          v59[0] = MEMORY[0x277D85DD0];
          v59[1] = 3221225472;
          v59[2] = __63__HMDHomeEventsGenerated_expandedTopicsWithTopics_homeManager___block_invoke_5;
          v59[3] = &unk_2797235C0;
          v53 = *(a1 + 40);
          v54 = *(a1 + 48);
          v60 = v53;
          v61 = v54;
          [v52 na_each:v59];

          v50 = v60;
        }

        goto LABEL_9;
      }

      v57 = v3;
      v26 = *(a1 + 32);
      v27 = [v5 homeUUID];
      v28 = [v26 _homeWithUUID:v27];
      v29 = [v28 accessories];

      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __63__HMDHomeEventsGenerated_expandedTopicsWithTopics_homeManager___block_invoke_2;
      v69[3] = &unk_279723598;
      v30 = *(a1 + 40);
      v58 = a1;
      v31 = *(a1 + 48);
      v70 = v30;
      v72 = v31;
      v56 = v5;
      v32 = v5;
      v71 = v32;
      v55 = v29;
      [v29 na_each:v69];
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v33 = [&unk_28662A840 countByEnumeratingWithState:&v65 objects:v73 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v66;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v66 != v35)
            {
              objc_enumerationMutation(&unk_28662A840);
            }

            v37 = *(*(&v65 + 1) + 8 * i);
            v38 = [&unk_28662A8B8 objectForKeyedSubscript:v37];
            v39 = [v38 objectForKeyedSubscript:@"indexes"];
            v40 = [v39 objectForKeyedSubscript:@"HomeIndex"];

            if (v40)
            {
              v41 = *(v58 + 40);
              v42 = MEMORY[0x277CCACA8];
              v43 = [v32 homeUUID];
              v44 = [v43 UUIDString];
              v45 = [v42 stringWithFormat:@"home.%@.%@", v44, v37];
              [v41 addObject:v45];
            }
          }

          v34 = [&unk_28662A840 countByEnumeratingWithState:&v65 objects:v73 count:16];
        }

        while (v34);
      }

      v5 = v56;
      v3 = v57;
    }
  }

  else
  {
    [*(a1 + 40) addObject:v3];
  }

LABEL_9:

  v21 = *MEMORY[0x277D85DE8];
}

void __63__HMDHomeEventsGenerated_expandedTopicsWithTopics_homeManager___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v4 homeUUID];
  v8 = [v3 accessoryTopicsForAccessory:v6 homeUUID:v7];
  [v5 addObjectsFromArray:v8];

  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v12 = [*(a1 + 40) homeUUID];
  v11 = [v9 accessorySettingsTopicsForAccessory:v6 homeUUID:v12];

  [v10 addObjectsFromArray:v11];
}

void __63__HMDHomeEventsGenerated_expandedTopicsWithTopics_homeManager___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessories];
  v5 = [v4 copy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__HMDHomeEventsGenerated_expandedTopicsWithTopics_homeManager___block_invoke_4;
  v9[3] = &unk_279723598;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v3;
  v12 = v7;
  v10 = v6;
  v8 = v3;
  [v5 na_each:v9];
}

void __63__HMDHomeEventsGenerated_expandedTopicsWithTopics_homeManager___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessories];
  v5 = [v4 copy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__HMDHomeEventsGenerated_expandedTopicsWithTopics_homeManager___block_invoke_6;
  v9[3] = &unk_279723598;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v3;
  v12 = v7;
  v10 = v6;
  v8 = v3;
  [v5 na_each:v9];
}

void __63__HMDHomeEventsGenerated_expandedTopicsWithTopics_homeManager___block_invoke_6(void *a1, void *a2)
{
  v3 = a1[5];
  v2 = a1[6];
  v4 = a1[4];
  v5 = a2;
  v7 = [v3 uuid];
  v6 = [v2 accessorySettingsTopicsForAccessory:v5 homeUUID:v7];

  [v4 addObjectsFromArray:v6];
}

void __63__HMDHomeEventsGenerated_expandedTopicsWithTopics_homeManager___block_invoke_4(void *a1, void *a2)
{
  v3 = a1[5];
  v2 = a1[6];
  v4 = a1[4];
  v5 = a2;
  v7 = [v3 uuid];
  v6 = [v2 accessoryTopicsForAccessory:v5 homeUUID:v7];

  [v4 addObjectsFromArray:v6];
}

+ (id)accessoryTopicsForAccessory:(id)a3 homeUUID:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 uuid];
    v11 = [HMDAccessoryEventsGenerated appleMediaAccessoryTopicsForAccessoryUUID:v10 homeUUID:v6];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

+ (id)accessorySettingsTopicsForAccessory:(id)a3 homeUUID:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v8)
  {
    v12 = [v8 category];
    v13 = [v12 categoryType];
    if ([v13 isEqualToString:*MEMORY[0x277CCE8B0]])
    {

LABEL_14:
      v14 = [v8 uuid];
      v15 = [HMDAccessoryEventsGenerated homePodAccessorySettingsTopicsForAccessoryUUID:v14 homeUUID:v6];
      goto LABEL_15;
    }

    v16 = [v8 homePodVariant];

    if (v16)
    {
      goto LABEL_14;
    }
  }

  else if (v11 && [v11 hasSiriEndpointService])
  {
    v14 = [v11 uuid];
    v15 = [HMDAccessoryEventsGenerated endpointAccessorySettingsTopicsForAccessoryUUID:v14 homeUUID:v6];
LABEL_15:
    v17 = v15;

    goto LABEL_17;
  }

  v17 = MEMORY[0x277CBEBF8];
LABEL_17:

  return v17;
}

+ (id)upstreamTopicsForTopic:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CD19F0] decodeTopic:v4];
  v7 = [v6 accessoryUUID];
  if (v7 && (v8 = v7, [v6 homeUUID], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = [v6 homeUUID];
    v11 = [v6 accessoryUUID];
    v12 = [a1 upstreamHomeAndAccessoryTopicsForTopic:v4 homeUUID:v10 accessoryUUID:v11];
    [v5 unionSet:v12];
  }

  else
  {
    v13 = [v6 homeUUID];

    if (!v13)
    {
      goto LABEL_8;
    }

    v14 = [v6 homeUUID];
    v10 = [a1 upstreamHomeTopicForTopic:v4 homeUUID:v14];

    if (v10)
    {
      [v5 addObject:v10];
    }
  }

LABEL_8:
  v15 = [a1 upstreamClientTopicForTopic:v4];
  if (v15)
  {
    [v5 addObject:v15];
  }

  v16 = [v5 copy];

  return v16;
}

+ (id)upstreamHomeAndAccessoryTopicsForTopic:(id)a3 homeUUID:(id)a4 accessoryUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEB58] set];
  v12 = [a1 upstreamHomeTopicForTopic:v8 homeUUID:v9];
  if (v12)
  {
    [v11 addObject:v12];
  }

  v13 = [MEMORY[0x277CD19F0] decodeTopic:v8];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 homeUUID];
    if ([v15 hmf_isEqualToUUID:v9])
    {
      v16 = [v14 accessoryUUID];
      v17 = [v16 hmf_isEqualToUUID:v10];

      if (!v17)
      {
        goto LABEL_9;
      }

      v18 = [v14 asAccessorySettingTopic];

      if (!v18)
      {
        v21 = [v14 asAccessoryTopic];
        if (!v21)
        {
          goto LABEL_9;
        }

        v22 = v21;
        v23 = [v14 topicSuffix];
        v24 = [HMDAccessoryEventsGenerated topicSuffix:v23 isPartOfIndex:@"AppleAccessoryIndex"];

        if (!v24)
        {
          goto LABEL_9;
        }
      }

      v15 = [HMDAccessoryEventsGenerated accessoryIndexForAccessoryUUID:v10 homeUUID:v9];
      [v11 addObject:v15];
    }
  }

LABEL_9:
  v19 = [v11 copy];

  return v19;
}

+ (id)upstreamHomeTopicForTopic:(id)a3 homeUUID:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CD19F0] decodeTopic:a3];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = [v7 homeUUID];
  v10 = [v9 hmf_isEqualToUUID:v6];

  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = [v8 asAccessorySettingTopic];

  if (v11)
  {
    goto LABEL_4;
  }

  v13 = [v8 asAccessoryTopic];
  if (v13)
  {
    v14 = v13;
    v15 = [v8 topicSuffix];
    v16 = [HMDAccessoryEventsGenerated topicSuffix:v15 isPartOfIndex:@"HomeIndex"];

    if (v16)
    {
      goto LABEL_4;
    }
  }

  v17 = [v8 asHomeEventTopic];
  if (!v17)
  {
    goto LABEL_9;
  }

  v18 = v17;
  v19 = [v8 topicSuffix];
  v20 = [&unk_28662A7C8 objectForKeyedSubscript:v19];
  v21 = [v20 objectForKeyedSubscript:@"indexes"];
  v22 = [v21 objectForKeyedSubscript:@"HomeIndex"];

  if (v22)
  {
LABEL_4:
    v12 = [a1 homeInfoIndexForHomeUUID:v6];
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  return v12;
}

+ (id)upstreamClientTopicForTopic:(id)a3
{
  v3 = [MEMORY[0x277CD19F0] decodeTopic:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 asAccessorySettingTopic];

    if (v5)
    {
      v6 = @"index.xpc.client.spi.settings";
    }

    else
    {
      v7 = [v4 asAccessoryTopic];
      if (v7 && (v8 = v7, [v4 topicSuffix], v9 = objc_claimAutoreleasedReturnValue(), v10 = +[HMDAccessoryEventsGenerated topicSuffix:isPartOfIndex:](HMDAccessoryEventsGenerated, "topicSuffix:isPartOfIndex:", v9, @"SpiIndex"), v9, v8, v10))
      {
        v6 = @"index.xpc.client.spi";
      }

      else
      {
        v6 = [v4 asHomeEventTopic];
        if (v6)
        {
          v11 = [&unk_28662A750 objectForKeyedSubscript:@"indexes"];
          v12 = [v11 objectForKeyedSubscript:@"SpiIndex"];

          if (v12)
          {
            v6 = @"index.xpc.client.spi";
          }

          else
          {
            v6 = 0;
          }
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)forwardingTopicsWithTopics:(id)a3 forHomeRouterWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = MEMORY[0x277CBEB98];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __75__HMDHomeEventsGenerated_forwardingTopicsWithTopics_forHomeRouterWithUUID___block_invoke;
  v18 = &unk_279723570;
  v10 = v7;
  v19 = v10;
  v20 = a1;
  v11 = [v6 na_flatMap:&v15];
  v12 = [v9 setWithArray:{v11, v15, v16, v17, v18}];
  v13 = [v12 allObjects];

  objc_autoreleasePoolPop(v8);

  return v13;
}

id __75__HMDHomeEventsGenerated_forwardingTopicsWithTopics_forHomeRouterWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CD19F0] decodeTopic:v3];
  v5 = v4;
  if (!v4 || ([v4 homeUUID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hmf_isEqualToUUID:", *(a1 + 32)), v6, !v7))
  {
    if ([v3 isEqualToString:@"index.xpc.client.spi"] || objc_msgSend(v3, "isEqualToString:", @"index.xpc.client.spi.settings"))
    {
      v10 = [*(a1 + 40) clientIndexToHomeTopicsForHomeUUID:*(a1 + 32)];
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_19;
  }

  v8 = [v5 asAccessorySettingTopic];
  if (!v8)
  {
    v9 = [v5 asAccessoryTopic];
    if (v9)
    {
      v11 = [v5 topicSuffix];
      v12 = [HMDAccessoryEventsGenerated topicSuffix:v11 isPartOfIndex:@"HomeIndex"];

      if (v12)
      {
        v13 = [*(a1 + 40) homeInfoIndexForHomeUUID:*(a1 + 32)];
        v25 = v13;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];

        goto LABEL_18;
      }

      v14 = 0;
    }

    else
    {
      v14 = [v5 asHomeEventTopic];
      if (v14)
      {
        v15 = [v5 topicSuffix];
        v16 = [&unk_28662A6D8 objectForKeyedSubscript:v15];
        v17 = [v16 objectForKeyedSubscript:@"indexes"];
        v18 = [v17 objectForKeyedSubscript:@"HomeIndex"];

        if (v18)
        {
          v9 = [*(a1 + 40) homeInfoIndexForHomeUUID:*(a1 + 32)];
          v24 = v9;
          v19 = MEMORY[0x277CBEA60];
          v20 = &v24;
LABEL_17:
          v10 = [v19 arrayWithObjects:v20 count:1];

          v9 = v14;
          goto LABEL_18;
        }
      }
    }

    v23 = v3;
    v19 = MEMORY[0x277CBEA60];
    v20 = &v23;
    goto LABEL_17;
  }

  v9 = [*(a1 + 40) homeInfoIndexForHomeUUID:*(a1 + 32)];
  v26[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
LABEL_18:

LABEL_19:
  v21 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)clientIndexToHomeTopicsForHomeUUID:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = [a3 UUIDString];
  v5 = [v3 stringWithFormat:@"index.home.%@.info", v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)indexTopicForTopicSuffix:(id)a3 indexName:(id)a4
{
  v5 = a4;
  v6 = [&unk_28662A660 objectForKeyedSubscript:a3];
  v7 = [v6 objectForKeyedSubscript:@"indexes"];
  v8 = [v7 objectForKeyedSubscript:v5];

  return v8;
}

@end