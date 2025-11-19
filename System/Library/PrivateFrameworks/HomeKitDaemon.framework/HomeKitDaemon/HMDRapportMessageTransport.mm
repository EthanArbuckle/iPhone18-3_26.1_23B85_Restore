@interface HMDRapportMessageTransport
+ (id)logCategory;
+ (id)requestIDsToRegister;
- (BOOL)canSendMessage:(id)a3;
- (BOOL)isValidMessage:(id)a3;
- (HMDRapportMessageTransport)initWithAccountRegistry:(id)a3 requestID:(id)a4;
- (HMDRapportMessageTransport)initWithAccountRegistry:(id)a3 requestID:(id)a4 rapportMessaging:(id)a5 logEventSubmitter:(id)a6 appleAccountManager:(id)a7;
- (id)_IDSIdentifierForDestination:(id)a3;
- (id)_IDSIdentifierForDevice:(id)a3;
- (id)_IDSIdentifiersForMessage:(id)a3;
- (id)_rpOptions:(id)a3 stringForKey:(id)a4;
- (id)_serializeRemoteMessage:(id)a3 withResponseErrorData:(id)a4 serializationError:(id *)a5;
- (id)start;
- (void)_configureRapport:(id)a3;
- (void)_didReceiveRequest:(id)a3 options:(id)a4 responseHandler:(id)a5;
- (void)_setSharedUserIDSIdentifierForDevice:(id)a3 idsIdentifier:(id)a4;
- (void)sendMessage:(id)a3 completionHandler:(id)a4;
@end

@implementation HMDRapportMessageTransport

- (id)_rpOptions:(id)a3 stringForKey:(id)a4
{
  v4 = [a3 hmf_stringForKey:a4];
  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)_didReceiveRequest:(id)a3 options:(id)a4 responseHandler:(id)a5
{
  v119 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__HMDRapportMessageTransport__didReceiveRequest_options_responseHandler___block_invoke;
  aBlock[3] = &unk_278688DD0;
  v11 = v10;
  v108 = v11;
  v104 = _Block_copy(aBlock);
  v12 = [(HMDRapportMessageTransport *)self _rpOptions:v9 stringForKey:*MEMORY[0x277D442D0]];
  v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v12];
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138544386;
    v110 = v17;
    v111 = 2112;
    v112 = v8;
    v113 = 2160;
    v114 = 1752392040;
    v115 = 2112;
    v116 = v13;
    v117 = 2112;
    v118 = v9;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Received message: %@, from: %{mask.hash}@, with options: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v14);
  v106 = 0;
  v18 = [HMDRemoteMessageSerialization remoteMessageWithDictionary:v8 isHH2Payload:1 error:&v106];
  v19 = v106;
  v20 = v19;
  v105 = v18;
  if (v18)
  {
    if (v12)
    {
      if (v13)
      {
        v100 = [(HMDRapportMessageTransport *)v15 _rpOptions:v9 stringForKey:*MEMORY[0x277D442A0]];
        if (v100)
        {
          v99 = v11;
          v21 = [(HMDRemoteMessageTransport *)v15 accountRegistry];
          v22 = [v21 deviceForIDSIdentifier:v13];

          v101 = v22;
          if (v22)
          {
            v23 = [v22 remoteDestinationString];
            v98 = v23;
            if (v23)
            {
              v24 = v23;
              v96 = v20;
              v104[2](v104, 0);
              v25 = [v18 userInfo];
              v26 = [v25 mutableCopy];

              [v26 setObject:v24 forKeyedSubscript:@"kIDSMessageSourceIDKey"];
              v27 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDRapportMessageTransport transportType](v15, "transportType")}];
              [v26 setObject:v27 forKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];

              v28 = [v8 hmf_dataForKey:@"kIDSMessageResponseErrorDataKey"];
              [v26 setObject:v28 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];

              v29 = [v18 internal];
              v97 = v26;
              [v29 setUserInfo:v26];

              v30 = [HMDRemoteDeviceMessageDestination alloc];
              v31 = [v18 destination];
              v32 = [v31 target];
              v95 = [(HMDRemoteDeviceMessageDestination *)v30 initWithTarget:v32 device:v101];

              [v18 setDestination:v95];
              [v18 setRestriction:{objc_msgSend(objc_opt_class(), "restriction")}];
              [v18 setSecure:{-[HMDRapportMessageTransport isSecure](v15, "isSecure")}];
              v94 = [HMDDeviceHandle deviceHandleForDeviceIdentifier:v13];
              v33 = [[HMDRemoteMessageSenderContext alloc] initWithDeviceHandle:v94 accountHandle:0 accountIdentifier:0 deviceVersion:0 pairingIdentityIdentifier:v100];
              [v18 setSenderContext:v33];

              v34 = [(HMDRapportMessageTransport *)v15 logEventSubmitter];
              v35 = [HMDRemoteMessageLogEvent receivedRemoteMessage:v18 transportType:[(HMDRapportMessageTransport *)v15 transportType]];
              [v34 submitLogEvent:v35];

              v36 = [(HMDRapportMessageTransport *)v15 remoteMessageListener];
              v37 = [(HMDRapportMessageTransport *)v15 transportType];
              v38 = [v18 senderContext];
              [v36 receivedRemoteMessageOverTransportType:v37 remoteMessageSenderContext:v38];

              v39 = [(HMFMessageTransport *)v15 delegate];
              v40 = v15;
              v41 = v104;
              v20 = v96;
              [v39 messageTransport:v40 didReceiveMessage:v18];

              v42 = v95;
            }

            else
            {
              v88 = objc_autoreleasePoolPush();
              v89 = v15;
              v90 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                v91 = HMFGetLogIdentifier();
                *buf = 138543618;
                v110 = v91;
                v111 = 2112;
                v112 = v18;
                _os_log_impl(&dword_229538000, v90, OS_LOG_TYPE_ERROR, "%{public}@Could not find remote destination for incoming message: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v88);
              v92 = MEMORY[0x277CCA9B8];
              v97 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3210];
              v42 = [v92 hmErrorWithCode:2 description:0 reason:0 suggestion:0 underlyingError:?];
              v41 = v104;
              (v104)[2](v104, v42);
            }

            v81 = v98;
            v11 = v99;
            v80 = v101;
            v87 = v97;
          }

          else
          {
            v82 = objc_autoreleasePoolPush();
            v83 = v15;
            v84 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              v85 = HMFGetLogIdentifier();
              *buf = 138544130;
              v110 = v85;
              v111 = 2160;
              v112 = 1752392040;
              v113 = 2112;
              v114 = v12;
              v115 = 2112;
              v116 = v18;
              _os_log_impl(&dword_229538000, v84, OS_LOG_TYPE_ERROR, "%{public}@Could not find source device for sender IDS DeviceID: %{mask.hash}@ message: %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v82);
            v86 = MEMORY[0x277CCA9B8];
            v81 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3209];
            v87 = [v86 hmErrorWithCode:2 description:0 reason:0 suggestion:0 underlyingError:v81];
            v41 = v104;
            (v104)[2](v104, v87);
            v11 = v99;
            v80 = 0;
          }
        }

        else
        {
          v103 = v12;
          v71 = v8;
          v72 = v13;
          v73 = v20;
          v74 = v11;
          v75 = objc_autoreleasePoolPush();
          v76 = v15;
          v77 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            v78 = HMFGetLogIdentifier();
            *buf = 138543874;
            v110 = v78;
            v111 = 2112;
            v112 = v18;
            v113 = 2112;
            v114 = v9;
            _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_ERROR, "%{public}@Rejecting incoming message, %@, because pairing identity identifier is missing in options: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v75);
          v79 = MEMORY[0x277CCA9B8];
          v80 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3208];
          v81 = [v79 hmErrorWithCode:2 description:0 reason:0 suggestion:0 underlyingError:v80];
          v41 = v104;
          (v104)[2](v104, v81);
          v11 = v74;
          v20 = v73;
          v13 = v72;
          v8 = v71;
          v12 = v103;
        }

        goto LABEL_32;
      }

      v102 = v12;
      v53 = v8;
      v54 = 0;
      v55 = v19;
      v56 = v11;
      v65 = objc_autoreleasePoolPush();
      v66 = v15;
      v67 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v68 = HMFGetLogIdentifier();
        *buf = 138543874;
        v110 = v68;
        v111 = 2112;
        v112 = v18;
        v113 = 2112;
        v114 = v9;
        _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_ERROR, "%{public}@Rejecting incoming message, %@, because IDS Device ID is an invalid UUID in options: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v65);
      v69 = MEMORY[0x277CCA9B8];
      v62 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3207];
      v63 = v69;
      v64 = -1;
    }

    else
    {
      v102 = 0;
      v53 = v8;
      v54 = v13;
      v55 = v19;
      v56 = v11;
      v57 = objc_autoreleasePoolPush();
      v58 = v15;
      v59 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v60 = HMFGetLogIdentifier();
        *buf = 138543874;
        v110 = v60;
        v111 = 2112;
        v112 = v18;
        v113 = 2112;
        v114 = v9;
        _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, "%{public}@Rejecting incoming message, %@, because IDS Device ID is missing in options: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v57);
      v61 = MEMORY[0x277CCA9B8];
      v62 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3206];
      v63 = v61;
      v64 = 2;
    }

    v70 = [v63 hmErrorWithCode:v64 description:0 reason:0 suggestion:0 underlyingError:v62];
    v41 = v104;
    (v104)[2](v104, v70);

    v11 = v56;
    v20 = v55;
    v13 = v54;
    v8 = v53;
    v12 = v102;
    goto LABEL_32;
  }

  v43 = objc_autoreleasePoolPush();
  v44 = v15;
  v45 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v46 = v9;
    v47 = v12;
    v48 = v8;
    v49 = v13;
    v50 = v20;
    v52 = v51 = v11;
    *buf = 138544386;
    v110 = v52;
    v111 = 2112;
    v112 = v48;
    v113 = 2160;
    v114 = 1752392040;
    v115 = 2112;
    v116 = v49;
    v117 = 2112;
    v118 = v50;
    _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Dropping invalid message, %@, from: %{mask.hash}@, error: %@", buf, 0x34u);

    v11 = v51;
    v20 = v50;
    v13 = v49;
    v8 = v48;
    v12 = v47;
    v9 = v46;
  }

  objc_autoreleasePoolPop(v43);
  v41 = v104;
LABEL_32:

  v93 = *MEMORY[0x277D85DE8];
}

uint64_t __73__HMDRapportMessageTransport__didReceiveRequest_options_responseHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

- (id)_serializeRemoteMessage:(id)a3 withResponseErrorData:(id)a4 serializationError:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [HMDRemoteMessageSerialization dictionaryForMessage:v7 isHH2Payload:1 error:a5];
  v10 = [v9 mutableCopy];

  if (v10)
  {
    v11 = [v7 type];
    if (v8 && v11 == 1)
    {
      [v10 setObject:v8 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
    }

    v12 = [v10 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)sendMessage:(id)a3 completionHandler:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke;
  aBlock[3] = &unk_278689A68;
  v8 = v7;
  v51 = v8;
  v9 = v6;
  v50 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [(HMDRapportMessageTransport *)self _IDSIdentifiersForMessage:v9];
  if ([v11 count])
  {
    v12 = [objc_opt_class() remoteMessageFromMessage:v9 secure:1 accountRegistry:0];
    v13 = [v9 userInfo];
    v14 = [v13 objectForKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
    v48 = 0;
    v15 = [(HMDRapportMessageTransport *)self _serializeRemoteMessage:v12 withResponseErrorData:v14 serializationError:&v48];
    v36 = v48;

    if (v15)
    {
      v16 = objc_opt_new();
      [v9 timeout];
      if (v17 > 0.0)
      {
        v18 = MEMORY[0x277CCABB0];
        [v9 timeout];
        v19 = [v18 numberWithDouble:?];
        [v16 setObject:v19 forKeyedSubscript:*MEMORY[0x277D442F0]];
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v47[0] = 0;
      v47[1] = v47;
      v47[2] = 0x2020000000;
      v47[3] = 0;
      v53 = 0;
      v20 = [v9 identifier];
      v21 = [v9 name];

      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke_42;
      v37[3] = &unk_27867EC18;
      v37[4] = self;
      v22 = v20;
      v38 = v22;
      v23 = v16;
      v39 = v23;
      v40 = v12;
      v41 = v15;
      v24 = v21;
      v42 = v24;
      v45 = buf;
      v46 = v47;
      v44 = v10;
      v43 = v11;
      [v43 na_each:v37];

      _Block_object_dispose(v47, 8);
      _Block_object_dispose(buf, 8);

      v9 = 0;
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v30 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        v33 = [v9 identifier];
        *buf = 138543874;
        *&buf[4] = v32;
        *&buf[12] = 2114;
        *&buf[14] = v33;
        *&buf[22] = 2112;
        v53 = v36;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Could not send message: failed to serialize message %{public}@ with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(context);
      (*(v10 + 2))(v10, v36);
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      v29 = [v9 identifier];
      *buf = 138543618;
      *&buf[4] = v28;
      *&buf[12] = 2114;
      *&buf[14] = v29;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Could not send message %{public}@: No valid destinations", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Invalid parameter." reason:@"No destinations have a valid IDS DeviceID." suggestion:0];
    (*(v10 + 2))(v10, v12);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 40));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }

  [*(a1 + 32) respondWithPayload:0 error:v5];
}

void __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke_42(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *buf = 138544386;
    v37 = v7;
    v38 = 2114;
    v39 = v8;
    v40 = 2160;
    v41 = 1752392040;
    v42 = 2112;
    v43 = v3;
    v44 = 2114;
    v45 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Sending message %{public}@ to IDS DeviceID: %{mask.hash}@, with options: %{public}@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = [*(a1 + 56) destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [v12 devices];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke_43;
    v34[3] = &unk_27867EBC8;
    v34[4] = *(a1 + 32);
    v35 = v3;
    v14 = [v13 na_firstObjectPassingTest:v34];
  }

  else
  {
    v14 = 0;
  }

  v15 = [*(a1 + 32) logEventSubmitter];
  v16 = +[HMDRemoteMessageLogEvent sentRemoteMessage:device:transportType:](HMDRemoteMessageLogEvent, "sentRemoteMessage:device:transportType:", *(a1 + 56), v14, [*(a1 + 32) transportType]);
  [v15 submitLogEvent:v16];

  v17 = [*(a1 + 32) rapportMessaging];
  v18 = [*(a1 + 64) copy];
  v19 = [*(a1 + 32) requestID];
  v20 = [v3 UUIDString];
  v21 = [*(a1 + 48) copy];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke_2;
  v27[3] = &unk_27867EBF0;
  v22 = *(a1 + 40);
  v27[4] = *(a1 + 32);
  v28 = v22;
  v29 = *(a1 + 72);
  v30 = v3;
  v33 = *(a1 + 104);
  v26 = *(a1 + 88);
  v23 = v26;
  v32 = v26;
  v31 = *(a1 + 80);
  v24 = v3;
  [v17 sendRequest:v18 requestID:v19 destinationID:v20 options:v21 responseHandler:v27];

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke_43(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _IDSIdentifierForDevice:a2];
  v4 = [v3 isEqual:*(a1 + 40)];

  return v4;
}

void __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 hmf_numberForKey:*MEMORY[0x277D442F8]];
  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v9)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = v9;
      v17 = v11;
      v18 = v8;
      v19 = v7;
      v20 = *(a1 + 40);
      v36 = *(a1 + 48);
      v21 = [v10 unsignedIntValue];
      v22 = *(a1 + 56);
      *buf = 138544642;
      v38 = v15;
      v39 = 2114;
      v40 = v20;
      v7 = v19;
      v8 = v18;
      v11 = v17;
      v9 = v16;
      v41 = 2112;
      *v42 = v36;
      *&v42[8] = 1024;
      *&v42[10] = v21;
      v43 = 2112;
      v44 = v22;
      v45 = 2112;
      v46 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Message failed over rapport, %{public}@ / %@ with rapport xid 0x%X, to IDS DeviceID: %@ with error: %@", buf, 0x3Au);
    }

    objc_autoreleasePoolPop(v11);
    atomic_fetch_add((*(*(a1 + 80) + 8) + 24), 1uLL);
    add = atomic_fetch_add((*(*(a1 + 88) + 8) + 24), 1uLL);
    v24 = MEMORY[0x277CCA9B8];
    v25 = [*(a1 + 56) UUIDString];
    v26 = [v24 hmInternalErrorWithCode:3204 description:@"Partial communication failure" reason:v25 suggestion:0 underlyingError:v9];

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      v28 = *(a1 + 40);
      v29 = [v10 unsignedIntValue];
      v30 = *(a1 + 56);
      *buf = 138544130;
      v38 = v27;
      v39 = 2114;
      v40 = v28;
      v41 = 1024;
      *v42 = v29;
      *&v42[4] = 2112;
      *&v42[6] = v30;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Message succeeded over rapport, %{public}@ with rapport xid 0x%X, to IDS DeviceID: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v11);
    add = atomic_fetch_add((*(*(a1 + 88) + 8) + 24), 1uLL);
  }

  if (add + 1 == [*(a1 + 64) count])
  {
    v31 = atomic_load((*(*(a1 + 80) + 8) + 24));
    if (v31 >= [*(a1 + 64) count])
    {
      v32 = MEMORY[0x277CCA9B8];
      v33 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3203 underlyingError:v9];
      v34 = [v32 hmErrorWithCode:54 description:@"Communication failure." reason:0 suggestion:0 underlyingError:v33];

      (*(*(a1 + 72) + 16))();
    }

    else
    {
      (*(*(a1 + 72) + 16))();
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_setSharedUserIDSIdentifierForDevice:(id)a3 idsIdentifier:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_12;
  }

  v9 = [v6 account];
  v10 = [v9 isCurrentAccount];

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  v14 = v13;
  if (v10)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Not updating IDS device identifier for device because it belongs to the current account: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Setting shared user's IDS device identifier for device: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [v6 setSharedUserIDSIdentifier:v8];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_IDSIdentifierForDestination:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = 0;
    if (isKindOfClass)
    {
      v8 = [v3 device];
      v9 = [v8 idsIdentifier];
      v10 = v9;
      if (v9)
      {
        v7 = v9;
      }

      else
      {
        v11 = [v3 device];
        v7 = [v11 sharedUserIDSIdentifier];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_IDSIdentifiersForMessage:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 destination];
    if (v6)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      if (isKindOfClass)
      {
        v10 = [(HMDRapportMessageTransport *)self _IDSIdentifierForDestination:v6];
        v11 = v10;
        if (v10)
        {
          v22[0] = v10;
          v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
        }

        else
        {
          v12 = MEMORY[0x277CBEBF8];
        }
      }

      else
      {
        v13 = v6;
        objc_opt_class();
        v14 = objc_opt_isKindOfClass();
        if (v14)
        {
          v15 = v13;
        }

        else
        {
          v15 = 0;
        }

        v11 = v15;

        if (v14)
        {
          v16 = [v13 devices];
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __56__HMDRapportMessageTransport__IDSIdentifiersForMessage___block_invoke;
          v19[3] = &unk_27867EBA0;
          v19[4] = self;
          v20 = v5;
          v21 = v13;
          v12 = [v16 na_map:v19];
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

id __56__HMDRapportMessageTransport__IDSIdentifiersForMessage___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _IDSIdentifierForDevice:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) identifier];
      v12 = *(a1 + 48);
      v15 = 138543874;
      v16 = v10;
      v17 = 2114;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not send message %{public}@ to destination %{public}@: invalid destination or device does not have an IDS DeviceID", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_IDSIdentifierForDevice:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 idsIdentifier];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [v4 sharedUserIDSIdentifier];
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_configureRapport:(id)a3
{
  v4 = a3;
  v5 = [(HMDRapportMessageTransport *)self rapportMessaging];
  v6 = +[HMDRapportMessageTransport requestIDsToRegister];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__HMDRapportMessageTransport__configureRapport___block_invoke;
  v12[3] = &unk_27868A728;
  v12[4] = self;
  [v5 configureDiscoveryClientForRequestIDs:v6 withCompletion:v12];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__HMDRapportMessageTransport__configureRapport___block_invoke_2;
  aBlock[3] = &unk_27867EB78;
  objc_copyWeak(&v10, &location);
  v7 = _Block_copy(aBlock);
  v8 = [(HMDRapportMessageTransport *)self rapportMessaging];
  [v8 registerRequestHandlerForRequestID:v4 withRequestHandler:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __48__HMDRapportMessageTransport__configureRapport___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) startPromise];
  v1 = [MEMORY[0x277D0F7C0] futureWithNoValue];
  [v2 resolveWithFuture:v1];
}

void __48__HMDRapportMessageTransport__configureRapport___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReceiveRequest:v9 options:v8 responseHandler:v7];
}

- (BOOL)isValidMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v5 = [v3 destination];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_6;
    }
  }

  v7 = ([v3 restriction] >> 3) & 1;
LABEL_6:

  return v7;
}

- (BOOL)canSendMessage:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDRapportMessageTransport *)self isValidMessage:v4])
  {
    v5 = [(HMDRapportMessageTransport *)self _IDSIdentifiersForMessage:v4];
    v6 = [v5 count];
    v7 = v6 != 0;
    if (!v6)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [v4 identifier];
        v15 = 138543618;
        v16 = v11;
        v17 = 2114;
        v18 = v12;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not sending message %{public}@ because no destination devices have an IDS DeviceID", &v15, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)start
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDRapportMessageTransport *)v4 requestID];
    v12 = 138543618;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Starting Rapport Transport: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [(HMDRapportMessageTransport *)v4 requestID];
  [(HMDRapportMessageTransport *)v4 _configureRapport:v8];

  v9 = [(HMDRemoteMessageTransport *)v4 startFuture];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDRapportMessageTransport)initWithAccountRegistry:(id)a3 requestID:(id)a4 rapportMessaging:(id)a5 logEventSubmitter:(id)a6 appleAccountManager:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = HMDRapportMessageTransport;
  v17 = [(HMDRemoteMessageTransport *)&v20 initWithAccountRegistry:a3];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_requestID, a4);
    objc_storeStrong(&v18->_rapportMessaging, a5);
    objc_storeStrong(&v18->_logEventSubmitter, a6);
    objc_storeStrong(&v18->_appleAccountManager, a7);
  }

  return v18;
}

- (HMDRapportMessageTransport)initWithAccountRegistry:(id)a3 requestID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[HMDRapportMessaging sharedInstance];
  v9 = +[HMDMetricsManager sharedLogEventSubmitter];
  v10 = +[HMDAppleAccountManager sharedManager];
  v11 = [(HMDRapportMessageTransport *)self initWithAccountRegistry:v7 requestID:v6 rapportMessaging:v8 logEventSubmitter:v9 appleAccountManager:v10];

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t22_196116 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t22_196116, &__block_literal_global_196117);
  }

  v3 = logCategory__hmf_once_v23_196118;

  return v3;
}

void __41__HMDRapportMessageTransport_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v23_196118;
  logCategory__hmf_once_v23_196118 = v1;
}

+ (id)requestIDsToRegister
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"com.apple.home.hh2.messaging.rid";
  v5[1] = @"com.apple.home.hh2.messaging.ble";
  v5[2] = @"com.apple.home.hh2.hmmm.rid";
  v5[3] = @"hmmm.client.rid.prefix_com.apple.private.alloy.energykit";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end