@interface HMDAccessoryServerDemo
- (BOOL)_delegateRespondsToSelector:(SEL)selector;
- (BOOL)removePairingForCurrentControllerOnQueue:(id)queue completion:(id)completion;
- (HMDAccessoryServerBrowserDemo)browser;
- (HMDAccessoryServerDemo)initWithName:(id)name identifier:(id)identifier deviceInfo:(id)info paired:(BOOL)paired keyStore:(id)store testMode:(BOOL)mode browser:(id)browser;
- (id)initCommon:(id)common browser:(id)browser;
- (void)_parseAttributeDatabase:(id)database;
- (void)addPairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler;
- (void)enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue;
- (void)handleUpdatesForCharacteristics:(id)characteristics stateNumber:(id)number;
- (void)identifyWithCompletion:(id)completion;
- (void)listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler;
- (void)processCharacteristicWrite:(id)write value:(id)value;
- (void)readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
- (void)removePairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler;
- (void)sendDelayedResponse:(unint64_t)response responses:(id)responses readOperation:(BOOL)operation completionQueue:(id)queue completionHandler:(id)handler;
- (void)startPairingWithRequest:(id)request;
- (void)writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler;
@end

@implementation HMDAccessoryServerDemo

- (HMDAccessoryServerBrowserDemo)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (void)handleUpdatesForCharacteristics:(id)characteristics stateNumber:(id)number
{
  characteristicsCopy = characteristics;
  numberCopy = number;
  clientQueue = [(HAPAccessoryServer *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDAccessoryServerDemo_handleUpdatesForCharacteristics_stateNumber___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = characteristicsCopy;
  v13 = numberCopy;
  v9 = numberCopy;
  v10 = characteristicsCopy;
  dispatch_async(clientQueue, block);
}

void __70__HMDAccessoryServerDemo_handleUpdatesForCharacteristics_stateNumber___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _delegateRespondsToSelector:sel_accessoryServer_didUpdateValuesForCharacteristics_stateNumber_broadcast_])
  {
    v2 = [*(a1 + 32) delegate];
    [v2 accessoryServer:*(a1 + 32) didUpdateValuesForCharacteristics:*(a1 + 40) stateNumber:*(a1 + 48) broadcast:0];
  }
}

- (BOOL)_delegateRespondsToSelector:(SEL)selector
{
  delegate = [(HAPAccessoryServer *)self delegate];
  if (delegate)
  {
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    if (delegateQueue)
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

- (void)identifyWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)listPairingsWithCompletionQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (queueCopy)
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
    dispatch_async(queueCopy, v12);
  }

  else
  {
    v10 = _Block_copy(handlerCopy);
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

- (BOOL)removePairingForCurrentControllerOnQueue:(id)queue completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  self->__paired = 0;
  self->__hasPairings = 0;
  WeakRetained = objc_loadWeakRetained(&self->_browser);
  [WeakRetained resetDemoAccessory:self];

  keyStore = [(HAPAccessoryServer *)self keyStore];
  identifier = [(HAPAccessoryServer *)self identifier];
  v25 = 0;
  [keyStore removeAccessoryKeyForName:identifier error:&v25];
  v11 = v25;

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      identifier2 = [(HAPAccessoryServer *)self identifier];
      name = [(HAPAccessoryServer *)self name];
      *buf = 138544130;
      v27 = v14;
      v28 = 2112;
      v29 = identifier2;
      v30 = 2112;
      v31 = name;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Failed to remove public key for accessory %@/%@- error %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    if (queueCopy)
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
        v24 = completionCopy;
        v18 = v17;
        dispatch_async(queueCopy, block);

        v19 = v24;
LABEL_12:

        goto LABEL_13;
      }

LABEL_8:
      v17 = 0;
      goto LABEL_9;
    }
  }

  else if (queueCopy)
  {
    goto LABEL_8;
  }

  v18 = _Block_copy(completionCopy);
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

- (void)removePairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (queueCopy)
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
    dispatch_async(queueCopy, v13);
  }

  else
  {
    v11 = _Block_copy(handlerCopy);
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

- (void)addPairing:(id)pairing completionQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (queueCopy)
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
    dispatch_async(queueCopy, v13);
  }

  else
  {
    v11 = _Block_copy(handlerCopy);
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

- (void)startPairingWithRequest:(id)request
{
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  self->__paired = 1;
  self->__hasPairings = 1;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v7 = [uUIDString dataUsingEncoding:4];

  keyStore = [(HAPAccessoryServer *)self keyStore];
  identifier = [(HAPAccessoryServer *)self identifier];
  v22 = 0;
  v10 = [keyStore savePublicKey:v7 forAccessoryName:identifier error:&v22];
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
      identifier2 = [(HAPAccessoryServer *)self identifier];
      name = [(HAPAccessoryServer *)self name];
      *buf = 138544130;
      v24 = v15;
      v25 = 2112;
      v26 = identifier2;
      v27 = 2112;
      v28 = name;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Failed to save public for accessory %@/%@ - error %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
  }

  if ([(HMDAccessoryServerDemo *)self _delegateRespondsToSelector:sel_accessoryServer_didStopPairingWithError_])
  {
    delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__HMDAccessoryServerDemo_startPairingWithRequest___block_invoke;
    block[3] = &unk_2797359B0;
    block[4] = self;
    v21 = v11;
    dispatch_async(delegateQueue, block);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __50__HMDAccessoryServerDemo_startPairingWithRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accessoryServer:*(a1 + 32) didStopPairingWithError:*(a1 + 40)];
}

- (void)processCharacteristicWrite:(id)write value:(id)value
{
  v112 = *MEMORY[0x277D85DE8];
  writeCopy = write;
  valueCopy = value;
  v6 = [valueCopy copy];
  v95 = writeCopy;
  [writeCopy setValue:v6];

  date = [MEMORY[0x277CBEAA8] date];
  [writeCopy setValueUpdatedTime:date];

  weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  service = [writeCopy service];
  type = [writeCopy type];
  delta = 1100000000;
  v9 = [type isEqualToString:*MEMORY[0x277CFE730]];

  if (v9)
  {
    v10 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE608]);
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

  type2 = [writeCopy type];
  v12 = [type2 isEqualToString:*MEMORY[0x277CFE710]];

  if (v12)
  {
    v10 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE5E8]);
    v94 = v10;
    if (v10)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

  type3 = [writeCopy type];
  v17 = [type3 isEqualToString:*MEMORY[0x277CFE720]];

  if (v17)
  {
    v94 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE5F8]);
    v18 = [service characteristicsOfType:*MEMORY[0x277CFE628]];
    firstObject = [v18 firstObject];

    v20 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE750]);
    if (!v94)
    {

      goto LABEL_30;
    }

    responseDelay = [v94 responseDelay];
    unsignedLongValue = [responseDelay unsignedLongValue];
    v23 = unsignedLongValue == 0;

    if (unsignedLongValue)
    {
      v24 = 0;
      goto LABEL_12;
    }

    delta = 300000000;
    if ([valueCopy integerValue] == 3)
    {
      value = [firstObject value];
      [value doubleValue];
      v59 = v58;
      value2 = [v20 value];
      [value2 doubleValue];
      v62 = v61;

      if (v59 <= v62)
      {
        value3 = [firstObject value];
        [value3 doubleValue];
        v81 = v80;
        value4 = [v20 value];
        [value4 doubleValue];
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
      v24 = valueCopy;
      if ([v24 integerValue] == 1)
      {
        v65 = v24;
        v66 = MEMORY[0x277CCABB0];
        value5 = [v20 value];
        [value5 doubleValue];
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
        value5 = [v20 value];
        [value5 doubleValue];
        v69 = [v72 numberWithDouble:v73 + 1.0];
      }

      v74 = v69;
      [weakToStrongObjectsMapTable setObject:v69 forKey:firstObject];

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
      [weakToStrongObjectsMapTable setObject:v24 forKey:v94];
      goto LABEL_31;
    }

    goto LABEL_17;
  }

  type4 = [writeCopy type];
  v35 = [type4 isEqualToString:*MEMORY[0x277CFE750]];

  if (v35)
  {
    v36 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE628]);
    v94 = v36;
    if (v36)
    {
      responseDelay2 = [v36 responseDelay];
      unsignedLongValue2 = [responseDelay2 unsignedLongValue];

      if (unsignedLongValue2)
      {
        goto LABEL_7;
      }

      v39 = [service characteristicsOfType:*MEMORY[0x277CFE5F8]];
      firstObject2 = [v39 firstObject];

      value6 = [firstObject2 value];
      integerValue = [value6 integerValue];

      if (integerValue == 1)
      {
        v43 = MEMORY[0x277CCABB0];
        [valueCopy doubleValue];
        v45 = [v43 numberWithDouble:v44 + -1.0];
      }

      else
      {
        value7 = [firstObject2 value];
        integerValue2 = [value7 integerValue];

        if (integerValue2 == 2)
        {
          v77 = MEMORY[0x277CCABB0];
          [valueCopy doubleValue];
          v45 = [v77 numberWithDouble:v78 + 1.0];
        }

        else
        {
          v45 = valueCopy;
        }
      }

      v24 = v45;

      goto LABEL_15;
    }

    goto LABEL_30;
  }

  type5 = [writeCopy type];
  v47 = [type5 isEqualToString:*MEMORY[0x277CFE740]];

  if (v47)
  {
    v10 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE618]);
    v94 = v10;
    if (!v10)
    {
      goto LABEL_30;
    }
  }

  else
  {
    type6 = [writeCopy type];
    v53 = [type6 isEqualToString:*MEMORY[0x277CFE748]];

    if (v53)
    {
      v54 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE620]);
      v94 = v54;
      if (v54)
      {
        responseDelay3 = [v54 responseDelay];
        unsignedLongValue3 = [responseDelay3 unsignedLongValue];

        if (unsignedLongValue3)
        {
          goto LABEL_7;
        }

        delta = 300000000;
        if ([valueCopy integerValue] >= 3)
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

    type7 = [writeCopy type];
    v64 = [type7 isEqualToString:*MEMORY[0x277CFE738]];

    if (v64)
    {
      v10 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE610]);
      v94 = v10;
      if (!v10)
      {
        goto LABEL_30;
      }
    }

    else
    {
      type8 = [writeCopy type];
      v71 = [type8 isEqualToString:*MEMORY[0x277CFE728]];

      if (v71)
      {
        v10 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE600]);
        v94 = v10;
        if (!v10)
        {
          goto LABEL_30;
        }
      }

      else
      {
        type9 = [writeCopy type];
        v86 = [type9 isEqualToString:*MEMORY[0x277CFE760]];

        if (v86)
        {
          v10 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE638]);
          v94 = v10;
          if (!v10)
          {
            goto LABEL_30;
          }
        }

        else
        {
          type10 = [writeCopy type];
          v88 = [type10 isEqualToString:*MEMORY[0x277CFE5B0]];

          if (!v88)
          {
            goto LABEL_30;
          }

          v10 = __findAssociatedCharacteristicWithService(service, *MEMORY[0x277CFE658]);
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
  responseDelay4 = [v10 responseDelay];
  unsignedLongValue4 = [responseDelay4 unsignedLongValue];

  if (!unsignedLongValue4)
  {
    v24 = valueCopy;
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
    name = [(HAPAccessoryServer *)self name];
    identifier = [(HAPAccessoryServer *)self identifier];
    responseDelay5 = [v94 responseDelay];
    unsignedLongValue5 = [responseDelay5 unsignedLongValue];
    type11 = [v94 type];
    instanceID = [v94 instanceID];
    *buf = 138544642;
    v101 = v27;
    v102 = 2112;
    v103 = name;
    v104 = 2112;
    v105 = identifier;
    v106 = 2048;
    v107 = unsignedLongValue5;
    v108 = 2112;
    v109 = type11;
    v110 = 2112;
    v111 = instanceID;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@[HMDAccessoryServerDemo %@/%@] responseDelay set to %lu for current state characteristic %@/%@ - bypassing processing effects...", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v25);
LABEL_31:
  if ([weakToStrongObjectsMapTable count])
  {
    v48 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(weakToStrongObjectsMapTable, "count")}];
    objc_initWeak(buf, self);
    if ([(HMDAccessoryServerDemo *)self _delegateRespondsToSelector:sel_accessoryServer_didUpdateValuesForCharacteristics_stateNumber_broadcast_])
    {
      v49 = dispatch_time(0, delta);
      delegateQueue = [(HAPAccessoryServer *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__HMDAccessoryServerDemo_processCharacteristicWrite_value___block_invoke;
      block[3] = &unk_279732670;
      v97 = weakToStrongObjectsMapTable;
      v98 = v48;
      objc_copyWeak(&v99, buf);
      dispatch_after(v49, delegateQueue, block);

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

- (void)enableEvents:(BOOL)events forCharacteristics:(id)characteristics withCompletionHandler:(id)handler queue:(id)queue
{
  v29 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  handlerCopy = handler;
  queueCopy = queue;
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = characteristicsCopy;
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
        [array addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  if (queueCopy)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __86__HMDAccessoryServerDemo_enableEvents_forCharacteristics_withCompletionHandler_queue___block_invoke;
    v21[3] = &unk_279735738;
    v23 = handlerCopy;
    v22 = array;
    dispatch_async(queueCopy, v21);

    v18 = v23;
  }

  else
  {
    v18 = _Block_copy(handlerCopy);
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

- (void)writeCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  v85 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = valuesCopy;
  v56 = [obj countByEnumeratingWithState:&v64 objects:v84 count:16];
  if (!v56)
  {

    v15 = array;
LABEL_18:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __101__HMDAccessoryServerDemo_writeCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
    block[3] = &unk_279735738;
    v62 = v15;
    v63 = handlerCopy;
    v39 = v15;
    v40 = handlerCopy;
    dispatch_async(queueCopy, block);

    v38 = v63;
    goto LABEL_19;
  }

  v42 = handlerCopy;
  v43 = queueCopy;
  v44 = expiryCopy;
  v14 = 0;
  v55 = *v65;
  selfCopy2 = self;
  v15 = array;
  do
  {
    for (i = 0; i != v56; ++i)
    {
      if (*v65 != v55)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v64 + 1) + 8 * i);
      characteristic = [v18 characteristic];
      responseDelay = [characteristic responseDelay];
      unsignedLongValue = [responseDelay unsignedLongValue];

      if (unsignedLongValue)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v54 = HMFGetLogIdentifier();
          name = [(HAPAccessoryServer *)selfCopy2 name];
          identifier = [(HAPAccessoryServer *)selfCopy2 identifier];
          [characteristic service];
          v50 = v52 = v14;
          type = [v50 type];
          [characteristic type];
          v25 = log = v23;
          instanceID = [characteristic instanceID];
          [characteristic value];
          v27 = v51 = v22;
          *buf = 138545154;
          v69 = v54;
          v70 = 2112;
          v71 = name;
          v72 = 2112;
          v73 = identifier;
          v74 = 2112;
          v75 = type;
          v76 = 2112;
          v77 = v25;
          v78 = 2112;
          v79 = instanceID;
          v80 = 2112;
          v81 = v27;
          v82 = 2048;
          v83 = unsignedLongValue;
          _os_log_impl(&dword_2531F8000, log, OS_LOG_TYPE_INFO, "%{public}@[HMDAccessoryServerDemo %@/%@] Service %@ Characteristic %@/%@: value %@, delay %lu", buf, 0x52u);

          v22 = v51;
          v15 = array;

          v23 = log;
          selfCopy2 = self;

          v14 = v52;
        }

        objc_autoreleasePoolPop(v22);
        if (v14 <= unsignedLongValue)
        {
          v14 = unsignedLongValue;
        }
      }

      value = [v18 value];
      [(HMDAccessoryServerDemo *)selfCopy2 processCharacteristicWrite:characteristic value:value];

      v29 = [MEMORY[0x277CFEA90] responseTupleForCharacteristic:characteristic error:0];
      [v15 addObject:v29];
    }

    v56 = [obj countByEnumeratingWithState:&v64 objects:v84 count:16];
  }

  while (v56);

  queueCopy = v43;
  expiryCopy = v44;
  handlerCopy = v42;
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
    name2 = [(HAPAccessoryServer *)self name];
    identifier2 = [(HAPAccessoryServer *)self identifier];
    *buf = 138544130;
    v69 = v33;
    v70 = 2112;
    v71 = name2;
    v72 = 2112;
    v73 = identifier2;
    v74 = 2048;
    v75 = v30;
    _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@[HMDAccessoryServerDemo %@/%@] Delaying write-response by %lu", buf, 0x2Au);

    v15 = array;
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

- (void)readCharacteristicValues:(id)values timeout:(double)timeout expiry:(id)expiry completionQueue:(id)queue completionHandler:(id)handler
{
  v81 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  expiryCopy = expiry;
  queueCopy = queue;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = valuesCopy;
  v14 = [obj countByEnumeratingWithState:&v60 objects:v80 count:16];
  if (!v14)
  {

LABEL_18:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__HMDAccessoryServerDemo_readCharacteristicValues_timeout_expiry_completionQueue_completionHandler___block_invoke;
    block[3] = &unk_279735738;
    v58 = array;
    v59 = handlerCopy;
    v38 = array;
    v39 = handlerCopy;
    dispatch_async(queueCopy, block);

    v37 = v59;
    goto LABEL_19;
  }

  v41 = handlerCopy;
  v42 = queueCopy;
  v43 = expiryCopy;
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
      responseDelay = [v18 responseDelay];
      unsignedLongValue = [responseDelay unsignedLongValue];

      if (unsignedLongValue)
      {
        v21 = objc_autoreleasePoolPush();
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v50 = HMFGetLogIdentifier();
          v48 = v21;
          name = [(HAPAccessoryServer *)self name];
          identifier = [(HAPAccessoryServer *)self identifier];
          service = [v18 service];
          [service type];
          v25 = v49 = v15;
          type = [v18 type];
          instanceID = [v18 instanceID];
          value = [v18 value];
          *buf = 138545154;
          v65 = v50;
          v66 = 2112;
          v67 = name;
          v68 = 2112;
          v69 = identifier;
          v70 = 2112;
          v71 = v25;
          v72 = 2112;
          v73 = type;
          v74 = 2112;
          v75 = instanceID;
          v76 = 2112;
          v77 = value;
          v78 = 2048;
          v79 = unsignedLongValue;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@[HMDAccessoryServerDemo %@/%@] Service %@ Characteristic %@/%@: value %@, delay %lu", buf, 0x52u);

          v21 = v48;
          v16 = v45;

          v15 = v49;
        }

        objc_autoreleasePoolPop(v21);
        if (v15 <= unsignedLongValue)
        {
          v15 = unsignedLongValue;
        }
      }

      v29 = [MEMORY[0x277CFEA90] responseTupleForCharacteristic:v18 error:0];
      [array addObject:v29];

      ++v17;
    }

    while (v16 != v17);
    v16 = [obj countByEnumeratingWithState:&v60 objects:v80 count:16];
  }

  while (v16);

  queueCopy = v42;
  expiryCopy = v43;
  handlerCopy = v41;
  if (!v15)
  {
    goto LABEL_18;
  }

  v30 = objc_autoreleasePoolPush();
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = HMFGetLogIdentifier();
    name2 = [(HAPAccessoryServer *)self name];
    identifier2 = [(HAPAccessoryServer *)self identifier];
    *buf = 138544130;
    v65 = v32;
    v66 = 2112;
    v67 = name2;
    v68 = 2112;
    v69 = identifier2;
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
  v55 = array;
  v56 = v41;
  v37 = array;
  v38 = v41;
  v39 = v35;
  dispatch_source_set_event_handler(v39, handler);
  dispatch_resume(v39);

LABEL_19:
  v40 = *MEMORY[0x277D85DE8];
}

- (void)sendDelayedResponse:(unint64_t)response responses:(id)responses readOperation:(BOOL)operation completionQueue:(id)queue completionHandler:(id)handler
{
  LODWORD(v9) = operation;
  v46 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  queueCopy = queue;
  handlerCopy = handler;
  v15 = handlerCopy;
  if (response)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v27 = responsesCopy;
      v9 = v18 = v9;
      name = [(HAPAccessoryServer *)self name];
      identifier = [(HAPAccessoryServer *)self identifier];
      v21 = identifier;
      *buf = 138544386;
      v22 = @"write";
      v37 = v9;
      if (v18)
      {
        v22 = @"read";
      }

      v38 = 2112;
      v39 = name;
      v40 = 2112;
      v41 = identifier;
      v42 = 2112;
      v43 = v22;
      v44 = 2048;
      responseCopy = response;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[HMDAccessoryServerDemo %@/%@] Delaying %@-response by %lu", buf, 0x34u);

      LOBYTE(v9) = v18;
      responsesCopy = v27;
    }

    objc_autoreleasePoolPop(v16);
    v23 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queueCopy);
    v24 = dispatch_time(0, 1000000 * response);
    dispatch_source_set_timer(v23, v24, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __104__HMDAccessoryServerDemo_sendDelayedResponse_responses_readOperation_completionQueue_completionHandler___block_invoke_15;
    handler[3] = &unk_279733CD0;
    v32 = v9;
    handler[4] = self;
    v29 = v23;
    v31 = v15;
    v30 = responsesCopy;
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
    v35 = handlerCopy;
    v34 = responsesCopy;
    dispatch_async(queueCopy, block);

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

- (void)_parseAttributeDatabase:(id)database
{
  v67 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  v5 = *MEMORY[0x277CFE590];
  v6 = [databaseCopy objectForKeyedSubscript:*MEMORY[0x277CFE590]];
  if (!v6)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      name = [(HAPAccessoryServer *)self name];
      *buf = 138543618;
      v60 = v32;
      v61 = 2112;
      v62 = name;
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
    name2 = [(HAPAccessoryServer *)self name];
    v11 = objc_opt_class();
    *buf = 138544130;
    v60 = v9;
    v61 = 2112;
    v62 = name2;
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
    v49 = databaseCopy;
    v15 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v6, "count")}];
    array = [MEMORY[0x277CBEB18] array];
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
              name3 = [(HAPAccessoryServer *)self name];
              *buf = 138543618;
              v60 = v37;
              v61 = 2112;
              v62 = name3;
              _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@[HMDAccessoryServerDemo %@] Unable to parse serialized accessory", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v35);
            v39 = objc_alloc(MEMORY[0x277CCA9B8]);
            v29 = [v39 initWithDomain:*MEMORY[0x277CFE770] code:-6742 userInfo:0];
            goto LABEL_30;
          }

          instanceID = [v18 instanceID];
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
          v25 = [instanceID isEqualToNumber:v24];

          if (v25)
          {
            [v18 setPrimary:1];
            [(HAPAccessoryServer *)self setPrimaryAccessory:v18];
          }

          else
          {
            [v18 setPrimary:0];
          }

          instanceID2 = [v18 instanceID];
          v27 = [v15 containsObject:instanceID2];

          if (v27)
          {
            v40 = objc_autoreleasePoolPush();
            v41 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v42 = HMFGetLogIdentifier();
              name4 = [(HAPAccessoryServer *)self name];
              *buf = 138543618;
              v60 = v42;
              v61 = 2112;
              v62 = name4;
              _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@[HMDAccessoryServerDemo %@] Accessory Server has accessory with duplicate instance ID", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v40);
            v44 = objc_alloc(MEMORY[0x277CCA9B8]);
            v29 = [v44 initWithDomain:*MEMORY[0x277CFE770] code:-6742 userInfo:0];

            goto LABEL_30;
          }

          instanceID3 = [v18 instanceID];
          [v15 addObject:instanceID3];

          [v18 setServer:self];
          [array addObject:v18];
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

    [(HAPAccessoryServer *)self setAccessories:array];
    v6 = v48;
    databaseCopy = v49;
  }

  delegateQueue = [(HAPAccessoryServer *)self delegateQueue];

  if (delegateQueue)
  {
    delegateQueue2 = [(HAPAccessoryServer *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__HMDAccessoryServerDemo__parseAttributeDatabase___block_invoke;
    block[3] = &unk_2797359B0;
    block[4] = self;
    v53 = v29;
    dispatch_async(delegateQueue2, block);
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

- (HMDAccessoryServerDemo)initWithName:(id)name identifier:(id)identifier deviceInfo:(id)info paired:(BOOL)paired keyStore:(id)store testMode:(BOOL)mode browser:(id)browser
{
  nameCopy = name;
  identifierCopy = identifier;
  infoCopy = info;
  v18 = [(HMDAccessoryServerDemo *)self initCommon:store browser:browser];
  v19 = v18;
  if (v18)
  {
    v18->__paired = paired;
    v18->__hasPairings = paired;
    v20 = [infoCopy copy];
    accessoryInfo = v19->_accessoryInfo;
    v19->_accessoryInfo = v20;

    v22 = [identifierCopy copy];
    v23 = *MEMORY[0x277CFECD0];
    v24 = *(&v19->super.super.super.isa + v23);
    *(&v19->super.super.super.isa + v23) = v22;

    v25 = [nameCopy copy];
    v26 = *MEMORY[0x277CFECE0];
    v27 = *(&v19->super.super.super.isa + v26);
    *(&v19->super.super.super.isa + v26) = v25;

    v19->_testMode = mode;
    category = v19->_category;
    v19->_category = &unk_2866285D0;
  }

  return v19;
}

- (id)initCommon:(id)common browser:(id)browser
{
  browserCopy = browser;
  v10.receiver = self;
  v10.super_class = HMDAccessoryServerDemo;
  v7 = [(HAPAccessoryServer *)&v10 initWithKeystore:common];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_browser, browserCopy);
  }

  return v8;
}

@end