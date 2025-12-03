@interface HMDRemoteMessageSerialization
+ (BOOL)legacyNotificationMessage:(id)message;
+ (id)dictionaryForMessage:(id)message error:(id *)error;
+ (id)remoteMessageWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation HMDRemoteMessageSerialization

+ (id)dictionaryForMessage:(id)message error:(id *)error
{
  v57 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (messageCopy)
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    name = [messageCopy name];
    [v7 setObject:name forKeyedSubscript:@"kIDSMessageNameKey"];

    identifier = [messageCopy identifier];
    uUIDString = [identifier UUIDString];
    [v7 setObject:uUIDString forKeyedSubscript:@"kIDSMessageIdentifierKey"];

    destination = [messageCopy destination];
    target = [destination target];
    uUIDString2 = [target UUIDString];
    [v7 setObject:uUIDString2 forKeyedSubscript:@"kIDSMessageTargetKey"];

    messagePayload = [messageCopy messagePayload];

    if (messagePayload)
    {
      v15 = MEMORY[0x277CCAC58];
      messagePayload2 = [messageCopy messagePayload];
      LOBYTE(v15) = [v15 propertyList:messagePayload2 isValidForFormat:200];

      if ((v15 & 1) == 0)
      {
        v41 = objc_autoreleasePoolPush();
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = HMFGetLogIdentifier();
          messagePayload3 = [messageCopy messagePayload];
          v53 = 138543618;
          v54 = v43;
          v55 = 2112;
          v56 = messagePayload3;
          _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@Invalid message payload: %@", &v53, 0x16u);
        }

        v45 = v41;
        goto LABEL_33;
      }

      messagePayload4 = [messageCopy messagePayload];
      [v7 setObject:messagePayload4 forKeyedSubscript:@"kIDSMessagePayloadKey"];
    }

    headers = [messageCopy headers];
    v19 = [headers count];

    if (!v19)
    {
LABEL_8:
      v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(messageCopy, "qualityOfService")}];
      [v7 setObject:v23 forKeyedSubscript:@"kRemoteMessageQoSKey"];

      v24 = messageCopy;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;

      if (isKindOfClass)
      {
        transactionIdentifier = [v24 transactionIdentifier];

        if (transactionIdentifier)
        {
          transactionIdentifier2 = [v24 transactionIdentifier];
          uUIDString3 = [transactionIdentifier2 UUIDString];
          [v7 setObject:uUIDString3 forKeyedSubscript:@"kIDSMessageRequestTransactionIDKey"];
        }

        type = [v24 type];
        if (type <= 2)
        {
          [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*off_2797356D8[type]];
        }

        if ([v24 isSecure])
        {
          v32 = +[HMDHomeKitVersion currentVersion];
          versionString = [v32 versionString];
          [v7 setObject:versionString forKeyedSubscript:@"dv"];
        }

        remoteResponseRestriction = [v24 remoteResponseRestriction];
        if (remoteResponseRestriction != -1)
        {
          v35 = remoteResponseRestriction;
          if (![v24 type])
          {
            v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v35];
            [v7 setObject:v36 forKeyedSubscript:@"kRemoteMessageResponseRestrictionKey"];
          }
        }
      }

      v37 = v7;

      goto LABEL_36;
    }

    v20 = MEMORY[0x277CCAC58];
    headers2 = [messageCopy headers];
    LOBYTE(v20) = [v20 propertyList:headers2 isValidForFormat:200];

    if (v20)
    {
      headers3 = [messageCopy headers];
      [v7 setObject:headers3 forKeyedSubscript:@"kRemoteMessageHeadersKey"];

      goto LABEL_8;
    }

    v46 = objc_autoreleasePoolPush();
    selfCopy = self;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = HMFGetLogIdentifier();
      headers4 = [messageCopy headers];
      v53 = 138543618;
      v54 = v49;
      v55 = 2112;
      v56 = headers4;
      _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Invalid message headers: %@", &v53, 0x16u);
    }

    v45 = v46;
LABEL_33:
    objc_autoreleasePoolPop(v45);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
      *error = v37 = 0;
    }

    else
    {
      v37 = 0;
    }

LABEL_36:

    goto LABEL_37;
  }

  v38 = objc_autoreleasePoolPush();
  v39 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v40 = HMFGetLogIdentifier();
    v53 = 138543362;
    v54 = v40;
    _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Message parameter is required", &v53, 0xCu);
  }

  objc_autoreleasePoolPop(v38);
  if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *error = v37 = 0;
  }

  else
  {
    v37 = 0;
  }

LABEL_37:

  v51 = *MEMORY[0x277D85DE8];

  return v37;
}

+ (id)remoteMessageWithDictionary:(id)dictionary error:(id *)error
{
  v75 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy hmf_stringForKey:@"kIDSMessageNameKey"];
  if (!v7)
  {
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Invalid parameter" reason:@"The message name is missing" suggestion:0];
    v12 = 0;
    goto LABEL_49;
  }

  v8 = [dictionaryCopy hmf_UUIDForKey:@"kIDSMessageIdentifierKey"];
  if (v8)
  {
    v9 = [dictionaryCopy hmf_UUIDForKey:@"kIDSMessageTargetKey"];
    v10 = [dictionaryCopy hmf_dictionaryForKey:@"kIDSMessagePayloadKey"];
    if ([dictionaryCopy hmf_BOOLForKey:@"kIDSMessageRequiresResponseKey"])
    {
      v62 = [dictionaryCopy hmf_UUIDForKey:@"kIDSMessageRequestTransactionIDKey"];
      if (v62)
      {
        v58 = 0;
        goto LABEL_19;
      }

      v14 = MEMORY[0x277CCA9B8];
      v15 = @"The transaction identifier is required for requests";
LABEL_16:
      v11 = [v14 hmErrorWithCode:3 description:@"Invalid parameter" reason:v15 suggestion:0];
      v12 = 0;
LABEL_47:

      goto LABEL_48;
    }

    if ([dictionaryCopy hmf_BOOLForKey:@"kIDSMessageIsResponseToRequest"])
    {
      v62 = [dictionaryCopy hmf_UUIDForKey:@"kIDSMessageRequestTransactionIDKey"];
      if (!v62)
      {
        v14 = MEMORY[0x277CCA9B8];
        v15 = @"The transaction identifier is required for request-responses";
        goto LABEL_16;
      }

      v13 = 1;
    }

    else if (([dictionaryCopy hmf_BOOLForKey:@"kIDSMessageIsNotificationKey"] & 1) != 0 || objc_msgSend(self, "legacyNotificationMessage:", v7))
    {
      v62 = 0;
      v13 = 2;
    }

    else
    {
      v62 = 0;
      v13 = 3;
    }

    v58 = v13;
LABEL_19:
    v16 = [dictionaryCopy hmf_dictionaryForKey:@"kRemoteMessageHeadersKey"];
    if ([v16 count])
    {
      v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v16, "count")}];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __67__HMDRemoteMessageSerialization_remoteMessageWithDictionary_error___block_invoke;
      v63[3] = &unk_279735658;
      v18 = v17;
      v64 = v18;
      [v16 enumerateKeysAndObjectsUsingBlock:v63];
      if ([v18 count])
      {
        v19 = [v18 copy];
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    if (v9)
    {
      allMessageDestinations = [objc_alloc(MEMORY[0x277D0F820]) initWithTarget:v9];
    }

    else
    {
      allMessageDestinations = [MEMORY[0x277D0F820] allMessageDestinations];
    }

    v61 = allMessageDestinations;
    v21 = [dictionaryCopy hmf_numberForKey:@"kRemoteMessageQoSKey"];
    if (!v21)
    {
      v31 = [HMDRemoteMessage alloc];
      integerValue = 17;
LABEL_37:
      LOBYTE(v53) = 0;
      v12 = [(HMDRemoteMessage *)v31 initWithName:v7 qualityOfService:integerValue destination:v61 payload:v10 headers:v19 type:v58 timeout:0.0 secure:v53];
      if (v12)
      {
        errorCopy = error;
        v33 = v9;
        v34 = v19;
        v35 = v10;
        v36 = [dictionaryCopy hmf_stringForKey:@"dv"];
        if (v36)
        {
          v37 = [[HMDHomeKitVersion alloc] initWithString:v36];
          [(HMDRemoteMessage *)v12 setSourceVersion:v37];
        }

        [(HMDRemoteMessage *)v12 setIdentifier:v8];
        [(HMDRemoteMessage *)v12 setTransactionIdentifier:v62];
        v38 = [dictionaryCopy hmf_numberForKey:@"kRemoteMessageResponseRestrictionKey"];
        unsignedIntegerValue = [v38 unsignedIntegerValue];

        if (unsignedIntegerValue)
        {
          [(HMDRemoteMessage *)v12 setResponseRestriction:unsignedIntegerValue];
        }

        v11 = 0;
        v10 = v35;
        v19 = v34;
        v9 = v33;
        error = errorCopy;
      }

      else
      {
        v40 = objc_autoreleasePoolPush();
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          errorCopy2 = error;
          v42 = v8;
          v43 = v9;
          v44 = v19;
          v46 = v45 = v10;
          *buf = 138543618;
          v66 = v46;
          v67 = 2112;
          v68 = dictionaryCopy;
          _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to create message with message dictionary: %@", buf, 0x16u);

          v10 = v45;
          v19 = v44;
          v9 = v43;
          v8 = v42;
          error = errorCopy2;
        }

        objc_autoreleasePoolPop(v40);
        v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      }

      goto LABEL_47;
    }

    v22 = v21;
    [v21 integerValue];
    if (HMFQualityOfServiceCompare() == 1)
    {
      v23 = &unk_28662A520;
    }

    else
    {
      [v22 integerValue];
      if (HMFQualityOfServiceCompare() || ((v50 = MEMORY[0x277CCABB0], v51 = [v22 integerValue], v51 <= 17) ? (v52 = 17) : (v52 = v51), objc_msgSend(v50, "numberWithInteger:", v52), (v23 = objc_claimAutoreleasedReturnValue()) == 0))
      {
LABEL_36:
        v31 = [HMDRemoteMessage alloc];
        integerValue = [v22 integerValue];

        goto LABEL_37;
      }
    }

    v57 = v9;
    v24 = objc_autoreleasePoolPush();
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v26 = v56 = v23;
      [v22 integerValue];
      HMFQualityOfServiceToString();
      v54 = v10;
      v27 = v55 = v19;
      [v56 integerValue];
      HMFQualityOfServiceToString();
      v29 = v28 = v24;
      *buf = 138544386;
      v66 = v26;
      v67 = 2112;
      v68 = v27;
      v69 = 2112;
      v70 = v29;
      v71 = 2112;
      v72 = v7;
      v73 = 2112;
      v74 = v8;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Changing the QoS (%@ -> %@) of remote message: %@ (%@)", buf, 0x34u);

      v24 = v28;
      v10 = v54;
      v19 = v55;

      v23 = v56;
    }

    objc_autoreleasePoolPop(v24);
    v30 = v23;

    v22 = v30;
    v9 = v57;
    goto LABEL_36;
  }

  v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Invalid parameter" reason:@"The message identifier is missing" suggestion:0];
  v12 = 0;
LABEL_48:

LABEL_49:
  if (error)
  {
    v47 = v11;
    *error = v11;
  }

  v48 = *MEMORY[0x277D85DE8];

  return v12;
}

void __67__HMDRemoteMessageSerialization_remoteMessageWithDictionary_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v7)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

+ (BOOL)legacyNotificationMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy isEqualToString:@"kCharacteristicValueUpdatedNotificationKey"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [messageCopy isEqualToString:@"kMultipleCharacteristicValuesUpdatedNotificationKey"];
  }

  return v4;
}

@end