@interface HMDUnassociatedAirPlayAccessory
+ (id)logCategory;
- (HMDUnassociatedAirPlayAccessory)initWithCoder:(id)coder;
- (HMFPairingIdentity)pairingIdentity;
- (id)addTransactionForHome:(id)home;
- (id)modelForChangeType:(unint64_t)type uuid:(id)uuid parentUUID:(id)d;
- (void)associateToHome:(id)home completionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
- (void)setPairingIdentity:(id)identity;
@end

@implementation HMDUnassociatedAirPlayAccessory

- (void)associateToHome:(id)home completionHandler:(id)handler
{
  v61 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v58 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Starting association", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  advertisement = [(HMDUnassociatedMediaAccessory *)selfCopy advertisement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = advertisement;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    outputDevice = [v14 outputDevice];
    av_OutputDevice = [outputDevice av_OutputDevice];

    if (av_OutputDevice)
    {
      owner = [homeCopy owner];
      if (([owner isCurrentUser] & 1) == 0)
      {
        v32 = objc_autoreleasePoolPush();
        v33 = selfCopy;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543362;
          v58 = v35;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Only the owner of the home can perform association", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v32);
        if (!handlerCopy)
        {
          goto LABEL_32;
        }

        av_authorizedPeer = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
        handlerCopy[2](handlerCopy, av_authorizedPeer);
        goto LABEL_31;
      }

      av_authorizedPeer = [owner av_authorizedPeer];
      if (av_authorizedPeer)
      {
        context = [MEMORY[0x277CB86A0] shouldRestrictConnectionWithUserPrivilege:{objc_msgSend(homeCopy, "minimumMediaUserPrivilege")}];
        mediaPassword = [homeCopy mediaPassword];

        if (mediaPassword)
        {
          mediaPassword = [homeCopy mediaPassword];
        }

        objc_initWeak(buf, selfCopy);
        objc_initWeak(&location, homeCopy);
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __69__HMDUnassociatedAirPlayAccessory_associateToHome_completionHandler___block_invoke;
        aBlock[3] = &unk_278674400;
        objc_copyWeak(&v53, buf);
        objc_copyWeak(&v54, &location);
        v55 = context;
        v20 = av_authorizedPeer;
        v51 = v20;
        v21 = mediaPassword;
        v52 = v21;
        v22 = _Block_copy(aBlock);
        objc_initWeak(&from, v14);
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __69__HMDUnassociatedAirPlayAccessory_associateToHome_completionHandler___block_invoke_13;
        v42[3] = &unk_278674428;
        objc_copyWeak(&v46, buf);
        v48 = context;
        v43 = v20;
        v23 = v21;
        v44 = v23;
        objc_copyWeak(&v47, &from);
        v45 = handlerCopy;
        [av_OutputDevice configureUsingBlock:v22 options:0 completionHandler:v42];

        objc_destroyWeak(&v47);
        objc_destroyWeak(&v46);
        objc_destroyWeak(&from);

        objc_destroyWeak(&v54);
        objc_destroyWeak(&v53);
        objc_destroyWeak(&location);
        objc_destroyWeak(buf);
      }

      else
      {
        contexta = objc_autoreleasePoolPush();
        v36 = selfCopy;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543618;
          v58 = v38;
          v59 = 2112;
          v60 = owner;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Missing authorized peer for user: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(contexta);
        if (!handlerCopy)
        {
          av_authorizedPeer = 0;
          goto LABEL_31;
        }

        v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        handlerCopy[2](handlerCopy, v23);
      }

LABEL_31:
      goto LABEL_32;
    }

    v28 = objc_autoreleasePoolPush();
    v29 = selfCopy;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v58 = v31;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Missing output device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    if (handlerCopy)
    {
      owner = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      handlerCopy[2](handlerCopy, owner);
LABEL_32:

      goto LABEL_33;
    }

    av_OutputDevice = 0;
LABEL_33:

    goto LABEL_34;
  }

  v24 = objc_autoreleasePoolPush();
  v25 = selfCopy;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543362;
    v58 = v27;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Missing advertisement", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v24);
  if (handlerCopy)
  {
    av_OutputDevice = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
    handlerCopy[2](handlerCopy, av_OutputDevice);
    goto LABEL_33;
  }

LABEL_34:

  v39 = *MEMORY[0x277D85DE8];
}

void __69__HMDUnassociatedAirPlayAccessory_associateToHome_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_loadWeakRetained((a1 + 56));
  if (v5)
  {
    [v3 startAutomaticallyAllowingConnectionsFromPeersInHomeGroupAndRejectOtherConnections:*(a1 + 64)];
    [v3 addPeerToHomeGroup:*(a1 + 32)];
    if (*(a1 + 40))
    {
      v6 = *(a1 + 40);
    }

    else
    {
      v6 = &stru_283CF9D50;
    }

    [v3 setDevicePassword:v6];
  }

  v7 = objc_autoreleasePoolPush();
  v8 = WeakRetained;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v10;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring with configuration: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
}

void __69__HMDUnassociatedAirPlayAccessory_associateToHome_completionHandler___block_invoke_13(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v76 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!v8)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = WeakRetained;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v71 = v22;
      v72 = 2112;
      v73 = v10;
      v74 = 2112;
      v75 = v9;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to update configuration while associating to home with error: %@, %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Communication failure" reason:@"Failed to set administration password." suggestion:0 underlyingError:v10];
    goto LABEL_16;
  }

  if (([v8 automaticallyAllowsConnectionsFromPeersInHomeGroup] & 1) == 0)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = WeakRetained;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v71 = v27;
      v28 = "%{public}@Failed to enable home connections";
LABEL_14:
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
    }

LABEL_15:

    objc_autoreleasePoolPop(v24);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
LABEL_16:
    v29 = v23;
    goto LABEL_17;
  }

  if (*(a1 + 72) != [v8 onlyAllowsConnectionsFromPeersInHomeGroup])
  {
    v24 = objc_autoreleasePoolPush();
    v25 = WeakRetained;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v71 = v27;
      v28 = "%{public}@Failed to disable guest access";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v12 = v8;
  v13 = [v12 deviceID];
  v14 = [v12 devicePublicKey];

  if (v13 && v14)
  {
    v15 = objc_alloc(MEMORY[0x277D0F8A8]);
    v16 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v14];
    v17 = [v15 initWithIdentifier:v13 publicKey:v16 privateKey:0];

    v18 = 0;
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"Not supported." reason:@"Accessory missing pairing identity" suggestion:0];
    v32 = v18;
    v17 = 0;
  }

  v29 = v18;
  if (v17)
  {
    [WeakRetained setPairingIdentity:v17];
    v33 = [v12 peersInHomeGroup];
    v34 = [v33 containsObject:*(a1 + 32)];

    if (v34)
    {
      v68 = v17;
      v35 = [v12 peersInHomeGroup];
      v36 = [v35 count];

      if (v36 < 2)
      {
        v55 = [v12 devicePassword];
        v56 = *(a1 + 40);
        v57 = HMFEqualObjects();

        if (v57)
        {
          v54 = objc_loadWeakRetained((a1 + 64));
          [v54 setAssociated:1];
          v58 = objc_autoreleasePoolPush();
          v59 = WeakRetained;
          v60 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v61 = v67 = v58;
            *buf = 138543362;
            v71 = v61;
            _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_INFO, "%{public}@Successfully associated", buf, 0xCu);

            v58 = v67;
          }

          objc_autoreleasePoolPop(v58);
          goto LABEL_42;
        }

        v62 = objc_autoreleasePoolPush();
        v63 = WeakRetained;
        v64 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = HMFGetLogIdentifier();
          *buf = 138543362;
          v71 = v65;
          _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to set media password", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v62);
        v42 = MEMORY[0x277CCA9B8];
        v43 = 54;
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        v38 = WeakRetained;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          HMFGetLogIdentifier();
          v40 = v66 = v37;
          v41 = [v12 peersInHomeGroup];
          *buf = 138543618;
          v71 = v40;
          v72 = 2112;
          v73 = v41;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@Unexpected peers found: %@", buf, 0x16u);

          v37 = v66;
        }

        objc_autoreleasePoolPop(v37);
        v42 = MEMORY[0x277CCA9B8];
        v43 = 41;
      }

      [v42 hmErrorWithCode:v43];
      v29 = v54 = v29;
LABEL_42:
      v17 = v68;
      goto LABEL_43;
    }

    v50 = objc_autoreleasePoolPush();
    v51 = WeakRetained;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v53 = v69 = v17;
      *buf = 138543362;
      v71 = v53;
      _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to add ourselves as a peer", buf, 0xCu);

      v17 = v69;
    }

    objc_autoreleasePoolPop(v50);
    v48 = MEMORY[0x277CCA9B8];
    v49 = 2;
  }

  else
  {
    v44 = objc_autoreleasePoolPush();
    v45 = WeakRetained;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543362;
      v71 = v47;
      _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid or missing pairing identity", buf, 0xCu);

      v17 = 0;
    }

    objc_autoreleasePoolPop(v44);
    v48 = MEMORY[0x277CCA9B8];
    v49 = 21;
  }

  [v48 hmErrorWithCode:v49];
  v29 = v54 = v29;
LABEL_43:

LABEL_17:
  v30 = *(a1 + 48);
  if (v30)
  {
    (*(v30 + 16))(v30, v29);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)setPairingIdentity:(id)identity
{
  v4 = [identity copy];
  os_unfair_recursive_lock_lock_with_options();
  pairingIdentity = self->_pairingIdentity;
  self->_pairingIdentity = v4;

  os_unfair_recursive_lock_unlock();
}

- (HMFPairingIdentity)pairingIdentity
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_pairingIdentity;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  hmd_isForXPCTransport = [coderCopy hmd_isForXPCTransport];
  hmd_isForLocalStore = [coderCopy hmd_isForLocalStore];
  v19.receiver = self;
  v19.super_class = HMDUnassociatedAirPlayAccessory;
  [(HMDUnassociatedAccessory *)&v19 encodeWithCoder:coderCopy];
  pairingIdentity = [(HMDUnassociatedAirPlayAccessory *)self pairingIdentity];
  v8 = pairingIdentity;
  if ((hmd_isForXPCTransport & 1) == 0)
  {
    if (hmd_isForLocalStore)
    {
      [coderCopy encodeObject:pairingIdentity forKey:*MEMORY[0x277CCEC20]];
    }

    else if (pairingIdentity)
    {
      publicPairingIdentity = [pairingIdentity publicPairingIdentity];
      [coderCopy encodeObject:publicPairingIdentity forKey:*MEMORY[0x277CCEC20]];
    }
  }

  advertisement = [(HMDUnassociatedMediaAccessory *)self advertisement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = advertisement;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  outputDevice = [v12 outputDevice];

  av_OutputDevice = [outputDevice av_OutputDevice];

  if (av_OutputDevice)
  {
    modelID = [av_OutputDevice modelID];

    if (modelID)
    {
      modelID2 = [av_OutputDevice modelID];
      [coderCopy encodeObject:modelID2 forKey:@"HM.model"];
    }

    manufacturer = [av_OutputDevice manufacturer];

    if (manufacturer)
    {
      manufacturer2 = [av_OutputDevice manufacturer];
      [coderCopy encodeObject:manufacturer2 forKey:@"HM.manufacturer"];
    }
  }
}

- (HMDUnassociatedAirPlayAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HMDUnassociatedAirPlayAccessory;
  v5 = [(HMDUnassociatedAccessory *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEC20]];
    pairingIdentity = v5->_pairingIdentity;
    v5->_pairingIdentity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.model"];
    model = v5->_model;
    v5->_model = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.manufacturer"];
    manufacturer = v5->_manufacturer;
    v5->_manufacturer = v10;
  }

  return v5;
}

- (id)addTransactionForHome:(id)home
{
  v33.receiver = self;
  v33.super_class = HMDUnassociatedAirPlayAccessory;
  v4 = [(HMDUnassociatedMediaAccessory *)&v33 addTransactionForHome:home];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (!v6)
  {
    goto LABEL_25;
  }

  advertisement = [(HMDUnassociatedMediaAccessory *)self advertisement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = advertisement;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  outputDevice = [v9 outputDevice];

  av_OutputDevice = [outputDevice av_OutputDevice];

  if (av_OutputDevice)
  {
    modelID = [(HMDUnassociatedAirPlayAccessory *)av_OutputDevice modelID];

    if (modelID)
    {
      modelID2 = [(HMDUnassociatedAirPlayAccessory *)av_OutputDevice modelID];
      [v6 setModel:modelID2];

      modelID3 = [(HMDUnassociatedAirPlayAccessory *)av_OutputDevice modelID];
      [v6 setInitialModel:modelID3];
    }

    serialNumber = [(HMDUnassociatedAccessory *)av_OutputDevice serialNumber];

    if (serialNumber)
    {
      serialNumber2 = [(HMDUnassociatedAccessory *)av_OutputDevice serialNumber];
      [v6 setSerialNumber:serialNumber2];
    }

    firmwareVersion = [(HMDUnassociatedAirPlayAccessory *)av_OutputDevice firmwareVersion];

    if (firmwareVersion)
    {
      firmwareVersion2 = [(HMDUnassociatedAirPlayAccessory *)av_OutputDevice firmwareVersion];
      [v6 setFirmwareVersion:firmwareVersion2];
    }

    manufacturer = [(HMDUnassociatedAirPlayAccessory *)av_OutputDevice manufacturer];

    if (!manufacturer)
    {
      goto LABEL_22;
    }

    manufacturer2 = [(HMDUnassociatedAirPlayAccessory *)av_OutputDevice manufacturer];
    [v6 setManufacturer:manufacturer2];

    selfCopy = av_OutputDevice;
  }

  else
  {
    model = [(HMDUnassociatedAirPlayAccessory *)self model];

    if (model)
    {
      model2 = [(HMDUnassociatedAirPlayAccessory *)self model];
      [v6 setModel:model2];

      model3 = [(HMDUnassociatedAirPlayAccessory *)self model];
      [v6 setInitialModel:model3];
    }

    manufacturer3 = [(HMDUnassociatedAirPlayAccessory *)self manufacturer];

    if (!manufacturer3)
    {
      goto LABEL_22;
    }

    manufacturer4 = [(HMDUnassociatedAirPlayAccessory *)self manufacturer];
    [v6 setManufacturer:manufacturer4];

    selfCopy = self;
  }

  manufacturer5 = [(HMDUnassociatedAirPlayAccessory *)selfCopy manufacturer];
  [v6 setInitialManufacturer:manufacturer5];

LABEL_22:
  v28 = MEMORY[0x277CD1680];
  category = [(HMDUnassociatedAccessory *)self category];
  v30 = [v28 categoryIdentifierForCategory:category];
  [v6 setInitialCategoryIdentifier:v30];

  pairingIdentity = [(HMDUnassociatedAirPlayAccessory *)self pairingIdentity];
  if (pairingIdentity)
  {
    [v6 setPairingIdentity:pairingIdentity];
  }

LABEL_25:

  return v4;
}

- (id)modelForChangeType:(unint64_t)type uuid:(id)uuid parentUUID:(id)d
{
  dCopy = d;
  uuidCopy = uuid;
  v9 = [(HMDBackingStoreModelObject *)[HMDAirPlayAccessoryModel alloc] initWithObjectChangeType:type uuid:uuidCopy parentUUID:dCopy];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20, &__block_literal_global_56592);
  }

  v3 = logCategory__hmf_once_v21;

  return v3;
}

void __46__HMDUnassociatedAirPlayAccessory_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v21;
  logCategory__hmf_once_v21 = v1;
}

@end