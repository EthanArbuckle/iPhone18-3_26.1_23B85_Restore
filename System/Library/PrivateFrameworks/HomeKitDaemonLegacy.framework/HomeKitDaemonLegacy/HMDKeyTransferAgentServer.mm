@interface HMDKeyTransferAgentServer
+ (BOOL)isPeerAvailable;
+ (id)logCategory;
- (BOOL)_endAdvertiseUUIDWithError:(id *)error;
- (BOOL)_startAdvertiseUUIDWithError:(id *)error;
- (HMDKeyTransferAgentServer)initWithHomeManager:(id)manager;
- (id)_httpMessageTransport;
- (void)__deviceAddedToAccount:(id)account;
- (void)__deviceRemovedFromAccount:(id)account;
- (void)__deviceUpdated:(id)updated;
- (void)__resetTimer:(id)timer;
- (void)_device:(id)_device addedToAccount:(id)account;
- (void)_device:(id)_device removedFromAccount:(id)account;
- (void)_endPairingWithError:(id)error;
- (void)_handleKeyTransferAgentMessage:(id)message;
- (void)beginPairingWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)resetConfig;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDKeyTransferAgentServer

- (void)_handleKeyTransferAgentMessage:(id)message
{
  v222 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [messageCopy stringForKey:@"phase"];
    *buf = 138543874;
    v217 = v6;
    v218 = 2112;
    v219 = messageCopy;
    v220 = 2112;
    v221 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Got Message: %@ / %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  mEMORY[0x277D0F8C0] = [MEMORY[0x277D0F8C0] sharedPowerLogger];
  v9 = [messageCopy stringForKey:@"phase"];
  [mEMORY[0x277D0F8C0] reportIncomingLoxyMessage:v9];

  v10 = [messageCopy stringForKey:@"phase"];
  v11 = [v10 isEqualToString:@"request_uuid"];

  progressState = [(HMDKeyTransferAgent *)selfCopy progressState];
  v13 = progressState;
  if (v11)
  {

    if (v13)
    {
      v214 = @"uuid";
      currentKeyUUID = [(HMDKeyTransferAgentServer *)selfCopy currentKeyUUID];
      uUIDString = [currentKeyUUID UUIDString];
      v215 = uUIDString;
      responseHandler20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v215 forKeys:&v214 count:1];
    }

    else
    {
      responseHandler20 = MEMORY[0x277CBEC10];
    }

    responseHandler = [messageCopy responseHandler];

    if (responseHandler)
    {
      responseHandler2 = [messageCopy responseHandler];
      (responseHandler2)[2](responseHandler2, 0, responseHandler20);
    }

    goto LABEL_99;
  }

  v17 = progressState == 0;

  if (!v17)
  {
    homeManager = [(HMDKeyTransferAgent *)selfCopy homeManager];
    v18 = [messageCopy stringForKey:@"phase"];
    v19 = [v18 isEqualToString:@"ping"];

    if (v19)
    {
      progressState2 = [(HMDKeyTransferAgent *)selfCopy progressState];
      v21 = [messageCopy stringForKey:@"phase"];
      v22 = [progressState2 isEqual:v21];

      if ((v22 & 1) == 0)
      {
        v52 = objc_autoreleasePoolPush();
        v53 = selfCopy;
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = HMFGetLogIdentifier();
          *buf = 138543362;
          v217 = v55;
          _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping message. Out of order (A0)", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v52);
        responseHandler3 = [messageCopy responseHandler];

        if (responseHandler3)
        {
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      if (([messageCopy remoteRestriction] & 2) == 0)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = selfCopy;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543362;
          v217 = v26;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping message. Out of order (A1)", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v23);
        responseHandler4 = [messageCopy responseHandler];

        if (responseHandler4)
        {
LABEL_96:
          responseHandler5 = [messageCopy responseHandler];
          (*(responseHandler5 + 2))(responseHandler5, 0, MEMORY[0x277CBEC10]);
LABEL_80:
          responseHandler20 = 0;
          goto LABEL_81;
        }

LABEL_97:
        responseHandler20 = 0;
        goto LABEL_98;
      }

      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      obj = [homeManager homes];
      v57 = [obj countByEnumeratingWithState:&v202 objects:v213 count:16];
      if (v57)
      {
        responseHandler5 = 0;
        v58 = *v203;
        do
        {
          for (i = 0; i != v57; ++i)
          {
            if (*v203 != v58)
            {
              objc_enumerationMutation(obj);
            }

            v60 = *(*(&v202 + 1) + 8 * i);
            primaryResident = [v60 primaryResident];
            device = [primaryResident device];
            v63 = +[HMDAppleAccountManager sharedManager];
            device2 = [v63 device];
            v65 = [device isEqual:device2];

            if (v65)
            {
              primaryResident2 = [v60 primaryResident];
              device3 = [primaryResident2 device];

              responseHandler5 = device3;
            }
          }

          v57 = [obj countByEnumeratingWithState:&v202 objects:v213 count:16];
        }

        while (v57);

        v68 = MEMORY[0x277CCABB0];
        if (responseHandler5)
        {
          v69 = [MEMORY[0x277CCABB0] numberWithBool:1];
LABEL_77:
          responseHandler6 = [messageCopy responseHandler];

          if (responseHandler6)
          {
            responseHandler7 = [messageCopy responseHandler];
            v211[0] = @"phase";
            v211[1] = @"data";
            v212[0] = @"ping";
            v212[1] = v69;
            v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v212 forKeys:v211 count:2];
            (responseHandler7)[2](responseHandler7, 0, v109);
          }

          [(HMDKeyTransferAgent *)selfCopy setProgressState:@"send_public"];

          goto LABEL_80;
        }
      }

      else
      {

        v68 = MEMORY[0x277CCABB0];
      }

      homes = [homeManager homes];
      v69 = [v68 numberWithBool:{objc_msgSend(homes, "count") == 0}];

      responseHandler5 = 0;
      goto LABEL_77;
    }

    v35 = [messageCopy stringForKey:@"phase"];
    v36 = [v35 isEqualToString:@"send_public"];

    if (v36)
    {
      progressState3 = [(HMDKeyTransferAgent *)selfCopy progressState];
      v38 = [messageCopy stringForKey:@"phase"];
      v39 = [progressState3 isEqual:v38];

      if ((v39 & 1) == 0)
      {
        v78 = objc_autoreleasePoolPush();
        v79 = selfCopy;
        v80 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          v81 = HMFGetLogIdentifier();
          *buf = 138543362;
          v217 = v81;
          _os_log_impl(&dword_2531F8000, v80, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping message. Out of order (B0)", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v78);
        responseHandler8 = [messageCopy responseHandler];

        if (responseHandler8)
        {
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      if (([messageCopy remoteRestriction] & 1) == 0)
      {
        v40 = objc_autoreleasePoolPush();
        v41 = selfCopy;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543362;
          v217 = v43;
          _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping message. Out of order (B1)", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v40);
        responseHandler9 = [messageCopy responseHandler];

        if (responseHandler9)
        {
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      messagePayload = [messageCopy messagePayload];
      obja = [messagePayload hmf_stringForKey:@"kControllerPairingNameKey"];

      messagePayload2 = [messageCopy messagePayload];
      v181 = [messagePayload2 hmf_dataForKey:@"kControllerKeyPairKey"];

      v179 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v181];
      v90 = [objc_alloc(MEMORY[0x277CFEC20]) initWithIdentifier:obja publicKey:v179 privateKey:0 permissions:0];
      destination = [messageCopy destination];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v92 = destination;
      }

      else
      {
        v92 = 0;
      }

      v93 = v92;

      if (v90 && v93)
      {
        v94 = +[HMDIdentityRegistry sharedRegistry];
        device4 = [v93 device];
        account = [device4 account];
        [v94 registerIdentity:v90 account:account object:selfCopy];

        systemStore = [MEMORY[0x277CFEC78] systemStore];
        v200 = 0;
        v201 = 0;
        v199 = 0;
        v98 = [systemStore getControllerPublicKey:&v201 secretKey:0 username:&v200 allowCreation:1 error:&v199];
        v99 = v201;
        responseHandler5 = v200;
        responseHandler20 = v199;

        if (v98)
        {
          [(HMDKeyTransferAgent *)selfCopy setProgressState:@"send_private"];
          responseHandler10 = [messageCopy responseHandler];

          if (!responseHandler10)
          {
LABEL_105:

            goto LABEL_81;
          }

          responseHandler11 = [messageCopy responseHandler];
          v209[0] = @"phase";
          v209[1] = @"kControllerKeyPairKey";
          v210[0] = @"reply_public";
          v210[1] = v99;
          v209[2] = @"kControllerPairingNameKey";
          v210[2] = responseHandler5;
          v102 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v210 forKeys:v209 count:3];
          (responseHandler11)[2](responseHandler11, 0, v102);
        }

        else
        {
          v129 = objc_autoreleasePoolPush();
          v130 = selfCopy;
          v131 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
          {
            v132 = HMFGetLogIdentifier();
            *buf = 138543618;
            v217 = v132;
            v218 = 2112;
            v219 = responseHandler20;
            _os_log_impl(&dword_2531F8000, v131, OS_LOG_TYPE_ERROR, "%{public}@Unable to generate ATV public / private key pair: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v129);
          [(HMDKeyTransferAgentServer *)v130 _endPairingWithError:responseHandler20];
          responseHandler11 = [messageCopy responseHandler];
          (responseHandler11)[2](responseHandler11, responseHandler20, 0);
        }
      }

      else
      {
        v119 = objc_autoreleasePoolPush();
        v120 = selfCopy;
        v121 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
        {
          v122 = HMFGetLogIdentifier();
          *buf = 138543362;
          v217 = v122;
          _os_log_impl(&dword_2531F8000, v121, OS_LOG_TYPE_ERROR, "%{public}@Did not get valid username / public key from IOs device.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v119);
        responseHandler20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
        [(HMDKeyTransferAgentServer *)v120 _endPairingWithError:responseHandler20];
        responseHandler11 = [messageCopy responseHandler];
        (responseHandler11)[2](responseHandler11, responseHandler20, 0);
        v99 = 0;
        responseHandler5 = 0;
      }

      goto LABEL_105;
    }

    v45 = [messageCopy stringForKey:@"phase"];
    v46 = [v45 isEqualToString:@"send_private"];

    if (v46)
    {
      if ([messageCopy isSecureRemote])
      {
        if (([messageCopy remoteRestriction] & 2) != 0)
        {
          progressState4 = [(HMDKeyTransferAgent *)selfCopy progressState];
          v111 = [messageCopy stringForKey:@"phase"];
          v112 = [progressState4 isEqual:v111];

          if (v112)
          {
            responseHandler5 = [messageCopy dataForKey:@"kControllerKeyPairKey"];
            v177 = [messageCopy stringForKey:@"kControllerPairingNameKey"];
            if (responseHandler5 && v177)
            {
              [messageCopy respondWithPayload:0];
              systemStore2 = [MEMORY[0x277CFEC78] systemStore];
              v197 = 0;
              v198 = 0;
              v114 = [systemStore2 getControllerPublicKey:0 secretKey:0 keyPair:0 username:&v198 allowCreation:0 error:&v197];
              v174 = v198;
              responseHandler20 = v197;

              if (v114 && [v174 isEqualToString:v177])
              {
                v115 = objc_autoreleasePoolPush();
                v116 = selfCopy;
                v117 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
                {
                  v118 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v217 = v118;
                  _os_log_impl(&dword_2531F8000, v117, OS_LOG_TYPE_DEFAULT, "%{public}@Already have key, rejecting message and not processing further.", buf, 0xCu);
                }

                objc_autoreleasePoolPop(v115);
              }

              else
              {
                v138 = [homeManager _removeAndAddKeyPair:responseHandler5 userName:v177 eraseReason:{1, v174}];

                v139 = objc_autoreleasePoolPush();
                v140 = selfCopy;
                v141 = HMFGetOSLogHandle();
                v142 = os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT);
                if (v138)
                {
                  if (v142)
                  {
                    v143 = HMFGetLogIdentifier();
                    *buf = 138543362;
                    v217 = v143;
                    _os_log_impl(&dword_2531F8000, v141, OS_LOG_TYPE_DEFAULT, "%{public}@Received new key and successfully added it.", buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v139);
                  systemStore3 = [MEMORY[0x277CFEC78] systemStore];
                  [systemStore3 updateActiveControllerPairingIdentifier:v177];

                  v145 = +[HMDAppleAccountManager sharedManager];
                  device5 = [v145 device];
                  identifier = [device5 identifier];
                  uUIDString2 = [identifier UUIDString];

                  if (uUIDString2)
                  {
                    v195 = 0u;
                    v196 = 0u;
                    v193 = 0u;
                    v194 = 0u;
                    v148 = +[HMDAppleAccountManager sharedManager];
                    account2 = [v148 account];
                    devices = [account2 devices];
                    v180 = [devices copy];

                    objb = [v180 countByEnumeratingWithState:&v193 objects:v208 count:16];
                    if (objb)
                    {
                      v182 = *v194;
                      do
                      {
                        for (j = 0; j != objb; j = j + 1)
                        {
                          if (*v194 != v182)
                          {
                            objc_enumerationMutation(v180);
                          }

                          v152 = *(*(&v193 + 1) + 8 * j);
                          if (([v152 isCurrentDevice] & 1) == 0)
                          {
                            capabilities = [v152 capabilities];
                            supportsKeyTransferClient = [capabilities supportsKeyTransferClient];

                            if (supportsKeyTransferClient)
                            {
                              v155 = objc_autoreleasePoolPush();
                              v156 = v140;
                              v157 = HMFGetOSLogHandle();
                              if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
                              {
                                v158 = HMFGetLogIdentifier();
                                identifier2 = [v152 identifier];
                                uUIDString3 = [identifier2 UUIDString];
                                *buf = 138543618;
                                v217 = v158;
                                v218 = 2112;
                                v219 = uUIDString3;
                                _os_log_impl(&dword_2531F8000, v157, OS_LOG_TYPE_DEFAULT, "%{public}@Broadcasting Completion to %@", buf, 0x16u);
                              }

                              objc_autoreleasePoolPop(v155);
                              v161 = [HMDRemoteDeviceMessageDestination alloc];
                              uuid = [(HMDKeyTransferAgent *)v156 uuid];
                              v163 = [(HMDRemoteDeviceMessageDestination *)v161 initWithTarget:uuid device:v152];

                              v164 = [HMDRemoteMessage alloc];
                              v206 = @"data";
                              v207 = uUIDString2;
                              v165 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v207 forKeys:&v206 count:1];
                              v166 = [(HMDRemoteMessage *)v164 initWithName:@"kResidentProvisioningStatusChangedNotificationKey" destination:v163 payload:v165 type:0 timeout:0 secure:1 restriction:0.0];

                              objc_initWeak(buf, v156);
                              v190[0] = MEMORY[0x277D85DD0];
                              v190[1] = 3221225472;
                              v190[2] = __60__HMDKeyTransferAgentServer__handleKeyTransferAgentMessage___block_invoke;
                              v190[3] = &unk_279733AE8;
                              objc_copyWeak(&v192, buf);
                              v167 = v163;
                              v191 = v167;
                              [(HMDRemoteMessage *)v166 setResponseHandler:v190];
                              messageDispatcher = [homeManager messageDispatcher];
                              [messageDispatcher sendMessage:v166 completionHandler:0];

                              objc_destroyWeak(&v192);
                              objc_destroyWeak(buf);
                            }
                          }
                        }

                        objb = [v180 countByEnumeratingWithState:&v193 objects:v208 count:16];
                      }

                      while (objb);
                    }
                  }

                  else
                  {
                    v170 = objc_autoreleasePoolPush();
                    v171 = v140;
                    v172 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
                    {
                      v173 = HMFGetLogIdentifier();
                      *buf = 138543362;
                      v217 = v173;
                      _os_log_impl(&dword_2531F8000, v172, OS_LOG_TYPE_DEFAULT, "%{public}@We lost our currentDevice (probably just got logged out unexpectedly).", buf, 0xCu);
                    }

                    objc_autoreleasePoolPop(v170);
                  }

                  [(HMDKeyTransferAgent *)v140 setProgressState:0];
                  [homeManager _updateCloudDataSyncWithAccountState:1];

                  responseHandler20 = 0;
                }

                else
                {
                  if (v142)
                  {
                    v169 = HMFGetLogIdentifier();
                    *buf = 138543362;
                    v217 = v169;
                    _os_log_impl(&dword_2531F8000, v141, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to save the key pair to keychain", buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v139);
                  responseHandler20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
                }
              }

              [(HMDKeyTransferAgentServer *)selfCopy _endPairingWithError:responseHandler20, v174];
            }

            else
            {
              v133 = objc_autoreleasePoolPush();
              v134 = selfCopy;
              v135 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
              {
                v136 = HMFGetLogIdentifier();
                *buf = 138543362;
                v217 = v136;
                _os_log_impl(&dword_2531F8000, v135, OS_LOG_TYPE_ERROR, "%{public}@Key pair (or username) is missing the resident key sync message", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v133);
              responseHandler20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
              [(HMDKeyTransferAgentServer *)v134 _endPairingWithError:responseHandler20];
              responseHandler12 = [messageCopy responseHandler];

              if (responseHandler12)
              {
                responseHandler13 = [messageCopy responseHandler];
                (responseHandler13)[2](responseHandler13, responseHandler20, 0);
              }
            }

            goto LABEL_81;
          }

          v123 = objc_autoreleasePoolPush();
          v124 = selfCopy;
          v125 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
          {
            v126 = HMFGetLogIdentifier();
            *buf = 138543362;
            v217 = v126;
            _os_log_impl(&dword_2531F8000, v125, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping message. Out of order (C0)", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v123);
          responseHandler14 = [messageCopy responseHandler];

          if (responseHandler14)
          {
            goto LABEL_96;
          }
        }

        else
        {
          v47 = objc_autoreleasePoolPush();
          v48 = selfCopy;
          v49 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v50 = HMFGetLogIdentifier();
            *buf = 138543362;
            v217 = v50;
            _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping message. Out of order (C1)", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v47);
          responseHandler15 = [messageCopy responseHandler];

          if (responseHandler15)
          {
            goto LABEL_96;
          }
        }

        goto LABEL_97;
      }

      v83 = objc_autoreleasePoolPush();
      v84 = selfCopy;
      v85 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        v86 = HMFGetLogIdentifier();
        *buf = 138543362;
        v217 = v86;
        _os_log_impl(&dword_2531F8000, v85, OS_LOG_TYPE_ERROR, "%{public}@Private key not receieved via secure remote message. Failing.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v83);
      responseHandler20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
      [(HMDKeyTransferAgentServer *)v84 _endPairingWithError:responseHandler20];
      responseHandler16 = [messageCopy responseHandler];

      if (!responseHandler16)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v70 = [messageCopy stringForKey:@"phase"];
      v71 = [v70 isEqualToString:@"broadcast"];

      v72 = objc_autoreleasePoolPush();
      v73 = selfCopy;
      v74 = HMFGetOSLogHandle();
      v75 = v74;
      if (!v71)
      {
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          v103 = HMFGetLogIdentifier();
          v104 = [messageCopy stringForKey:@"phase"];
          *buf = 138543618;
          v217 = v103;
          v218 = 2112;
          v219 = v104;
          _os_log_impl(&dword_2531F8000, v75, OS_LOG_TYPE_ERROR, "%{public}@Unknown message key %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v72);
        responseHandler17 = [messageCopy responseHandler];

        if (!responseHandler17)
        {
          goto LABEL_97;
        }

        responseHandler20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
        responseHandler5 = [messageCopy responseHandler];
        (*(responseHandler5 + 2))(responseHandler5, responseHandler20, 0);
LABEL_81:

LABEL_98:
        goto LABEL_99;
      }

      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        v76 = HMFGetLogIdentifier();
        *buf = 138543362;
        v217 = v76;
        _os_log_impl(&dword_2531F8000, v75, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring broadcast key on server.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v72);
      responseHandler20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
      responseHandler18 = [messageCopy responseHandler];

      if (!responseHandler18)
      {
        goto LABEL_98;
      }
    }

    responseHandler5 = [messageCopy responseHandler];
    (*(responseHandler5 + 2))(responseHandler5, responseHandler20, 0);
    goto LABEL_81;
  }

  v30 = objc_autoreleasePoolPush();
  v31 = selfCopy;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = HMFGetLogIdentifier();
    *buf = 138543362;
    v217 = v33;
    _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping message. Key transfer not in progress.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v30);
  responseHandler19 = [messageCopy responseHandler];

  if (responseHandler19)
  {
    responseHandler20 = [messageCopy responseHandler];
    (*(responseHandler20 + 2))(responseHandler20, 0, MEMORY[0x277CBEC10]);
LABEL_99:
  }

  v128 = *MEMORY[0x277D85DE8];
}

void __60__HMDKeyTransferAgentServer__handleKeyTransferAgentMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 32);
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v14 = "%{public}@Unable to notify iOS device %@ that we have completed.";
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, v14, &v17, 0x16u);
    }
  }

  else if (v11)
  {
    v12 = HMFGetLogIdentifier();
    v15 = *(a1 + 32);
    v17 = 138543618;
    v18 = v12;
    v19 = 2112;
    v20 = v15;
    v14 = "%{public}@Notified iOS device %@ that we have completed.";
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v8);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_endPairingWithError:(id)error
{
  errorCopy = error;
  workQueue = [(HMDKeyTransferAgent *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDKeyTransferAgentServer__endPairingWithError___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = errorCopy;
  selfCopy = self;
  v6 = errorCopy;
  dispatch_async(workQueue, v7);
}

void __50__HMDKeyTransferAgentServer__endPairingWithError___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 32);
    v19 = 138543618;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    v9 = "%{public}@Key transfer ended with error: %@";
    v10 = v5;
    v11 = 22;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = HMFGetLogIdentifier();
    v19 = 138543362;
    v20 = v7;
    v9 = "%{public}@Key transfer ended with no issues.";
    v10 = v5;
    v11 = 12;
  }

  _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, v9, &v19, v11);

LABEL_7:
  objc_autoreleasePoolPop(v3);
  [*(a1 + 40) _endAdvertiseUUIDWithError:0];
  v12 = [*(a1 + 40) finalCompletionHandler];

  if (v12)
  {
    v13 = [*(a1 + 40) finalCompletionHandler];
    v13[2](v13, *(a1 + 32));
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 40);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Hit nil completion handler (this should not happen).", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)beginPairingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(HMDKeyTransferAgent *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HMDKeyTransferAgentServer_beginPairingWithCompletionHandler___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(workQueue, v7);
}

void __63__HMDKeyTransferAgentServer_beginPairingWithCompletionHandler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) progressState];

  if (!v2)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__HMDKeyTransferAgentServer_beginPairingWithCompletionHandler___block_invoke_32;
    aBlock[3] = &unk_279733F30;
    v9 = *(a1 + 40);
    aBlock[4] = *(a1 + 32);
    v18 = v9;
    v10 = _Block_copy(aBlock);
    [*(a1 + 32) setProgressState:@"ping"];
    v11 = *(a1 + 32);
    v16 = 0;
    v12 = [v11 _startAdvertiseUUIDWithError:&v16];
    v13 = v16;
    if (v12)
    {
      v14 = [v10 copy];
      [*(a1 + 32) setFinalCompletionHandler:v14];
    }

    else
    {
      (*(v10 + 2))(v10, v13);
    }

    v8 = v18;
    goto LABEL_10;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@Unable to submit pairing requests. One is already in progress", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:1 userInfo:0];
    (*(v7 + 16))(v7, v8);
LABEL_10:
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __63__HMDKeyTransferAgentServer_beginPairingWithCompletionHandler___block_invoke_32(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setProgressState:0];
}

- (id)_httpMessageTransport
{
  v17 = *MEMORY[0x277D85DE8];
  homeManager = [(HMDKeyTransferAgent *)self homeManager];
  messageDispatcher = [homeManager messageDispatcher];
  secureRemoteTransport = [messageDispatcher secureRemoteTransport];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  transports = [secureRemoteTransport transports];
  v6 = [transports countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(transports);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [transports countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)__resetTimer:(id)timer
{
  v14 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v13 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting Key Transfer Agent.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDKeyTransferAgent *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDKeyTransferAgentServer___resetTimer___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = selfCopy;
  dispatch_async(workQueue, block);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __42__HMDKeyTransferAgentServer___resetTimer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) broadcastNotifiedDevices];
  [v2 removeAllObjects];

  [*(a1 + 32) setProgressState:0];
  v3 = *(a1 + 32);

  return [v3 _endAdvertiseUUIDWithError:0];
}

- (void)__deviceRemovedFromAccount:(id)account
{
  accountCopy = account;
  objc_initWeak(&location, self);
  workQueue = [(HMDKeyTransferAgent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDKeyTransferAgentServer___deviceRemovedFromAccount___block_invoke;
  block[3] = &unk_279732E78;
  v8 = accountCopy;
  v6 = accountCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__HMDKeyTransferAgentServer___deviceRemovedFromAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _device:v5 removedFromAccount:v8];
}

- (void)_device:(id)_device removedFromAccount:(id)account
{
  v30 = *MEMORY[0x277D85DE8];
  _deviceCopy = _device;
  accountCopy = account;
  identifier = [_deviceCopy identifier];
  uUIDString = [identifier UUIDString];

  if (_deviceCopy && accountCopy && (+[HMDAppleAccountManager sharedManager](HMDAppleAccountManager, "sharedManager"), v10 = objc_claimAutoreleasedReturnValue(), [v10 account], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(accountCopy, "isEqual:", v11), v11, v10, (v12 & 1) != 0))
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v16;
      v26 = 2112;
      v27 = uUIDString;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Got notification that %@ was removed from the current account", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    broadcastNotifiedDevices = [(HMDKeyTransferAgentServer *)selfCopy broadcastNotifiedDevices];
    [broadcastNotifiedDevices addObject:_deviceCopy];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      shortDescription = [accountCopy shortDescription];
      v24 = 138543874;
      v25 = v21;
      v26 = 2112;
      v27 = uUIDString;
      v28 = 2112;
      v29 = shortDescription;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Device %@ not removed from current account %@.", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)__deviceUpdated:(id)updated
{
  updatedCopy = updated;
  objc_initWeak(&location, self);
  workQueue = [(HMDKeyTransferAgent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDKeyTransferAgentServer___deviceUpdated___block_invoke;
  block[3] = &unk_279732E78;
  v8 = updatedCopy;
  v6 = updatedCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __45__HMDKeyTransferAgentServer___deviceUpdated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 account];
  [WeakRetained _device:v4 addedToAccount:v5];
}

- (void)__deviceAddedToAccount:(id)account
{
  accountCopy = account;
  objc_initWeak(&location, self);
  workQueue = [(HMDKeyTransferAgent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDKeyTransferAgentServer___deviceAddedToAccount___block_invoke;
  block[3] = &unk_279732E78;
  v8 = accountCopy;
  v6 = accountCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __52__HMDKeyTransferAgentServer___deviceAddedToAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _device:v5 addedToAccount:v8];
}

- (void)_device:(id)_device addedToAccount:(id)account
{
  v31 = *MEMORY[0x277D85DE8];
  _deviceCopy = _device;
  accountCopy = account;
  identifier = [_deviceCopy identifier];
  uUIDString = [identifier UUIDString];

  if (!_deviceCopy || !accountCopy || (+[HMDAppleAccountManager sharedManager](HMDAppleAccountManager, "sharedManager"), v10 = objc_claimAutoreleasedReturnValue(), [v10 account], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(accountCopy, "isEqual:", v11), v11, v10, (v12 & 1) == 0))
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:

      objc_autoreleasePoolPop(v14);
      goto LABEL_12;
    }

    v22 = HMFGetLogIdentifier();
    shortDescription = [accountCopy shortDescription];
    v25 = 138543874;
    v26 = v22;
    v27 = 2112;
    v28 = uUIDString;
    v29 = 2112;
    v30 = shortDescription;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Device %@ not added / updated from current account %@.", &v25, 0x20u);

LABEL_10:
    goto LABEL_11;
  }

  progressState = [(HMDKeyTransferAgent *)self progressState];

  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (!progressState)
  {
    if (!v17)
    {
      goto LABEL_11;
    }

    v22 = HMFGetLogIdentifier();
    v25 = 138543362;
    v26 = v22;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Not actively transferring keys. Ignoring device change message.", &v25, 0xCu);
    goto LABEL_10;
  }

  if (v17)
  {
    v18 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v18;
    v27 = 2112;
    v28 = uUIDString;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Got notification that %@ was added to the current account (restarting broadcast timer)", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  broadcastNotifiedDevices = [(HMDKeyTransferAgentServer *)selfCopy2 broadcastNotifiedDevices];
  [broadcastNotifiedDevices removeObject:_deviceCopy];

  broadcastUUIDTimer = [(HMDKeyTransferAgentServer *)selfCopy2 broadcastUUIDTimer];
  [broadcastUUIDTimer reset];

  broadcastUUIDTimer2 = [(HMDKeyTransferAgentServer *)selfCopy2 broadcastUUIDTimer];
  [broadcastUUIDTimer2 resume];

LABEL_12:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)fire
{
  workQueue = [(HMDKeyTransferAgent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDKeyTransferAgentServer_timerDidFire___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __42__HMDKeyTransferAgentServer_timerDidFire___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setBroadcastFailure:0];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v2 = +[HMDAppleAccountManager sharedManager];
  v3 = [v2 account];
  v4 = [v3 devices];
  v5 = [v4 copy];

  obj = v5;
  v48 = [v5 countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v48)
  {
    v47 = *v53;
    *&v6 = 138543618;
    v45 = v6;
    do
    {
      v7 = 0;
      do
      {
        if (*v53 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v52 + 1) + 8 * v7);
        v9 = [*(a1 + 32) broadcastNotifiedDevices];
        v10 = [v9 containsObject:v8];

        if ((v10 & 1) == 0)
        {
          if ([v8 isCurrentDevice])
          {
            v11 = objc_autoreleasePoolPush();
            v12 = *(a1 + 32);
            v13 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = HMFGetLogIdentifier();
              v15 = [v8 identifier];
              v16 = [v15 UUIDString];
              *buf = v45;
              v59 = v14;
              v60 = 2112;
              v61 = v16;
              _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@NOT Broadcasting UUID to %@ (don't broadcast to self (won't retry)).", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v11);
            v17 = [*(a1 + 32) broadcastNotifiedDevices];
            [(HMDRemoteDeviceMessageDestination *)v17 addObject:v8];
          }

          else
          {
            v18 = [v8 capabilities];
            v19 = [v18 supportsKeyTransferClient];

            v20 = objc_autoreleasePoolPush();
            v21 = *(a1 + 32);
            v22 = HMFGetOSLogHandle();
            v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
            if (v19)
            {
              if (v23)
              {
                v24 = HMFGetLogIdentifier();
                v25 = [v8 identifier];
                v26 = [v25 UUIDString];
                *buf = v45;
                v59 = v24;
                v60 = 2112;
                v61 = v26;
                _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Broadcasting UUID to %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v20);
              v27 = [HMDRemoteDeviceMessageDestination alloc];
              v28 = [*(a1 + 32) uuid];
              v17 = [(HMDRemoteDeviceMessageDestination *)v27 initWithTarget:v28 device:v8];

              v29 = [HMDRemoteMessage alloc];
              v56[0] = @"phase";
              v56[1] = @"data";
              v57[0] = @"broadcast";
              v30 = [*(a1 + 32) currentKeyUUID];
              v31 = [v30 UUIDString];
              v57[1] = v31;
              v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
              v33 = [(HMDRemoteMessage *)v29 initWithName:@"kKeyTransferAgentKey" destination:v17 payload:v32 type:0 timeout:0 secure:1 restriction:0.0];

              objc_initWeak(buf, *(a1 + 32));
              v50[0] = MEMORY[0x277D85DD0];
              v50[1] = 3221225472;
              v50[2] = __42__HMDKeyTransferAgentServer_timerDidFire___block_invoke_24;
              v50[3] = &unk_279735248;
              v50[4] = *(a1 + 32);
              objc_copyWeak(&v51, buf);
              v50[5] = v8;
              [(HMDRemoteMessage *)v33 setResponseHandler:v50];
              v34 = [*(a1 + 32) broadcastGroup];
              dispatch_group_enter(v34);

              v35 = [*(a1 + 32) homeManager];
              v36 = [v35 messageDispatcher];
              [v36 sendMessage:v33 completionHandler:0];

              objc_destroyWeak(&v51);
              objc_destroyWeak(buf);
            }

            else
            {
              if (v23)
              {
                v37 = HMFGetLogIdentifier();
                v38 = [v8 identifier];
                v39 = [v38 UUIDString];
                *buf = v45;
                v59 = v37;
                v60 = 2112;
                v61 = v39;
                _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@NOT Broadcasting UUID to %@ (doesn't support key transfer)", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v20);
              v17 = [*(a1 + 32) broadcastNotifiedDevices];
              [(HMDRemoteDeviceMessageDestination *)v17 addObject:v8];
            }
          }
        }

        ++v7;
      }

      while (v48 != v7);
      v48 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v48);
  }

  v41 = *(a1 + 32);
  v40 = (a1 + 32);
  v42 = [v41 broadcastGroup];
  v43 = [*v40 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDKeyTransferAgentServer_timerDidFire___block_invoke_2_27;
  block[3] = &unk_279735D00;
  block[4] = *v40;
  dispatch_group_notify(v42, v43, block);

  v44 = *MEMORY[0x277D85DE8];
}

void __42__HMDKeyTransferAgentServer_timerDidFire___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__HMDKeyTransferAgentServer_timerDidFire___block_invoke_2;
  v6[3] = &unk_279733910;
  objc_copyWeak(&v9, (a1 + 48));
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v9);
}

void __42__HMDKeyTransferAgentServer_timerDidFire___block_invoke_2_27(uint64_t a1)
{
  if (([*(a1 + 32) broadcastFailure] & 1) == 0)
  {
    v2 = [*(a1 + 32) broadcastUUIDTimer];
    [v2 reset];
  }
}

void __42__HMDKeyTransferAgentServer_timerDidFire___block_invoke_2(id *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v3 = a1[4];
    if (!v3)
    {
      v6 = [a1[5] workQueue];
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __42__HMDKeyTransferAgentServer_timerDidFire___block_invoke_25;
      v22 = &unk_2797359B0;
      v7 = WeakRetained;
      v8 = a1[6];
      v23 = v7;
      v24 = v8;
      dispatch_async(v6, &v19);

LABEL_12:
      v17 = [WeakRetained broadcastGroup];
      dispatch_group_leave(v17);

      goto LABEL_13;
    }

    v4 = [v3 domain];
    v5 = v4;
    if (v4 == *MEMORY[0x277CCFD28])
    {
      v9 = [a1[4] code];

      if (v9 == 3)
      {
        v10 = 0;
LABEL_9:
        [WeakRetained setBroadcastFailure:v10];
        v11 = objc_autoreleasePoolPush();
        v12 = a1[5];
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = HMFGetLogIdentifier();
          v15 = [a1[6] remoteDestinationString];
          v16 = a1[4];
          *buf = 138543874;
          v26 = v14;
          v27 = 2112;
          v28 = v15;
          v29 = 2112;
          v30 = v16;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Broadcast failed to %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v11);
        goto LABEL_12;
      }
    }

    else
    {
    }

    v10 = 1;
    goto LABEL_9;
  }

LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
}

void __42__HMDKeyTransferAgentServer_timerDidFire___block_invoke_25(uint64_t a1)
{
  v2 = [*(a1 + 32) broadcastNotifiedDevices];
  [v2 addObject:*(a1 + 40)];
}

- (BOOL)_endAdvertiseUUIDWithError:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  _httpMessageTransport = [(HMDKeyTransferAgentServer *)self _httpMessageTransport];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    currentKeyUUID = [(HMDKeyTransferAgentServer *)selfCopy currentKeyUUID];
    uUIDString = [currentKeyUUID UUIDString];
    v16 = 138543618;
    v17 = v9;
    v18 = 2112;
    v19 = uUIDString;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Ending UUID Advertisement (%@)", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [_httpMessageTransport removeTXTRecordValueForKey:@"uuid"];
  broadcastUUIDTimer = [(HMDKeyTransferAgentServer *)selfCopy broadcastUUIDTimer];
  [broadcastUUIDTimer suspend];

  broadcastUUIDTimer2 = [(HMDKeyTransferAgentServer *)selfCopy broadcastUUIDTimer];
  [broadcastUUIDTimer2 reset];

  if (error)
  {
    *error = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_startAdvertiseUUIDWithError:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  _httpMessageTransport = [(HMDKeyTransferAgentServer *)self _httpMessageTransport];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    currentKeyUUID = [(HMDKeyTransferAgentServer *)selfCopy currentKeyUUID];
    uUIDString = [currentKeyUUID UUIDString];
    v22 = 138543618;
    v23 = v9;
    v24 = 2112;
    v25 = uUIDString;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Beginning UUID Advertisement (%@)", &v22, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  currentKeyUUID2 = [(HMDKeyTransferAgentServer *)selfCopy currentKeyUUID];
  uUIDString2 = [currentKeyUUID2 UUIDString];
  v14 = [uUIDString2 dataUsingEncoding:4];
  [_httpMessageTransport setTXTRecordValue:v14 forKey:@"uuid"];

  homeManager = [(HMDKeyTransferAgent *)selfCopy homeManager];
  [homeManager startLocalTransport];

  _httpMessageTransport2 = [(HMDKeyTransferAgentServer *)selfCopy _httpMessageTransport];
  [_httpMessageTransport2 setServerEnabled:1];

  broadcastNotifiedDevices = [(HMDKeyTransferAgentServer *)selfCopy broadcastNotifiedDevices];
  [broadcastNotifiedDevices removeAllObjects];

  broadcastUUIDTimer = [(HMDKeyTransferAgentServer *)selfCopy broadcastUUIDTimer];
  [broadcastUUIDTimer reset];

  broadcastUUIDTimer2 = [(HMDKeyTransferAgentServer *)selfCopy broadcastUUIDTimer];
  [broadcastUUIDTimer2 resume];

  if (error)
  {
    *error = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)resetConfig
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting Configuration (resetting any hosts we've broadcast keys to).", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  workQueue = [(HMDKeyTransferAgent *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMDKeyTransferAgentServer_resetConfig__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = selfCopy;
  dispatch_async(workQueue, block);

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __40__HMDKeyTransferAgentServer_resetConfig__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) broadcastNotifiedDevices];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);

  return [v3 setProgressState:0];
}

- (void)dealloc
{
  homeManager = [(HMDKeyTransferAgent *)self homeManager];
  messageDispatcher = [homeManager messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = HMDKeyTransferAgentServer;
  [(HMDKeyTransferAgentServer *)&v6 dealloc];
}

- (HMDKeyTransferAgentServer)initWithHomeManager:(id)manager
{
  v37 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v33.receiver = self;
  v33.super_class = HMDKeyTransferAgentServer;
  v5 = [(HMDKeyTransferAgent *)&v33 initWithHomeManager:managerCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Creating KeyTransferAgent", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    uUID = [MEMORY[0x277CCAD78] UUID];
    currentKeyUUID = v7->_currentKeyUUID;
    v7->_currentKeyUUID = uUID;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    broadcastNotifiedDevices = v7->_broadcastNotifiedDevices;
    v7->_broadcastNotifiedDevices = v12;

    v14 = dispatch_group_create();
    broadcastGroup = v7->_broadcastGroup;
    v7->_broadcastGroup = v14;

    v7->_broadcastFailure = 0;
    v16 = objc_alloc(MEMORY[0x277D0F7B0]);
    v17 = [v16 initWithMinimumTimeInterval:2 maximumTimeInterval:5 exponentialFactor:30.0 options:*&keyTransferBroadcastMaximumDelay];
    broadcastUUIDTimer = v7->_broadcastUUIDTimer;
    v7->_broadcastUUIDTimer = v17;

    [(HMFExponentialBackoffTimer *)v7->_broadcastUUIDTimer setDelegate:v7];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel___deviceAddedToAccount_ name:@"HMDAccountAddedDeviceNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel___deviceUpdated_ name:@"HMDDeviceUpdatedNotification" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v7 selector:sel___deviceRemovedFromAccount_ name:@"HMDAccountRemovedDeviceNotification" object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v7 selector:sel___resetTimer_ name:@"HMDHomeManagerKeyTransferResetTimerNotification" object:0];

    v23 = [HMDRemoteAccountMessageFilter alloc];
    messageDestination = [(HMDKeyTransferAgent *)v7 messageDestination];
    v25 = [(HMDRemoteAccountMessageFilter *)v23 initWithTarget:messageDestination];

    msgFilterChain = [managerCopy msgFilterChain];
    [msgFilterChain addMessageFilter:v25];

    v27 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v27 setRequiresSecureMessage:0];
    [v27 setRequiresAccountMessage:1];
    [v27 setTransportRestriction:-1];
    v28 = [v27 copy];
    messageDispatcher = [managerCopy messageDispatcher];
    v34 = v28;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    [messageDispatcher registerForMessage:@"kKeyTransferAgentKey" receiver:v7 policies:v30 selector:sel__handleKeyTransferAgentMessage_];
  }

  v31 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t45 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t45, &__block_literal_global_105900);
  }

  v3 = logCategory__hmf_once_v46;

  return v3;
}

uint64_t __40__HMDKeyTransferAgentServer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v46;
  logCategory__hmf_once_v46 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (BOOL)isPeerAvailable
{
  v19 = *MEMORY[0x277D85DE8];
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo productClass];

  if (productClass == 4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = +[HMDAppleAccountManager sharedManager];
    account = [v4 account];
    devices = [account devices];

    v7 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(devices);
          }

          capabilities = [*(*(&v14 + 1) + 8 * i) capabilities];
          supportsKeyTransferClient = [capabilities supportsKeyTransferClient];

          if (supportsKeyTransferClient)
          {
            LOBYTE(v7) = 1;
            goto LABEL_13;
          }
        }

        v7 = [devices countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

@end