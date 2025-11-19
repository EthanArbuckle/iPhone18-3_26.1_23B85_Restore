@interface HMDRemoteMessageSerialization
+ (id)dictionaryForMessage:(id)a3 isHH2Payload:(BOOL)a4 error:(id *)a5;
+ (id)remoteMessageWithDictionary:(id)a3 isHH2Payload:(BOOL)a4 error:(id *)a5;
@end

@implementation HMDRemoteMessageSerialization

+ (id)dictionaryForMessage:(id)a3 isHH2Payload:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v60 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    v10 = [v8 name];
    [v9 setObject:v10 forKeyedSubscript:@"kIDSMessageNameKey"];

    v11 = [v8 identifier];
    v12 = [v11 UUIDString];
    objc_opt_self();
    if (v6)
    {
      v13 = @"id";
    }

    else
    {
      v13 = @"kIDSMessageIdentifierKey";
    }

    [v9 setObject:v12 forKeyedSubscript:v13];

    v14 = [v8 destination];
    v15 = [v14 target];
    v16 = [v15 UUIDString];
    [v9 setObject:v16 forKeyedSubscript:@"kIDSMessageTargetKey"];

    v17 = [v8 messagePayload];

    if (v17)
    {
      v18 = MEMORY[0x277CCAC58];
      v19 = [v8 messagePayload];
      LOBYTE(v18) = [v18 propertyList:v19 isValidForFormat:200];

      if ((v18 & 1) == 0)
      {
        v44 = objc_autoreleasePoolPush();
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = HMFGetLogIdentifier();
          v47 = [v8 messagePayload];
          v56 = 138543618;
          v57 = v46;
          v58 = 2112;
          v59 = v47;
          _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Invalid message payload: %@", &v56, 0x16u);
        }

        v48 = v44;
        goto LABEL_36;
      }

      v20 = [v8 messagePayload];
      [v9 setObject:v20 forKeyedSubscript:@"kIDSMessagePayloadKey"];
    }

    v21 = [v8 headers];
    v22 = [v21 count];

    if (!v22)
    {
LABEL_11:
      v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "qualityOfService")}];
      [v9 setObject:v26 forKeyedSubscript:@"kRemoteMessageQoSKey"];

      v27 = v8;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0;
      }

      v30 = v29;

      if (isKindOfClass)
      {
        v31 = [v27 transactionIdentifier];

        if (v31)
        {
          v32 = [v27 transactionIdentifier];
          v33 = [v32 UUIDString];
          [v9 setObject:v33 forKeyedSubscript:@"kIDSMessageRequestTransactionIDKey"];
        }

        v34 = [v27 type];
        if (v34 <= 2)
        {
          [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*off_278689810[v34]];
        }

        if ([v27 isSecure])
        {
          v35 = +[HMDHomeKitVersion currentVersion];
          v36 = [v35 versionString];
          [v9 setObject:v36 forKeyedSubscript:@"dv"];
        }

        v37 = [v27 remoteResponseRestriction];
        if (v37 != -1)
        {
          v38 = v37;
          if (![v27 type])
          {
            v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v38];
            [v9 setObject:v39 forKeyedSubscript:@"kRemoteMessageResponseRestrictionKey"];
          }
        }
      }

      v40 = v9;

      goto LABEL_39;
    }

    v23 = MEMORY[0x277CCAC58];
    v24 = [v8 headers];
    LOBYTE(v23) = [v23 propertyList:v24 isValidForFormat:200];

    if (v23)
    {
      v25 = [v8 headers];
      [v9 setObject:v25 forKeyedSubscript:@"kRemoteMessageHeadersKey"];

      goto LABEL_11;
    }

    v49 = objc_autoreleasePoolPush();
    v50 = a1;
    v51 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = HMFGetLogIdentifier();
      v53 = [v8 headers];
      v56 = 138543618;
      v57 = v52;
      v58 = 2112;
      v59 = v53;
      _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, "%{public}@Invalid message headers: %@", &v56, 0x16u);
    }

    v48 = v49;
LABEL_36:
    objc_autoreleasePoolPop(v48);
    if (a5)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
      *a5 = v40 = 0;
    }

    else
    {
      v40 = 0;
    }

LABEL_39:

    goto LABEL_40;
  }

  v41 = objc_autoreleasePoolPush();
  v42 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v43 = HMFGetLogIdentifier();
    v56 = 138543362;
    v57 = v43;
    _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Message parameter is required", &v56, 0xCu);
  }

  objc_autoreleasePoolPop(v41);
  if (a5)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *a5 = v40 = 0;
  }

  else
  {
    v40 = 0;
  }

LABEL_40:

  v54 = *MEMORY[0x277D85DE8];

  return v40;
}

+ (id)remoteMessageWithDictionary:(id)a3 isHH2Payload:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v76 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 hmf_stringForKey:@"kIDSMessageNameKey"];
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Invalid parameter" reason:@"The message name is missing" suggestion:0];
    v13 = 0;
    goto LABEL_50;
  }

  objc_opt_self();
  if (v6)
  {
    v9 = @"id";
  }

  else
  {
    v9 = @"kIDSMessageIdentifierKey";
  }

  v10 = [v7 hmf_UUIDForKey:v9];
  if (v10)
  {
    v63 = [v7 hmf_UUIDForKey:@"kIDSMessageTargetKey"];
    v11 = [v7 hmf_dictionaryForKey:@"kIDSMessagePayloadKey"];
    if ([v7 hmf_BOOLForKey:@"kIDSMessageRequiresResponseKey"])
    {
      v62 = [v7 hmf_UUIDForKey:@"kIDSMessageRequestTransactionIDKey"];
      if (v62)
      {
        v60 = 0;
        goto LABEL_17;
      }

      v20 = MEMORY[0x277CCA9B8];
      v21 = @"The transaction identifier is required for requests";
LABEL_47:
      v12 = [v20 hmErrorWithCode:3 description:@"Invalid parameter" reason:v21 suggestion:0];
      v13 = 0;
LABEL_48:

      goto LABEL_49;
    }

    if ([v7 hmf_BOOLForKey:@"kIDSMessageIsResponseToRequest"])
    {
      v62 = [v7 hmf_UUIDForKey:@"kIDSMessageRequestTransactionIDKey"];
      if (!v62)
      {
        v20 = MEMORY[0x277CCA9B8];
        v21 = @"The transaction identifier is required for request-responses";
        goto LABEL_47;
      }

      v14 = 1;
    }

    else
    {
      v15 = [v7 hmf_BOOLForKey:@"kIDSMessageIsNotificationKey"];
      v62 = 0;
      v14 = 2;
      if (!v15)
      {
        v14 = 3;
      }
    }

    v60 = v14;
LABEL_17:
    v16 = [v7 hmf_dictionaryForKey:@"kRemoteMessageHeadersKey"];
    if ([v16 count])
    {
      v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v16, "count")}];
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __80__HMDRemoteMessageSerialization_remoteMessageWithDictionary_isHH2Payload_error___block_invoke;
      v64[3] = &unk_278689790;
      v18 = v17;
      v65 = v18;
      [v16 enumerateKeysAndObjectsUsingBlock:v64];
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

    v61 = v10;

    if (v63)
    {
      v22 = [objc_alloc(MEMORY[0x277D0F820]) initWithTarget:v63];
    }

    else
    {
      v22 = [MEMORY[0x277D0F820] allMessageDestinations];
    }

    v23 = v22;
    v24 = [v7 hmf_numberForKey:@"kRemoteMessageQoSKey"];
    if (!v24)
    {
      v35 = [HMDRemoteMessage alloc];
      v36 = 17;
LABEL_36:
      LOBYTE(v56) = 0;
      v13 = [(HMDRemoteMessage *)v35 initWithName:v8 qualityOfService:v36 destination:v23 payload:v11 headers:v19 type:v60 timeout:0.0 secure:v56];
      if (v13)
      {
        v37 = v23;
        v38 = v19;
        v39 = v11;
        v40 = [v7 hmf_stringForKey:@"dv"];
        if (v40)
        {
          v41 = [[HMDHomeKitVersion alloc] initWithString:v40];
          [(HMDRemoteMessage *)v13 setSourceVersion:v41];
        }

        [(HMDRemoteMessage *)v13 setIdentifier:v61];
        [(HMDRemoteMessage *)v13 setTransactionIdentifier:v62];
        v42 = [v7 hmf_numberForKey:@"kRemoteMessageResponseRestrictionKey"];
        v43 = [v42 unsignedIntegerValue];

        if (v43)
        {
          [(HMDRemoteMessage *)v13 setResponseRestriction:v43];
        }

        v12 = 0;
        v11 = v39;
        v19 = v38;
        v23 = v37;
      }

      else
      {
        v44 = objc_autoreleasePoolPush();
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v46 = v23;
          v47 = v19;
          v49 = v48 = v11;
          *buf = 138543618;
          v67 = v49;
          v68 = 2112;
          v69 = v7;
          _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Failed to create message with message dictionary: %@", buf, 0x16u);

          v11 = v48;
          v19 = v47;
          v23 = v46;
        }

        objc_autoreleasePoolPop(v44);
        v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      }

      v10 = v61;
      goto LABEL_48;
    }

    v25 = v24;
    [v24 integerValue];
    if (HMFQualityOfServiceCompare() == 1)
    {
      v26 = &unk_283E752F0;
    }

    else
    {
      [v25 integerValue];
      if (HMFQualityOfServiceCompare() || ((v53 = MEMORY[0x277CCABB0], v54 = [v25 integerValue], v54 <= 17) ? (v55 = 17) : (v55 = v54), objc_msgSend(v53, "numberWithInteger:", v55), (v26 = objc_claimAutoreleasedReturnValue()) == 0))
      {
LABEL_35:
        v35 = [HMDRemoteMessage alloc];
        v36 = [v25 integerValue];

        goto LABEL_36;
      }
    }

    v27 = objc_autoreleasePoolPush();
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v29 = v59 = v26;
      [v25 integerValue];
      HMFQualityOfServiceToString();
      v57 = v27;
      v31 = v30 = v23;
      [v59 integerValue];
      HMFQualityOfServiceToString();
      v58 = v19;
      v33 = v32 = v11;
      *buf = 138544386;
      v67 = v29;
      v68 = 2112;
      v69 = v31;
      v70 = 2112;
      v71 = v33;
      v72 = 2112;
      v73 = v8;
      v74 = 2112;
      v75 = v61;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Changing the QoS (%@ -> %@) of remote message: %@ (%@)", buf, 0x34u);

      v11 = v32;
      v19 = v58;

      v23 = v30;
      v27 = v57;

      v26 = v59;
    }

    objc_autoreleasePoolPop(v27);
    v34 = v26;

    v25 = v34;
    goto LABEL_35;
  }

  v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Invalid parameter" reason:@"The message identifier is missing" suggestion:0];
  v13 = 0;
LABEL_49:

LABEL_50:
  if (a5)
  {
    v50 = v12;
    *a5 = v12;
  }

  v51 = *MEMORY[0x277D85DE8];

  return v13;
}

void __80__HMDRemoteMessageSerialization_remoteMessageWithDictionary_isHH2Payload_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

@end