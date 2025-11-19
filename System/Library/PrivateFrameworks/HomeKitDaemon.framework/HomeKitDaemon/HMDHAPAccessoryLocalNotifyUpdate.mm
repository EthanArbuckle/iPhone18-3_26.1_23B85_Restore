@interface HMDHAPAccessoryLocalNotifyUpdate
+ (id)logCategory;
- (BOOL)cachedEnableValueForCharacteristic:(id)a3 presentInCache:(BOOL *)a4;
- (HMDHAPAccessory)hmdHAPAccessory;
- (HMDHAPAccessoryLocalNotifyUpdate)initWithHome:(id)a3 hmdHAPAccessory:(id)a4 queue:(id)a5;
- (HMDHome)home;
- (id)_arrayForCharacteristicsWithEnable:(BOOL)a3;
- (id)logIdentifier;
- (void)_clearCachedValueForCharacteristics:(id)a3;
- (void)_performLocalNotifyUpdate;
- (void)_performLocalNotifyUpdateForCharacteristics:(id)a3 enable:(BOOL)a4;
- (void)copyRelevantFieldsFrom:(id)a3;
- (void)performLocalNotifyUpdate;
@end

@implementation HMDHAPAccessoryLocalNotifyUpdate

- (HMDHAPAccessory)hmdHAPAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_hmdHAPAccessory);

  return WeakRetained;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDHAPAccessoryLocalNotifyUpdate *)self hmdHAPAccessory];
  v3 = [v2 shortDescription];

  return v3;
}

- (void)_performLocalNotifyUpdateForCharacteristics:(id)a3 enable:(BOOL)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFBooleanToString();
    *buf = 138543874;
    v57 = v10;
    v58 = 2112;
    v59 = v11;
    v60 = 2112;
    v61 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Performing local enable(%@) notify update for: %@.", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [(HMDHAPAccessoryLocalNotifyUpdate *)v8 hmdHAPAccessory];
  objc_initWeak(&location, v8);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__HMDHAPAccessoryLocalNotifyUpdate__performLocalNotifyUpdateForCharacteristics_enable___block_invoke;
  aBlock[3] = &unk_278672700;
  aBlock[4] = v8;
  v54 = a4;
  v44 = v6;
  v51 = v44;
  objc_copyWeak(&v53, &location);
  v45 = v12;
  v52 = v45;
  v43 = _Block_copy(aBlock);
  v49 = 0;
  v13 = [v45 preferredHAPAccessoryForOperation:4 linkType:&v49];
  *&v14 = 138543874;
  v42 = v14;
  while ([v44 count] && v49)
  {
    v15 = [(HMDHAPAccessoryLocalNotifyUpdate *)v8 transportGroup];
    dispatch_group_enter(v15);

    v16 = [v13 server];
    v17 = objc_autoreleasePoolPush();
    v18 = v8;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      v21 = HAPLinkTypeDescription();
      [v13 isReachable];
      v22 = HMFBooleanToString();
      *buf = 138544130;
      v57 = v20;
      v58 = 2112;
      v59 = v21;
      v60 = 2112;
      v61 = v22;
      v62 = 2112;
      v63 = v16;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Preferred link type: %@. HAP Accessory reachable: %@. AccessoryServer: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v17);
    if (v16)
    {
      if ([v13 isReachable])
      {
        v43[2](v43, v13, v16);
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = v18;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = HMFGetLogIdentifier();
          *buf = v42;
          v57 = v32;
          v58 = 2112;
          v59 = v16;
          v60 = 2112;
          v61 = v13;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@HAP accessory server: %@ is nil or HAP accessory: %@ is not reachable.", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v29);
        v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
        [(HMDHAPAccessoryLocalNotifyUpdate *)v30 setError:v33];

        v34 = [(HMDHAPAccessoryLocalNotifyUpdate *)v30 transportGroup];
        dispatch_group_leave(v34);
      }
    }

    else
    {
      v23 = v49 == 2;
      v24 = objc_autoreleasePoolPush();
      v25 = v18;
      if (v23)
      {
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543362;
          v57 = v27;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Link Type is BLE.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        [(HMDHAPAccessoryLocalNotifyUpdate *)v25 setSkipLocalNotificationsUpdate:1];
        v28 = [(HMDHAPAccessoryLocalNotifyUpdate *)v25 transportGroup];
        dispatch_group_leave(v28);

        [v45 updateAccessoryTracking];
      }

      else
      {
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543362;
          v57 = v36;
          _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Retrieving HAP accessory from home.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        v37 = [(HMDHAPAccessoryLocalNotifyUpdate *)v25 home];
        v38 = v49;
        v39 = [(HMDHAPAccessoryLocalNotifyUpdate *)v25 queue];
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __87__HMDHAPAccessoryLocalNotifyUpdate__performLocalNotifyUpdateForCharacteristics_enable___block_invoke_15;
        v46[3] = &unk_278672728;
        objc_copyWeak(v48, &location);
        v48[1] = v49;
        v47 = v43;
        [v37 retrieveHAPAccessoryForHMDAccessory:v45 linkType:v38 forceRetrieve:0 queue:v39 completion:v46];

        objc_destroyWeak(v48);
      }
    }

    v40 = [v45 preferredHAPAccessoryForOperation:4 linkType:&v49];

    v13 = v40;
  }

  objc_destroyWeak(&v53);
  objc_destroyWeak(&location);

  v41 = *MEMORY[0x277D85DE8];
}

void __87__HMDHAPAccessoryLocalNotifyUpdate__performLocalNotifyUpdateForCharacteristics_enable___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v49 = a2;
  v43 = a3;
  v5 = objc_autoreleasePoolPush();
  v46 = a1;
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(v46 + 64);
    v10 = HMFBooleanToString();
    v11 = *(v46 + 40);
    *buf = 138544130;
    *&buf[4] = v8;
    v60 = 2112;
    v61 = v10;
    v62 = 2112;
    v63 = v11;
    v64 = 2112;
    v65 = v43;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Going to enable(%@) notifications for characteristics: %@ on HAP accessory server: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v44 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(v46 + 40), "count")}];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = *(v46 + 40);
  v48 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v48)
  {
    v47 = *v55;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v55 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v54 + 1) + 8 * i);
        v14 = [v13 characteristicForHAPAccessory:v49];
        v15 = v14;
        if (v14)
        {
          if ([v14 properties])
          {
            if (*(v46 + 64) == 1)
            {
              [v44 addObject:v15];
            }

            else
            {
              v24 = [v13 notificationRegistrations];
              v25 = [v24 count] == 0;

              if (v25)
              {
                v26 = objc_autoreleasePoolPush();
                v27 = *(v46 + 32);
                v28 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  v29 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  *&buf[4] = v29;
                  v60 = 2112;
                  v61 = v15;
                  _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@No clients registered. Going to deregister with the accessory server for notifications for HAPCharacteristic: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v26);
                [v44 addObject:v15];
              }
            }
          }
        }

        else
        {
          v16 = objc_autoreleasePoolPush();
          v17 = *(v46 + 32);
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = HMFGetLogIdentifier();
            v20 = [v13 instanceID];
            v21 = [v13 characteristicType];
            v22 = [v49 server];
            v23 = [v22 identifier];
            *buf = 138544130;
            *&buf[4] = v19;
            v60 = 2112;
            v61 = v20;
            v62 = 2112;
            v63 = v21;
            v64 = 2112;
            v65 = v23;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot map HMDCharacteristic %@/%@ to a HAPCharacteristic for server %@ to enable notifications", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v16);
        }
      }

      v48 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v48);
  }

  v30 = [v44 count];
  if (v43 && v30 && ([v49 isReachable] & 1) != 0)
  {
    v31 = *(v46 + 64);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __87__HMDHAPAccessoryLocalNotifyUpdate__performLocalNotifyUpdateForCharacteristics_enable___block_invoke_11;
    v50[3] = &unk_2786726D8;
    objc_copyWeak(&v52, (v46 + 56));
    v51 = *(v46 + 40);
    v53 = *(v46 + 64);
    v32 = [*(v46 + 32) queue];
    [v43 enableEvents:v31 & 1 forCharacteristics:v44 withCompletionHandler:v50 queue:v32];

    [*(v46 + 48) updateAccessoryTracking];
    *buf = 0;
    v33 = [*(v46 + 48) preferredHAPAccessoryForOperation:4 linkType:buf];
    if (*buf == 2)
    {
      [*(v46 + 48) enableBroadcastNotifications:*(v46 + 64) hapAccessory:v49 forCharacteristics:*(v46 + 40)];
    }

    objc_destroyWeak(&v52);
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = *(v46 + 32);
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      v38 = [v44 count];
      [v49 isReachable];
      v39 = HMFBooleanToString();
      *buf = 138544130;
      *&buf[4] = v37;
      v60 = 2048;
      v61 = v38;
      v62 = 2112;
      v63 = v43;
      v64 = 2112;
      v65 = v39;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Not enabling events on HAP accessory server because hapCharacteristics.count=%lu accessoryServer=%@ hapAccessory.isReachable=%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v34);
    v40 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [*(v46 + 32) setError:v40];

    v41 = [*(v46 + 32) transportGroup];
    dispatch_group_leave(v41);
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __87__HMDHAPAccessoryLocalNotifyUpdate__performLocalNotifyUpdateForCharacteristics_enable___block_invoke_15(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained hmdHAPAccessory];
    v7 = [v6 matchingHAPAccessoryWithLinkType:*(a1 + 48)];

    v8 = [v7 server];
    v9 = v8;
    if (!v3 && v8 && ([v7 isReachable]& 1) != 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v5;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier();
        v14 = *(a1 + 48);
        v15 = HAPLinkTypeDescription();
        v26 = 138543874;
        v27 = v13;
        v28 = 2112;
        v29 = v7;
        v30 = 2112;
        v31 = v15;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Retrieved HAP accessory: %@ for linkType: %@.", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = v5;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v19;
        v28 = 2112;
        v29 = v3;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve the HAP accessory: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      if (v3)
      {
        [v17 setError:v3];
      }

      else
      {
        v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
        [v17 setError:v23];
      }

      v24 = [v17 transportGroup];
      dispatch_group_leave(v24);
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Self became nil after we retrieved the HAP accessory from home.", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v7 = [0 transportGroup];
    dispatch_group_leave(v7);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __87__HMDHAPAccessoryLocalNotifyUpdate__performLocalNotifyUpdateForCharacteristics_enable___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      [WeakRetained setError:v6];
      v9 = objc_autoreleasePoolPush();
      v10 = v8;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v33 = v12;
        v34 = 2112;
        v35 = v6;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@One or more notification enable commands to the accessory server failed: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = v8;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Successfully modified characteristic notifications with the accessory server.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v17 = [v14 characteristicResponseTuples];
      v27 = v5;
      [v17 addObjectsFromArray:v5];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v18 = *(a1 + 32);
      v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v29;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v29 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v28 + 1) + 8 * i);
            if (*(a1 + 48))
            {
              [MEMORY[0x277CBEAA8] date];
            }

            else
            {
              [MEMORY[0x277CBEAA8] distantFuture];
            }
            v24 = ;
            [v23 setNotificationEnabledTime:v24];
          }

          v20 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v20);
      }

      v5 = v27;
    }
  }

  v25 = [v8 transportGroup];
  dispatch_group_leave(v25);

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_performLocalNotifyUpdate
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v30 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Start performing update.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = dispatch_group_create();
  [(HMDHAPAccessoryLocalNotifyUpdate *)v4 setTransportGroup:v7];

  v8 = [(HMDHAPAccessoryLocalNotifyUpdate *)v4 characteristicsWithEnableYes];
  v9 = [v8 count] == 0;

  if (!v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v4;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(HMDHAPAccessoryLocalNotifyUpdate *)v11 characteristicsWithEnableYes];
      *buf = 138543618;
      v30 = v13;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Performing local update for characteristics with enable YES: %@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [(HMDHAPAccessoryLocalNotifyUpdate *)v11 characteristicsWithEnableYes];
    [(HMDHAPAccessoryLocalNotifyUpdate *)v11 _performLocalNotifyUpdateForCharacteristics:v15 enable:1];
  }

  v16 = [(HMDHAPAccessoryLocalNotifyUpdate *)v4 characteristicsWithEnableNo];
  v17 = [v16 count] == 0;

  if (!v17)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v4;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [(HMDHAPAccessoryLocalNotifyUpdate *)v19 characteristicsWithEnableNo];
      *buf = 138543618;
      v30 = v21;
      v31 = 2112;
      v32 = v22;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Performing local update for characteristics with enable NO: %@.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v23 = [(HMDHAPAccessoryLocalNotifyUpdate *)v19 characteristicsWithEnableNo];
    [(HMDHAPAccessoryLocalNotifyUpdate *)v19 _performLocalNotifyUpdateForCharacteristics:v23 enable:0];
  }

  objc_initWeak(buf, v4);
  v24 = [(HMDHAPAccessoryLocalNotifyUpdate *)v4 transportGroup];
  v25 = [(HMDHAPAccessoryLocalNotifyUpdate *)v4 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HMDHAPAccessoryLocalNotifyUpdate__performLocalNotifyUpdate__block_invoke;
  block[3] = &unk_278686B80;
  objc_copyWeak(&v28, buf);
  dispatch_group_notify(v24, v25, block);

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
  v26 = *MEMORY[0x277D85DE8];
}

void __61__HMDHAPAccessoryLocalNotifyUpdate__performLocalNotifyUpdate__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained error];

    v4 = objc_autoreleasePoolPush();
    v5 = v2;
    v6 = HMFGetOSLogHandle();
    v7 = v6;
    if (v3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = HMFGetLogIdentifier();
        v9 = [v5 error];
        v14 = 138543618;
        v15 = v8;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Done performing update. Enable notify update failed with error: %@.", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v4);
      v10 = [v5 enableNotifyCompletionPromise];
      v11 = [v5 error];
      [v10 rejectWithError:v11];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v12;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Done performing update. All characteristics finished updating successfully.", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      v10 = [v5 enableNotifyCompletionPromise];
      [v10 fulfillWithNoValue];
    }

    [v5 setInProcessing:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)performLocalNotifyUpdate
{
  v3 = [(HMDHAPAccessoryLocalNotifyUpdate *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HMDHAPAccessoryLocalNotifyUpdate_performLocalNotifyUpdate__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __60__HMDHAPAccessoryLocalNotifyUpdate_performLocalNotifyUpdate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setInProcessing:1];
  v2 = *(a1 + 32);

  return [v2 _performLocalNotifyUpdate];
}

- (BOOL)cachedEnableValueForCharacteristic:(id)a3 presentInCache:(BOOL *)a4
{
  v6 = a3;
  v7 = [(HMDHAPAccessoryLocalNotifyUpdate *)self characteristicsWithEnableYes];
  v8 = [v7 containsObject:v6];

  if (v8)
  {
    v9 = 1;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = [(HMDHAPAccessoryLocalNotifyUpdate *)self characteristicsWithEnableNo];
  v9 = [v10 containsObject:v6];

  if (a4)
  {
LABEL_5:
    *a4 = v9;
  }

LABEL_6:

  return v8;
}

void __75__HMDHAPAccessoryLocalNotifyUpdate__copyRelevantFieldsFrom_forEnableValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  [*(a1 + 32) cachedEnableValueForCharacteristic:v3 presentInCache:&v4];
  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (void)copyRelevantFieldsFrom:(id)a3
{
  v4 = a3;
  v5 = [v4 characteristicsWithEnableYes];
  [(HMDHAPAccessoryLocalNotifyUpdate *)self _copyRelevantFieldsFrom:v5 forEnableValue:1];

  v6 = [v4 characteristicsWithEnableNo];

  [(HMDHAPAccessoryLocalNotifyUpdate *)self _copyRelevantFieldsFrom:v6 forEnableValue:0];
}

- (void)_clearCachedValueForCharacteristics:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__HMDHAPAccessoryLocalNotifyUpdate__clearCachedValueForCharacteristics___block_invoke;
  v3[3] = &unk_278687388;
  v3[4] = self;
  [a3 enumerateObjectsUsingBlock:v3];
}

void __72__HMDHAPAccessoryLocalNotifyUpdate__clearCachedValueForCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 characteristicsWithEnableYes];
  [v5 removeObject:v4];

  v6 = [*(a1 + 32) characteristicsWithEnableNo];
  [v6 removeObject:v4];
}

- (id)_arrayForCharacteristicsWithEnable:(BOOL)a3
{
  if (a3)
  {
    [(HMDHAPAccessoryLocalNotifyUpdate *)self characteristicsWithEnableYes];
  }

  else
  {
    [(HMDHAPAccessoryLocalNotifyUpdate *)self characteristicsWithEnableNo];
  }
  v3 = ;

  return v3;
}

- (HMDHAPAccessoryLocalNotifyUpdate)initWithHome:(id)a3 hmdHAPAccessory:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = HMDHAPAccessoryLocalNotifyUpdate;
  v11 = [(HMDHAPAccessoryLocalNotifyUpdate *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_home, v8);
    objc_storeWeak(&v12->_hmdHAPAccessory, v9);
    objc_storeStrong(&v12->_queue, a5);
    v13 = [MEMORY[0x277D0F7C0] futureWithPromise:&v12->_enableNotifyCompletionPromise];
    completionFuture = v12->_completionFuture;
    v12->_completionFuture = v13;

    v15 = [MEMORY[0x277CBEB18] array];
    characteristicsWithEnableYes = v12->_characteristicsWithEnableYes;
    v12->_characteristicsWithEnableYes = v15;

    v17 = [MEMORY[0x277CBEB18] array];
    characteristicsWithEnableNo = v12->_characteristicsWithEnableNo;
    v12->_characteristicsWithEnableNo = v17;

    v19 = [MEMORY[0x277CBEB18] array];
    characteristicResponseTuples = v12->_characteristicResponseTuples;
    v12->_characteristicResponseTuples = v19;

    *&v12->_skipLocalNotificationsUpdate = 0;
  }

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t22_36384 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t22_36384, &__block_literal_global_36385);
  }

  v3 = logCategory__hmf_once_v23_36386;

  return v3;
}

void __47__HMDHAPAccessoryLocalNotifyUpdate_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v23_36386;
  logCategory__hmf_once_v23_36386 = v1;
}

@end