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
  v115 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__HMDRapportMessageTransport__didReceiveRequest_options_responseHandler___block_invoke;
  aBlock[3] = &unk_279735558;
  v11 = v10;
  v104 = v11;
  v100 = _Block_copy(aBlock);
  v12 = [(HMDRapportMessageTransport *)self _rpOptions:v9 stringForKey:*MEMORY[0x277D442D0]];
  v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v12];
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138544386;
    v106 = v17;
    v107 = 2112;
    v108 = v8;
    v109 = 2160;
    v110 = 1752392040;
    v111 = 2112;
    v112 = v13;
    v113 = 2112;
    v114 = v9;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Received message: %@, from: %{mask.hash}@, with options: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v14);
  v102 = 0;
  v18 = [HMDRemoteMessageSerialization remoteMessageWithDictionary:v8 error:&v102];
  v19 = v102;
  v20 = v19;
  v101 = v18;
  if (v18)
  {
    if (v12)
    {
      if (v13)
      {
        v96 = [(HMDRapportMessageTransport *)v15 _rpOptions:v9 stringForKey:*MEMORY[0x277D442A0]];
        if (v96)
        {
          v95 = v11;
          v21 = [(HMDRemoteMessageTransport *)v15 accountRegistry];
          v22 = [v21 deviceForIDSIdentifier:v13];

          v97 = v22;
          if (v22)
          {
            v23 = [v22 remoteDestinationString];
            v94 = v23;
            if (v23)
            {
              v24 = v23;
              v93 = v20;
              v100[2](v100, 0);
              v25 = [v18 userInfo];
              v26 = [v25 mutableCopy];

              [v26 setObject:v24 forKeyedSubscript:@"kIDSMessageSourceIDKey"];
              v27 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDRapportMessageTransport transportType](v15, "transportType")}];
              [v26 setObject:v27 forKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];

              v28 = [v8 hmf_dataForKey:@"kIDSMessageResponseErrorDataKey"];
              [v26 setObject:v28 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];

              v29 = [v18 internal];
              [v29 setUserInfo:v26];

              v30 = [HMDRemoteDeviceMessageDestination alloc];
              v31 = [v18 destination];
              v32 = [v31 target];
              v33 = [(HMDRemoteDeviceMessageDestination *)v30 initWithTarget:v32 device:v97];

              v34 = v33;
              [v18 setDestination:v33];
              [v18 setRestriction:{objc_msgSend(objc_opt_class(), "restriction")}];
              [v18 setSecure:{-[HMDRapportMessageTransport isSecure](v15, "isSecure")}];
              v92 = [HMDDeviceHandle deviceHandleForDeviceIdentifier:v13];
              v35 = [[HMDRemoteMessageSenderContext alloc] initWithDeviceHandle:v92 accountHandle:0 accountIdentifier:0 deviceVersion:0 pairingIdentityIdentifier:v96];
              [v18 setSenderContext:v35];

              v36 = [(HMDRapportMessageTransport *)v15 logEventSubmitter];
              v37 = [HMDRemoteMessageLogEvent receivedRemoteMessage:v18 transportType:[(HMDRapportMessageTransport *)v15 transportType]];
              [v36 submitLogEvent:v37];

              v38 = v26;
              v39 = [(HMFMessageTransport *)v15 delegate];
              v40 = v15;
              v41 = v100;
              v20 = v93;
              [v39 messageTransport:v40 didReceiveMessage:v18];
            }

            else
            {
              v86 = objc_autoreleasePoolPush();
              v87 = v15;
              v88 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
              {
                v89 = HMFGetLogIdentifier();
                *buf = 138543618;
                v106 = v89;
                v107 = 2112;
                v108 = v18;
                _os_log_impl(&dword_2531F8000, v88, OS_LOG_TYPE_ERROR, "%{public}@Could not find remote destination for incoming message: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v86);
              v90 = MEMORY[0x277CCA9B8];
              v38 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3210];
              v34 = [v90 hmErrorWithCode:2 description:0 reason:0 suggestion:0 underlyingError:v38];
              v41 = v100;
              (v100)[2](v100, v34);
            }
          }

          else
          {
            v81 = objc_autoreleasePoolPush();
            v82 = v15;
            v83 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
            {
              v84 = HMFGetLogIdentifier();
              *buf = 138544130;
              v106 = v84;
              v107 = 2160;
              v108 = 1752392040;
              v109 = 2112;
              v110 = v12;
              v111 = 2112;
              v112 = v18;
              _os_log_impl(&dword_2531F8000, v83, OS_LOG_TYPE_ERROR, "%{public}@Could not find source device for sender IDS DeviceID: %{mask.hash}@ message: %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v81);
            v85 = MEMORY[0x277CCA9B8];
            v94 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3209];
            v38 = [v85 hmErrorWithCode:2 description:0 reason:0 suggestion:0 underlyingError:?];
            v41 = v100;
            (v100)[2](v100, v38);
          }

          v11 = v95;

          v79 = v97;
          v80 = v94;
        }

        else
        {
          v99 = v12;
          v70 = v8;
          v71 = v13;
          v72 = v20;
          v73 = v11;
          v74 = objc_autoreleasePoolPush();
          v75 = v15;
          v76 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            v77 = HMFGetLogIdentifier();
            *buf = 138543874;
            v106 = v77;
            v107 = 2112;
            v108 = v18;
            v109 = 2112;
            v110 = v9;
            _os_log_impl(&dword_2531F8000, v76, OS_LOG_TYPE_ERROR, "%{public}@Rejecting incoming message, %@, because pairing identity identifier is missing in options: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v74);
          v78 = MEMORY[0x277CCA9B8];
          v79 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3208];
          v80 = [v78 hmErrorWithCode:2 description:0 reason:0 suggestion:0 underlyingError:v79];
          v41 = v100;
          (v100)[2](v100, v80);
          v11 = v73;
          v20 = v72;
          v13 = v71;
          v8 = v70;
          v12 = v99;
        }

        goto LABEL_32;
      }

      v98 = v12;
      v52 = v8;
      v53 = 0;
      v54 = v19;
      v55 = v11;
      v64 = objc_autoreleasePoolPush();
      v65 = v15;
      v66 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v67 = HMFGetLogIdentifier();
        *buf = 138543874;
        v106 = v67;
        v107 = 2112;
        v108 = v18;
        v109 = 2112;
        v110 = v9;
        _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_ERROR, "%{public}@Rejecting incoming message, %@, because IDS Device ID is an invalid UUID in options: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v64);
      v68 = MEMORY[0x277CCA9B8];
      v61 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3207];
      v62 = v68;
      v63 = -1;
    }

    else
    {
      v98 = 0;
      v52 = v8;
      v53 = v13;
      v54 = v19;
      v55 = v11;
      v56 = objc_autoreleasePoolPush();
      v57 = v15;
      v58 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = HMFGetLogIdentifier();
        *buf = 138543874;
        v106 = v59;
        v107 = 2112;
        v108 = v18;
        v109 = 2112;
        v110 = v9;
        _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_ERROR, "%{public}@Rejecting incoming message, %@, because IDS Device ID is missing in options: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v56);
      v60 = MEMORY[0x277CCA9B8];
      v61 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3206];
      v62 = v60;
      v63 = 2;
    }

    v69 = [v62 hmErrorWithCode:v63 description:0 reason:0 suggestion:0 underlyingError:v61];
    v41 = v100;
    (v100)[2](v100, v69);

    v11 = v55;
    v20 = v54;
    v13 = v53;
    v8 = v52;
    v12 = v98;
    goto LABEL_32;
  }

  v42 = objc_autoreleasePoolPush();
  v43 = v15;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v45 = v9;
    v46 = v12;
    v47 = v8;
    v48 = v13;
    v49 = v20;
    v51 = v50 = v11;
    *buf = 138544386;
    v106 = v51;
    v107 = 2112;
    v108 = v47;
    v109 = 2160;
    v110 = 1752392040;
    v111 = 2112;
    v112 = v48;
    v113 = 2112;
    v114 = v49;
    _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Dropping invalid message, %@, from: %{mask.hash}@, error: %@", buf, 0x34u);

    v11 = v50;
    v20 = v49;
    v13 = v48;
    v8 = v47;
    v12 = v46;
    v9 = v45;
  }

  objc_autoreleasePoolPop(v42);
  v41 = v100;
LABEL_32:

  v91 = *MEMORY[0x277D85DE8];
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
  v9 = [HMDRemoteMessageSerialization dictionaryForMessage:v7 error:a5];
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
  aBlock[3] = &unk_279733F30;
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
      v37[2] = __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke_28;
      v37[3] = &unk_27972D030;
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
      v43 = v11;
      v44 = v10;
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
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Could not send message: failed to serialize message %{public}@ with error: %@", buf, 0x20u);
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
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Could not send message %{public}@: No valid destinations", buf, 0x16u);
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

void __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke_28(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
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
    v28 = v7;
    v29 = 2114;
    v30 = v8;
    v31 = 2160;
    v32 = 1752392040;
    v33 = 2112;
    v34 = v3;
    v35 = 2114;
    v36 = v9;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Sending message %{public}@ to IDS DeviceID: %{mask.hash}@, with options: %{public}@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = [*(a1 + 32) logEventSubmitter];
  v11 = +[HMDRemoteMessageLogEvent sentRemoteMessage:device:transportType:](HMDRemoteMessageLogEvent, "sentRemoteMessage:device:transportType:", *(a1 + 56), 0, [*(a1 + 32) transportType]);
  [v10 submitLogEvent:v11];

  v12 = [*(a1 + 32) rapportMessaging];
  v13 = [*(a1 + 64) copy];
  v14 = [*(a1 + 32) requestID];
  v15 = [v3 UUIDString];
  v16 = [*(a1 + 48) copy];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke_30;
  v20[3] = &unk_27972D008;
  v17 = *(a1 + 40);
  v20[4] = *(a1 + 32);
  v21 = v17;
  v22 = *(a1 + 72);
  v23 = v3;
  v26 = *(a1 + 96);
  v24 = *(a1 + 80);
  v25 = *(a1 + 88);
  v18 = v3;
  [v12 sendRequest:v13 requestID:v14 destinationID:v15 options:v16 responseHandler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __60__HMDRapportMessageTransport_sendMessage_completionHandler___block_invoke_30(uint64_t a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
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
      v33 = *(a1 + 48);
      v21 = [v10 unsignedIntValue];
      v22 = *(a1 + 56);
      *buf = 138544642;
      v35 = v15;
      v36 = 2114;
      v37 = v20;
      v7 = v19;
      v8 = v18;
      v11 = v17;
      v9 = v16;
      v38 = 2112;
      *v39 = v33;
      *&v39[8] = 1024;
      *&v39[10] = v21;
      v40 = 2112;
      v41 = v22;
      v42 = 2112;
      v43 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Message failed over rapport, %{public}@ / %@ with rapport xid 0x%X, to IDS DeviceID: %@ with error: %@", buf, 0x3Au);
    }

    objc_autoreleasePoolPop(v11);
    atomic_fetch_add((*(*(a1 + 80) + 8) + 24), 1uLL);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = HMFGetLogIdentifier();
      v24 = *(a1 + 40);
      v25 = [v10 unsignedIntValue];
      v26 = *(a1 + 56);
      *buf = 138544130;
      v35 = v23;
      v36 = 2114;
      v37 = v24;
      v38 = 1024;
      *v39 = v25;
      *&v39[4] = 2112;
      *&v39[6] = v26;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Message succeeded over rapport, %{public}@ with rapport xid 0x%X, to IDS DeviceID: %@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v27 = atomic_fetch_add((*(*(a1 + 88) + 8) + 24), 1uLL) + 1;
  if (v27 == [*(a1 + 64) count])
  {
    v28 = atomic_load((*(*(a1 + 80) + 8) + 24));
    if (v28 >= [*(a1 + 64) count])
    {
      v29 = MEMORY[0x277CCA9B8];
      v30 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3203 underlyingError:v9];
      v31 = [v29 hmErrorWithCode:54 description:@"Communication failure." reason:0 suggestion:0 underlyingError:v30];

      (*(*(a1 + 72) + 16))();
    }

    else
    {
      (*(*(a1 + 72) + 16))();
    }
  }

  v32 = *MEMORY[0x277D85DE8];
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
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Not updating IDS device identifier for device because it belongs to the current account: %@", &v18, 0x16u);
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
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Setting shared user's IDS device identifier for device: %@", &v18, 0x16u);
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
  v13[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [a3 destination];
    if (v4)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v6 = v4;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
      v8 = 0;
      if (isKindOfClass)
      {
        v9 = [(HMDRapportMessageTransport *)self _IDSIdentifierForDestination:v4];
        v10 = v9;
        if (v9)
        {
          v13[0] = v9;
          v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
        }

        else
        {
          v8 = MEMORY[0x277CBEBF8];
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
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
  v12[3] = &unk_279735D00;
  v12[4] = self;
  [v5 configureDiscoveryClientForRequestIDs:v6 withCompletion:v12];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__HMDRapportMessageTransport__configureRapport___block_invoke_2;
  aBlock[3] = &unk_27972CFE0;
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
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = ([v3 restriction] >> 3) & 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
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
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Not sending message %{public}@ because no destination devices have an IDS DeviceID", &v15, 0x16u);
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
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Starting Rapport Transport: %@", &v12, 0x16u);
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
  if (logCategory__hmf_once_t19_131909 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19_131909, &__block_literal_global_131910);
  }

  v3 = logCategory__hmf_once_v20_131911;

  return v3;
}

uint64_t __41__HMDRapportMessageTransport_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v20_131911;
  logCategory__hmf_once_v20_131911 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)requestIDsToRegister
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"com.apple.home.messaging.rid";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end