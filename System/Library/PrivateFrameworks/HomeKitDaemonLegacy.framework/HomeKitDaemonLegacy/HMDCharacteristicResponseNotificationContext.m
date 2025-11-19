@interface HMDCharacteristicResponseNotificationContext
+ (id)notificationUpdateMessagePayloadForHome:(id)a3 notificationEnabled:(BOOL)a4 characteristics:(id)a5 characteristicsErrorsMap:(id)a6;
+ (id)responsePayloadForHome:(id)a3 changedAccessories:(id)a4 moreMessagesInMultipart:(id)a5;
+ (id)updateMultipleCharacteristicReadWriteResponsePayload:(id)a3 withUnhandledRequests:(id)a4;
- (HMDCharacteristicResponseNotificationContext)initWithRequestIdentifier:(id)a3 responses:(id)a4 pendingMultiPartResponses:(BOOL)a5;
- (id)attributeDescriptions;
- (id)notificationWithHome:(id)a3;
@end

@implementation HMDCharacteristicResponseNotificationContext

- (id)attributeDescriptions
{
  v21[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v20 = [(HMDCharacteristicResponseNotificationContext *)self requestIdentifier];
  v4 = [v3 initWithName:@"Request Identifier" value:v20];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCharacteristicResponseNotificationContext *)self hasPendingMultiPartResponses];
  v6 = HMFBooleanToString();
  v7 = [v5 initWithName:@"Has Pending Multi Part Responses" value:v6];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMDCharacteristicResponseNotificationContext *)self changedCharacteristics];
  v10 = [v8 initWithName:@"Changed Characteristics" value:v9];
  v21[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = [(HMDCharacteristicResponseNotificationContext *)self previouslyNilChangedCharacteristics];
  v13 = [v11 initWithName:@"Previously Nil Changed Characteristics" value:v12];
  v21[3] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = [(HMDCharacteristicResponseNotificationContext *)self notificationPayloadByAccessoryUUID];
  v16 = [v14 initWithName:@"Notification Payload" value:v15];
  v21[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)notificationWithHome:(id)a3
{
  v4 = a3;
  v5 = [(HMDCharacteristicResponseNotificationContext *)self requestIdentifier];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = [(HMDCharacteristicResponseNotificationContext *)self notificationPayloadByAccessoryUUID];
    [v6 setObject:v7 forKeyedSubscript:@"kModifiedCharacteristicsForAccessoryKey"];

    v8 = [(HMDCharacteristicResponseNotificationContext *)self requestIdentifier];
    [v6 setObject:v8 forKeyedSubscript:@"kModifiedCharacteristicsMessageIdentifierKey"];

    v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicResponseNotificationContext hasPendingMultiPartResponses](self, "hasPendingMultiPartResponses")}];
    [v6 setObject:v9 forKeyedSubscript:@"kMultiPartResponseKey"];

    v10 = [objc_alloc(MEMORY[0x277CCAB88]) initWithName:@"HMDAccessoryCharacteristicsResponseReceivedNotification" object:v4 userInfo:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (HMDCharacteristicResponseNotificationContext)initWithRequestIdentifier:(id)a3 responses:(id)a4 pendingMultiPartResponses:(BOOL)a5
{
  v130 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v118.receiver = self;
  v118.super_class = HMDCharacteristicResponseNotificationContext;
  v10 = [(HMDCharacteristicResponseNotificationContext *)&v118 init];
  if (v10)
  {
    v91 = v8;
    v11 = [v8 copy];
    requestIdentifier = v10->_requestIdentifier;
    v10->_requestIdentifier = v11;

    v99 = v10;
    v10->_pendingMultiPartResponses = a5;
    v107 = [MEMORY[0x277CBEB58] set];
    v98 = [MEMORY[0x277CBEB58] set];
    v92 = [MEMORY[0x277CBEB58] set];
    v13 = [MEMORY[0x277CBEB38] dictionary];
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v90 = v9;
    obj = v9;
    v14 = [obj countByEnumeratingWithState:&v114 objects:v129 count:16];
    if (!v14)
    {
      goto LABEL_67;
    }

    v15 = v14;
    v16 = *v115;
    v93 = *MEMORY[0x277CCFD28];
    v100 = *MEMORY[0x277CD2128];
    v96 = *MEMORY[0x277CD21E0];
    v97 = *MEMORY[0x277CD21B8];
    v95 = *MEMORY[0x277CD2150];
    v94 = *MEMORY[0x277CD21D0];
    v105 = v13;
    v106 = *v115;
    while (1)
    {
      v17 = 0;
      v108 = v15;
      do
      {
        if (*v115 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v114 + 1) + 8 * v17);
        v19 = [v18 request];
        v20 = [v19 characteristic];

        v21 = [v20 service];
        v22 = [v21 accessory];
        v23 = v22;
        if (v20)
        {
          v24 = v21 == 0;
        }

        else
        {
          v24 = 1;
        }

        if (!v24 && v22 != 0)
        {
          v26 = [v22 uuid];
          v27 = [v26 UUIDString];

          v28 = [v13 hmf_mutableDictionaryForKey:v27];
          if (!v28)
          {
            v28 = [MEMORY[0x277CBEB38] dictionary];
            [v13 setObject:v28 forKeyedSubscript:v27];
          }

          v110 = v27;
          v29 = [v21 instanceID];
          v30 = [v29 stringValue];
          v31 = [v28 hmf_mutableDictionaryForKey:v30];

          v112 = v31;
          if (!v31)
          {
            v32 = [MEMORY[0x277CBEB38] dictionary];
            v33 = [v21 instanceID];
            v34 = [v33 stringValue];
            v112 = v32;
            [v28 setObject:v32 forKeyedSubscript:v34];
          }

          [v107 addObject:v20];
          v35 = [v18 error];
          v111 = v23;
          if (v35 || ([v18 value], v42 = objc_claimAutoreleasedReturnValue(), v42, !v42) && (objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", v93, 4, 0), (v35 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v36 = v35;
            v37 = v28;
            v113 = 0;
            v38 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v35 requiringSecureCoding:1 error:&v113];
            v39 = v113;
            if (v38)
            {
              v127 = v100;
              v128 = v38;
              v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
              v41 = [v40 mutableCopy];
            }

            else
            {
              contexta = objc_autoreleasePoolPush();
              v52 = v99;
              v53 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                v54 = HMFGetLogIdentifier();
                *buf = 138543874;
                v122 = v54;
                v123 = 2112;
                v124 = v36;
                v125 = 2112;
                v126 = v39;
                _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize error %@: %@", buf, 0x20u);

                v13 = v105;
              }

              objc_autoreleasePoolPop(contexta);
              v41 = 0;
            }

            v55 = v37;
          }

          else
          {
            v36 = [v18 value];
            v43 = [v18 request];
            v44 = [v43 isMemberOfClass:objc_opt_class()];

            if (v44)
            {
              v45 = v28;
              v46 = [v20 lastKnownValue];
              v47 = [v20 lastKnownValueUpdateTime];
              v48 = [v18 valueUpdatedTime];
              v49 = [v47 compare:v48] != 1 || v46 == 0;
              v50 = !v49;
              context = v50;
              if (v49)
              {
              }

              else
              {
                v51 = [v46 isEqual:v36];

                if (v51)
                {
                  context = 0;
                  v13 = v105;
                  goto LABEL_45;
                }

                v56 = objc_autoreleasePoolPush();
                v57 = v99;
                v58 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
                {
                  HMFGetLogIdentifier();
                  v59 = v101 = v56;
                  *buf = 138543874;
                  v122 = v59;
                  v123 = 2112;
                  v124 = v18;
                  v125 = 2112;
                  v126 = v46;
                  _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_INFO, "%{public}@Updating notification context response to last known characteristic value %@ -> %@", buf, 0x20u);

                  v56 = v101;
                }

                objc_autoreleasePoolPop(v56);
                v47 = v36;
                v36 = v46;
              }

              v13 = v105;

LABEL_45:
              v28 = v45;

              if (!v36)
              {
LABEL_46:
                v36 = [MEMORY[0x277CBEB68] null];
              }
            }

            else
            {
              context = 0;
              v13 = v105;
              if (!v36)
              {
                goto LABEL_46;
              }
            }

            v102 = v28;
            v119 = v97;
            v120 = v36;
            v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
            v41 = [v60 mutableCopy];

            v61 = [v20 lastKnownValueUpdateTime];
            [v41 setObject:v61 forKeyedSubscript:v96];

            v62 = [v20 notificationContext];
            [v41 setObject:v62 forKeyedSubscript:v95];

            v63 = [v18 stateNumber];
            if (v63)
            {
              v64 = v63;
              v65 = [v18 stateNumber];
              v66 = [v20 stateNumber];
              v67 = HAPCompareStateNumberWithRollover();

              if (v67 == 1)
              {
                v68 = [v18 stateNumber];
                [v20 setStateNumber:v68];

                v69 = 1;
              }

              else
              {
                v69 = 0;
              }

              v13 = v105;
            }

            else
            {
              v69 = 0;
            }

            v70 = [v20 stateNumber];
            [v41 setObject:v70 forKeyedSubscript:v94];

            v71 = [v18 request];
            v39 = [v71 previousValue];

            if (v39)
            {
              v72 = context;
            }

            else
            {
              v72 = 1;
            }

            if ((v72 & 1) != 0 || ![HMDCharacteristic value:v36 differentThan:v39])
            {
              v75 = 0;
            }

            else
            {
              v73 = [v20 previousValue];
              v74 = [v20 lastKnownValue];
              v75 = [HMDCharacteristic value:v73 differentThan:v74];

              v13 = v105;
            }

            v76 = v69 | v75;
            v77 = v98;
            v55 = v102;
            if ((v76 & 1) != 0 || !v39 && (v77 = v92, v36))
            {
              [v77 addObject:v20];
            }
          }

          v78 = [v20 instanceID];
          v79 = [v78 stringValue];
          [v112 setObject:v41 forKeyedSubscript:v79];

          v16 = v106;
          v15 = v108;
          v23 = v111;
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v114 objects:v129 count:16];
      if (!v15)
      {
LABEL_67:

        v80 = [v107 copy];
        v10 = v99;
        responseCharacteristics = v99->_responseCharacteristics;
        v99->_responseCharacteristics = v80;

        v82 = [v98 copy];
        changedCharacteristics = v99->_changedCharacteristics;
        v99->_changedCharacteristics = v82;

        v84 = [v92 copy];
        previouslyNilChangedCharacteristics = v99->_previouslyNilChangedCharacteristics;
        v99->_previouslyNilChangedCharacteristics = v84;

        v86 = [v13 copy];
        notificationPayloadByAccessoryUUID = v99->_notificationPayloadByAccessoryUUID;
        v99->_notificationPayloadByAccessoryUUID = v86;

        v9 = v90;
        v8 = v91;
        break;
      }
    }
  }

  v88 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)updateMultipleCharacteristicReadWriteResponsePayload:(id)a3 withUnhandledRequests:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = [v5 hmf_dictionaryForKey:@"kModifiedCharacteristicsForAccessoryKey"];
    v8 = [v7 mutableCopy];

    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = MEMORY[0x277CCAAB0];
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];

      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __123__HMDCharacteristicResponseNotificationContext_updateMultipleCharacteristicReadWriteResponsePayload_withUnhandledRequests___block_invoke;
      v22 = &unk_279733E90;
      v13 = v8;
      v23 = v13;
      v24 = v12;
      v14 = v12;
      [v6 enumerateKeysAndObjectsUsingBlock:&v19];
      v15 = [v5 mutableCopy];
      v16 = [v13 copy];
      [v15 setObject:v16 forKeyedSubscript:@"kModifiedCharacteristicsForAccessoryKey"];

      v17 = [v15 copy];
      objc_autoreleasePoolPop(v9);
    }

    else
    {
      v17 = v5;
    }
  }

  else
  {
    v17 = v5;
  }

  return v17;
}

void __123__HMDCharacteristicResponseNotificationContext_updateMultipleCharacteristicReadWriteResponsePayload_withUnhandledRequests___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 hmf_dictionaryForKey:v7];
  v9 = [v8 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
  }

  v12 = v11;

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __123__HMDCharacteristicResponseNotificationContext_updateMultipleCharacteristicReadWriteResponsePayload_withUnhandledRequests___block_invoke_2;
  v18 = &unk_279733E68;
  v19 = v12;
  v20 = *(a1 + 40);
  v13 = v12;
  [v6 enumerateKeysAndObjectsUsingBlock:&v15];

  v14 = [v13 copy];
  [*(a1 + 32) setObject:v14 forKeyedSubscript:v7];
}

void __123__HMDCharacteristicResponseNotificationContext_updateMultipleCharacteristicReadWriteResponsePayload_withUnhandledRequests___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v21 = v5;
  v7 = [*(a1 + 32) hmf_dictionaryForKey:v5];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    v13 = *MEMORY[0x277CD2128];
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        v16 = *(a1 + 40);
        v26 = v13;
        v27 = v16;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v18 = [v15 stringValue];
        [v8 setObject:v17 forKeyedSubscript:v18];

        ++v14;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v11);
  }

  v19 = [v8 copy];
  [*(a1 + 32) setObject:v19 forKeyedSubscript:v21];

  v20 = *MEMORY[0x277D85DE8];
}

+ (id)notificationUpdateMessagePayloadForHome:(id)a3 notificationEnabled:(BOOL)a4 characteristics:(id)a5 characteristicsErrorsMap:(id)a6
{
  v54 = a4;
  v75 = *MEMORY[0x277D85DE8];
  v51 = a3;
  v8 = a5;
  v58 = a6;
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v8;
  v61 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v61)
  {
    v60 = *v63;
    v55 = *MEMORY[0x277CD2128];
    v53 = *MEMORY[0x277CD2158];
    v52 = *MEMORY[0x277CD2168];
    v56 = v9;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v63 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v62 + 1) + 8 * i);
        v12 = [v11 service];
        v13 = [v12 instanceID];
        v14 = [v12 accessory];
        v15 = [v14 uuid];
        v16 = [v15 UUIDString];

        if (v13)
        {
          v17 = v16 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          v18 = objc_autoreleasePoolPush();
          v19 = a1;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138543874;
            v69 = v21;
            v70 = 2112;
            v71 = v12;
            v72 = 2112;
            v73 = v11;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Missing required service (%@) properties for characteristic %@ - dropping the notification", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v18);
        }

        else
        {
          v22 = MEMORY[0x277CBEB38];
          v23 = [v9 objectForKeyedSubscript:v16];
          v24 = v23;
          v25 = MEMORY[0x277CBEC10];
          if (v23)
          {
            v26 = v23;
          }

          else
          {
            v26 = MEMORY[0x277CBEC10];
          }

          v27 = [v22 dictionaryWithDictionary:v26];

          v28 = MEMORY[0x277CBEB38];
          v29 = [v27 objectForKeyedSubscript:v13];
          v30 = v29;
          if (v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = v25;
          }

          v32 = [v28 dictionaryWithDictionary:v31];

          v33 = [MEMORY[0x277CBEB38] dictionary];
          v34 = [v58 objectForKey:v11];
          if (v34)
          {
            v35 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v34 requiringSecureCoding:1 error:0];
            v36 = v33;
            v37 = v35;
            v38 = v55;
          }

          else
          {
            v39 = [MEMORY[0x277CCABB0] numberWithBool:v54];
            [v33 setObject:v39 forKeyedSubscript:v53];

            v35 = [v11 notificationEnabledTime];
            v36 = v33;
            v37 = v35;
            v38 = v52;
          }

          [v36 setObject:v37 forKeyedSubscript:v38];

          v40 = [v33 copy];
          v41 = [v11 instanceID];
          [v32 setObject:v40 forKeyedSubscript:v41];

          v42 = [v32 copy];
          [v27 setObject:v42 forKeyedSubscript:v13];

          v43 = [v27 copy];
          [v56 setObject:v43 forKeyedSubscript:v16];

          v9 = v56;
        }
      }

      v61 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
    }

    while (v61);
  }

  if ([v9 count])
  {
    v66[0] = *MEMORY[0x277CD2490];
    v44 = [v9 copy];
    v67[0] = v44;
    v66[1] = *MEMORY[0x277CD0640];
    v45 = v51;
    v46 = [v51 uuid];
    v47 = [v46 UUIDString];
    v67[1] = v47;
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:2];
  }

  else
  {
    v48 = MEMORY[0x277CBEC10];
    v45 = v51;
  }

  v49 = *MEMORY[0x277D85DE8];

  return v48;
}

+ (id)responsePayloadForHome:(id)a3 changedAccessories:(id)a4 moreMessagesInMultipart:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = v10;
  if (v8)
  {
    [v10 setObject:v8 forKeyedSubscript:@"kModifiedCharacteristicsForAccessoryKey"];
  }

  if (v7)
  {
    v12 = [v7 uuid];
    v13 = [v12 UUIDString];
    [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x277CD0640]];
  }

  if (v9)
  {
    [v11 setObject:v9 forKeyedSubscript:@"kMultiPartResponseKey"];
  }

  v14 = [v11 copy];

  return v14;
}

@end