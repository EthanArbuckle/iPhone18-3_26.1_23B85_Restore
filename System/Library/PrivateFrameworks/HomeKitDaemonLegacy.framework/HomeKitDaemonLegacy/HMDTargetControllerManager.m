@interface HMDTargetControllerManager
+ (id)logCategory;
- (HMDHAPAccessory)controller;
- (HMDTargetControllerManager)init;
- (HMDTargetControllerManager)initWithTargetControllerAccessory:(id)a3 targets:(id)a4;
- (NSArray)buttonConfiguration;
- (NSArray)targetUUIDs;
- (NSMutableSet)configuredTargets;
- (id)__refreshedConfiguration:(id)a3;
- (id)_dataForAddTargets:(id)a3 outError:(id *)a4;
- (id)_dataForListTargetsWithOutError:(id *)a3;
- (id)_dataForRemoveTargets:(id)a3 outError:(id *)a4;
- (id)_dataForResetTargetsWithOutError:(id *)a3;
- (id)_dataForUpdateTarget:(id)a3 name:(id)a4 buttonConfiguration:(id)a5 outError:(id *)a6;
- (id)targetConfigurationMatchingAccessory:(id)a3;
- (id)targetConfigurationMatchingIdentifier:(id)a3;
- (int)_parseSupportedTargetConfiguration:(id)a3;
- (unint64_t)ticksPerSecond;
- (void)__accessoryConnected:(id)a3;
- (void)__accessoryDisconnected:(id)a3;
- (void)__accessoryNameUpdated:(id)a3;
- (void)__accessoryRemoved:(id)a3;
- (void)__characteristicEventsReceived:(id)a3;
- (void)__handleActiveIdentifierChange:(id)a3 forCharacteristic:(id)a4;
- (void)_addTargets:(id)a3;
- (void)_auditTargets:(id)a3;
- (void)_configureTargetAccessories:(id)a3 reason:(id)a4 targetAccessories:(id)a5 responseHandler:(id)a6;
- (void)_handleActiveIdentifierReadResponses:(id)a3;
- (void)_handleConfigureTargets:(id)a3 responseHandler:(id)a4;
- (void)_listTargetsWithCompletionHandler:(id)a3;
- (void)_notifyConfigurationRefresh:(id)a3;
- (void)_postSelectionChangeNotification:(BOOL)a3 object:(id)a4 userInfo:(id)a5;
- (void)_readSupportedConfigurationWithCompletion:(id)a3;
- (void)_refreshConfigurationWithCompletion:(id)a3;
- (void)_registerForActiveIdentifierNotifications;
- (void)_removeTargets:(id)a3;
- (void)_resetTargets;
- (void)_saveTargetUUIDs;
- (void)_updateName:(id)a3 buttonConfiguration:(id)a4 target:(id)a5;
- (void)acknowledgeTargetControlService:(id)a3 active:(BOOL)a4;
- (void)addConfiguredTarget:(id)a3;
- (void)addTargetAccessory:(id)a3 buttonConfiguration:(id)a4;
- (void)autoConfigureTargets;
- (void)handleConfigureTargets:(id)a3 responseHandler:(id)a4;
- (void)invalidate;
- (void)refreshConfigurationWithCompletion:(id)a3;
- (void)registerForActiveIdentifierNotifications;
- (void)removeConfiguredTarget:(id)a3;
- (void)removeTargetAccessory:(id)a3;
- (void)resetConfiguredTargets;
- (void)setButtonConfiguration:(id)a3;
- (void)setTicksPerSecond:(unint64_t)a3;
- (void)updateButtonConfigurationForTarget:(id)a3;
- (void)updateTargetAccessory:(id)a3 name:(id)a4 buttonConfiguration:(id)a5;
- (void)updateTargets:(id)a3;
@end

@implementation HMDTargetControllerManager

- (HMDHAPAccessory)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (void)_configureTargetAccessories:(id)a3 reason:(id)a4 targetAccessories:(id)a5 responseHandler:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDTargetControllerManager *)self controller];
  v15 = [v14 findCharacteristicType:*MEMORY[0x277CCFB38] forServiceType:*MEMORY[0x277CD0F18]];
  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Configure target accessories", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    objc_initWeak(buf, v17);
    v20 = [(HMDTargetControllerManager *)v17 workQueue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __99__HMDTargetControllerManager__configureTargetAccessories_reason_targetAccessories_responseHandler___block_invoke;
    v23[3] = &unk_279734508;
    objc_copyWeak(&v25, buf);
    v24 = v13;
    [v14 writeValue:v10 toCharacteristic:v15 queue:v20 source:1200 completion:v23];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  else if (v13)
  {
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(v13 + 2))(v13, v21, 0);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __99__HMDTargetControllerManager__configureTargetAccessories_reason_targetAccessories_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = v7;
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];

    v4 = v5;
  }

  v8 = v4;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v8, 0);
  }
}

- (void)_handleConfigureTargets:(id)a3 responseHandler:(id)a4
{
  v105[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDTargetControllerManager *)self controller];
  v9 = [v8 home];
  v10 = [v8 findCharacteristicType:*MEMORY[0x277CCFB38] forServiceType:*MEMORY[0x277CD0F18]];
  if (v10)
  {
    v11 = *MEMORY[0x277CCECD8];
    v12 = [v6 objectForKey:*MEMORY[0x277CCECD8]];

    v84 = v9;
    if (v12)
    {
      v13 = v11;
      v92 = 0;
      v14 = [(HMDTargetControllerManager *)self _dataForResetTargetsWithOutError:&v92];
      v15 = v92;
      goto LABEL_8;
    }

    v17 = *MEMORY[0x277CCEB40];
    v18 = [v6 objectForKey:*MEMORY[0x277CCEB40]];

    if (v18)
    {
      v13 = v17;
      v91 = 0;
      v14 = [(HMDTargetControllerManager *)self _dataForListTargetsWithOutError:&v91];
      v15 = v91;
LABEL_8:
      v19 = v15;
      v20 = 0;
      if (v19)
      {
LABEL_9:
        if (v7)
        {
          v7[2](v7, v19, 0);
        }

        v21 = v19;
        goto LABEL_47;
      }

LABEL_44:
      if (v14)
      {
        [(HMDTargetControllerManager *)self _configureTargetAccessories:v14 reason:v13 targetAccessories:v20 responseHandler:v7];
      }

      v21 = 0;
      goto LABEL_47;
    }

    v22 = *MEMORY[0x277CCE7C0];
    v23 = [v6 objectForKey:*MEMORY[0x277CCE7C0]];

    if (v23)
    {
      v13 = v22;
      v24 = [v6 hmf_UUIDForKey:v13];
      v14 = [v9 accessoryWithUUID:v24];
      if (!v14)
      {
        v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        v81 = v24;
        v20 = 0;
        v33 = 0;
        goto LABEL_29;
      }

      if (v9)
      {
        [v9 uuid];
        v26 = v25 = v14;
        v27 = identifierForTargetWithUUID(v24, v26);

        v78 = v25;
        v28 = [v25 category];
        v73 = mapTargetCategory(v28);

        v69 = [HMDTargetConfiguration alloc];
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v27];
        [v25 name];
        v30 = v81 = v24;
        v31 = [(HMDTargetControllerManager *)self buttonConfiguration];
        v74 = [(HMDTargetConfiguration *)v69 initWithIdentifier:v29 name:v30 category:v73 buttonConfiguration:v31];

        v105[0] = v25;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:1];
        v104 = v74;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v104 count:1];
        v90 = 0;
        v14 = [(HMDTargetControllerManager *)self _dataForAddTargets:v32 outError:&v90];
        v19 = v90;

        v33 = v78;
LABEL_29:

        v44 = v81;
        goto LABEL_43;
      }

      v45 = objc_autoreleasePoolPush();
      v46 = self;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v83 = HMFGetLogIdentifier();
        obja = [v8 name];
        [v8 uuid];
        v76 = v45;
        v49 = v48 = v24;
        v71 = [v49 UUIDString];
        *buf = 138543874;
        v97 = v83;
        v98 = 2112;
        v99 = obja;
        v100 = 2112;
        v101 = v71;
        _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@Attempting to configure targets for a controller %@/%@ that is not configured with a home", buf, 0x20u);

        v24 = v48;
        v45 = v76;
      }

      objc_autoreleasePoolPop(v45);
      if (v7)
      {
        v50 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        v7[2](v7, v50, 0);
      }

      goto LABEL_54;
    }

    v34 = *MEMORY[0x277CCECA8];
    v35 = [v6 objectForKey:*MEMORY[0x277CCECA8]];

    if (!v35)
    {
      v13 = [v6 objectForKey:v34];

      if (!v13)
      {
        v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        v14 = 0;
        v20 = 0;
        v21 = 0;
        if (v19)
        {
          goto LABEL_9;
        }

LABEL_47:

        v9 = v84;
        goto LABEL_48;
      }

      v20 = 0;
      v13 = 0;
LABEL_55:
      v21 = 0;
      v14 = 0;
      goto LABEL_47;
    }

    v13 = v34;
    v36 = [v6 hmf_UUIDForKey:v13];
    v37 = [v9 accessoryWithUUID:v36];
    v20 = v37;
    if (v37)
    {
      if (!v9)
      {
        v55 = objc_autoreleasePoolPush();
        v56 = self;
        v57 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v80 = HMFGetLogIdentifier();
          objb = [v20 uuid];
          [objb UUIDString];
          v64 = v72 = v56;
          v62 = [v8 name];
          [v8 uuid];
          v77 = v55;
          v59 = v58 = v20;
          [v59 UUIDString];
          *buf = 138544130;
          v97 = v80;
          v98 = 2112;
          v99 = v64;
          v100 = 2112;
          v101 = v62;
          v103 = v102 = 2112;
          v60 = v103;
          _os_log_impl(&dword_2531F8000, v57, OS_LOG_TYPE_ERROR, "%{public}@Attempting to remove target %@ for a controller %@/%@ that is not configured with a home", buf, 0x2Au);

          v20 = v58;
          v55 = v77;

          v56 = v72;
        }

        objc_autoreleasePoolPop(v55);
        if (v7)
        {
          v61 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
          v7[2](v7, v61, 0);
        }

LABEL_54:
        v20 = 0;
        goto LABEL_55;
      }

      v63 = v37;
      v38 = [v9 uuid];
      v65 = v36;
      v79 = identifierForTargetWithUUID(v36, v38);

      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      obj = [(HMDTargetControllerManager *)self configuredTargets];
      v75 = [obj countByEnumeratingWithState:&v86 objects:v95 count:16];
      if (v75)
      {
        v70 = *v87;
        v82 = v13;
LABEL_21:
        v39 = 0;
        while (1)
        {
          if (*v87 != v70)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(*(&v86 + 1) + 8 * v39);
          v41 = [v40 identifier];
          v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v79];
          v43 = [v41 isEqual:v42];

          if (v43)
          {
            break;
          }

          ++v39;
          v13 = v82;
          if (v75 == v39)
          {
            v75 = [obj countByEnumeratingWithState:&v86 objects:v95 count:16];
            if (v75)
            {
              goto LABEL_21;
            }

            goto LABEL_27;
          }
        }

        v51 = v40;

        v13 = v82;
        if (!v51)
        {
          goto LABEL_40;
        }

        v94 = v63;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v94 count:1];
        v93 = v51;
        v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v93 count:1];
        v85 = 0;
        [(HMDTargetControllerManager *)self _dataForRemoveTargets:v52 outError:&v85];
        v14 = v53 = v51;
        v19 = v85;

        v13 = v82;
        goto LABEL_42;
      }

LABEL_27:

LABEL_40:
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      v20 = 0;
    }

    else
    {
      v63 = 0;
      v65 = v36;
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    }

    v14 = 0;
LABEL_42:

    v44 = v65;
LABEL_43:

    if (v19)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

  if (v7)
  {
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v7[2](v7, v16, 0);
  }

LABEL_48:

  v54 = *MEMORY[0x277D85DE8];
}

- (void)handleConfigureTargets:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDTargetControllerManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDTargetControllerManager_handleConfigureTargets_responseHandler___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (id)targetConfigurationMatchingAccessory:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDTargetControllerManager *)self controller];
  v6 = [v5 home];
  if (v6)
  {
    v7 = [v4 uuid];
    v8 = [v6 uuid];
    v9 = identifierForTargetWithUUID(v7, v8);

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    v11 = [(HMDTargetControllerManager *)self targetConfigurationMatchingIdentifier:v10];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v15 = [v4 name];
      v23 = [v4 uuid];
      v16 = [v23 UUIDString];
      [v5 name];
      v17 = v24 = v12;
      v18 = [v5 uuid];
      [v18 UUIDString];
      *buf = 138544386;
      v26 = v22;
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = v17;
      v34 = v33 = 2112;
      v19 = v34;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Attempting to lookup target %@/%@ for a controller %@/%@ that is not configured with a home", buf, 0x34u);

      v12 = v24;
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)targetConfigurationMatchingIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(HMDTargetControllerManager *)self configuredTargets];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)updateTargets:(id)a3
{
  v4 = a3;
  v5 = [(HMDTargetControllerManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HMDTargetControllerManager_updateTargets___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __44__HMDTargetControllerManager_updateTargets___block_invoke(uint64_t a1)
{
  v99 = *MEMORY[0x277D85DE8];
  v69 = [*(a1 + 32) controller];
  v2 = [v69 home];
  v3 = [*(a1 + 32) targetUUIDs];
  v4 = [MEMORY[0x277CBEB58] setWithArray:*(a1 + 40)];
  v70 = v3;
  v5 = v3;
  v6 = a1;
  v7 = [MEMORY[0x277CBEB98] setWithArray:v5];
  [v4 minusSet:v7];

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = v4;
  v8 = 0x277CCA000uLL;
  v71 = v2;
  v76 = v6;
  v79 = [obj countByEnumeratingWithState:&v85 objects:v98 count:16];
  if (v79)
  {
    v77 = *v86;
    do
    {
      for (i = 0; i != v79; ++i)
      {
        if (*v86 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v85 + 1) + 8 * i);
        v11 = [objc_alloc(*(v8 + 3448)) initWithUUIDString:v10];
        if (v11)
        {
          v12 = [v2 accessoryWithUUID:v11];
          if (v12)
          {
            v13 = [HMDTargetConfiguration alloc];
            v14 = [*(v6 + 32) buttonConfiguration];
            v15 = [(HMDTargetConfiguration *)v13 initWithAccessory:v12 buttonConfiguration:v14];

            v16 = objc_autoreleasePoolPush();
            v17 = *(v6 + 32);
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v19 = v73 = v16;
              v20 = [v12 name];
              v21 = [v12 uuid];
              v22 = [v21 UUIDString];
              *buf = 138543874;
              v93 = v19;
              v94 = 2112;
              v95 = v20;
              v96 = 2112;
              v97 = v22;
              _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@(Update) Adding target accessory %@/%@", buf, 0x20u);

              v2 = v71;
              v16 = v73;
            }

            objc_autoreleasePoolPop(v16);
            v23 = *(v76 + 32);
            v91 = v15;
            v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
            v25 = v23;
            v6 = v76;
            [v25 _addTargets:v24];

            v8 = 0x277CCA000;
          }

          else
          {
            v30 = objc_autoreleasePoolPush();
            v31 = *(v6 + 32);
            v32 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v33 = HMFGetLogIdentifier();
              *buf = 138543618;
              v93 = v33;
              v94 = 2112;
              v95 = v10;
              _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Cannot look up target accessory from UUID %@ to add", buf, 0x16u);

              v8 = 0x277CCA000uLL;
            }

            objc_autoreleasePoolPop(v30);
          }
        }

        else
        {
          v26 = objc_autoreleasePoolPush();
          v27 = *(v6 + 32);
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = HMFGetLogIdentifier();
            *buf = 138543618;
            v93 = v29;
            v94 = 2112;
            v95 = v10;
            _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Incorrectly formatted target UUID %@ to add", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v26);
        }
      }

      v79 = [obj countByEnumeratingWithState:&v85 objects:v98 count:16];
    }

    while (v79);
  }

  v34 = [MEMORY[0x277CBEB58] setWithArray:v70];
  v35 = [MEMORY[0x277CBEB98] setWithArray:*(v6 + 40)];
  [v34 minusSet:v35];

  v36 = v76;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v74 = v34;
  v80 = [v74 countByEnumeratingWithState:&v81 objects:v90 count:16];
  if (v80)
  {
    v78 = *v82;
    while (2)
    {
      for (j = 0; j != v80; ++j)
      {
        if (*v82 != v78)
        {
          objc_enumerationMutation(v74);
        }

        v38 = *(*(&v81 + 1) + 8 * j);
        v39 = [objc_alloc(*(v8 + 3448)) initWithUUIDString:v38];
        if (v39)
        {
          v40 = v39;
          v41 = [v2 accessoryWithUUID:v39];
          if (v41)
          {
            v42 = v41;
            v43 = [*(v36 + 32) targetConfigurationMatchingAccessory:v41];
            v44 = objc_autoreleasePoolPush();
            v45 = v36;
            v46 = v44;
            v47 = *(v45 + 32);
            v48 = HMFGetOSLogHandle();
            v49 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);
            if (!v43)
            {
              if (v49)
              {
                v64 = HMFGetLogIdentifier();
                v65 = [v42 name];
                v66 = [v42 uuid];
                v67 = [v66 UUIDString];
                *buf = 138543874;
                v93 = v64;
                v94 = 2112;
                v95 = v65;
                v96 = 2112;
                v97 = v67;
                _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Attempt to remove a target %@/%@ that cannot be looked up in target controller manager", buf, 0x20u);

                v2 = v71;
              }

              objc_autoreleasePoolPop(v46);
              goto LABEL_44;
            }

            if (v49)
            {
              HMFGetLogIdentifier();
              v50 = v72 = v46;
              v51 = [v42 name];
              v52 = [v42 uuid];
              v53 = [v52 UUIDString];
              *buf = 138543874;
              v93 = v50;
              v94 = 2112;
              v95 = v51;
              v96 = 2112;
              v97 = v53;
              _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@(Update) Removing target accessory %@/%@", buf, 0x20u);

              v2 = v71;
              v8 = 0x277CCA000;

              v46 = v72;
            }

            objc_autoreleasePoolPop(v46);
            v54 = *(v76 + 32);
            v89 = v43;
            v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
            [v54 _removeTargets:v55];

            v36 = v76;
          }

          else
          {
            v60 = objc_autoreleasePoolPush();
            v61 = *(v36 + 32);
            v62 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
            {
              v63 = HMFGetLogIdentifier();
              *buf = 138543618;
              v93 = v63;
              v94 = 2112;
              v95 = v38;
              _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_INFO, "%{public}@Cannot look up target accessory from UUID %@ to remove", buf, 0x16u);

              v36 = v76;
            }

            objc_autoreleasePoolPop(v60);
          }
        }

        else
        {
          v56 = objc_autoreleasePoolPush();
          v57 = *(v36 + 32);
          v58 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            v59 = HMFGetLogIdentifier();
            *buf = 138543618;
            v93 = v59;
            v94 = 2112;
            v95 = v38;
            _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_INFO, "%{public}@Incorrectly formatted target UUID %@ to remove", buf, 0x16u);

            v36 = v76;
          }

          objc_autoreleasePoolPop(v56);
        }
      }

      v80 = [v74 countByEnumeratingWithState:&v81 objects:v90 count:16];
      if (v80)
      {
        continue;
      }

      break;
    }
  }

LABEL_44:

  v68 = *MEMORY[0x277D85DE8];
}

- (void)autoConfigureTargets
{
  v3 = [(HMDTargetControllerManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HMDTargetControllerManager_autoConfigureTargets__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

void __50__HMDTargetControllerManager_autoConfigureTargets__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"autoConfigureNewTargetControllers"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Preference set to auto-configure existing targets when new target controller is added - configuring them...", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [*(a1 + 32) controller];
    v10 = [MEMORY[0x277CBEB18] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = [v9 home];
    v12 = [v11 accessories];

    v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          if ([v17 supportsTargetControl])
          {
            v18 = [[HMDTargetConfiguration alloc] initWithAccessory:v17 buttonConfiguration:0];
            [v10 addObject:v18];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v14);
    }

    [*(a1 + 32) _addTargets:v10];
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v22;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Saving targetUUIDs after auto-configuration of targets - %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    [*(a1 + 32) _saveTargetUUIDs];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_saveTargetUUIDs
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(HMDTargetControllerManager *)self configuredTargets];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(HMDTargetControllerManager *)self configuredTargets];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 uuid];

        if (v12)
        {
          v13 = [v11 uuid];
          v14 = [v13 UUIDString];
          [v5 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [(HMDTargetControllerManager *)self controller];
  [v15 saveTargetUUIDs:v5];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)__characteristicEventsReceived:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v27 = [a3 userInfo];
  v4 = [v27 hmf_arrayForKey:*MEMORY[0x277CFE5A8]];
  v28 = self;
  v5 = [(HMDTargetControllerManager *)self controller];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    v31 = *MEMORY[0x277CD0F10];
    v29 = *MEMORY[0x277CCF750];
    v30 = v5;
    do
    {
      v10 = 0;
      v32 = v8;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        v12 = [v11 serverIdentifier];
        v13 = [v11 accessoryInstanceID];
        v14 = [v5 matchesHAPAccessoryWithServerIdentifier:v12 instanceID:v13];

        if (v14)
        {
          v15 = [v11 characteristicInstanceID];
          v16 = [v5 hmdCharacteristicForInstanceId:v15];

          v17 = [v16 service];
          v18 = [v17 accessory];
          if (v18)
          {
            v19 = [v17 type];
            if (![v19 isEqualToString:v31])
            {
              goto LABEL_14;
            }

            [v16 type];
            v20 = v9;
            v22 = v21 = v6;
            v23 = [v22 isEqualToString:v29];

            v6 = v21;
            v9 = v20;
            v5 = v30;

            if (v23)
            {
              v24 = [v11 value];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v25 = v24;
              }

              else
              {
                v25 = 0;
              }

              v19 = v25;

              [(HMDTargetControllerManager *)v28 __handleActiveIdentifierChange:v19 forCharacteristic:v16];
LABEL_14:
            }
          }

          v8 = v32;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v8);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)registerForActiveIdentifierNotifications
{
  v3 = [(HMDTargetControllerManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDTargetControllerManager_registerForActiveIdentifierNotifications__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_registerForActiveIdentifierNotifications
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:self selector:sel___characteristicEventsReceived_ name:*MEMORY[0x277CFE5A0] object:0];

  v33 = [(HMDTargetControllerManager *)self controller];
  v3 = [v33 services];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v42 = 0u;
  v43 = 0u;
  *location = 0u;
  v41 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:location objects:buf count:16];
  if (v6)
  {
    v7 = *v41;
    v8 = *MEMORY[0x277CD0F10];
    v9 = *MEMORY[0x277CCF750];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(location[1] + i);
        v12 = [v11 type];
        v13 = [v12 isEqualToString:v8];

        if (v13)
        {
          v14 = [v11 findCharacteristicWithType:v9];
          if (v14)
          {
            [v4 addObject:v14];
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:location objects:buf count:16];
    }

    while (v6);
  }

  v15 = [v4 copy];
  if ([v15 count])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v19;
      v47 = 2112;
      v48 = v15;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Registering for notification on active selection characteristics: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    [v33 enableNotification:1 forCharacteristics:v15 message:0 clientIdentifier:@"com.apple.HomeKitDaemon.targetControl"];
    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v15, "count")}];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v21 = v15;
    v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v22)
    {
      v23 = *v37;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v37 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = [HMDCharacteristicRequest requestWithCharacteristic:*(*(&v36 + 1) + 8 * j)];
          [v20 addObject:v25];
        }

        v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v22);
    }

    objc_initWeak(location, v17);
    v26 = objc_autoreleasePoolPush();
    v27 = v17;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v29;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Refreshing the active selections on the controller", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v30 = [(HMDTargetControllerManager *)v27 workQueue];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __71__HMDTargetControllerManager__registerForActiveIdentifierNotifications__block_invoke;
    v34[3] = &unk_279735360;
    objc_copyWeak(&v35, location);
    [v33 readCharacteristicValues:v20 source:1200 queue:v30 completionHandler:v34];

    objc_destroyWeak(&v35);
    objc_destroyWeak(location);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __71__HMDTargetControllerManager__registerForActiveIdentifierNotifications__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleActiveIdentifierReadResponses:v5];
  }
}

- (void)_handleActiveIdentifierReadResponses:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    v25 = *MEMORY[0x277CD0F10];
    v22 = *MEMORY[0x277CCF750];
    v23 = self;
    v26 = *v30;
    do
    {
      v7 = 0;
      v27 = v5;
      do
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v29 + 1) + 8 * v7);
        v9 = [v8 request];
        v10 = [v9 characteristic];

        v11 = [v10 service];
        v12 = [v11 accessory];
        v13 = [v8 error];
        if (v13)
        {
          v14 = 1;
        }

        else
        {
          v14 = v12 == 0;
        }

        if (v14)
        {
          goto LABEL_19;
        }

        v13 = [v12 uuid];
        v15 = [(HMDTargetControllerManager *)self controller];
        v16 = [v15 uuid];
        if (![v13 isEqual:v16])
        {
          goto LABEL_18;
        }

        v17 = [v11 type];
        if (![v17 isEqualToString:v25])
        {

LABEL_18:
          v6 = v26;
          v5 = v27;
          goto LABEL_19;
        }

        v18 = [v10 type];
        v24 = [v18 isEqualToString:v22];

        self = v23;
        v6 = v26;
        v5 = v27;
        if (!v24)
        {
          goto LABEL_20;
        }

        v19 = [v8 value];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v13 = v20;

        self = v23;
        [(HMDTargetControllerManager *)v23 __handleActiveIdentifierChange:v13 forCharacteristic:v10];
LABEL_19:

LABEL_20:
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v5);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)__handleActiveIdentifierChange:(id)a3 forCharacteristic:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 service];
  v9 = [v8 accessory];
  if (v6)
  {
    if ([v6 unsignedIntegerValue])
    {
      v10 = [(HMDTargetControllerManager *)self targetConfigurationMatchingIdentifier:v6];
      if (!v10)
      {
        v11 = objc_autoreleasePoolPush();
        v12 = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          [v9 name];
          v14 = v23 = v11;
          [v8 instanceID];
          *buf = 138544130;
          v27 = v22;
          v28 = 2112;
          v29 = v6;
          v30 = 2112;
          v31 = v14;
          v33 = v32 = 2112;
          v15 = v33;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Unable to look up target for identifier %@ while reading activeIdentifier characteristic %@/%@", buf, 0x2Au);

          v11 = v23;
        }

        objc_autoreleasePoolPop(v11);
      }

      v24 = @"activeIdentifier";
      v25 = v6;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      [(HMDTargetControllerManager *)self _postSelectionChangeNotification:1 object:v8 userInfo:v16];
    }

    else
    {
      [(HMDTargetControllerManager *)self _postSelectionChangeNotification:0 object:v8 userInfo:0];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v27 = v20;
      v28 = 2112;
      v29 = 0;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Received a non-number (%@) for activeIdentifier characteristic %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)acknowledgeTargetControlService:(id)a3 active:(BOOL)a4
{
  v6 = a3;
  v7 = [(HMDTargetControllerManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDTargetControllerManager_acknowledgeTargetControlService_active___block_invoke;
  block[3] = &unk_279734938;
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

void __69__HMDTargetControllerManager_acknowledgeTargetControlService_active___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x277CBEB18];
  v3 = [v1 characteristics];
  v4 = [v2 arrayWithCapacity:{objc_msgSend(v3, "count")}];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = [v1 characteristics];
  v6 = [v5 countByEnumeratingWithState:&v38 objects:buf count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    v9 = *MEMORY[0x277CCF790];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        v12 = [v11 type];
        v13 = [v12 isEqualToString:v9];

        if (v13)
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v38 objects:buf count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];
  if ([v14 count])
  {
    v15 = a1;
    v16 = [*(a1 + 40) controller];
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 40);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      if (*(a1 + 48))
      {
        v21 = @"Registering";
      }

      else
      {
        v21 = @"Deregistering";
      }

      v22 = [*(a1 + 32) accessory];
      v23 = [v22 name];
      v24 = [*(a1 + 32) instanceID];
      *buf = 138544130;
      v44 = v20;
      v45 = 2112;
      v46 = v21;
      v47 = 2112;
      v48 = v23;
      v49 = 2112;
      v50 = v24;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@%@ for notifications from event characteristics on controller service %@/%@", buf, 0x2Au);

      v15 = a1;
    }

    objc_autoreleasePoolPop(v17);
    [v16 enableNotification:*(v15 + 48) forCharacteristics:v14 message:0 clientIdentifier:@"com.apple.HomeKitDaemon.targetControl"];
    if (*(v15 + 48) == 1)
    {
      v25 = [*(v15 + 32) findCharacteristicWithType:*MEMORY[0x277CCF748]];
      if (v25)
      {
        if (*(v15 + 48))
        {
          v26 = &unk_286628258;
        }

        else
        {
          v26 = 0;
        }

        v27 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v25 value:v26 authorizationData:0 type:0];
        v42 = v27;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
        v29 = [*(v15 + 40) workQueue];
        [v16 writeCharacteristicValues:v28 source:1200 queue:v29 completionHandler:0];
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = *(v15 + 40);
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = HMFGetLogIdentifier();
          v34 = [v16 name];
          v35 = [*(v15 + 32) instanceID];
          *buf = 138543874;
          v44 = v33;
          v45 = 2112;
          v46 = v34;
          v47 = 2112;
          v48 = v35;
          _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Unable to look up active characteirstic in controller %@ service %@ for active selection acknowledgement", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v30);
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_resetTargets
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(HMDTargetControllerManager *)self controller];
  v4 = [v3 findCharacteristicType:*MEMORY[0x277CCFB38] forServiceType:*MEMORY[0x277CD0F18]];
  if (v4)
  {
    v20 = 0;
    v5 = [(HMDTargetControllerManager *)self _dataForResetTargetsWithOutError:&v20];
    v6 = v20;
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v10)
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v22 = v11;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to serialize request for resetting targets - error %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      if (v10)
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v22 = v16;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Reset targets for controller", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      v17 = [(HMDTargetControllerManager *)v8 workQueue];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __43__HMDTargetControllerManager__resetTargets__block_invoke;
      v19[3] = &unk_2797359D8;
      v19[4] = v8;
      [v3 writeValue:v5 toCharacteristic:v4 queue:v17 source:1200 completion:v19];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Failed to look up target list characteristic for resetting targets", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __43__HMDTargetControllerManager__resetTargets__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v8;
      v9 = "%{public}@Failed to write request for resetting targets";
LABEL_6:
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, v9, &v11, 0xCu);
    }
  }

  else if (v7)
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    v9 = "%{public}@Successfully resetting targets";
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x277D85DE8];
}

- (id)_dataForResetTargetsWithOutError:(id *)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  TLV8BufferInit();
  if (TLV8BufferAppend())
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v13 = v9;
      v14 = 2048;
      v15 = 4;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Encoding for reset target - operation %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:?];
  }

  TLV8BufferFree();
  if (a3 && !v5)
  {
    *a3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)removeTargetAccessory:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(HMDTargetControllerManager *)self targetConfigurationMatchingAccessory:v4];
    if (v5)
    {
      v6 = [(HMDTargetControllerManager *)self workQueue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __52__HMDTargetControllerManager_removeTargetAccessory___block_invoke;
      v15[3] = &unk_2797359B0;
      v15[4] = self;
      v16 = v5;
      dispatch_async(v6, v15);
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [v4 name];
        v12 = [v4 uuid];
        v13 = [v12 UUIDString];
        *buf = 138543874;
        v18 = v10;
        v19 = 2112;
        v20 = v11;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Attempt to remove a target %@/%@ that cannot be looked up in target controller manager", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __52__HMDTargetControllerManager_removeTargetAccessory___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v6[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v2 _removeTargets:v3];

  result = [*(a1 + 32) _saveTargetUUIDs];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_removeTargets:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(HMDTargetControllerManager *)self controller];
    v6 = [v5 findCharacteristicType:*MEMORY[0x277CCFB38] forServiceType:*MEMORY[0x277CD0F18]];
    if (v6)
    {
      v51 = 0;
      v7 = [(HMDTargetControllerManager *)self _dataForRemoveTargets:v4 outError:&v51];
      v42 = v51;
      if (v42)
      {
        v8 = objc_autoreleasePoolPush();
        v9 = self;
        v10 = HMFGetOSLogHandle();
        v11 = v42;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          *buf = 138543874;
          v56 = v12;
          v57 = 2112;
          v58 = v4;
          v59 = 2112;
          v60 = v42;
          _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to serialize request for removing targets %@ - error %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v8);
      }

      else
      {
        v38 = v7;
        v39 = v6;
        v40 = v5;
        v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v41 = v4;
        v18 = v4;
        v19 = [v18 countByEnumeratingWithState:&v47 objects:v54 count:16];
        v43 = v18;
        if (v19)
        {
          v20 = v19;
          v21 = *v48;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v48 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v47 + 1) + 8 * i);
              [(HMDTargetControllerManager *)self removeConfiguredTarget:v23];
              v24 = [v23 uuid];

              if (v24)
              {
                v25 = [v23 uuid];
                [v17 addObject:v25];
              }

              else
              {
                v26 = objc_autoreleasePoolPush();
                v27 = self;
                v28 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                {
                  v29 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v56 = v29;
                  v57 = 2112;
                  v58 = v23;
                  _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Target being removed %@ does not have a UUID", buf, 0x16u);

                  v18 = v43;
                }

                objc_autoreleasePoolPop(v26);
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v47 objects:v54 count:16];
          }

          while (v20);
        }

        v52 = @"HMDTargetAccessoriesUUIDKey";
        v53 = v17;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v31 = [MEMORY[0x277CCAB98] defaultCenter];
        v5 = v40;
        [v31 postNotificationName:@"HMDTargetAccessoryUnconfiguredNotificationKey" object:v40 userInfo:v30];

        v32 = objc_autoreleasePoolPush();
        v33 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543362;
          v56 = v35;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Remove controller accessory targets", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v32);
        v36 = [(HMDTargetControllerManager *)v33 workQueue];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __45__HMDTargetControllerManager__removeTargets___block_invoke;
        v44[3] = &unk_279734D88;
        v44[4] = v33;
        v45 = v43;
        v46 = v39;
        [v40 writeValue:v38 toCharacteristic:v46 queue:v36 source:1200 completion:v44];

        v7 = v38;
        v6 = v39;
        v4 = v41;
        v11 = 0;
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v56 = v16;
        v57 = 2112;
        v58 = v4;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to look up target list characteristic for removing targets %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

void __45__HMDTargetControllerManager__removeTargets___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v19 = 138543618;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Failed to write request for removing targets %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v9 = [*(a1 + 48) value];
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

    v12 = _parseTargetList(v11);
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = *(a1 + 40);
      v19 = 138543874;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Successfully removed targets %@ - response %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_dataForRemoveTargets:(id)a3 outError:(id *)a4
{
  v81 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [v6 count];
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  TLV8BufferInit();
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  TLV8BufferInit();
  v31 = 3;
  if (TLV8BufferAppend())
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v24 = v6;
    v25 = a4;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v28;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          if ((v11 & 1) != 0 && TLV8BufferAppend() || ([v14 identifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "unsignedIntegerValue"), v15, v26 = v16, TLV8BufferAppend()))
          {
            v7 = 0;
            v21 = 0;
            goto LABEL_18;
          }

          v17 = objc_autoreleasePoolPush();
          v18 = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            *buf = 138543874;
            v33 = v20;
            v34 = 2048;
            v35 = v31;
            v36 = 2048;
            v37 = v26;
            _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Encoding for remove target - operation %lu  identifier %lu", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v17);
          v11 = 1;
        }

        v10 = [v8 countByEnumeratingWithState:&v27 objects:v38 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v8 = [MEMORY[0x277CBEA90] dataWithBytes:v60 length:?];
    [v8 bytes];
    [v8 length];
    if (TLV8BufferAppend())
    {
      v7 = 0;
      v6 = v24;
      a4 = v25;
    }

    else
    {
      v21 = [MEMORY[0x277CBEA90] dataWithBytes:v39 length:?];
      v7 = 1;
LABEL_18:
      v6 = v24;
      a4 = v25;

      v8 = v21;
    }
  }

  TLV8BufferFree();
  TLV8BufferFree();
  if ((v7 & 1) == 0)
  {

    v8 = 0;
  }

  if (a4 && !v8)
  {
    *a4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)addTargetAccessory:(id)a3 buttonConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(HMDTargetControllerManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__HMDTargetControllerManager_addTargetAccessory_buttonConfiguration___block_invoke;
    block[3] = &unk_279734960;
    v10 = v6;
    v11 = v7;
    v12 = self;
    dispatch_async(v8, block);
  }
}

void __69__HMDTargetControllerManager_addTargetAccessory_buttonConfiguration___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [HMDTargetConfiguration alloc];
  v3 = v2;
  v4 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v5 = [(HMDTargetConfiguration *)v2 initWithAccessory:*(a1 + 32) buttonConfiguration:?];
  }

  else
  {
    v6 = [*(a1 + 48) buttonConfiguration];
    v5 = [(HMDTargetConfiguration *)v3 initWithAccessory:v4 buttonConfiguration:v6];
  }

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 48);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 32) name];
    v19 = [*(a1 + 32) uuid];
    v12 = [v19 UUIDString];
    [(HMDTargetConfiguration *)v5 buttonConfiguration];
    v13 = v20 = v7;
    v14 = buttonConfigurationAsString(v13);
    v15 = [(HMFObject *)v5 shortDescription];
    *buf = 138544386;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v14;
    v30 = 2112;
    v31 = v15;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Adding target accessory %@/%@ with button configuration %@ - target configuration %@", buf, 0x34u);

    v7 = v20;
  }

  objc_autoreleasePoolPop(v7);
  v16 = *(a1 + 48);
  v21 = v5;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  [v16 _addTargets:v17];

  [*(a1 + 48) _saveTargetUUIDs];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_addTargets:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(HMDTargetControllerManager *)self controller];
    v6 = [v5 findCharacteristicType:*MEMORY[0x277CCFB38] forServiceType:*MEMORY[0x277CD0F18]];
    if (v6)
    {
      v63 = 0;
      v7 = [(HMDTargetControllerManager *)self _dataForAddTargets:v4 outError:&v63];
      v8 = v63;
      if (v8)
      {
        v9 = objc_autoreleasePoolPush();
        v10 = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          *buf = 138543618;
          v69 = v12;
          v70 = 2112;
          v71 = v4;
          _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Failed to serialize request for adding targets %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
      }

      else
      {
        v47 = v7;
        v48 = v6;
        v49 = v5;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        v59 = 0u;
        v17 = v4;
        v18 = [v17 countByEnumeratingWithState:&v59 objects:v67 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v60;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v60 != v20)
              {
                objc_enumerationMutation(v17);
              }

              [(HMDTargetControllerManager *)self addConfiguredTarget:*(*(&v59 + 1) + 8 * i)];
            }

            v19 = [v17 countByEnumeratingWithState:&v59 objects:v67 count:16];
          }

          while (v19);
        }

        v46 = v17;
        v50 = v4;

        v22 = [(HMDTargetControllerManager *)self configuredTargets];
        v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v22, "count")}];
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v24 = v22;
        v25 = [v24 countByEnumeratingWithState:&v55 objects:v66 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v56;
          do
          {
            v28 = 0;
            v51 = v26;
            do
            {
              if (*v56 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v55 + 1) + 8 * v28);
              v30 = [v29 uuid];

              if (v30)
              {
                v31 = [v29 uuid];
                [v23 addObject:v31];
              }

              else
              {
                v32 = objc_autoreleasePoolPush();
                v33 = self;
                v34 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  HMFGetLogIdentifier();
                  v35 = v27;
                  v36 = self;
                  v37 = v23;
                  v39 = v38 = v24;
                  *buf = 138543618;
                  v69 = v39;
                  v70 = 2112;
                  v71 = v29;
                  _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Target being added %@ does not have a UUID", buf, 0x16u);

                  v24 = v38;
                  v23 = v37;
                  self = v36;
                  v27 = v35;
                  v26 = v51;
                }

                objc_autoreleasePoolPop(v32);
              }

              ++v28;
            }

            while (v26 != v28);
            v26 = [v24 countByEnumeratingWithState:&v55 objects:v66 count:16];
          }

          while (v26);
        }

        v64 = @"HMDTargetAccessoriesUUIDKey";
        v65 = v23;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v41 = [v40 mutableCopy];

        v42 = [(HMDTargetControllerManager *)self __refreshedConfiguration:0];
        [v41 addEntriesFromDictionary:v42];

        v43 = [MEMORY[0x277CCAB98] defaultCenter];
        v5 = v49;
        [v43 postNotificationName:@"HMDTargetAccessoryConfiguredNotificationKey" object:v49 userInfo:v41];

        v44 = [(HMDTargetControllerManager *)self workQueue];
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __42__HMDTargetControllerManager__addTargets___block_invoke;
        v52[3] = &unk_279734D88;
        v52[4] = self;
        v53 = v46;
        v6 = v48;
        v54 = v48;
        v7 = v47;
        [v49 writeValue:v47 toCharacteristic:v54 queue:v44 source:1200 completion:v52];

        v4 = v50;
        v8 = 0;
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v69 = v16;
        v70 = 2112;
        v71 = v4;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to look up target list characteristic for adding targets %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

void __42__HMDTargetControllerManager__addTargets___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v20 = 138543874;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Failed to write request for adding targets %@ - error %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v9 = [*(a1 + 48) value];
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

    v12 = _parseTargetList(v11);
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = *(a1 + 40);
      v18 = [*(a1 + 32) configuredTargets];
      v20 = 138544130;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Successfully added targets %@ configuredTargets %@ - response %@", &v20, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_postSelectionChangeNotification:(BOOL)a3 object:(id)a4 userInfo:(id)a5
{
  if (a3)
  {
    v6 = @"HMDTargetControlServiceSelectedNotificationKey";
  }

  else
  {
    v6 = @"HMDTargetControlServiceDeselectedNotificationKey";
  }

  v7 = MEMORY[0x277CCAB98];
  v8 = a5;
  v9 = a4;
  v10 = [v7 defaultCenter];
  [v10 postNotificationName:v6 object:v9 userInfo:v8];
}

- (id)_dataForAddTargets:(id)a3 outError:(id *)a4
{
  v79 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v38 = self;
  v7 = [(HMDTargetControllerManager *)self buttonConfiguration];
  targetConfigurationTLVSize(v6, v7);

  memset(v68, 0, sizeof(v68));
  TLV8BufferInit();
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  TLV8BufferInit();
  v43 = 2;
  if (TLV8BufferAppend())
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v9 = v6;
    v36 = [v9 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v36)
    {
      v37 = *v40;
      v31 = v6;
      v32 = a4;
      while (2)
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v40 != v37)
          {
            objc_enumerationMutation(v9);
          }

          v11 = *(*(&v39 + 1) + 8 * i);
          v12 = [(HMDTargetControllerManager *)v38 buttonConfiguration:v31];
          v13 = v11;
          v14 = v12;
          v15 = [v13 identifier];
          v16 = [v15 unsignedIntegerValue];

          v45 = v16;
          if (TLV8BufferAppend() || ([v13 name], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "UTF8String"), v17, v18) && (strlen(v18), TLV8BufferAppend()) || (v44 = objc_msgSend(v13, "category"), TLV8BufferAppend()))
          {
            v19 = 0;
LABEL_22:

            v8 = 0;
            v28 = 0;
            v6 = v31;
            a4 = v32;
            goto LABEL_23;
          }

          v19 = [v13 buttonConfiguration];
          if (![v19 count])
          {
            v20 = v14;

            v19 = v20;
          }

          if (__addButtonConfigurationTLV(v68, v19))
          {
            goto LABEL_22;
          }

          v21 = objc_autoreleasePoolPush();
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = HMFGetLogIdentifier();
            v35 = v14;
            v24 = v9;
            v25 = v45;
            v33 = v44;
            v26 = [v13 buttonConfiguration];
            buttonConfigurationAsString(v26);
            v27 = v34 = v21;
            *buf = 138544386;
            v70 = v23;
            v71 = 2048;
            v72 = v25;
            v9 = v24;
            v14 = v35;
            v73 = 2080;
            v74 = v18;
            v75 = 2048;
            v76 = v33;
            v77 = 2112;
            v78 = v27;
            _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Adding TLVs for add target operation - identifier %lu  name %s  category %lu  buttonConfiguration: %@", buf, 0x34u);

            v21 = v34;
          }

          objc_autoreleasePoolPop(v21);
        }

        v6 = v31;
        a4 = v32;
        v36 = [v9 countByEnumeratingWithState:&v39 objects:v46 count:16];
        if (v36)
        {
          continue;
        }

        break;
      }
    }

    v9 = [MEMORY[0x277CBEA90] dataWithBytes:v68[0] length:?];
    [v9 bytes];
    [v9 length];
    if (TLV8BufferAppend())
    {
      v8 = 0;
    }

    else
    {
      v28 = [MEMORY[0x277CBEA90] dataWithBytes:v47 length:?];
      v8 = 1;
LABEL_23:

      v9 = v28;
    }
  }

  TLV8BufferFree();
  TLV8BufferFree();
  if ((v8 & 1) == 0)
  {

    v9 = 0;
  }

  if (a4 && !v9)
  {
    *a4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)updateTargetAccessory:(id)a3 name:(id)a4 buttonConfiguration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDTargetControllerManager *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__HMDTargetControllerManager_updateTargetAccessory_name_buttonConfiguration___block_invoke;
  v15[3] = &unk_279734870;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __77__HMDTargetControllerManager_updateTargetAccessory_name_buttonConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) targetConfigurationMatchingAccessory:*(a1 + 40)];
  [*(a1 + 32) _updateName:*(a1 + 48) buttonConfiguration:*(a1 + 56) target:v2];
}

- (void)_updateName:(id)a3 buttonConfiguration:(id)a4 target:(id)a5
{
  v76 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (v8 || [v9 count])
    {
      v11 = [(HMDTargetControllerManager *)self controller];
      v12 = [v11 findCharacteristicType:*MEMORY[0x277CCFB38] forServiceType:*MEMORY[0x277CD0F18]];
      if (v12)
      {
        v55 = 0;
        v13 = [(HMDTargetControllerManager *)self _dataForUpdateTarget:v10 name:v8 buttonConfiguration:v9 outError:&v55];
        v14 = v55;
        if (v14)
        {
          context = objc_autoreleasePoolPush();
          v15 = self;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v17 = v43 = v12;
            [v10 name];
            v18 = v40 = v14;
            [v10 identifier];
            v19 = v44 = v11;
            buttonConfigurationAsString(v9);
            v20 = v41 = v13;
            *buf = 138544386;
            *&buf[4] = v17;
            *&buf[12] = 2112;
            *&buf[14] = v18;
            *&buf[22] = 2112;
            *&buf[24] = v19;
            *&buf[32] = 2112;
            *&buf[34] = v8;
            *&buf[42] = 2112;
            *&buf[44] = v20;
            _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Failed to serialize request for updating %@/%@ with name %@  buttonConfiguration %@", buf, 0x34u);

            v11 = v44;
            v14 = v40;

            v13 = v41;
            v12 = v43;
          }

          objc_autoreleasePoolPop(context);
        }

        else if ([v13 length])
        {
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v59 = 0u;
          memset(buf, 0, sizeof(buf));
          buttonConfigurationTLVSize(v9);
          TLV8BufferInit();
          v54 = 5;
          if (TLV8BufferAppend() || ([v13 bytes], objc_msgSend(v13, "length"), TLV8BufferAppend()))
          {
            TLV8BufferFree();
          }

          else
          {
            v42 = v13;
            v34 = v12;
            contexta = [MEMORY[0x277CBEA90] dataWithBytes:*buf length:*&buf[8]];
            TLV8BufferFree();
            v35 = objc_autoreleasePoolPush();
            v36 = self;
            v37 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v38 = HMFGetLogIdentifier();
              *v56 = 138543362;
              v57 = v38;
              _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Update target name or button configuration", v56, 0xCu);

              v14 = 0;
            }

            objc_autoreleasePoolPop(v35);
            v39 = [(HMDTargetControllerManager *)v36 workQueue];
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __69__HMDTargetControllerManager__updateName_buttonConfiguration_target___block_invoke;
            v49[3] = &unk_279727688;
            v49[4] = v36;
            v50 = v10;
            v51 = v8;
            v52 = v9;
            v53 = v34;
            [v11 writeValue:contexta toCharacteristic:v53 queue:v39 source:1200 completion:v49];

            v12 = v34;
            v13 = v42;
          }
        }
      }

      else
      {
        v26 = objc_autoreleasePoolPush();
        v27 = self;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          v30 = [v10 name];
          [v10 identifier];
          v31 = contextb = v26;
          buttonConfigurationAsString(v9);
          v32 = v45 = v11;
          *buf = 138544386;
          *&buf[4] = v29;
          *&buf[12] = 2112;
          *&buf[14] = v30;
          *&buf[22] = 2112;
          *&buf[24] = v31;
          *&buf[32] = 2112;
          *&buf[34] = v8;
          *&buf[42] = 2112;
          *&buf[44] = v32;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Failed to look up target list characteristic for updating %@/%@ with name %@  buttonConfiguration %@", buf, 0x34u);

          v26 = contextb;
          v11 = v45;

          v12 = 0;
        }

        objc_autoreleasePoolPop(v26);
      }
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = buttonConfigurationAsString(v9);
      *buf = 138543874;
      *&buf[4] = v24;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      *&buf[22] = 2112;
      *&buf[24] = v25;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Request to update name %@  buttonConfiguration %@ for a nil target", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __69__HMDTargetControllerManager__updateName_buttonConfiguration_target___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) name];
      v9 = [*(a1 + 40) identifier];
      v10 = *(a1 + 48);
      v11 = buttonConfigurationAsString(*(a1 + 56));
      *buf = 138544386;
      v29 = v7;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v9;
      v34 = 2112;
      v35 = v10;
      v36 = 2112;
      v37 = v11;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Failed to write request for updating %@/%@ with name %@  buttonConfiguration %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v12 = [*(a1 + 64) value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v15 = _parseTargetList(v14);
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 40) name];
      v21 = [*(a1 + 40) identifier];
      v27 = v14;
      v22 = v15;
      v23 = v16;
      v24 = *(a1 + 48);
      v25 = buttonConfigurationAsString(*(a1 + 56));
      *buf = 138544642;
      v29 = v19;
      v30 = 2112;
      v31 = v20;
      v32 = 2112;
      v33 = v21;
      v34 = 2112;
      v35 = v24;
      v16 = v23;
      v15 = v22;
      v14 = v27;
      v36 = 2112;
      v37 = v25;
      v38 = 2112;
      v39 = v15;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Successfully updated %@/%@ with name %@  buttonConfiguration %@ - response %@", buf, 0x3Eu);
    }

    objc_autoreleasePoolPop(v16);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)_dataForUpdateTarget:(id)a3 name:(id)a4 buttonConfiguration:(id)a5 outError:(id *)a6
{
  v54 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v11 || [v12 count])
  {
    v37 = v11;
    v14 = v13;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v15 = [(HMDTargetControllerManager *)self configuredTargets];
    v16 = [v15 countByEnumeratingWithState:&v39 objects:v53 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v40;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v39 + 1) + 8 * i);
          v21 = [v10 identifier];
          v22 = [v20 identifier];
          v23 = [v21 isEqual:v22];

          if (v23)
          {

            memset(v52, 0, sizeof(v52));
            v51 = v10;
            v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
            v13 = v14;
            targetConfigurationTLVSize(v25, v14);

            TLV8BufferInit();
            v26 = [v10 identifier];
            v27 = [v26 unsignedIntegerValue];

            v38 = v27;
            if (TLV8BufferAppend())
            {
              v24 = 0;
              v11 = v37;
            }

            else
            {
              v11 = v37;
              v28 = [v37 UTF8String];
              if (v37 && (strlen(v28), TLV8BufferAppend()) || v13 && __addButtonConfigurationTLV(v52, v13))
              {
                v24 = 0;
              }

              else
              {
                v29 = objc_autoreleasePoolPush();
                v30 = v36;
                v31 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                {
                  v32 = HMFGetLogIdentifier();
                  v33 = buttonConfigurationAsString(v13);
                  *buf = 138544130;
                  v44 = v32;
                  v45 = 2048;
                  v46 = v38;
                  v47 = 2112;
                  v48 = v37;
                  v49 = 2112;
                  v50 = v33;
                  _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Encoding for update target - identifier %lu  updatedName %@  buttonConfiguration: %@", buf, 0x2Au);
                }

                objc_autoreleasePoolPop(v29);
                v24 = [MEMORY[0x277CBEA90] dataWithBytes:v52[0] length:?];
              }
            }

            TLV8BufferFree();
            if (a6 && !v24)
            {
              *a6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
            }

            goto LABEL_30;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v39 objects:v53 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    if (a6)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      *a6 = v24 = 0;
    }

    else
    {
      v24 = 0;
    }

    v13 = v14;
    v11 = v37;
  }

  else if (a6)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    *a6 = v24 = 0;
  }

  else
  {
    v24 = 0;
  }

LABEL_30:

  v34 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)updateButtonConfigurationForTarget:(id)a3
{
  v4 = a3;
  v5 = [(HMDTargetControllerManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDTargetControllerManager_updateButtonConfigurationForTarget___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __65__HMDTargetControllerManager_updateButtonConfigurationForTarget___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(a1 + 32) configuredTargets];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [*(a1 + 40) identifier];
        v9 = [v7 identifier];
        v10 = [v8 isEqual:v9];

        if (v10)
        {
          v11 = [*(a1 + 40) buttonConfiguration];
          [v7 setButtonConfiguration:v11];

          v12 = objc_autoreleasePoolPush();
          v13 = *(a1 + 32);
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            *buf = 138543618;
            v22 = v15;
            v23 = 2112;
            v24 = v7;
            _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Updated the button configuration for target %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v12);
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_auditTargets:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDTargetControllerManager *)self configuredTargets];
  v6 = [v5 copy];

  v48 = [MEMORY[0x277CBEB98] setWithArray:v4];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543874;
    v67 = v10;
    v68 = 2112;
    v69 = v4;
    v70 = 2112;
    v71 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Read targets %@, Configured targets %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v47 = v6;
  v11 = [v6 mutableCopy];
  [v11 intersectSet:v48];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v60;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v60 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v59 + 1) + 8 * i);
        v17 = [v4 objectAtIndex:{objc_msgSend(v4, "indexOfObject:", v16)}];
        v18 = [v16 name];
        v19 = [v17 name];
        v20 = HMFEqualObjects();

        if ((v20 & 1) == 0)
        {
          v21 = [v16 name];
          [(HMDTargetControllerManager *)v8 _updateName:v21 buttonConfiguration:0 target:v16];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
    }

    while (v13);
  }

  v22 = [v47 mutableCopy];
  [v22 minusSet:v48];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v49 = v22;
  v23 = [v49 countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v56;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v56 != v25)
        {
          objc_enumerationMutation(v49);
        }

        v27 = *(*(&v55 + 1) + 8 * j);
        v28 = objc_autoreleasePoolPush();
        v29 = v8;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543618;
          v67 = v31;
          v68 = 2112;
          v69 = v27;
          _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Target %@ not present in controller's target list - adding...", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v28);
      }

      v24 = [v49 countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v24);
  }

  v46 = v4;

  v32 = [v49 allObjects];
  [(HMDTargetControllerManager *)v8 _addTargets:v32];

  v33 = [v48 mutableCopy];
  [v33 minusSet:v47];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v34 = v33;
  v35 = [v34 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v52;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v52 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v51 + 1) + 8 * k);
        v40 = objc_autoreleasePoolPush();
        v41 = v8;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543618;
          v67 = v43;
          v68 = 2112;
          v69 = v39;
          _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Target %@ present in controller's target list - removing...", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v40);
      }

      v36 = [v34 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v36);
  }

  v44 = [v34 allObjects];
  [(HMDTargetControllerManager *)v8 _removeTargets:v44];

  v45 = *MEMORY[0x277D85DE8];
}

- (void)_listTargetsWithCompletionHandler:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDTargetControllerManager *)self controller];
  v6 = [v5 findCharacteristicType:*MEMORY[0x277CCFB38] forServiceType:*MEMORY[0x277CD0F18]];
  if (v6)
  {
    v26 = 0;
    v7 = [(HMDTargetControllerManager *)self _dataForListTargetsWithOutError:&v26];
    v8 = v26;
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
    if (v8)
    {
      if (v12)
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v28 = v13;
        v29 = 2112;
        v30 = v8;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Unable to generate serialized data for listing targets - error %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      if (v4)
      {
        v4[2](v4, v8, 0);
      }
    }

    else
    {
      if (v12)
      {
        v18 = HMFGetLogIdentifier();
        v19 = [v6 description];
        *buf = 138543618;
        v28 = v18;
        v29 = 2112;
        v30 = v19;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@write target list characteristic %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      objc_initWeak(buf, v10);
      v20 = [(HMDTargetControllerManager *)v10 workQueue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __64__HMDTargetControllerManager__listTargetsWithCompletionHandler___block_invoke;
      v22[3] = &unk_2797346E0;
      objc_copyWeak(&v25, buf);
      v24 = v4;
      v23 = v6;
      [v5 writeValue:v7 toCharacteristic:v23 queue:v20 source:1200 completion:v22];

      objc_destroyWeak(&v25);
      objc_destroyWeak(buf);
    }

    goto LABEL_15;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v17;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@No Target List characteristic to audit configured target accessories - skipping", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  if (v4)
  {
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v4[2](v4, v8, 0);
LABEL_15:
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __64__HMDTargetControllerManager__listTargetsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = WeakRetained == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (v12)
    {
      (*(v4 + 16))(v4, v12, 0);
    }

    else
    {
      v6 = [*(a1 + 32) value];
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

      v9 = _parseTargetList(v8);

      v10 = 0;
      v11 = *(a1 + 40);
      if (v11)
      {
        (*(v11 + 16))(v11, v10, v9);
      }
    }
  }
}

- (id)_dataForListTargetsWithOutError:(id *)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  TLV8BufferInit();
  if (TLV8BufferAppend())
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v13 = v9;
      v14 = 2048;
      v15 = 1;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Encoding for list target - operation %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:?];
  }

  TLV8BufferFree();
  if (a3 && !v5)
  {
    *a3 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_refreshConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_group_create();
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__54005;
  v26[4] = __Block_byref_object_dispose__54006;
  v27 = 0;
  dispatch_group_enter(v5);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __66__HMDTargetControllerManager__refreshConfigurationWithCompletion___block_invoke;
  v23[3] = &unk_27972C6F8;
  v25 = v26;
  v6 = v5;
  v24 = v6;
  [(HMDTargetControllerManager *)self _readSupportedConfigurationWithCompletion:v23];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__54005;
  v21[4] = __Block_byref_object_dispose__54006;
  v22 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__54005;
  v19[4] = __Block_byref_object_dispose__54006;
  v20 = 0;
  dispatch_group_enter(v6);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__HMDTargetControllerManager__refreshConfigurationWithCompletion___block_invoke_2;
  v15[3] = &unk_279727638;
  v17 = v21;
  v18 = v19;
  v7 = v6;
  v16 = v7;
  [(HMDTargetControllerManager *)self _listTargetsWithCompletionHandler:v15];
  v8 = [(HMDTargetControllerManager *)self workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HMDTargetControllerManager__refreshConfigurationWithCompletion___block_invoke_3;
  v10[3] = &unk_279727660;
  v10[4] = self;
  v11 = v4;
  v12 = v19;
  v13 = v26;
  v14 = v21;
  v9 = v4;
  dispatch_group_notify(v7, v8, v10);

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);

  _Block_object_dispose(v26, 8);
}

void __66__HMDTargetControllerManager__refreshConfigurationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __66__HMDTargetControllerManager__refreshConfigurationWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __66__HMDTargetControllerManager__refreshConfigurationWithCompletion___block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) maximumTargets];
    v7 = [*(a1 + 32) ticksPerSecond];
    v8 = [*(a1 + 32) buttonConfiguration];
    v9 = buttonConfigurationAsString(v8);
    v13 = 138544130;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying supported configuration: Maximum Targets: %lu  Ticks Per Second: %lu  Buttons: %@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _notifyConfigurationRefresh:*(*(*(a1 + 48) + 8) + 40)];
  result = *(a1 + 40);
  if (result)
  {
    v11 = *(*(*(a1 + 56) + 8) + 40);
    if (!v11)
    {
      v11 = *(*(*(a1 + 64) + 8) + 40);
    }

    result = (*(result + 16))(result, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_readSupportedConfigurationWithCompletion:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDTargetControllerManager *)self controller];
  v6 = [v5 findCharacteristicType:*MEMORY[0x277CCFAE8] forServiceType:*MEMORY[0x277CD0F18]];
  if (v6)
  {
    v7 = [HMDCharacteristicRequest requestWithCharacteristic:v6];
    v27[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];

    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v12;
      v25 = 2048;
      v26 = [v8 count];
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Read supported configuration. size: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    objc_initWeak(buf, v10);
    v13 = [(HMDTargetControllerManager *)v10 workQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __72__HMDTargetControllerManager__readSupportedConfigurationWithCompletion___block_invoke;
    v19[3] = &unk_279727610;
    objc_copyWeak(&v22, buf);
    v21 = v4;
    v20 = v6;
    [v5 readCharacteristicValues:v8 source:1200 queue:v13 completionHandler:v19];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
    goto LABEL_9;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v17;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@No Supported target Configuration characteristic to refresh the configuration for the controller", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  if (v4)
  {
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(v4 + 2))(v4, v8);
LABEL_9:
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __72__HMDTargetControllerManager__readSupportedConfigurationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([v3 count])
    {
      v5 = [v3 firstObject];
      v6 = [v5 request];
      v7 = [v6 characteristic];

      v8 = [v5 error];

      if (v8)
      {
        v9 = objc_autoreleasePoolPush();
        v10 = WeakRetained;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          v13 = [v5 error];
          *buf = 138543874;
          v55 = v12;
          v56 = 2112;
          v57 = v13;
          v58 = 2112;
          v59 = v7;
          _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Error %@ response for reading characteristic %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v9);
        v14 = *(a1 + 40);
        if (!v14)
        {
          goto LABEL_40;
        }

        v15 = [v5 error];
        (*(v14 + 16))(v14, v15);
      }

      else
      {
        v26 = [v7 type];
        v27 = [v26 isEqualToString:*MEMORY[0x277CCFAE8]];

        if (v27)
        {
          v28 = [v7 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = v28;
          }

          else
          {
            v29 = 0;
          }

          v30 = v29;

          v31 = [WeakRetained _parseSupportedTargetConfiguration:v30];
          v32 = objc_autoreleasePoolPush();
          v33 = WeakRetained;
          v34 = HMFGetOSLogHandle();
          v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
          if (v31)
          {
            if (v31 == -6727)
            {
              if (v35)
              {
                v36 = HMFGetLogIdentifier();
                *buf = 138543362;
                v55 = v36;
                _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@No data to parse for supported configuration", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v32);
              v37 = MEMORY[0x277CCA9B8];
              v38 = 74;
            }

            else
            {
              if (v35)
              {
                HMFGetLogIdentifier();
                v46 = v53 = v32;
                *buf = 138543618;
                v55 = v46;
                v56 = 2048;
                v57 = v31;
                _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Parsing supported configuration data failed with error %lu", buf, 0x16u);

                v32 = v53;
              }

              objc_autoreleasePoolPop(v32);
              v37 = MEMORY[0x277CCA9B8];
              v38 = 50;
            }

            v15 = [v37 hmErrorWithCode:v38];
          }

          else
          {
            if (v35)
            {
              v50 = HMFGetLogIdentifier();
              v52 = v32;
              v44 = [v33 maximumTargets];
              v49 = [v33 ticksPerSecond];
              v51 = [v33 buttonConfiguration];
              buttonConfigurationAsString(v51);
              *buf = 138544130;
              v55 = v50;
              v56 = 2048;
              v57 = v44;
              v32 = v52;
              v58 = 2048;
              v59 = v49;
              v61 = v60 = 2112;
              v45 = v61;
              _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Refreshed supported configuration: Maximum Targets: %lu  Ticks Per Second: %lu  Buttons: %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v32);
            v15 = 0;
          }
        }

        else
        {
          v39 = objc_autoreleasePoolPush();
          v40 = WeakRetained;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = HMFGetLogIdentifier();
            v43 = *(a1 + 32);
            *buf = 138543874;
            v55 = v42;
            v56 = 2112;
            v57 = v43;
            v58 = 2112;
            v59 = v7;
            _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@Got unexpected response - attempting to read %@, got %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v39);
          v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:74];
        }

        v47 = *(a1 + 40);
        if (v47)
        {
          (*(v47 + 16))(v47, v15);
        }
      }

LABEL_40:
      goto LABEL_41;
    }

    v22 = objc_autoreleasePoolPush();
    v23 = WeakRetained;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v55 = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@No responses refreshing controller configuration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v19 = *(a1 + 40);
    if (v19)
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = 59;
      goto LABEL_16;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v55 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Accessory not found for reading supported target configuration characteristic", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v19 = *(a1 + 40);
    if (v19)
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = 2;
LABEL_16:
      v5 = [v20 hmErrorWithCode:v21];
      (*(v19 + 16))(v19, v5);
LABEL_41:
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (void)refreshConfigurationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMDTargetControllerManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDTargetControllerManager_refreshConfigurationWithCompletion___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_notifyConfigurationRefresh:(id)a3
{
  v4 = a3;
  [(HMDTargetControllerManager *)self _auditTargets:v4];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v5 = [(HMDTargetControllerManager *)self controller];
  v6 = [(HMDTargetControllerManager *)self __refreshedConfiguration:v4];

  [v7 postNotificationName:@"HMDTargetControllerAccessoryConfigurationUpdatedNotificationKey" object:v5 userInfo:v6];
}

- (id)__refreshedConfiguration:(id)a3
{
  v21[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDTargetControllerManager *)self configurationRefreshed])
  {
    if (v4)
    {
      v20[0] = @"ticksPerSecond";
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDTargetControllerManager ticksPerSecond](self, "ticksPerSecond")}];
      v21[0] = v5;
      v20[1] = @"buttonConfiguration";
      v6 = [(HMDTargetControllerManager *)self buttonConfiguration];
      v7 = v6;
      v8 = MEMORY[0x277CBEBF8];
      if (v6)
      {
        v8 = v6;
      }

      v20[2] = @"targetConfiguration";
      v21[1] = v8;
      v21[2] = v4;
      v9 = MEMORY[0x277CBEAC0];
      v10 = v21;
      v11 = v20;
      v12 = 3;
    }

    else
    {
      v18[0] = @"ticksPerSecond";
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDTargetControllerManager ticksPerSecond](self, "ticksPerSecond")}];
      v18[1] = @"buttonConfiguration";
      v19[0] = v5;
      v14 = [(HMDTargetControllerManager *)self buttonConfiguration];
      v7 = v14;
      v15 = MEMORY[0x277CBEBF8];
      if (v14)
      {
        v15 = v14;
      }

      v19[1] = v15;
      v9 = MEMORY[0x277CBEAC0];
      v10 = v19;
      v11 = v18;
      v12 = 2;
    }

    v13 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:v12];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (int)_parseSupportedTargetConfiguration:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [v4 bytes];
    [v4 length];
      ;
    }

    [(HMDTargetControllerManager *)self setMaximumTargets:16];
    [(HMDTargetControllerManager *)self setTicksPerSecond:1000];
    [(HMDTargetControllerManager *)self setButtonConfiguration:0];
    v6 = [(HMDTargetControllerManager *)self controller];
    [v6 saveHardwareSupport:0];

    [(HMDTargetControllerManager *)self setConfigurationRefreshed:1];
    v5 = 0;
  }

  else
  {
    v5 = -6727;
  }

  return v5;
}

- (void)__accessoryRemoved:(id)a3
{
  v4 = a3;
  v5 = [(HMDTargetControllerManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HMDTargetControllerManager___accessoryRemoved___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __49__HMDTargetControllerManager___accessoryRemoved___block_invoke(uint64_t a1)
{
  v81 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:@"HMDAccessoryNotificationKey"];

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

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 40);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 name];
    v11 = [v5 uuid];
    v12 = [v11 UUIDString];
    *buf = 138543874;
    v72 = v9;
    v73 = 2112;
    v74 = v10;
    v75 = 2112;
    v76 = v12;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received notification that an accessory %@/%@ has been removed from the home", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v13 = [*(a1 + 40) controller];
  v14 = [v13 uuid];
  v15 = [v5 uuid];
  v16 = [v14 isEqual:v15];

  if (v16)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 40);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v72 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Received notification that controller has been removed from the home - invalidating...", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    [*(a1 + 40) invalidate];
  }

  else if ([v5 supportsTargetControl])
  {
    v21 = [v13 home];
    if (v21)
    {
      v59 = v13;
      v22 = [v5 uuid];
      v62 = v21;
      v23 = [v21 uuid];
      v24 = identifierForTargetWithUUID(v22, v23);

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = [*(a1 + 40) configuredTargets];
      v25 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v66;
        while (2)
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v66 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v65 + 1) + 8 * i);
            v30 = [v29 identifier];
            v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24];
            v32 = [v30 isEqual:v31];

            if (v32)
            {
              v40 = objc_autoreleasePoolPush();
              v41 = *(a1 + 40);
              v42 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                v43 = HMFGetLogIdentifier();
                v44 = [v5 name];
                v45 = [v5 uuid];
                v46 = [v45 UUIDString];
                *buf = 138543874;
                v72 = v43;
                v73 = 2112;
                v74 = v44;
                v75 = 2112;
                v76 = v46;
                _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Received notification that target accessory %@/%@ has been removed", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v40);
              v47 = *(a1 + 40);
              v69 = v29;
              v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
              [v47 _removeTargets:v48];

              [*(a1 + 40) _saveTargetUUIDs];
              goto LABEL_27;
            }
          }

          v26 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }
      }

LABEL_27:

      v13 = v59;
      v21 = v62;
    }

    else
    {
      v49 = objc_autoreleasePoolPush();
      v50 = *(a1 + 40);
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v60 = HMFGetLogIdentifier();
        v52 = [v5 name];
        v61 = [v5 uuid];
        v53 = [v61 UUIDString];
        [v13 name];
        v54 = obja = v49;
        v55 = [v13 uuid];
        v56 = [v55 UUIDString];
        *buf = 138544386;
        v72 = v60;
        v73 = 2112;
        v74 = v52;
        v75 = 2112;
        v76 = v53;
        v77 = 2112;
        v78 = v54;
        v79 = 2112;
        v80 = v56;
        v57 = v56;
        _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_ERROR, "%{public}@Attempting to process accessory %@/%@ removal for a controller %@/%@ that is not configured with a home", buf, 0x34u);

        v49 = obja;
      }

      objc_autoreleasePoolPop(v49);
    }
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = *(a1 + 40);
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      v37 = [v5 name];
      v38 = [v5 uuid];
      v39 = [v38 UUIDString];
      *buf = 138543874;
      v72 = v36;
      v73 = 2112;
      v74 = v37;
      v75 = 2112;
      v76 = v39;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Removed accessory %@/%@ does not support target control - ignoring", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v33);
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (void)__accessoryNameUpdated:(id)a3
{
  v4 = a3;
  v5 = [(HMDTargetControllerManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HMDTargetControllerManager___accessoryNameUpdated___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __53__HMDTargetControllerManager___accessoryNameUpdated___block_invoke(uint64_t a1)
{
  v77 = *MEMORY[0x277D85DE8];
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

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    v10 = [v4 uuid];
    v11 = [v10 UUIDString];
    *buf = 138543874;
    v69 = v8;
    v70 = 2112;
    v71 = v9;
    v72 = 2112;
    v73 = v11;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received notification that the name of an accessory %@/%@ has been updated", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if ([v4 supportsTargetControl])
  {
    v12 = [*(a1 + 40) controller];
    v13 = [v12 home];

    if (v13)
    {
      v14 = [v4 uuid];
      v62 = v13;
      v15 = [v13 uuid];
      v16 = identifierForTargetWithUUID(v14, v15);

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v17 = [*(a1 + 40) configuredTargets];
      v18 = [v17 countByEnumeratingWithState:&v64 objects:v76 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v65;
        v61 = a1;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v65 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v64 + 1) + 8 * i);
            v23 = [v22 identifier];
            v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
            v25 = [v23 isEqual:v24];

            if (v25)
            {
              v26 = objc_autoreleasePoolPush();
              v27 = v61;
              v28 = *(v61 + 40);
              v29 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v30 = HMFGetLogIdentifier();
                v31 = [v4 uuid];
                v32 = [v31 UUIDString];
                [v4 name];
                v34 = v33 = v26;
                *buf = 138543874;
                v69 = v30;
                v70 = 2112;
                v71 = v32;
                v72 = 2112;
                v73 = v34;
                _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Received notification that the name of target accessory %@ has been updated to %@", buf, 0x20u);

                v26 = v33;
                v27 = v61;
              }

              objc_autoreleasePoolPop(v26);
              v35 = [v22 name];
              v36 = [v4 name];
              v37 = HMFEqualObjects();

              if ((v37 & 1) == 0)
              {
                v38 = objc_autoreleasePoolPush();
                v39 = *(v27 + 40);
                v40 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  v58 = HMFGetLogIdentifier();
                  v41 = [v22 name];
                  v59 = [v4 uuid];
                  v60 = v38;
                  v42 = [v59 UUIDString];
                  v43 = [v4 name];
                  *buf = 138544130;
                  v69 = v58;
                  v70 = 2112;
                  v71 = v41;
                  v72 = 2112;
                  v73 = v42;
                  v44 = v42;
                  v74 = 2112;
                  v75 = v43;
                  _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Updating the name of target accessory %@/%@ to %@", buf, 0x2Au);

                  v38 = v60;
                }

                objc_autoreleasePoolPop(v38);
                v45 = [v4 name];
                [v22 setName:v45];

                v46 = *(v27 + 40);
                v47 = [v4 name];
                [v46 _updateName:v47 buttonConfiguration:0 target:v22];
              }

              goto LABEL_23;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v64 objects:v76 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

LABEL_23:

      v13 = v62;
    }

    else
    {
      v48 = objc_autoreleasePoolPush();
      v49 = *(a1 + 40);
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v51 = HMFGetLogIdentifier();
        v52 = [*(a1 + 40) controller];
        v53 = [v52 name];
        v54 = [*(a1 + 40) controller];
        v55 = [v54 uuid];
        [v55 UUIDString];
        v56 = v63 = v48;
        *buf = 138543874;
        v69 = v51;
        v70 = 2112;
        v71 = v53;
        v72 = 2112;
        v73 = v56;
        _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_ERROR, "%{public}@Attempting to process accessory name update with a controller %@/%@ that is not configured with a home", buf, 0x20u);

        v48 = v63;
      }

      objc_autoreleasePoolPop(v48);
    }
  }

  v57 = *MEMORY[0x277D85DE8];
}

- (void)__accessoryConnected:(id)a3
{
  v4 = a3;
  v5 = [(HMDTargetControllerManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMDTargetControllerManager___accessoryConnected___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __51__HMDTargetControllerManager___accessoryConnected___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
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

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    v10 = [v4 uuid];
    v11 = [v10 UUIDString];
    *buf = 138543874;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    v31 = 2112;
    v32 = v11;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Connected to accessory %@/%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v12 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    v15 = [*(a1 + 40) controller];
    v16 = [v15 uuid];
    v17 = [v14 uuid];
    v18 = [v16 isEqual:v17];

    if (v18)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 40);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Connected to controller - refreshing the supported target configuration and auditing the list of targets", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      objc_initWeak(buf, *(a1 + 40));
      v23 = *(a1 + 40);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __51__HMDTargetControllerManager___accessoryConnected___block_invoke_59;
      v25[3] = &unk_279734708;
      objc_copyWeak(&v26, buf);
      [v23 _refreshConfigurationWithCompletion:v25];
      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __51__HMDTargetControllerManager___accessoryConnected___block_invoke_59(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Failed to refresh the supported target configuration - error %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)__accessoryDisconnected:(id)a3
{
  v4 = a3;
  v5 = [(HMDTargetControllerManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMDTargetControllerManager___accessoryDisconnected___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __54__HMDTargetControllerManager___accessoryDisconnected___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
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

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    v10 = [v4 uuid];
    v11 = [v10 UUIDString];
    v24 = 138543874;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v11;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Disconnected from accessory %@/%@", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v12 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    v15 = [*(a1 + 40) controller];
    v16 = [v15 uuid];
    v17 = [v14 uuid];
    v18 = [v16 isEqual:v17];

    if (v18)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 40);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v24 = 138543362;
        v25 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Disconnected from controller - marking configuation as stale", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      [*(a1 + 40) setConfigurationRefreshed:0];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)setButtonConfiguration:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  buttonConfiguration = self->_buttonConfiguration;
  self->_buttonConfiguration = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)buttonConfiguration
{
  os_unfair_lock_lock_with_options();
  v3 = self->_buttonConfiguration;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setTicksPerSecond:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_ticksPerSecond = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)ticksPerSecond
{
  os_unfair_lock_lock_with_options();
  ticksPerSecond = self->_ticksPerSecond;
  os_unfair_lock_unlock(&self->_lock);
  return ticksPerSecond;
}

- (NSArray)targetUUIDs
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [(HMDTargetControllerManager *)self configuredTargets];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v26;
    *&v5 = 138543874;
    v22 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [v9 uuid];

        if (v10)
        {
          v11 = [v9 uuid];
          v12 = [v11 UUIDString];
          [v3 addObject:v12];
        }

        else
        {
          v13 = objc_autoreleasePoolPush();
          v14 = self;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = HMFGetLogIdentifier();
            v17 = [v9 name];
            v18 = [v9 identifier];
            *buf = v22;
            v30 = v16;
            v31 = 2112;
            v32 = v17;
            v33 = 2112;
            v34 = v18;
            _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Target %@/%@ does not have a UUID", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v13);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v6);
  }

  v19 = [v3 copy];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)resetConfiguredTargets
{
  os_unfair_lock_lock_with_options();
  [(NSMutableSet *)self->_configuredTargets removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeConfiguredTarget:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableSet *)self->_configuredTargets removeObject:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)addConfiguredTarget:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableSet *)self->_configuredTargets addObject:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (NSMutableSet)configuredTargets
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_configuredTargets copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)invalidate
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Invalidating target controller manager", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (HMDTargetControllerManager)initWithTargetControllerAccessory:(id)a3 targets:(id)a4
{
  v90 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v78.receiver = self;
  v78.super_class = HMDTargetControllerManager;
  v8 = [(HMDTargetControllerManager *)&v78 init];
  if (!v8)
  {
    goto LABEL_25;
  }

  v9 = HMDispatchQueueNameString();
  v10 = [v9 UTF8String];
  dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = v69 = v8;
  v12 = dispatch_queue_create(v10, v11);
  workQueue = v69->_workQueue;
  v69->_workQueue = v12;

  p_isa = &v69->super.super.isa;
  objc_storeWeak(&v69->_controller, v6);
  v69->_configurationRefreshed = 0;
  v69->_maximumTargets = 16;
  v69->_ticksPerSecond = 1000;
  buttonConfiguration = v69->_buttonConfiguration;
  v69->_buttonConfiguration = MEMORY[0x277CBEBF8];

  v16 = [MEMORY[0x277CBEB58] set];
  configuredTargets = v69->_configuredTargets;
  v69->_configuredTargets = v16;

  v18 = 0x277CCA000;
  v68 = v6;
  if (![v7 count])
  {
    goto LABEL_22;
  }

  v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v64 = v7;
  v20 = v7;
  v21 = v19;
  obj = v20;
  v73 = [v20 countByEnumeratingWithState:&v74 objects:v89 count:16];
  if (!v73)
  {
    goto LABEL_21;
  }

  v72 = *v75;
  v70 = v19;
  do
  {
    v22 = 0;
    do
    {
      if (*v75 != v72)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v74 + 1) + 8 * v22);
      v24 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v23];
      v25 = [v6 home];
      [v21 addObject:v24];
      v26 = [v25 accessoryWithUUID:v24];
      if (v26)
      {
        v27 = [[HMDTargetConfiguration alloc] initWithAccessory:v26 buttonConfiguration:0];
LABEL_14:
        [p_isa[3] addObject:v27];

        goto LABEL_15;
      }

      if (v25)
      {
        v28 = [v25 uuid];
        v29 = identifierForTargetWithUUID(v24, v28);

        v30 = objc_autoreleasePoolPush();
        v31 = p_isa;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543874;
          v82 = v33;
          v83 = 2112;
          v84 = v23;
          v85 = 2048;
          v86 = v29;
          _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Unable to look up the target with UUID %@ - adding with identifier %lu", buf, 0x20u);

          v6 = v68;
        }

        objc_autoreleasePoolPop(v30);
        v34 = [HMDTargetConfiguration alloc];
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v29];
        v27 = [(HMDTargetConfiguration *)v34 initWithIdentifier:v35 name:0 category:0 buttonConfiguration:0];

        p_isa = &v69->super.super.isa;
        v21 = v70;
        goto LABEL_14;
      }

      v36 = objc_autoreleasePoolPush();
      v37 = p_isa;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v66 = HMFGetLogIdentifier();
        v39 = [v24 UUIDString];
        v40 = v6;
        v41 = v39;
        v42 = [v40 name];
        v65 = [v68 uuid];
        [v65 UUIDString];
        v43 = v67 = v36;
        *buf = 138544130;
        v82 = v66;
        v83 = 2112;
        v84 = v41;
        v85 = 2112;
        v86 = v42;
        v87 = 2112;
        v88 = v43;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Attempting to initialize target with UUID %@ for a controller %@/%@ that is not configured with a home", buf, 0x2Au);

        v36 = v67;
        v6 = v68;
        p_isa = &v69->super.super.isa;
      }

      objc_autoreleasePoolPop(v36);
      v21 = v70;
LABEL_15:

      ++v22;
    }

    while (v73 != v22);
    v44 = [obj countByEnumeratingWithState:&v74 objects:v89 count:16];
    v73 = v44;
  }

  while (v44);
LABEL_21:

  v79 = @"HMDTargetAccessoriesUUIDKey";
  v80 = v21;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
  v18 = 0x277CCA000uLL;
  v46 = [MEMORY[0x277CCAB98] defaultCenter];
  [v46 postNotificationName:@"HMDTargetAccessoryConfiguredNotificationKey" object:v6 userInfo:v45];

  v7 = v64;
LABEL_22:
  v47 = MEMORY[0x277CCACA8];
  v48 = [v6 name];
  v49 = [v6 uuid];
  v50 = [v49 UUIDString];
  v51 = [v47 stringWithFormat:@"%@/%@", v48, v50];
  logID = v69->_logID;
  v69->_logID = v51;

  v8 = v69;
  v53 = objc_autoreleasePoolPush();
  v54 = v69;
  v55 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
  {
    v56 = HMFGetLogIdentifier();
    v57 = v69->_configuredTargets;
    *buf = 138543618;
    v82 = v56;
    v83 = 2112;
    v84 = v57;
    _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Initializing target controller manager with targets %@", buf, 0x16u);

    v8 = v69;
  }

  objc_autoreleasePoolPop(v53);
  v58 = [*(v18 + 2968) defaultCenter];
  [v58 addObserver:v54 selector:sel___accessoryNameUpdated_ name:@"HMDAccessoryNameUpdatedNotification" object:0];

  v59 = [*(v18 + 2968) defaultCenter];
  [v59 addObserver:v54 selector:sel___accessoryConfigured_ name:@"HMDAccessoryConnectedNotification" object:0];

  v60 = [*(v18 + 2968) defaultCenter];
  [v60 addObserver:v54 selector:sel___accessoryUnconfigured_ name:@"HMDAccessoryDisconnectedNotification" object:0];

  v61 = [*(v18 + 2968) defaultCenter];
  [v61 addObserver:v54 selector:sel___accessoryRemoved_ name:@"HMDHomeAccessoryRemovedNotification" object:0];

  v6 = v68;
LABEL_25:

  v62 = *MEMORY[0x277D85DE8];
  return v8;
}

- (HMDTargetControllerManager)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_54056 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_54056, &__block_literal_global_54057);
  }

  v3 = logCategory__hmf_once_v7_54058;

  return v3;
}

uint64_t __41__HMDTargetControllerManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_54058;
  logCategory__hmf_once_v7_54058 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end