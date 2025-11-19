@interface HMDAccessoryServerDemo
- (BOOL)_delegateRespondsToSelector:(SEL)a3;
- (BOOL)removePairingForCurrentControllerOnQueue:(id)a3 completion:(id)a4;
- (HMDAccessoryServerBrowserDemo)browser;
- (HMDAccessoryServerDemo)initWithName:(id)a3 identifier:(id)a4 deviceInfo:(id)a5 paired:(BOOL)a6 keyStore:(id)a7 testMode:(BOOL)a8 browser:(id)a9;
- (id)initCommon:(id)a3 browser:(id)a4;
- (void)_parseAttributeDatabase:(id)a3;
- (void)addPairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6;
- (void)handleUpdatesForCharacteristics:(id)a3 stateNumber:(id)a4;
- (void)identifyWithCompletion:(id)a3;
- (void)listPairingsWithCompletionQueue:(id)a3 completionHandler:(id)a4;
- (void)processCharacteristicWrite:(id)a3 value:(id)a4;
- (void)readCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7;
- (void)removePairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5;
- (void)sendDelayedResponse:(unint64_t)a3 responses:(id)a4 readOperation:(BOOL)a5 completionQueue:(id)a6 completionHandler:(id)a7;
- (void)startPairingWithRequest:(id)a3;
- (void)writeCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7;
@end

@implementation HMDAccessoryServerDemo

- (HMDAccessoryServerBrowserDemo)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (void)handleUpdatesForCharacteristics:(id)a3 stateNumber:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDAccessoryServerDemo_handleUpdatesForCharacteristics_stateNumber___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __70__HMDAccessoryServerDemo_handleUpdatesForCharacteristics_stateNumber___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServer_didUpdateValuesForCharacteristics_stateNumber_broadcast_])
  {
    v2 = [*(a1 + 32) delegate];
    [v2 accessoryServer:*(a1 + 32) didUpdateValuesForCharacteristics:*(a1 + 40) stateNumber:*(a1 + 48) broadcast:0];
  }
}

- (BOOL)_delegateRespondsToSelector:(SEL)a3
{
  v4 = [(HAPAccessoryServer *)self delegate];
  if (v4)
  {
    v5 = [(HAPAccessoryServer *)self delegateQueue];
    if (v5)
    {
      v6 = objc_opt_respondsToSelector();
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)identifyWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)listPairingsWithCompletionQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if ([(HMDAccessoryServerDemo *)self testMode])
    {
      v9 = 0;
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFE770] code:-6702 userInfo:0];
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __76__HMDAccessoryServerDemo_listPairingsWithCompletionQueue_completionHandler___block_invoke;
    v12[3] = &unk_279735738;
    v13 = v9;
    v14 = v8;
    v10 = v9;
    dispatch_async(v6, v12);
  }

  else
  {
    v10 = _Block_copy(v7);
    if (v10)
    {
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      v10[2](v10, 0, v11);
    }
  }
}

void __76__HMDAccessoryServerDemo_listPairingsWithCompletionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, 0, *(a1 + 32));
    v2 = v3;
  }
}

- (BOOL)removePairingForCurrentControllerOnQueue:(id)a3 completion:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  self->__paired = 0;
  self->__hasPairings = 0;
  WeakRetained = objc_loadWeakRetained(&self->_browser);
  [WeakRetained resetDemoAccessory:self];

  v9 = [(HAPAccessoryServer *)self keyStore];
  v10 = [(HAPAccessoryServer *)self identifier];
  v25 = 0;
  [v9 removeAccessoryKeyForName:v10 error:&v25];
  v11 = v25;

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(HAPAccessoryServer *)self identifier];
      v16 = [(HAPAccessoryServer *)self name];
      *buf = 138544130;
      v27 = v14;
      v28 = 2112;
      v29 = v15;
      v30 = 2112;
      v31 = v16;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Failed to remove public key for accessory %@/%@- error %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    if (v6)
    {
      if (![(HMDAccessoryServerDemo *)self testMode])
      {
        v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFE770] code:-6702 userInfo:0];
LABEL_9:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __78__HMDAccessoryServerDemo_removePairingForCurrentControllerOnQueue_completion___block_invoke;
        block[3] = &unk_279735738;
        v23 = v17;
        v24 = v7;
        v18 = v17;
        dispatch_async(v6, block);

        v19 = v24;
LABEL_12:

        goto LABEL_13;
      }

LABEL_8:
      v17 = 0;
      goto LABEL_9;
    }
  }

  else if (v6)
  {
    goto LABEL_8;
  }

  v18 = _Block_copy(v7);
  if (v18)
  {
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    v18[2](v18, v19);
    goto LABEL_12;
  }

LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
  return 0;
}

void __78__HMDAccessoryServerDemo_removePairingForCurrentControllerOnQueue_completion___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32));
    v2 = v3;
  }
}

- (void)removePairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7)
  {
    if ([(HMDAccessoryServerDemo *)self testMode])
    {
      v10 = 0;
    }

    else
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFE770] code:-6702 userInfo:0];
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__HMDAccessoryServerDemo_removePairing_completionQueue_completionHandler___block_invoke;
    v13[3] = &unk_279735738;
    v14 = v10;
    v15 = v9;
    v11 = v10;
    dispatch_async(v7, v13);
  }

  else
  {
    v11 = _Block_copy(v8);
    if (v11)
    {
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      v11[2](v11, v12);
    }
  }
}

void __74__HMDAccessoryServerDemo_removePairing_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32));
    v2 = v3;
  }
}

- (void)addPairing:(id)a3 completionQueue:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7)
  {
    if ([(HMDAccessoryServerDemo *)self testMode])
    {
      v10 = 0;
    }

    else
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFE770] code:-6702 userInfo:0];
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__HMDAccessoryServerDemo_addPairing_completionQueue_completionHandler___block_invoke;
    v13[3] = &unk_279735738;
    v14 = v10;
    v15 = v9;
    v11 = v10;
    dispatch_async(v7, v13);
  }

  else
  {
    v11 = _Block_copy(v8);
    if (v11)
    {
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      v11[2](v11, v12);
    }
  }
}

void __71__HMDAccessoryServerDemo_addPairing_completionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32));
    v2 = v3;
  }
}

- (void)startPairingWithRequest:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->__paired = 1;
  self->__hasPairings = 1;
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];
  v7 = [v6 dataUsingEncoding:4];

  v8 = [(HAPAccessoryServer *)self keyStore];
  v9 = [(HAPAccessoryServer *)self identifier];
  v22 = 0;
  v10 = [v8 savePublicKey:v7 forAccessoryName:v9 error:&v22];
  v11 = v22;

  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [(HAPAccessoryServer *)self identifier];
      v17 = [(HAPAccessoryServer *)self name];
      *buf = 138544130;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Failed to save public for accessory %@/%@ - error %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
  }

  if ([(HMDAccessoryServerDemo *)self _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
  {
    v18 = [(HAPAccessoryServer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__HMDAccessoryServerDemo_startPairingWithRequest___block_invoke;
    block[3] = &unk_2797359B0;
    block[4] = self;
    v21 = v11;
    dispatch_async(v18, block);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __50__HMDAccessoryServerDemo_startPairingWithRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didStopPairingWithError:*(a1 + 40)];
}

- (void)processCharacteristicWrite:(id)a3 value:(id)a4
{
  v112 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v90 = a4;
  v6 = [v90 copy];
  v95 = v5;
  [v5 setValue:v6];

  v7 = [MEMORY[0x277CBEAA8] date];
  [v5 setValueUpdatedTime:v7];

  v93 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  v92 = [v5 service];
  v8 = [v5 type];
  delta = 1100000000;
  v9 = [v8 isEqualToString:*MEMORY[0x277CFE730]];

  if (v9)
  {
    v10 = __findAssociatedCharacteristicWithService(v92, *MEMORY[0x277CFE608]);
    v94 = v10;
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_30:
    v94 = 0;
    v15 = 0;
    goto LABEL_31;
  }

  v11 = [v5 type];
  v12 = [v11 isEqualToString:*MEMORY[0x277CFE710]];

  if (v12)
  {
    v10 = __findAssociatedCharacteristicWithService(v92, *MEMORY[0x277CFE5E8]);
    v94 = v10;
    if (v10)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

  v16 = [v5 type];
  v17 = [v16 isEqualToString:*MEMORY[0x277CFE720]];

  if (v17)
  {
    v94 = __findAssociatedCharacteristicWithService(v92, *MEMORY[0x277CFE5F8]);
    v18 = [v92 characteristicsOfType:*MEMORY[0x277CFE628]];
    v19 = [v18 firstObject];

    v20 = __findAssociatedCharacteristicWithService(v92, *MEMORY[0x277CFE750]);
    if (!v94)
    {

      goto LABEL_30;
    }

    v21 = [v94 responseDelay];
    v22 = [v21 unsignedLongValue];
    v23 = v22 == 0;

    if (v22)
    {
      v24 = 0;
      goto LABEL_12;
    }

    delta = 300000000;
    if ([v90 integerValue] == 3)
    {
      v57 = [v19 value];
      [v57 doubleValue];
      v59 = v58;
      v60 = [v20 value];
      [v60 doubleValue];
      v62 = v61;

      if (v59 <= v62)
      {
        v79 = [v19 value];
        [v79 doubleValue];
        v81 = v80;
        v82 = [v20 value];
        [v82 doubleValue];
        v84 = v83;

        if (v81 >= v84)
        {
          v24 = &unk_286628600;
        }

        else
        {
          v24 = &unk_2866285D0;
        }
      }

      else
      {
        v24 = &unk_2866285E8;
      }
    }

    else
    {
      v24 = v90;
      if ([v24 integerValue] == 1)
      {
        v65 = v24;
        v66 = MEMORY[0x277CCABB0];
        v67 = [v20 value];
        [v67 doubleValue];
        v69 = [v66 numberWithDouble:v68 + -1.0];
      }

      else
      {
        if ([v24 integerValue] != 2)
        {
          goto LABEL_12;
        }

        v65 = v24;
        v72 = MEMORY[0x277CCABB0];
        v67 = [v20 value];
        [v67 doubleValue];
        v69 = [v72 numberWithDouble:v73 + 1.0];
      }

      v74 = v69;
      [v93 setObject:v69 forKey:v19];

      v24 = v65;
    }

LABEL_12:

    if (!v23)
    {
LABEL_17:
      v15 = v24;
      goto LABEL_18;
    }

LABEL_15:
    if (v24)
    {
      v15 = v24;
      [v93 setObject:v24 forKey:v94];
      goto LABEL_31;
    }

    goto LABEL_17;
  }

  v34 = [v5 type];
  v35 = [v34 isEqualToString:*MEMORY[0x277CFE750]];

  if (v35)
  {
    v36 = __findAssociatedCharacteristicWithService(v92, *MEMORY[0x277CFE628]);
    v94 = v36;
    if (v36)
    {
      v37 = [v36 responseDelay];
      v38 = [v37 unsignedLongValue];

      if (v38)
      {
        goto LABEL_7;
      }

      v39 = [v92 characteristicsOfType:*MEMORY[0x277CFE5F8]];
      v40 = [v39 firstObject];

      v41 = [v40 value];
      v42 = [v41 integerValue];

      if (v42 == 1)
      {
        v43 = MEMORY[0x277CCABB0];
        [v90 doubleValue];
        v45 = [v43 numberWithDouble:v44 + -1.0];
      }

      else
      {
        v75 = [v40 value];
        v76 = [v75 integerValue];

        if (v76 == 2)
        {
          v77 = MEMORY[0x277CCABB0];
          [v90 doubleValue];
          v45 = [v77 numberWithDouble:v78 + 1.0];
        }

        else
        {
          v45 = v90;
        }
      }

      v24 = v45;

      goto LABEL_15;
    }

    goto LABEL_30;
  }

  v46 = [v5 type];
  v47 = [v46 isEqualToString:*MEMORY[0x277CFE740]];

  if (v47)
  {
    v10 = __findAssociatedCharacteristicWithService(v92, *MEMORY[0x277CFE618]);
    v94 = v10;
    if (!v10)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v52 = [v5 type];
    v53 = [v52 isEqualToString:*MEMORY[0x277CFE748]];

    if (v53)
    {
      v54 = __findAssociatedCharacteristicWithService(v92, *MEMORY[0x277CFE620]);
      v94 = v54;
      if (v54)
      {
        v55 = [v54 responseDelay];
        v56 = [v55 unsignedLongValue];

        if (v56)
        {
          goto LABEL_7;
        }

        delta = 300000000;
        if ([v90 integerValue] >= 3)
        {
          v24 = &unk_2866285D0;
        }

        else
        {
          v24 = &unk_286628600;
        }

        goto LABEL_15;
      }

      goto LABEL_30;
    }

    v63 = [v5 type];
    v64 = [v63 isEqualToString:*MEMORY[0x277CFE738]];

    if (v64)
    {
      v10 = __findAssociatedCharacteristicWithService(v92, *MEMORY[0x277CFE610]);
      v94 = v10;
      if (!v10)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v70 = [v5 type];
      v71 = [v70 isEqualToString:*MEMORY[0x277CFE728]];

      if (v71)
      {
        v10 = __findAssociatedCharacteristicWithService(v92, *MEMORY[0x277CFE600]);
        v94 = v10;
        if (!v10)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v85 = [v5 type];
        v86 = [v85 isEqualToString:*MEMORY[0x277CFE760]];

        if (v86)
        {
          v10 = __findAssociatedCharacteristicWithService(v92, *MEMORY[0x277CFE638]);
          v94 = v10;
          if (!v10)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v87 = [v5 type];
          v88 = [v87 isEqualToString:*MEMORY[0x277CFE5B0]];

          if (!v88)
          {
            goto LABEL_30;
          }

          v10 = __findAssociatedCharacteristicWithService(v92, *MEMORY[0x277CFE658]);
          v94 = v10;
          if (!v10)
          {
            goto LABEL_30;
          }
        }
      }
    }
  }

LABEL_6:
  v13 = [v10 responseDelay];
  v14 = [v13 unsignedLongValue];

  if (!v14)
  {
    v24 = v90;
    goto LABEL_15;
  }

LABEL_7:
  v15 = 0;
LABEL_18:
  v25 = objc_autoreleasePoolPush();
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    v28 = [(HAPAccessoryServer *)self name];
    v29 = [(HAPAccessoryServer *)self identifier];
    v30 = [v94 responseDelay];
    v31 = [v30 unsignedLongValue];
    v32 = [v94 type];
    v33 = [v94 instanceID];
    *buf = 138544642;
    v101 = v27;
    v102 = 2112;
    v103 = v28;
    v104 = 2112;
    v105 = v29;
    v106 = 2048;
    v107 = v31;
    v108 = 2112;
    v109 = v32;
    v110 = 2112;
    v111 = v33;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@[HMDAccessoryServerDemo %@/%@] responseDelay set to %lu for current state characteristic %@/%@ - bypassing processing effects...", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v25);
LABEL_31:
  if ([v93 count])
  {
    v48 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v93, "count")}];
    objc_initWeak(buf, self);
    if ([(HMDAccessoryServerDemo *)self _delegateRespondsToSelector:sel_accessoryServer_didUpdateValuesForCharacteristics_stateNumber_broadcast_])
    {
      v49 = dispatch_time(0, delta);
      v50 = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__HMDAccessoryServerDemo_processCharacteristicWrite_value___block_invoke;
      block[3] = &unk_279732670;
      v97 = v93;
      v98 = v48;
      objc_copyWeak(&v99, buf);
      dispatch_after(v49, v50, block);

      objc_destroyWeak(&v99);
    }

    objc_destroyWeak(buf);
  }

  v51 = *MEMORY[0x277D85DE8];
}

void __59__HMDAccessoryServerDemo_processCharacteristicWrite_value___block_invoke(id *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CBEAA8] date];
        [v7 setValueUpdatedTime:v8];

        v9 = [a1[4] objectForKey:v7];
        [v7 setValue:v9];

        [a1[5] addObject:v7];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v11 = [WeakRetained delegate];
  v12 = [a1[5] copy];
  [v11 accessoryServer:WeakRetained didUpdateValuesForCharacteristics:v12 stateNumber:0 broadcast:0];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)enableEvents:(BOOL)a3 forCharacteristics:(id)a4 withCompletionHandler:(id)a5 queue:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [MEMORY[0x277CFEA90] responseTupleForCharacteristic:*(*(&v24 + 1) + 8 * v16) error:0];
        [v11 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  if (v10)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __86__HMDAccessoryServerDemo_enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke;
    v21[3] = &unk_279735738;
    v23 = v9;
    v22 = v11;
    dispatch_async(v10, v21);

    v18 = v23;
  }

  else
  {
    v18 = _Block_copy(v9);
    if (v18)
    {
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      v18[2](v18, 0, v19);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __86__HMDAccessoryServerDemo_enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), 0);
    v2 = v3;
  }
}

- (void)writeCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7
{
  v85 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v46 = [MEMORY[0x277CBEB18] array];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v10;
  v56 = [obj countByEnumeratingWithState:&v64 objects:v84 count:16];
  if (!v56)
  {

    v15 = v46;
LABEL_18:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__HMDAccessoryServerDemo_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
    block[3] = &unk_279735738;
    v62 = v15;
    v63 = v13;
    v39 = v15;
    v40 = v13;
    dispatch_async(v12, block);

    v38 = v63;
    goto LABEL_19;
  }

  v42 = v13;
  v43 = v12;
  v44 = v11;
  v14 = 0;
  v55 = *v65;
  v16 = self;
  v15 = v46;
  do
  {
    for (i = 0; i != v56; ++i)
    {
      if (*v65 != v55)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v64 + 1) + 8 * i);
      v19 = [v18 characteristic];
      v20 = [v19 responseDelay];
      v21 = [v20 unsignedLongValue];

      if (v21)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v54 = HMFGetLogIdentifier();
          v49 = [(HAPAccessoryServer *)v16 name];
          v48 = [(HAPAccessoryServer *)v16 identifier];
          [v19 service];
          v50 = v52 = v14;
          v24 = [v50 type];
          [v19 type];
          v25 = log = v23;
          v26 = [v19 instanceID];
          [v19 value];
          v27 = v51 = v22;
          *buf = 138545154;
          v69 = v54;
          v70 = 2112;
          v71 = v49;
          v72 = 2112;
          v73 = v48;
          v74 = 2112;
          v75 = v24;
          v76 = 2112;
          v77 = v25;
          v78 = 2112;
          v79 = v26;
          v80 = 2112;
          v81 = v27;
          v82 = 2048;
          v83 = v21;
          _os_log_impl(&dword_2531F8000, log, OS_LOG_TYPE_INFO, "%{public}@[HMDAccessoryServerDemo %@/%@] Service %@ Characteristic %@/%@: value %@, delay %lu", buf, 0x52u);

          v22 = v51;
          v15 = v46;

          v23 = log;
          v16 = self;

          v14 = v52;
        }

        objc_autoreleasePoolPop(v22);
        if (v14 <= v21)
        {
          v14 = v21;
        }
      }

      v28 = [v18 value];
      [(HMDAccessoryServerDemo *)v16 processCharacteristicWrite:v19 value:v28];

      v29 = [MEMORY[0x277CFEA90] responseTupleForCharacteristic:v19 error:0];
      [v15 addObject:v29];
    }

    v56 = [obj countByEnumeratingWithState:&v64 objects:v84 count:16];
  }

  while (v56);

  v12 = v43;
  v11 = v44;
  v13 = v42;
  if (!v14)
  {
    goto LABEL_18;
  }

  v30 = v14;
  v31 = objc_autoreleasePoolPush();
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = HMFGetLogIdentifier();
    v34 = [(HAPAccessoryServer *)self name];
    v35 = [(HAPAccessoryServer *)self identifier];
    *buf = 138544130;
    v69 = v33;
    v70 = 2112;
    v71 = v34;
    v72 = 2112;
    v73 = v35;
    v74 = 2048;
    v75 = v30;
    _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@[HMDAccessoryServerDemo %@/%@] Delaying write-response by %lu", buf, 0x2Au);

    v15 = v46;
  }

  objc_autoreleasePoolPop(v31);
  v36 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v43);
  v37 = dispatch_time(0, 1000000 * v30);
  dispatch_source_set_timer(v36, v37, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __101__HMDAccessoryServerDemo_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_18;
  handler[3] = &unk_2797355D0;
  v59 = v15;
  v60 = v42;
  v58 = v36;
  v38 = v15;
  v39 = v42;
  v40 = v36;
  dispatch_source_set_event_handler(v40, handler);
  dispatch_resume(v40);

LABEL_19:
  v41 = *MEMORY[0x277D85DE8];
}

- (void)readCharacteristicValues:(id)a3 timeout:(double)a4 expiry:(id)a5 completionQueue:(id)a6 completionHandler:(id)a7
{
  v81 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v52 = [MEMORY[0x277CBEB18] array];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v10;
  v14 = [obj countByEnumeratingWithState:&v60 objects:v80 count:16];
  if (!v14)
  {

LABEL_18:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__HMDAccessoryServerDemo_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
    block[3] = &unk_279735738;
    v58 = v52;
    v59 = v13;
    v38 = v52;
    v39 = v13;
    dispatch_async(v12, block);

    v37 = v59;
    goto LABEL_19;
  }

  v41 = v13;
  v42 = v12;
  v43 = v11;
  v15 = 0;
  v51 = *v61;
  v16 = v14;
  do
  {
    v17 = 0;
    v45 = v16;
    do
    {
      if (*v61 != v51)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v60 + 1) + 8 * v17);
      v19 = [v18 responseDelay];
      v20 = [v19 unsignedLongValue];

      if (v20)
      {
        v21 = objc_autoreleasePoolPush();
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v50 = HMFGetLogIdentifier();
          v48 = v21;
          v23 = [(HAPAccessoryServer *)self name];
          v24 = [(HAPAccessoryServer *)self identifier];
          v47 = [v18 service];
          [v47 type];
          v25 = v49 = v15;
          v26 = [v18 type];
          v27 = [v18 instanceID];
          v28 = [v18 value];
          *buf = 138545154;
          v65 = v50;
          v66 = 2112;
          v67 = v23;
          v68 = 2112;
          v69 = v24;
          v70 = 2112;
          v71 = v25;
          v72 = 2112;
          v73 = v26;
          v74 = 2112;
          v75 = v27;
          v76 = 2112;
          v77 = v28;
          v78 = 2048;
          v79 = v20;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@[HMDAccessoryServerDemo %@/%@] Service %@ Characteristic %@/%@: value %@, delay %lu", buf, 0x52u);

          v21 = v48;
          v16 = v45;

          v15 = v49;
        }

        objc_autoreleasePoolPop(v21);
        if (v15 <= v20)
        {
          v15 = v20;
        }
      }

      v29 = [MEMORY[0x277CFEA90] responseTupleForCharacteristic:v18 error:0];
      [v52 addObject:v29];

      ++v17;
    }

    while (v16 != v17);
    v16 = [obj countByEnumeratingWithState:&v60 objects:v80 count:16];
  }

  while (v16);

  v12 = v42;
  v11 = v43;
  v13 = v41;
  if (!v15)
  {
    goto LABEL_18;
  }

  v30 = objc_autoreleasePoolPush();
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = HMFGetLogIdentifier();
    v33 = [(HAPAccessoryServer *)self name];
    v34 = [(HAPAccessoryServer *)self identifier];
    *buf = 138544130;
    v65 = v32;
    v66 = 2112;
    v67 = v33;
    v68 = 2112;
    v69 = v34;
    v70 = 2048;
    v71 = v15;
    _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@[HMDAccessoryServerDemo %@/%@] Delaying read-response by %lu", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v30);
  v35 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v42);
  v36 = dispatch_time(0, 1000000 * v15);
  dispatch_source_set_timer(v35, v36, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __100__HMDAccessoryServerDemo_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke_17;
  handler[3] = &unk_2797355D0;
  v54 = v35;
  v55 = v52;
  v56 = v41;
  v37 = v52;
  v38 = v41;
  v39 = v35;
  dispatch_source_set_event_handler(v39, handler);
  dispatch_resume(v39);

LABEL_19:
  v40 = *MEMORY[0x277D85DE8];
}

- (void)sendDelayedResponse:(unint64_t)a3 responses:(id)a4 readOperation:(BOOL)a5 completionQueue:(id)a6 completionHandler:(id)a7
{
  LODWORD(v9) = a5;
  v46 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = v14;
  if (a3)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v27 = v12;
      v9 = v18 = v9;
      v19 = [(HAPAccessoryServer *)self name];
      v20 = [(HAPAccessoryServer *)self identifier];
      v21 = v20;
      *buf = 138544386;
      v22 = @"write";
      v37 = v9;
      if (v18)
      {
        v22 = @"read";
      }

      v38 = 2112;
      v39 = v19;
      v40 = 2112;
      v41 = v20;
      v42 = 2112;
      v43 = v22;
      v44 = 2048;
      v45 = a3;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[HMDAccessoryServerDemo %@/%@] Delaying %@-response by %lu", buf, 0x34u);

      LOBYTE(v9) = v18;
      v12 = v27;
    }

    objc_autoreleasePoolPop(v16);
    v23 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v13);
    v24 = dispatch_time(0, 1000000 * a3);
    dispatch_source_set_timer(v23, v24, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __104__HMDAccessoryServerDemo_sendDelayedResponse_responses_readOperation_completionQueue_completionHandler___block_invoke_15;
    handler[3] = &unk_279733CD0;
    v32 = v9;
    handler[4] = self;
    v29 = v23;
    v31 = v15;
    v30 = v12;
    v25 = v23;
    dispatch_source_set_event_handler(v25, handler);
    dispatch_resume(v25);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__HMDAccessoryServerDemo_sendDelayedResponse_responses_readOperation_completionQueue_completionHandler___block_invoke;
    block[3] = &unk_279735738;
    v35 = v14;
    v34 = v12;
    dispatch_async(v13, block);

    v25 = v35;
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __104__HMDAccessoryServerDemo_sendDelayedResponse_responses_readOperation_completionQueue_completionHandler___block_invoke_15(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = HMFGetLogIdentifier();
    v5 = [*(a1 + 32) name];
    v6 = [*(a1 + 32) identifier];
    v7 = v6;
    v8 = *(a1 + 64);
    v12 = 138544130;
    v13 = v4;
    if (v8)
    {
      v9 = @"read";
    }

    else
    {
      v9 = @"write";
    }

    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_2531F8000, v3, OS_LOG_TYPE_INFO, "%{public}@[HMDAccessoryServerDemo %@/%@] Sending %@-response", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  result = (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 48));
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_parseAttributeDatabase:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CFE590];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CFE590]];
  if (!v6)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      v33 = [(HAPAccessoryServer *)self name];
      *buf = 138543618;
      v60 = v32;
      v61 = 2112;
      v62 = v33;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@[HMDAccessoryServerDemo %@] No accessory objects found in the attribute database", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v34 = objc_alloc(MEMORY[0x277CCA9B8]);
    v14 = [v34 initWithDomain:*MEMORY[0x277CFE770] code:-6727 userInfo:0];
    if (v14)
    {
      goto LABEL_23;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(HAPAccessoryServer *)self name];
    v11 = objc_opt_class();
    *buf = 138544130;
    v60 = v9;
    v61 = 2112;
    v62 = v10;
    v63 = 2112;
    v64 = v5;
    v65 = 2112;
    v66 = v11;
    v12 = v11;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@[HMDAccessoryServerDemo %@] Expected the value of '%@' to be an array in the attribute database, instead it is a %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v7);
  v13 = objc_alloc(MEMORY[0x277CCA9B8]);
  v14 = [v13 initWithDomain:*MEMORY[0x277CFE770] code:-6727 userInfo:0];
  if (v14)
  {
LABEL_23:
    v29 = v14;
  }

  else
  {
LABEL_6:
    v49 = v4;
    v15 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v6, "count")}];
    v51 = [MEMORY[0x277CBEB18] array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v48 = v6;
    obj = v6;
    v16 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v55;
      v20 = *MEMORY[0x277CFED10];
      while (2)
      {
        v21 = 0;
        v22 = v18;
        do
        {
          if (*v55 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v18 = [MEMORY[0x277CFEA40] _parseSerializedAccessoryDictionary:*(*(&v54 + 1) + 8 * v21) server:{self, v48}];

          if (!v18)
          {
            v35 = objc_autoreleasePoolPush();
            v36 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v37 = HMFGetLogIdentifier();
              v38 = [(HAPAccessoryServer *)self name];
              *buf = 138543618;
              v60 = v37;
              v61 = 2112;
              v62 = v38;
              _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@[HMDAccessoryServerDemo %@] Unable to parse serialized accessory", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v35);
            v39 = objc_alloc(MEMORY[0x277CCA9B8]);
            v29 = [v39 initWithDomain:*MEMORY[0x277CFE770] code:-6742 userInfo:0];
            goto LABEL_30;
          }

          v23 = [v18 instanceID];
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
          v25 = [v23 isEqualToNumber:v24];

          if (v25)
          {
            [v18 setPrimary:1];
            [(HAPAccessoryServer *)self setPrimaryAccessory:v18];
          }

          else
          {
            [v18 setPrimary:0];
          }

          v26 = [v18 instanceID];
          v27 = [v15 containsObject:v26];

          if (v27)
          {
            v40 = objc_autoreleasePoolPush();
            v41 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v42 = HMFGetLogIdentifier();
              v43 = [(HAPAccessoryServer *)self name];
              *buf = 138543618;
              v60 = v42;
              v61 = 2112;
              v62 = v43;
              _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@[HMDAccessoryServerDemo %@] Accessory Server has accessory with duplicate instance ID", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v40);
            v44 = objc_alloc(MEMORY[0x277CCA9B8]);
            v29 = [v44 initWithDomain:*MEMORY[0x277CFE770] code:-6742 userInfo:0];

            goto LABEL_30;
          }

          v28 = [v18 instanceID];
          [v15 addObject:v28];

          [v18 setServer:self];
          [v51 addObject:v18];
          ++v21;
          v22 = v18;
        }

        while (v17 != v21);
        v17 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v29 = 0;
LABEL_30:

    [(HAPAccessoryServer *)self setAccessories:v51];
    v6 = v48;
    v4 = v49;
  }

  v45 = [(HAPAccessoryServer *)self delegateQueue];

  if (v45)
  {
    v46 = [(HAPAccessoryServer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__HMDAccessoryServerDemo__parseAttributeDatabase___block_invoke;
    block[3] = &unk_2797359B0;
    block[4] = self;
    v53 = v29;
    dispatch_async(v46, block);
  }

  v47 = *MEMORY[0x277D85DE8];
}

void __50__HMDAccessoryServerDemo__parseAttributeDatabase___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 accessories];
  v4 = [v3 copy];
  [v5 accessoryServer:v2 didDiscoverAccessories:v4 transaction:0 error:*(a1 + 40)];
}

- (HMDAccessoryServerDemo)initWithName:(id)a3 identifier:(id)a4 deviceInfo:(id)a5 paired:(BOOL)a6 keyStore:(id)a7 testMode:(BOOL)a8 browser:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = [(HMDAccessoryServerDemo *)self initCommon:a7 browser:a9];
  v19 = v18;
  if (v18)
  {
    v18->__paired = a6;
    v18->__hasPairings = a6;
    v20 = [v17 copy];
    accessoryInfo = v19->_accessoryInfo;
    v19->_accessoryInfo = v20;

    v22 = [v16 copy];
    v23 = *MEMORY[0x277CFECD0];
    v24 = *(&v19->super.super.super.isa + v23);
    *(&v19->super.super.super.isa + v23) = v22;

    v25 = [v15 copy];
    v26 = *MEMORY[0x277CFECE0];
    v27 = *(&v19->super.super.super.isa + v26);
    *(&v19->super.super.super.isa + v26) = v25;

    v19->_testMode = a8;
    category = v19->_category;
    v19->_category = &unk_2866285D0;
  }

  return v19;
}

- (id)initCommon:(id)a3 browser:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = HMDAccessoryServerDemo;
  v7 = [(HAPAccessoryServer *)&v10 initWithKeystore:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_browser, v6);
  }

  return v8;
}

@end