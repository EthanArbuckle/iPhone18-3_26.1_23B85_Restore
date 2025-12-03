@interface HMDCharacteristicResponseNotificationContext
+ (id)notificationUpdateMessagePayloadForHome:(id)home notificationEnabled:(BOOL)enabled characteristics:(id)characteristics characteristicsErrorsMap:(id)map;
+ (id)responsePayloadForHome:(id)home changedAccessories:(id)accessories moreMessagesInMultipart:(id)multipart;
+ (id)updateMultipleCharacteristicReadWriteResponsePayload:(id)payload withUnhandledRequests:(id)requests;
- (HMDCharacteristicResponseNotificationContext)initWithRequestIdentifier:(id)identifier responses:(id)responses pendingMultiPartResponses:(BOOL)partResponses;
- (id)attributeDescriptions;
- (id)notificationWithHome:(id)home;
@end

@implementation HMDCharacteristicResponseNotificationContext

- (id)attributeDescriptions
{
  v21[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  requestIdentifier = [(HMDCharacteristicResponseNotificationContext *)self requestIdentifier];
  v4 = [v3 initWithName:@"Request Identifier" value:requestIdentifier];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCharacteristicResponseNotificationContext *)self hasPendingMultiPartResponses];
  v6 = HMFBooleanToString();
  v7 = [v5 initWithName:@"Has Pending Multi Part Responses" value:v6];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  changedCharacteristics = [(HMDCharacteristicResponseNotificationContext *)self changedCharacteristics];
  v10 = [v8 initWithName:@"Changed Characteristics" value:changedCharacteristics];
  v21[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  previouslyNilChangedCharacteristics = [(HMDCharacteristicResponseNotificationContext *)self previouslyNilChangedCharacteristics];
  v13 = [v11 initWithName:@"Previously Nil Changed Characteristics" value:previouslyNilChangedCharacteristics];
  v21[3] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  notificationPayloadByAccessoryUUID = [(HMDCharacteristicResponseNotificationContext *)self notificationPayloadByAccessoryUUID];
  v16 = [v14 initWithName:@"Notification Payload" value:notificationPayloadByAccessoryUUID];
  v21[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)notificationWithHome:(id)home
{
  homeCopy = home;
  requestIdentifier = [(HMDCharacteristicResponseNotificationContext *)self requestIdentifier];

  if (requestIdentifier)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    notificationPayloadByAccessoryUUID = [(HMDCharacteristicResponseNotificationContext *)self notificationPayloadByAccessoryUUID];
    [v6 setObject:notificationPayloadByAccessoryUUID forKeyedSubscript:@"kModifiedCharacteristicsForAccessoryKey"];

    requestIdentifier2 = [(HMDCharacteristicResponseNotificationContext *)self requestIdentifier];
    [v6 setObject:requestIdentifier2 forKeyedSubscript:@"kModifiedCharacteristicsMessageIdentifierKey"];

    v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicResponseNotificationContext hasPendingMultiPartResponses](self, "hasPendingMultiPartResponses")}];
    [v6 setObject:v9 forKeyedSubscript:@"kMultiPartResponseKey"];

    v10 = [objc_alloc(MEMORY[0x277CCAB88]) initWithName:@"HMDAccessoryCharacteristicsResponseReceivedNotification" object:homeCopy userInfo:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (HMDCharacteristicResponseNotificationContext)initWithRequestIdentifier:(id)identifier responses:(id)responses pendingMultiPartResponses:(BOOL)partResponses
{
  v130 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  responsesCopy = responses;
  v118.receiver = self;
  v118.super_class = HMDCharacteristicResponseNotificationContext;
  v10 = [(HMDCharacteristicResponseNotificationContext *)&v118 init];
  if (v10)
  {
    v91 = identifierCopy;
    v11 = [identifierCopy copy];
    requestIdentifier = v10->_requestIdentifier;
    v10->_requestIdentifier = v11;

    v99 = v10;
    v10->_pendingMultiPartResponses = partResponses;
    v107 = [MEMORY[0x277CBEB58] set];
    v98 = [MEMORY[0x277CBEB58] set];
    v92 = [MEMORY[0x277CBEB58] set];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v90 = responsesCopy;
    obj = responsesCopy;
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
    v105 = dictionary;
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
        request = [v18 request];
        characteristic = [request characteristic];

        service = [characteristic service];
        accessory = [service accessory];
        v23 = accessory;
        if (characteristic)
        {
          v24 = service == 0;
        }

        else
        {
          v24 = 1;
        }

        if (!v24 && accessory != 0)
        {
          uuid = [accessory uuid];
          uUIDString = [uuid UUIDString];

          dictionary2 = [dictionary hmf_mutableDictionaryForKey:uUIDString];
          if (!dictionary2)
          {
            dictionary2 = [MEMORY[0x277CBEB38] dictionary];
            [dictionary setObject:dictionary2 forKeyedSubscript:uUIDString];
          }

          v110 = uUIDString;
          instanceID = [service instanceID];
          stringValue = [instanceID stringValue];
          v31 = [dictionary2 hmf_mutableDictionaryForKey:stringValue];

          v112 = v31;
          if (!v31)
          {
            dictionary3 = [MEMORY[0x277CBEB38] dictionary];
            instanceID2 = [service instanceID];
            stringValue2 = [instanceID2 stringValue];
            v112 = dictionary3;
            [dictionary2 setObject:dictionary3 forKeyedSubscript:stringValue2];
          }

          [v107 addObject:characteristic];
          error = [v18 error];
          v111 = v23;
          if (error || ([v18 value], v42 = objc_claimAutoreleasedReturnValue(), v42, !v42) && (objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", v93, 4, 0), (error = objc_claimAutoreleasedReturnValue()) != 0))
          {
            value = error;
            v37 = dictionary2;
            v113 = 0;
            v38 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:error requiringSecureCoding:1 error:&v113];
            previousValue = v113;
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
                v124 = value;
                v125 = 2112;
                v126 = previousValue;
                _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize error %@: %@", buf, 0x20u);

                dictionary = v105;
              }

              objc_autoreleasePoolPop(contexta);
              v41 = 0;
            }

            v55 = v37;
          }

          else
          {
            value = [v18 value];
            request2 = [v18 request];
            v44 = [request2 isMemberOfClass:objc_opt_class()];

            if (v44)
            {
              v45 = dictionary2;
              lastKnownValue = [characteristic lastKnownValue];
              lastKnownValueUpdateTime = [characteristic lastKnownValueUpdateTime];
              valueUpdatedTime = [v18 valueUpdatedTime];
              v49 = [lastKnownValueUpdateTime compare:valueUpdatedTime] != 1 || lastKnownValue == 0;
              v50 = !v49;
              context = v50;
              if (v49)
              {
              }

              else
              {
                v51 = [lastKnownValue isEqual:value];

                if (v51)
                {
                  context = 0;
                  dictionary = v105;
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
                  v126 = lastKnownValue;
                  _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_INFO, "%{public}@Updating notification context response to last known characteristic value %@ -> %@", buf, 0x20u);

                  v56 = v101;
                }

                objc_autoreleasePoolPop(v56);
                lastKnownValueUpdateTime = value;
                value = lastKnownValue;
              }

              dictionary = v105;

LABEL_45:
              dictionary2 = v45;

              if (!value)
              {
LABEL_46:
                value = [MEMORY[0x277CBEB68] null];
              }
            }

            else
            {
              context = 0;
              dictionary = v105;
              if (!value)
              {
                goto LABEL_46;
              }
            }

            v102 = dictionary2;
            v119 = v97;
            v120 = value;
            v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
            v41 = [v60 mutableCopy];

            lastKnownValueUpdateTime2 = [characteristic lastKnownValueUpdateTime];
            [v41 setObject:lastKnownValueUpdateTime2 forKeyedSubscript:v96];

            notificationContext = [characteristic notificationContext];
            [v41 setObject:notificationContext forKeyedSubscript:v95];

            stateNumber = [v18 stateNumber];
            if (stateNumber)
            {
              v64 = stateNumber;
              stateNumber2 = [v18 stateNumber];
              stateNumber3 = [characteristic stateNumber];
              v67 = HAPCompareStateNumberWithRollover();

              if (v67 == 1)
              {
                stateNumber4 = [v18 stateNumber];
                [characteristic setStateNumber:stateNumber4];

                v69 = 1;
              }

              else
              {
                v69 = 0;
              }

              dictionary = v105;
            }

            else
            {
              v69 = 0;
            }

            stateNumber5 = [characteristic stateNumber];
            [v41 setObject:stateNumber5 forKeyedSubscript:v94];

            request3 = [v18 request];
            previousValue = [request3 previousValue];

            if (previousValue)
            {
              v72 = context;
            }

            else
            {
              v72 = 1;
            }

            if ((v72 & 1) != 0 || ![HMDCharacteristic value:value differentThan:previousValue])
            {
              v75 = 0;
            }

            else
            {
              previousValue2 = [characteristic previousValue];
              lastKnownValue2 = [characteristic lastKnownValue];
              v75 = [HMDCharacteristic value:previousValue2 differentThan:lastKnownValue2];

              dictionary = v105;
            }

            v76 = v69 | v75;
            v77 = v98;
            v55 = v102;
            if ((v76 & 1) != 0 || !previousValue && (v77 = v92, value))
            {
              [v77 addObject:characteristic];
            }
          }

          instanceID3 = [characteristic instanceID];
          stringValue3 = [instanceID3 stringValue];
          [v112 setObject:v41 forKeyedSubscript:stringValue3];

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

        v86 = [dictionary copy];
        notificationPayloadByAccessoryUUID = v99->_notificationPayloadByAccessoryUUID;
        v99->_notificationPayloadByAccessoryUUID = v86;

        responsesCopy = v90;
        identifierCopy = v91;
        break;
      }
    }
  }

  v88 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)updateMultipleCharacteristicReadWriteResponsePayload:(id)payload withUnhandledRequests:(id)requests
{
  payloadCopy = payload;
  requestsCopy = requests;
  if ([requestsCopy count])
  {
    v7 = [payloadCopy hmf_dictionaryForKey:@"kModifiedCharacteristicsForAccessoryKey"];
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
      [requestsCopy enumerateKeysAndObjectsUsingBlock:&v19];
      v15 = [payloadCopy mutableCopy];
      v16 = [v13 copy];
      [v15 setObject:v16 forKeyedSubscript:@"kModifiedCharacteristicsForAccessoryKey"];

      v17 = [v15 copy];
      objc_autoreleasePoolPop(v9);
    }

    else
    {
      v17 = payloadCopy;
    }
  }

  else
  {
    v17 = payloadCopy;
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

+ (id)notificationUpdateMessagePayloadForHome:(id)home notificationEnabled:(BOOL)enabled characteristics:(id)characteristics characteristicsErrorsMap:(id)map
{
  enabledCopy = enabled;
  v75 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  characteristicsCopy = characteristics;
  mapCopy = map;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = characteristicsCopy;
  v61 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v61)
  {
    v60 = *v63;
    v55 = *MEMORY[0x277CD2128];
    v53 = *MEMORY[0x277CD2158];
    v52 = *MEMORY[0x277CD2168];
    v56 = dictionary;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v63 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v62 + 1) + 8 * i);
        service = [v11 service];
        instanceID = [service instanceID];
        accessory = [service accessory];
        uuid = [accessory uuid];
        uUIDString = [uuid UUIDString];

        if (instanceID)
        {
          v17 = uUIDString == 0;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          v18 = objc_autoreleasePoolPush();
          selfCopy = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138543874;
            v69 = v21;
            v70 = 2112;
            v71 = service;
            v72 = 2112;
            v73 = v11;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Missing required service (%@) properties for characteristic %@ - dropping the notification", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v18);
        }

        else
        {
          v22 = MEMORY[0x277CBEB38];
          v23 = [dictionary objectForKeyedSubscript:uUIDString];
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
          v29 = [v27 objectForKeyedSubscript:instanceID];
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

          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          v34 = [mapCopy objectForKey:v11];
          if (v34)
          {
            notificationEnabledTime = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v34 requiringSecureCoding:1 error:0];
            v36 = dictionary2;
            v37 = notificationEnabledTime;
            v38 = v55;
          }

          else
          {
            v39 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
            [dictionary2 setObject:v39 forKeyedSubscript:v53];

            notificationEnabledTime = [v11 notificationEnabledTime];
            v36 = dictionary2;
            v37 = notificationEnabledTime;
            v38 = v52;
          }

          [v36 setObject:v37 forKeyedSubscript:v38];

          v40 = [dictionary2 copy];
          instanceID2 = [v11 instanceID];
          [v32 setObject:v40 forKeyedSubscript:instanceID2];

          v42 = [v32 copy];
          [v27 setObject:v42 forKeyedSubscript:instanceID];

          v43 = [v27 copy];
          [v56 setObject:v43 forKeyedSubscript:uUIDString];

          dictionary = v56;
        }
      }

      v61 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
    }

    while (v61);
  }

  if ([dictionary count])
  {
    v66[0] = *MEMORY[0x277CD2490];
    v44 = [dictionary copy];
    v67[0] = v44;
    v66[1] = *MEMORY[0x277CD0640];
    v45 = homeCopy;
    uuid2 = [homeCopy uuid];
    uUIDString2 = [uuid2 UUIDString];
    v67[1] = uUIDString2;
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:2];
  }

  else
  {
    v48 = MEMORY[0x277CBEC10];
    v45 = homeCopy;
  }

  v49 = *MEMORY[0x277D85DE8];

  return v48;
}

+ (id)responsePayloadForHome:(id)home changedAccessories:(id)accessories moreMessagesInMultipart:(id)multipart
{
  homeCopy = home;
  accessoriesCopy = accessories;
  multipartCopy = multipart;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = dictionary;
  if (accessoriesCopy)
  {
    [dictionary setObject:accessoriesCopy forKeyedSubscript:@"kModifiedCharacteristicsForAccessoryKey"];
  }

  if (homeCopy)
  {
    uuid = [homeCopy uuid];
    uUIDString = [uuid UUIDString];
    [v11 setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CD0640]];
  }

  if (multipartCopy)
  {
    [v11 setObject:multipartCopy forKeyedSubscript:@"kMultiPartResponseKey"];
  }

  v14 = [v11 copy];

  return v14;
}

@end