@interface HMMTRProtocolOperationManager
+ (HMMTRProtocolOperationManager)sharedInstance;
+ (id)logCategory;
- (BOOL)_isBasicClusterOperationForBridgedDevice:(Class)device endpointID:(unint64_t)d;
- (BOOL)handleSpecialCaseCharacteristicWithOperation:(id)operation accessoryServer:(id)server clientQueue:(id)queue operationResponseHandler:(id)handler updatedAttributesHandler:(id)attributesHandler;
- (id)_processGenericResponseForOperation:(id)operation responseValues:(id)values responseError:(id)error;
- (id)_processReadResponseForOperation:(id)operation readResponseValues:(id)values readResponseError:(id)error;
- (id)_processResponseForOperation:(id)operation responseValues:(id)values responseError:(id)error;
- (id)_processWriteResponseForOperation:(id)operation writeResponseValues:(id)values writeResponseError:(id)error;
- (id)_responseTupleWithMappedValueForOperation:(id)operation responseValue:(id)value responseError:(id)error;
- (void)_addArgumentsToInvocation:(id)invocation primaryArgument:(id)argument completionHandlerArgument:(id)handlerArgument characteristicDescriptor:(id)descriptor forCharacteristic:(id)characteristic;
- (void)_addArgumentsToInvocation:(id)invocation primaryArgument:(id)argument expectedValues:(id)values expectedValueInterval:(id)interval completionHandlerArgument:(id)handlerArgument characteristicDescriptor:(id)descriptor forCharacteristic:(id)characteristic;
- (void)_addParamsToInvocation:(id)invocation paramsObject:(id)object completionHandlerArgument:(id)argument characteristicDescriptor:(id)descriptor forCharacteristic:(id)characteristic;
- (void)_addParamsToInvocation:(id)invocation paramsObject:(id)object expectedValues:(id)values expectedValueInterval:(id)interval completionHandlerArgument:(id)argument characteristicDescriptor:(id)descriptor forCharacteristic:(id)characteristic;
- (void)handleHueSaturationWriteWithOperation:(id)operation clientQueue:(id)queue operationResponseHandler:(id)handler updatedAttributesHandler:(id)attributesHandler;
- (void)handleIdentifyDeviceWriteWithOperation:(id)operation clientQueue:(id)queue operationResponseHandler:(id)handler;
- (void)handleLockTargetStateWriteWithOperation:(id)operation accessoryServer:(id)server clientQueue:(id)queue operationResponseHandler:(id)handler;
- (void)registerOperation:(id)operation accessoryServer:(id)server clientQueue:(id)queue reportDistributor:(id)distributor operationResponseHandler:(id)handler updatedAttributesHandler:(id)attributesHandler;
@end

@implementation HMMTRProtocolOperationManager

- (void)_addArgumentsToInvocation:(id)invocation primaryArgument:(id)argument expectedValues:(id)values expectedValueInterval:(id)interval completionHandlerArgument:(id)handlerArgument characteristicDescriptor:(id)descriptor forCharacteristic:(id)characteristic
{
  v78 = *MEMORY[0x277D85DE8];
  invocationCopy = invocation;
  argumentCopy = argument;
  valuesCopy = values;
  intervalCopy = interval;
  handlerArgumentCopy = handlerArgument;
  v64 = handlerArgumentCopy;
  descriptorCopy = descriptor;
  characteristicCopy = characteristic;
  [HMMTRHAPService chipPluginServiceForCharacteristic:characteristicCopy];
  v58 = v57 = descriptorCopy;
  if (!v58)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v21 = characteristicCopy;
      v23 = v22 = handlerArgumentCopy;
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@Trying send a message for a characteristic that does not belong to a service owned by HomeKitMatter", buf, 0xCu);

      handlerArgumentCopy = v22;
      characteristicCopy = v21;
    }

    objc_autoreleasePoolPop(v18);
    descriptorCopy = v57;
  }

  arguments = [descriptorCopy arguments];
  primaryArgIndex = [descriptorCopy primaryArgIndex];
  if ([descriptorCopy syncWriteFunc])
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  if (primaryArgIndex)
  {
    ++v26;
  }

  if (handlerArgumentCopy)
  {
    v27 = v26 + 1;
  }

  else
  {
    v27 = v26;
  }

  if ([arguments count])
  {
    v27 = v27 + [arguments count];
  }

  v28 = invocationCopy;
  v29 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v32 = v55 = arguments;
    NSStringFromSelector([invocationCopy selector]);
    v33 = v53 = handlerArgumentCopy;
    endpoint = [v58 endpoint];
    [MEMORY[0x277CCABB0] numberWithInt:v27];
    v52 = v29;
    v36 = v35 = primaryArgIndex;
    *buf = 138544386;
    *&buf[4] = v32;
    v70 = 2112;
    v71 = characteristicCopy;
    v72 = 2112;
    v73 = v33;
    v74 = 2112;
    v75 = endpoint;
    v76 = 2112;
    v77 = v36;
    _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_DEBUG, "%{public}@Characteristic: (%@), selector: %@, endpoint: %@, numberOfArguments = %@", buf, 0x34u);

    primaryArgIndex = v35;
    v29 = v52;

    v28 = invocationCopy;
    handlerArgumentCopy = v53;

    arguments = v55;
  }

  v56 = characteristicCopy;

  objc_autoreleasePoolPop(v29);
  v37 = v27;
  if (handlerArgumentCopy)
  {
    [v28 setArgument:&v64 atIndex:v27 + 1];
    v37 = v27 - 1;
  }

  [v28 setArgument:&intervalCopy atIndex:v37 + 1];
  if ([descriptorCopy syncWriteFunc])
  {
    v38 = v37 - 1;
  }

  else
  {
    v38 = v37 - 2;
    [v28 setArgument:&valuesCopy atIndex:v37];
  }

  v54 = primaryArgIndex;
  if (primaryArgIndex)
  {
    integerValue = [primaryArgIndex integerValue];
    [v28 setArgument:&argumentCopy atIndex:integerValue + 2];
  }

  else
  {
    integerValue = -1;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v40 = arguments;
  allKeys = [arguments allKeys];
  v42 = [allKeys countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v61;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v61 != v44)
        {
          objc_enumerationMutation(allKeys);
        }

        v46 = *(*(&v60 + 1) + 8 * i);
        integerValue2 = [v46 integerValue];
        if (integerValue2 != v38 && integerValue2 != integerValue)
        {
          v49 = integerValue2;
          *buf = [v40 objectForKey:v46];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [*buf isEqualToString:@"NULL"])
          {
            v50 = *buf;
            *buf = 0;
          }

          v28 = invocationCopy;
          [invocationCopy setArgument:buf atIndex:v49 + 2];
        }
      }

      v43 = [allKeys countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v43);
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)_addArgumentsToInvocation:(id)invocation primaryArgument:(id)argument completionHandlerArgument:(id)handlerArgument characteristicDescriptor:(id)descriptor forCharacteristic:(id)characteristic
{
  v65 = *MEMORY[0x277D85DE8];
  invocationCopy = invocation;
  argumentCopy = argument;
  handlerArgumentCopy = handlerArgument;
  v53 = handlerArgumentCopy;
  descriptorCopy = descriptor;
  characteristicCopy = characteristic;
  v46 = [HMMTRHAPService chipPluginServiceForCharacteristic:?];
  if (!v46)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v17;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_ERROR, "%{public}@Trying send a message for a characteristic that does not belong to a service owned by HomeKitMatter", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  arguments = [descriptorCopy arguments];
  primaryArgIndex = [descriptorCopy primaryArgIndex];
  v20 = primaryArgIndex;
  if (handlerArgumentCopy)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  if (primaryArgIndex)
  {
    v22 = v21;
  }

  else
  {
    v22 = handlerArgumentCopy != 0;
  }

  if ([arguments count])
  {
    v22 = v22 + [arguments count];
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v25 = HMFGetOSLogHandle();
  v44 = descriptorCopy;
  v45 = v20;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = HMFGetLogIdentifier();
    v27 = NSStringFromSelector([invocationCopy selector]);
    [v46 endpoint];
    v29 = v28 = handlerArgumentCopy;
    v30 = [MEMORY[0x277CCABB0] numberWithInt:v22];
    *buf = 138544386;
    *&buf[4] = v26;
    v57 = 2112;
    v58 = characteristicCopy;
    v59 = 2112;
    v60 = v27;
    v61 = 2112;
    v62 = v29;
    v63 = 2112;
    v64 = v30;
    _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Characteristic: (%@), selector: %@, endpoint: %@, numberOfArguments = %@", buf, 0x34u);

    handlerArgumentCopy = v28;
    v20 = v45;
  }

  objc_autoreleasePoolPop(v23);
  if (handlerArgumentCopy)
  {
    v31 = v22 - 1;
    [invocationCopy setArgument:&v53 atIndex:v31 + 2];
    if (v20)
    {
LABEL_17:
      integerValue = [v20 integerValue];
      [invocationCopy setArgument:&argumentCopy atIndex:integerValue + 2];
      goto LABEL_20;
    }
  }

  else
  {
    v31 = -1;
    if (v20)
    {
      goto LABEL_17;
    }
  }

  integerValue = -1;
LABEL_20:
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  allKeys = [arguments allKeys];
  v34 = [allKeys countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v50;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v50 != v36)
        {
          objc_enumerationMutation(allKeys);
        }

        v38 = *(*(&v49 + 1) + 8 * i);
        integerValue2 = [v38 integerValue];
        if (integerValue2 != v31 && integerValue2 != integerValue)
        {
          v41 = integerValue2;
          *buf = [arguments objectForKey:v38];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [*buf isEqualToString:@"NULL"])
          {
            v42 = *buf;
            *buf = 0;
          }

          [invocationCopy setArgument:buf atIndex:v41 + 2];
        }
      }

      v35 = [allKeys countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v35);
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)_addParamsToInvocation:(id)invocation paramsObject:(id)object expectedValues:(id)values expectedValueInterval:(id)interval completionHandlerArgument:(id)argument characteristicDescriptor:(id)descriptor forCharacteristic:(id)characteristic
{
  v70 = *MEMORY[0x277D85DE8];
  invocationCopy = invocation;
  objectCopy = object;
  v60 = objectCopy;
  valuesCopy = values;
  intervalCopy = interval;
  argumentCopy = argument;
  descriptorCopy = descriptor;
  selfCopy = self;
  characteristicCopy = characteristic;
  paramsIndex = [descriptorCopy paramsIndex];
  integerValue = [paramsIndex integerValue];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [descriptorCopy paramsArguments];
  v51 = [obj countByEnumeratingWithState:&v53 objects:v69 count:16];
  if (v51)
  {
    v19 = *v54;
    v48 = descriptorCopy;
    v49 = *v54;
    v46 = selfCopy;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v54 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v53 + 1) + 8 * i);
        v22 = NSSelectorFromString(v21);
        paramsArguments = [descriptorCopy paramsArguments];
        v52 = [paramsArguments objectForKey:v21];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v52 isEqualToString:@"NULL"])
        {
          v24 = objc_autoreleasePoolPush();
          v25 = selfCopy;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v27 = HMFGetLogIdentifier();
            *buf = 138543362;
            v62 = v27;
            _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_DEBUG, "%{public}@NULL argument requested, setting arg to nil.", buf, 0xCu);

            v19 = v49;
          }

          objc_autoreleasePoolPop(v24);
          v28 = v52;
          v52 = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          v29 = [objectCopy methodSignatureForSelector:v22];
          if (v29)
          {
            v30 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v29];
            [v30 setSelector:v22];
            [v30 setArgument:&v52 atIndex:2];
            [v30 invokeWithTarget:objectCopy];

            descriptorCopy = v48;
          }

          else
          {
            v37 = objc_autoreleasePoolPush();
            v38 = selfCopy;
            v39 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v40 = HMFGetLogIdentifier();
              paramsClass = [descriptorCopy paramsClass];
              instanceID = [characteristicCopy instanceID];
              *buf = 138544130;
              v62 = v40;
              v63 = 2112;
              v64 = v21;
              v65 = 2112;
              v66 = paramsClass;
              v19 = v49;
              v67 = 2112;
              v68 = instanceID;
              _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_ERROR, "%{public}@Couldn't get Signature for Property %@ for Params of type %@ for characteristic %@", buf, 0x2Au);

              descriptorCopy = v48;
              selfCopy = v46;
            }

            objc_autoreleasePoolPop(v37);
          }
        }

        else
        {
          v31 = objc_autoreleasePoolPush();
          v32 = selfCopy;
          v33 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v34 = HMFGetLogIdentifier();
            paramsClass2 = [descriptorCopy paramsClass];
            instanceID2 = [characteristicCopy instanceID];
            *buf = 138544130;
            v62 = v34;
            v63 = 2112;
            v64 = v21;
            v65 = 2112;
            v66 = paramsClass2;
            v19 = v49;
            v67 = 2112;
            v68 = instanceID2;
            _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to set Property %@ for Params of type %@ for characteristic %@", buf, 0x2Au);

            selfCopy = v46;
          }

          objc_autoreleasePoolPop(v31);
        }
      }

      v51 = [obj countByEnumeratingWithState:&v53 objects:v69 count:16];
    }

    while (v51);
  }

  [invocationCopy setArgument:&v60 atIndex:integerValue + 2];
  [invocationCopy setArgument:&valuesCopy atIndex:integerValue + 3];
  [invocationCopy setArgument:&intervalCopy atIndex:integerValue + 4];
  [invocationCopy setArgument:&argumentCopy atIndex:integerValue + 5];

  v43 = *MEMORY[0x277D85DE8];
}

- (void)_addParamsToInvocation:(id)invocation paramsObject:(id)object completionHandlerArgument:(id)argument characteristicDescriptor:(id)descriptor forCharacteristic:(id)characteristic
{
  v66 = *MEMORY[0x277D85DE8];
  invocationCopy = invocation;
  objectCopy = object;
  selfCopy = self;
  v14 = objectCopy;
  v56 = objectCopy;
  argumentCopy = argument;
  descriptorCopy = descriptor;
  characteristicCopy = characteristic;
  paramsIndex = [descriptorCopy paramsIndex];
  integerValue = [paramsIndex integerValue];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [descriptorCopy paramsArguments];
  v49 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
  if (v49)
  {
    v48 = *v52;
    v46 = v14;
    selfCopy2 = self;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v52 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v51 + 1) + 8 * i);
        v19 = NSSelectorFromString(v18);
        paramsArguments = [descriptorCopy paramsArguments];
        v50 = [paramsArguments objectForKey:v18];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v50 isEqualToString:@"NULL"])
        {
          v21 = objc_autoreleasePoolPush();
          v22 = selfCopy;
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v24 = HMFGetLogIdentifier();
            *buf = 138543362;
            v58 = v24;
            _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_DEBUG, "%{public}@NULL argument requested, setting arg to nil.", buf, 0xCu);

            v14 = v46;
          }

          objc_autoreleasePoolPop(v21);
          v25 = v50;
          v50 = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          v26 = [v14 methodSignatureForSelector:v19];
          if (v26)
          {
            v27 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v26];
            [v27 setSelector:v19];
            [v27 setArgument:&v50 atIndex:2];
            [v27 invokeWithTarget:v14];
          }

          else
          {
            v34 = objc_autoreleasePoolPush();
            v35 = selfCopy;
            v36 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v37 = HMFGetLogIdentifier();
              paramsClass = [descriptorCopy paramsClass];
              [characteristicCopy instanceID];
              v40 = v39 = descriptorCopy;
              *buf = 138544130;
              v58 = v37;
              v59 = 2112;
              v60 = v18;
              v61 = 2112;
              v62 = paramsClass;
              v14 = v46;
              v63 = 2112;
              v64 = v40;
              _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@Couldn't get Signature for Property %@ for Params of type %@ for characteristic %@", buf, 0x2Au);

              descriptorCopy = v39;
              selfCopy = selfCopy2;
            }

            objc_autoreleasePoolPop(v34);
          }
        }

        else
        {
          v28 = objc_autoreleasePoolPush();
          v29 = selfCopy;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = HMFGetLogIdentifier();
            paramsClass2 = [descriptorCopy paramsClass];
            instanceID = [characteristicCopy instanceID];
            *buf = 138544130;
            v58 = v31;
            v59 = 2112;
            v60 = v18;
            v61 = 2112;
            v62 = paramsClass2;
            v14 = v46;
            v63 = 2112;
            v64 = instanceID;
            _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to set Property %@ for Params of type %@ for characteristic %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v28);
        }
      }

      v49 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
    }

    while (v49);
  }

  [invocationCopy setArgument:&v56 atIndex:integerValue + 2];
  [invocationCopy setArgument:&argumentCopy atIndex:integerValue + 3];

  v41 = *MEMORY[0x277D85DE8];
}

- (id)_processReadResponseForOperation:(id)operation readResponseValues:(id)values readResponseError:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  valuesCopy = values;
  errorCopy = error;
  characteristic = [operationCopy characteristic];
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    instanceID = [characteristic instanceID];
    v25 = 138544130;
    v26 = v15;
    v27 = 2112;
    v28 = instanceID;
    v29 = 2112;
    v30 = valuesCopy;
    v31 = 2112;
    v32 = errorCopy;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Processing read response for characteristic %@. Value: %@ Error: %@", &v25, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  if ([errorCopy code] == 2)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = characteristic;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Could not find description for characteristic %@, falling back to localized version", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x277CFEA90] responseTupleForCharacteristic:characteristic error:0];
  }

  else
  {
    v21 = [(HMMTRProtocolOperationManager *)selfCopy _responseTupleWithMappedValueForOperation:operationCopy responseValue:valuesCopy responseError:errorCopy];
  }

  v22 = v21;

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_responseTupleWithMappedValueForOperation:(id)operation responseValue:(id)value responseError:(id)error
{
  v37 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  valueCopy = value;
  errorCopy = error;
  characteristic = [operationCopy characteristic];
  if (errorCopy)
  {
    v12 = MEMORY[0x277CCA9B8];
    domain = [errorCopy domain];
    v14 = [v12 errorWithDomain:domain code:objc_msgSend(errorCopy userInfo:{"code"), 0}];
  }

  else
  {
    if (valueCopy)
    {
      characteristicDescription = [operationCopy characteristicDescription];
      mapValue = [characteristicDescription mapValue];

      if (mapValue)
      {
        characteristicDescription2 = [operationCopy characteristicDescription];
        mapValue2 = [characteristicDescription2 mapValue];
        v19 = (mapValue2)[2](mapValue2, valueCopy);
        [characteristic setValue:v19];

        v20 = objc_autoreleasePoolPush();
        selfCopy = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = HMFGetLogIdentifier();
          value = [characteristic value];
          instanceID = [characteristic instanceID];
          v29 = 138544130;
          v30 = v23;
          v31 = 2112;
          v32 = valueCopy;
          v33 = 2112;
          v34 = value;
          v35 = 2112;
          v36 = instanceID;
          _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Mapped value from dictionary %@ to %@ for instanceID %@.", &v29, 0x2Au);
        }

        objc_autoreleasePoolPop(v20);
      }

      else
      {
        [characteristic setValue:valueCopy];
      }
    }

    v14 = 0;
  }

  v26 = [MEMORY[0x277CFEA90] responseTupleForCharacteristic:characteristic error:v14];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)_processWriteResponseForOperation:(id)operation writeResponseValues:(id)values writeResponseError:(id)error
{
  v35 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  valuesCopy = values;
  errorCopy = error;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    characteristic = [operationCopy characteristic];
    instanceID = [characteristic instanceID];
    value = [operationCopy value];
    v27 = 138544130;
    v28 = v14;
    v29 = 2112;
    v30 = instanceID;
    v31 = 2112;
    v32 = value;
    v33 = 2112;
    v34 = errorCopy;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory received write response for characteristic %@. Targeted value: %@\nError: %@", &v27, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  if (errorCopy)
  {
    v18 = MEMORY[0x277CCA9B8];
    domain = [errorCopy domain];
    v20 = [v18 errorWithDomain:domain code:objc_msgSend(errorCopy userInfo:{"code"), 0}];
  }

  else
  {
    domain = [operationCopy value];
    characteristic2 = [operationCopy characteristic];
    [characteristic2 setValue:domain];

    v20 = 0;
  }

  v22 = MEMORY[0x277CFEA90];
  characteristic3 = [operationCopy characteristic];
  v24 = [v22 responseTupleForCharacteristic:characteristic3 error:v20];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_processGenericResponseForOperation:(id)operation responseValues:(id)values responseError:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  valuesCopy = values;
  errorCopy = error;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier();
    v18 = 138543874;
    v19 = v14;
    v20 = 2112;
    v21 = errorCopy;
    v22 = 2112;
    v23 = valuesCopy;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_DEBUG, "%{public}@CHIP Accessory received response. Error: %@ Response %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HMMTRProtocolOperationManager *)selfCopy _responseTupleWithMappedValueForOperation:operationCopy responseValue:valuesCopy responseError:errorCopy];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_processResponseForOperation:(id)operation responseValues:(id)values responseError:(id)error
{
  operationCopy = operation;
  valuesCopy = values;
  errorCopy = error;
  type = [operationCopy type];
  v12 = 0;
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_12;
      }

      v18 = [(HMMTRProtocolOperationManager *)self _processWriteResponseForOperation:operationCopy writeResponseValues:valuesCopy writeResponseError:errorCopy];
      goto LABEL_11;
    }
  }

  else
  {
    if ((type - 2) < 2)
    {
      characteristic = [operationCopy characteristic];

      if (characteristic)
      {
        characteristic2 = [operationCopy characteristic];
        v15 = [characteristic2 copy];

        characteristic3 = [operationCopy characteristic];
        service = [characteristic3 service];
        [v15 setService:service];

        [operationCopy setCharacteristic:v15];
      }

      v18 = [(HMMTRProtocolOperationManager *)self _processGenericResponseForOperation:operationCopy responseValues:valuesCopy responseError:errorCopy];
      goto LABEL_11;
    }

    if (type != 4)
    {
      goto LABEL_12;
    }
  }

  v18 = [(HMMTRProtocolOperationManager *)self _processReadResponseForOperation:operationCopy readResponseValues:valuesCopy readResponseError:errorCopy];
LABEL_11:
  v12 = v18;
LABEL_12:

  return v12;
}

- (void)registerOperation:(id)operation accessoryServer:(id)server clientQueue:(id)queue reportDistributor:(id)distributor operationResponseHandler:(id)handler updatedAttributesHandler:(id)attributesHandler
{
  v138 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  serverCopy = server;
  queueCopy = queue;
  distributorCopy = distributor;
  handlerCopy = handler;
  attributesHandlerCopy = attributesHandler;
  v112 = serverCopy;
  if (![(HMMTRProtocolOperationManager *)self handleSpecialCaseCharacteristicWithOperation:operationCopy accessoryServer:serverCopy clientQueue:queueCopy operationResponseHandler:handlerCopy updatedAttributesHandler:attributesHandlerCopy])
  {
    characteristicDescription = [operationCopy characteristicDescription];
    v114 = characteristicDescription;
    v20 = characteristicDescription;
    if (!characteristicDescription)
    {
      v23 = 2;
      goto LABEL_21;
    }

    if (-[HMMTRProtocolOperationManager _isBasicClusterOperationForBridgedDevice:endpointID:](self, "_isBasicClusterOperationForBridgedDevice:endpointID:", [characteristicDescription clusterClass], objc_msgSend(operationCopy, "endpoint")))
    {
      v21 = objc_alloc(MEMORY[0x277CD5250]);
      matterDevice = [operationCopy matterDevice];
      v109 = [v21 initWithDevice:matterDevice endpoint:objc_msgSend(operationCopy queue:{"endpoint"), queueCopy}];
      clusterID = &unk_283EE7F50;
    }

    else
    {
      v24 = objc_alloc([v20 clusterClass]);
      matterDevice2 = [operationCopy matterDevice];
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(operationCopy, "endpoint")}];
      v109 = [v24 initWithDevice:matterDevice2 endpointID:v26 queue:queueCopy];

      matterDevice = [operationCopy characteristicDescription];
      clusterID = [matterDevice clusterID];
    }

    characteristicDescription2 = [operationCopy characteristicDescription];
    attributeID = [characteristicDescription2 attributeID];

    [v114 clusterSelector];
    v28 = v109;
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v109 methodSignatureForSelector:{objc_msgSend(v114, "clusterSelector")}], (v111 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v111 = 0;
LABEL_16:

      if (v111)
      {
        v32 = 0;
LABEL_105:

        goto LABEL_106;
      }

      v33 = objc_autoreleasePoolPush();
      selfCopy = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        v37 = NSStringFromSelector([v114 clusterSelector]);
        clusterClass = [v114 clusterClass];
        *buf = 138543874;
        *&buf[4] = v36;
        v132 = 2112;
        v133 = v37;
        v134 = 2112;
        v135 = clusterClass;
        _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_ERROR, "%{public}@CHIP Accessory couldn't get signature for Selector:%@ on Cluster:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v33);
      v23 = 1;
LABEL_21:
      v39 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTRProtocolOperationErrorDomain" code:v23 userInfo:0];
      v32 = v39;
      v111 = 0;
      if (handlerCopy && v39)
      {
        v110 = [(HMMTRProtocolOperationManager *)self _processResponseForOperation:operationCopy responseValues:0 responseError:v39];
        handlerCopy[2](handlerCopy, v110);
        v111 = 0;
      }

      goto LABEL_105;
    }

    v106 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:?];
    [v106 setSelector:{objc_msgSend(v114, "clusterSelector")}];
    objc_initWeak(&location, self);
    type = [operationCopy type];
    if (type != 1 || ([operationCopy matterDevice], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      type2 = [operationCopy type];
      if (type == 1)
      {
        v31 = type2 == 3;

        if (!v31)
        {
LABEL_13:
          if ([operationCopy type] != 1)
          {
            v118[0] = MEMORY[0x277D85DD0];
            v118[1] = 3221225472;
            v118[2] = __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke_2;
            v118[3] = &unk_2786EDBB8;
            objc_copyWeak(&v122, &location);
            v118[4] = self;
            v119 = operationCopy;
            v121 = handlerCopy;
            v120 = queueCopy;
            v105 = MEMORY[0x2318887D0](v118);
            v101 = MEMORY[0x2318887D0](v105);

            objc_destroyWeak(&v122);
            goto LABEL_28;
          }

          v123[0] = MEMORY[0x277D85DD0];
          v123[1] = 3221225472;
          v123[2] = __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke_119;
          v123[3] = &unk_2786EF8C8;
          v123[4] = self;
          v124 = operationCopy;
          v126 = handlerCopy;
          v125 = queueCopy;
          v101 = MEMORY[0x2318887D0](v123);

LABEL_26:
          v105 = 0;
LABEL_28:
          v40 = v114;
          v99 = objc_alloc_init([v114 paramsClass]);
          value = [operationCopy value];
          v117 = objc_alloc_init(MEMORY[0x277CD54D8]);
          matterDevice3 = [operationCopy matterDevice];
          if (matterDevice3)
          {
            v42 = [operationCopy type] == 4;

            v40 = v114;
            if (v42)
            {
              [v106 setArgument:&v117 atIndex:2];
LABEL_44:
              v98 = 0;
              v100 = 0;
              goto LABEL_74;
            }
          }

          matterDevice4 = [operationCopy matterDevice];
          if (!matterDevice4 || (v44 = [operationCopy type] == 1, matterDevice4, v40 = v114, !v44))
          {
            matterDevice5 = [operationCopy matterDevice];
            if (matterDevice5)
            {
              v55 = [operationCopy type] == 2;

              v40 = v114;
              if (!v55)
              {
                context = objc_autoreleasePoolPush();
                selfCopy2 = self;
                v58 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                {
                  v59 = HMFGetLogIdentifier();
                  characteristic = [operationCopy characteristic];
                  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(operationCopy, "type")}];
                  *buf = 138543874;
                  *&buf[4] = v59;
                  v132 = 2112;
                  v133 = characteristic;
                  v134 = 2112;
                  v135 = v61;
                  _os_log_impl(&dword_22AEAE000, v58, OS_LOG_TYPE_ERROR, "%{public}@Unexpected operation for characteristic %@: %@ with MTRDevice, not building arguments", buf, 0x20u);
                }

                objc_autoreleasePoolPop(context);
                goto LABEL_44;
              }
            }

            if ([v40 paramsClass])
            {
              characteristic2 = [operationCopy characteristic];
              [(HMMTRProtocolOperationManager *)self _addParamsToInvocation:v106 paramsObject:v99 completionHandlerArgument:v101 characteristicDescriptor:v40 forCharacteristic:characteristic2];
            }

            else
            {
              if ([operationCopy type] == 1 && value)
              {
                mapValue = [v40 mapValue];
                v63 = mapValue == 0;

                if (!v63)
                {
                  mapValue2 = [v114 mapValue];
                  value2 = [operationCopy value];
                  v66 = (mapValue2)[2](mapValue2, value2);

                  value = v66;
                }

                v40 = v114;
              }

              characteristic2 = [operationCopy characteristic];
              [(HMMTRProtocolOperationManager *)self _addArgumentsToInvocation:v106 primaryArgument:value completionHandlerArgument:v101 characteristicDescriptor:v40 forCharacteristic:characteristic2];
            }

            v98 = 0;
            v100 = 0;
LABEL_73:

LABEL_74:
            v76 = objc_autoreleasePoolPush();
            contexta = self;
            v77 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
            {
              v97 = v76;
              v78 = HMFGetLogIdentifier();
              characteristic3 = [operationCopy characteristic];
              v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(operationCopy, "type")}];
              v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(operationCopy, "endpoint")}];
              *buf = 138544130;
              *&buf[4] = v78;
              v132 = 2112;
              v133 = characteristic3;
              v134 = 2112;
              v135 = v80;
              v136 = 2112;
              v137 = v81;
              _os_log_impl(&dword_22AEAE000, v77, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory sending request for characteristic %@ of type %@ on endpoint %@", buf, 0x2Au);

              v76 = v97;
            }

            objc_autoreleasePoolPop(v76);
            if ([operationCopy type] == 4 && ((objc_msgSend(operationCopy, "matterDevice"), (v82 = objc_claimAutoreleasedReturnValue()) != 0) ? (v83 = attributeID == 0) : (v83 = 1), v83 ? (v84 = 0) : (v84 = 1), v82, v84))
            {
              v85 = [HMMTRDeviceReader alloc];
              matterDevice6 = [operationCopy matterDevice];
              v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(operationCopy, "endpoint")}];
              v88 = [(HMMTRDeviceReader *)v85 initWithClientQueue:queueCopy distributor:distributorCopy device:matterDevice6 endpointID:v87 clusterID:clusterID attributeID:attributeID];

              v115[0] = MEMORY[0x277D85DD0];
              v115[1] = 3221225472;
              v115[2] = __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke_125;
              v115[3] = &unk_2786EDBE0;
              v116 = v105;
              [(HMMTRDeviceReader *)v88 readAttributeWithCompletion:v115];
            }

            else
            {
              [v106 invokeWithTarget:v109];
            }

            matterDevice7 = [operationCopy matterDevice];

            if (matterDevice7)
            {
              if ([operationCopy type] == 4 && !attributeID)
              {
                *buf = 0;
                [v106 getReturnValue:buf];
                v90 = *buf;
                if (v90)
                {
                  v91 = 0;
                }

                else
                {
                  v91 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CD5120] code:1 userInfo:0];
                }

                (v105)[2](v105, v90, v91);

LABEL_102:
                v95 = 0;
                goto LABEL_103;
              }

              if ([operationCopy type] == 1)
              {
                v92 = [v114 syncWriteFunc] ^ 1;
                if (!handlerCopy)
                {
                  LOBYTE(v92) = 1;
                }

                if ((v92 & 1) == 0)
                {
                  v93 = [(HMMTRProtocolOperationManager *)contexta _processResponseForOperation:operationCopy responseValues:0 responseError:0];
                  handlerCopy[2](handlerCopy, v93);
                }

                goto LABEL_102;
              }
            }

            if (handlerCopy && [operationCopy type] == 1)
            {
              v94 = [(HMMTRProtocolOperationManager *)contexta _processResponseForOperation:operationCopy responseValues:0 responseError:0];
              handlerCopy[2](handlerCopy, v94);
            }

            v95 = 1;
LABEL_103:

            objc_destroyWeak(&location);
            if ((v95 & 1) == 0)
            {

              v32 = 0;
              goto LABEL_105;
            }

            goto LABEL_16;
          }

          mapWriteValueToExpectedValues = [v114 mapWriteValueToExpectedValues];

          if (mapWriteValueToExpectedValues)
          {
            mapWriteValueToExpectedValues2 = [v114 mapWriteValueToExpectedValues];
            endpoint = [operationCopy endpoint];
            value3 = [operationCopy value];
            v100 = (mapWriteValueToExpectedValues2)[2](mapWriteValueToExpectedValues2, endpoint, value3);

            v49 = [v100 count];
            v50 = v114;
            if (!v49)
            {
              goto LABEL_55;
            }

            v51 = [v100 objectAtIndexedSubscript:0];
            v52 = [v51 objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
            v53 = v52 == 0;

            if (v53)
            {
              v49 = 0;
            }

            else
            {
              v49 = v100;
              v100 = v49;
            }
          }

          else
          {
            v49 = 0;
            v100 = 0;
          }

          v50 = v114;
LABEL_55:
          v67 = &unk_283EE7F20;
          v98 = v49;
          if (!v49)
          {
            v67 = 0;
          }

          characteristic2 = v67;
          if ([v50 paramsClass])
          {
            characteristic4 = [operationCopy characteristic];
            [(HMMTRProtocolOperationManager *)self _addParamsToInvocation:v106 paramsObject:v99 expectedValues:v98 expectedValueInterval:characteristic2 completionHandlerArgument:v101 characteristicDescriptor:v50 forCharacteristic:characteristic4];
LABEL_72:

            goto LABEL_73;
          }

          if (!value)
          {
            value = 0;
            goto LABEL_68;
          }

          if ([v50 syncWriteFunc] && objc_msgSend(v100, "count") == 1)
          {
            mapValue4 = [v100 objectAtIndexedSubscript:0];
            v70 = [mapValue4 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
            value4 = value;
          }

          else
          {
            mapValue3 = [v50 mapValue];

            if (!mapValue3)
            {
LABEL_66:
              v50 = v114;
LABEL_68:
              syncWriteFunc = [v50 syncWriteFunc];
              characteristic5 = [operationCopy characteristic];
              characteristic4 = characteristic5;
              if (syncWriteFunc)
              {
                v75 = 0;
              }

              else
              {
                v75 = v101;
              }

              [(HMMTRProtocolOperationManager *)self _addArgumentsToInvocation:v106 primaryArgument:value expectedValues:v98 expectedValueInterval:characteristic2 completionHandlerArgument:v75 characteristicDescriptor:v50 forCharacteristic:characteristic5];
              goto LABEL_72;
            }

            mapValue4 = [v114 mapValue];
            value4 = [operationCopy value];
            v70 = (mapValue4)[2](mapValue4, value4);
          }

          value = v70;
          goto LABEL_66;
        }
      }

      else if (type2 != 3)
      {
        goto LABEL_13;
      }
    }

    v127[0] = MEMORY[0x277D85DD0];
    v127[1] = 3221225472;
    v127[2] = __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke;
    v127[3] = &unk_2786EDB90;
    objc_copyWeak(&v129, &location);
    v127[4] = self;
    v128 = operationCopy;
    v101 = MEMORY[0x2318887D0](v127);

    objc_destroyWeak(&v129);
    goto LABEL_26;
  }

LABEL_106:

  v96 = *MEMORY[0x277D85DE8];
}

void __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_DEBUG, "%{public}@CHIP Accessory received response. Error: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (WeakRetained)
  {
    v9 = [WeakRetained _processResponseForOperation:*(a1 + 40) responseValues:0 responseError:v3];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke_119(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v7;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_DEBUG, "%{public}@CHIP Accessory received response. Error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) _processResponseForOperation:*(a1 + 40) responseValues:0 responseError:v3];
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = *(a1 + 48);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke_120;
    v12[3] = &unk_2786EF5A8;
    v14 = v9;
    v13 = v8;
    dispatch_async(v10, v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v20 = v11;
    v21 = 2112;
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_DEBUG, "%{public}@CHIP Accessory received response. Values: %@ Error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if (WeakRetained)
  {
    v12 = [WeakRetained _processResponseForOperation:*(a1 + 40) responseValues:v5 responseError:v6];
    v13 = *(a1 + 56);
    if (v13)
    {
      v14 = *(a1 + 48);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke_121;
      v16[3] = &unk_2786EF5A8;
      v18 = v13;
      v17 = v12;
      dispatch_async(v14, v16);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke_125(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] hapErrorWithCode:8 marker:2114];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)handleLockTargetStateWriteWithOperation:(id)operation accessoryServer:(id)server clientQueue:(id)queue operationResponseHandler:(id)handler
{
  v48 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  serverCopy = server;
  queueCopy = queue;
  handlerCopy = handler;
  writePrimaryRequestTuple = [operationCopy writePrimaryRequestTuple];
  hmdAccessoryUUID = [writePrimaryRequestTuple hmdAccessoryUUID];

  if (hmdAccessoryUUID && ([operationCopy matterDevice], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    v17 = [HMMTRSyncClusterDoorLock alloc];
    matterDevice = [operationCopy matterDevice];
    v19 = -[HMMTRSyncClusterDoorLock initWithDevice:endpoint:queue:accessoryServer:](v17, "initWithDevice:endpoint:queue:accessoryServer:", matterDevice, [operationCopy endpoint], queueCopy, serverCopy);

    value = [operationCopy value];
    integerValue = [value integerValue];

    if (integerValue == 1)
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __126__HMMTRProtocolOperationManager_handleLockTargetStateWriteWithOperation_accessoryServer_clientQueue_operationResponseHandler___block_invoke_2;
      v36[3] = &unk_2786F0C10;
      v36[4] = self;
      v37 = operationCopy;
      v38 = handlerCopy;
      [(HMMTRSyncClusterDoorLock *)v19 lockDoorWithAccessoryUUID:hmdAccessoryUUID completionHandler:v36];

      v22 = v37;
      goto LABEL_10;
    }

    if (!integerValue)
    {
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __126__HMMTRProtocolOperationManager_handleLockTargetStateWriteWithOperation_accessoryServer_clientQueue_operationResponseHandler___block_invoke;
      v39[3] = &unk_2786F0C10;
      v39[4] = self;
      v40 = operationCopy;
      v41 = handlerCopy;
      [(HMMTRSyncClusterDoorLock *)v19 unlockDoorWithAccessoryUUID:hmdAccessoryUUID completionHandler:v39];

      v22 = v40;
LABEL_10:

      goto LABEL_14;
    }

    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      [operationCopy value];
      v33 = v35 = v29;
      *buf = 138543618;
      v43 = v32;
      v44 = 2112;
      v45 = v33;
      _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_ERROR, "%{public}@Unhandled write value for lock target state: %@", buf, 0x16u);

      v29 = v35;
    }

    objc_autoreleasePoolPop(v29);
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      matterDevice2 = [operationCopy matterDevice];
      *buf = 138543874;
      v43 = v26;
      v44 = 2112;
      v45 = hmdAccessoryUUID;
      v46 = 2112;
      v47 = matterDevice2;
      _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_ERROR, "%{public}@A required parameter was not included in write request for door lock target state. accessoryUUID: %@, matterDevice: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:3 userInfo:0];
    v28 = [(HMMTRProtocolOperationManager *)selfCopy2 _processWriteResponseForOperation:operationCopy writeResponseValues:0 writeResponseError:v19];
    (*(handlerCopy + 2))(handlerCopy, v28);
  }

LABEL_14:

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __126__HMMTRProtocolOperationManager_handleLockTargetStateWriteWithOperation_accessoryServer_clientQueue_operationResponseHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _processWriteResponseForOperation:*(a1 + 40) writeResponseValues:0 writeResponseError:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __126__HMMTRProtocolOperationManager_handleLockTargetStateWriteWithOperation_accessoryServer_clientQueue_operationResponseHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _processWriteResponseForOperation:*(a1 + 40) writeResponseValues:0 writeResponseError:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)handleHueSaturationWriteWithOperation:(id)operation clientQueue:(id)queue operationResponseHandler:(id)handler updatedAttributesHandler:(id)attributesHandler
{
  v145 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  queueCopy = queue;
  handlerCopy = handler;
  attributesHandlerCopy = attributesHandler;
  matterDevice = [operationCopy matterDevice];

  if (matterDevice)
  {
    characteristicDescription = [operationCopy characteristicDescription];
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v132[2] = __133__HMMTRProtocolOperationManager_handleHueSaturationWriteWithOperation_clientQueue_operationResponseHandler_updatedAttributesHandler___block_invoke;
    v132[3] = &unk_2786EF5A8;
    v16 = operationCopy;
    v133 = v16;
    v134 = attributesHandlerCopy;
    v119 = MEMORY[0x2318887D0](v132);
    v17 = objc_alloc([characteristicDescription clusterClass]);
    matterDevice2 = [v16 matterDevice];
    v118 = [v17 initWithDevice:matterDevice2 endpoint:objc_msgSend(v16 queue:{"endpoint"), queueCopy}];

    mapWriteValueToExpectedValues = [characteristicDescription mapWriteValueToExpectedValues];

    if (mapWriteValueToExpectedValues)
    {
      mapWriteValueToExpectedValues2 = [characteristicDescription mapWriteValueToExpectedValues];
      endpoint = [v16 endpoint];
      value = [v16 value];
      v23 = (mapWriteValueToExpectedValues2)[2](mapWriteValueToExpectedValues2, endpoint, value);

      v24 = [v23 count];
      if (v24)
      {
        v25 = [v23 objectAtIndexedSubscript:0];
        [v25 objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
        v27 = v26 = v23;

        if (v27)
        {
          v24 = v26;
          v116 = v24;
        }

        else
        {
          v116 = v26;
          v24 = 0;
        }
      }

      else
      {
        v116 = v23;
      }
    }

    else
    {
      v24 = 0;
      v116 = 0;
    }

    v33 = &unk_283EE7F20;
    v117 = v24;
    if (!v24)
    {
      v33 = 0;
    }

    v34 = v33;
    handlingType = [v16 handlingType];
    v36 = v119;
    if (handlingType == 2)
    {
      v102 = operationCopy;
      v105 = attributesHandlerCopy;
      v113 = queueCopy;
      v115 = v34;
      v110 = handlerCopy;
      v58 = objc_alloc_init(MEMORY[0x277CD52D0]);
      characteristic = [v16 characteristic];
      type = [characteristic type];
      v61 = [type isEqualToString:@"00000013-0000-1000-8000-0026BB765291"];

      mapValue = [characteristicDescription mapValue];
      writePrimaryRequestTuple = [v16 writePrimaryRequestTuple];
      value2 = [writePrimaryRequestTuple value];
      v65 = (mapValue)[2](mapValue, value2);
      if (v61)
      {
        [v58 setHue:v65];

        writeSecondaryRequestTuple = [v16 writeSecondaryRequestTuple];
        value3 = [writeSecondaryRequestTuple value];
        v68 = [HMMTRProtocolMap linearMapForCharacteristic:@"0000002F-0000-1000-8000-0026BB765291" value:value3 fromRange:&unk_283EE9258 toRange:&unk_283EE9270];
        [v58 setSaturation:v68];
      }

      else
      {
        [v58 setSaturation:v65];

        writeSecondaryRequestTuple = [v16 writeSecondaryRequestTuple];
        value3 = [writeSecondaryRequestTuple value];
        v68 = [HMMTRProtocolMap linearMapForCharacteristic:@"00000013-0000-1000-8000-0026BB765291" value:value3 fromRange:&unk_283EE9228 toRange:&unk_283EE9240];
        [v58 setHue:v68];
      }

      [v58 setTransitionTime:&unk_283EE7E78];
      [v58 setOptionsMask:&unk_283EE7F38];
      [v58 setOptionsOverride:&unk_283EE7F38];
      v74 = objc_autoreleasePoolPush();
      selfCopy = self;
      v76 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        v77 = HMFGetLogIdentifier();
        characteristic2 = [v16 characteristic];
        writeSecondaryRequestTuple2 = [v16 writeSecondaryRequestTuple];
        [writeSecondaryRequestTuple2 characteristic];
        v79 = v100 = v58;
        v80 = v74;
        v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "type")}];
        v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "endpoint")}];
        *buf = 138544386;
        v136 = v77;
        v137 = 2112;
        v138 = characteristic2;
        v139 = 2112;
        v140 = v79;
        v141 = 2112;
        v142 = v81;
        v143 = 2112;
        v144 = v82;
        _os_log_impl(&dword_22AEAE000, v76, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory sending request for characteristics %@ and %@ of type %@ on endpoint %@", buf, 0x34u);

        v74 = v80;
        v58 = v100;
      }

      objc_autoreleasePoolPop(v74);
      v120[0] = MEMORY[0x277D85DD0];
      v120[1] = 3221225472;
      v120[2] = __133__HMMTRProtocolOperationManager_handleHueSaturationWriteWithOperation_clientQueue_operationResponseHandler_updatedAttributesHandler___block_invoke_113;
      v120[3] = &unk_2786EDB68;
      v120[4] = selfCopy;
      v121 = v16;
      handlerCopy = v110;
      v122 = v110;
      v36 = v119;
      v123 = v119;
      v51 = v117;
      v54 = v115;
      [v118 moveToHueAndSaturationWithParams:v58 expectedValues:v117 expectedValueInterval:v115 completionHandler:v120];

      queueCopy = v113;
      operationCopy = v102;
      attributesHandlerCopy = v105;
      goto LABEL_38;
    }

    if (handlingType == 1)
    {
      v56 = v34;
      v57 = [(HMMTRProtocolOperationManager *)self _processWriteResponseForOperation:v16 writeResponseValues:0 writeResponseError:0];
      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, v57);
      }

      v51 = v117;
      v54 = v56;
      goto LABEL_38;
    }

    v114 = v34;
    if (handlingType)
    {
      v69 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v72 = v106 = attributesHandlerCopy;
        handlingType2 = [v16 handlingType];
        *buf = 138543618;
        v136 = v72;
        v137 = 2048;
        v138 = handlingType2;
        _os_log_impl(&dword_22AEAE000, v71, OS_LOG_TYPE_ERROR, "%{public}@Unhandled handling type: %lu", buf, 0x16u);

        attributesHandlerCopy = v106;
      }

      objc_autoreleasePoolPop(v69);
      v36 = v119;
      v51 = v117;
      v54 = v114;
      goto LABEL_38;
    }

    characteristic3 = [v16 characteristic];
    type2 = [characteristic3 type];
    v39 = [type2 isEqualToString:@"00000013-0000-1000-8000-0026BB765291"];

    if (v39)
    {
      v109 = handlerCopy;
      v112 = queueCopy;
      v40 = objc_alloc_init(MEMORY[0x277CD52D8]);
      mapValue2 = [characteristicDescription mapValue];
      writePrimaryRequestTuple2 = [v16 writePrimaryRequestTuple];
      value4 = [writePrimaryRequestTuple2 value];
      v44 = (mapValue2)[2](mapValue2, value4);
      [v40 setHue:v44];

      [v40 setTransitionTime:&unk_283EE7E78];
      [v40 setOptionsMask:&unk_283EE7F38];
      [v40 setOptionsOverride:&unk_283EE7F38];
      v45 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v104 = HMFGetLogIdentifier();
        [v16 characteristic];
        v48 = v101 = v45;
        v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "type")}];
        v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "endpoint")}];
        *buf = 138544130;
        v136 = v104;
        v137 = 2112;
        v138 = v48;
        v139 = 2112;
        v140 = v49;
        v141 = 2112;
        v142 = v50;
        _os_log_impl(&dword_22AEAE000, v47, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory sending request for characteristic %@ of type %@ on endpoint %@", buf, 0x2Au);

        v45 = v101;
      }

      objc_autoreleasePoolPop(v45);
      v128[0] = MEMORY[0x277D85DD0];
      v128[1] = 3221225472;
      v128[2] = __133__HMMTRProtocolOperationManager_handleHueSaturationWriteWithOperation_clientQueue_operationResponseHandler_updatedAttributesHandler___block_invoke_108;
      v128[3] = &unk_2786EDB68;
      v128[4] = selfCopy3;
      v129 = v16;
      handlerCopy = v109;
      v130 = v109;
      v36 = v119;
      v131 = v119;
      v51 = v117;
      v52 = v40;
      v53 = v40;
      v54 = v114;
      [v118 moveToHueWithParams:v52 expectedValues:v117 expectedValueInterval:v114 completionHandler:v128];

      v55 = v129;
    }

    else
    {
      selfCopy4 = self;
      characteristic4 = [v16 characteristic];
      type3 = [characteristic4 type];
      v85 = [type3 isEqualToString:@"0000002F-0000-1000-8000-0026BB765291"];

      v36 = v119;
      v51 = v117;
      v54 = v114;
      if (!v85)
      {
LABEL_38:

        v32 = v118;
        goto LABEL_39;
      }

      v111 = handlerCopy;
      v112 = queueCopy;
      v86 = objc_alloc_init(MEMORY[0x277CD52E0]);
      mapValue3 = [characteristicDescription mapValue];
      writePrimaryRequestTuple3 = [v16 writePrimaryRequestTuple];
      value5 = [writePrimaryRequestTuple3 value];
      v90 = (mapValue3)[2](mapValue3, value5);
      [v86 setSaturation:v90];

      [v86 setTransitionTime:&unk_283EE7E78];
      [v86 setOptionsMask:&unk_283EE7F38];
      [v86 setOptionsOverride:&unk_283EE7F38];
      v91 = objc_autoreleasePoolPush();
      v92 = selfCopy4;
      v93 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
      {
        v108 = HMFGetLogIdentifier();
        [v16 characteristic];
        v94 = v103 = v91;
        v95 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "type")}];
        v96 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "endpoint")}];
        *buf = 138544130;
        v136 = v108;
        v137 = 2112;
        v138 = v94;
        v139 = 2112;
        v140 = v95;
        v141 = 2112;
        v142 = v96;
        _os_log_impl(&dword_22AEAE000, v93, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory sending request for characteristic %@ of type %@ on endpoint %@", buf, 0x2Au);

        v91 = v103;
      }

      objc_autoreleasePoolPop(v91);
      v124[0] = MEMORY[0x277D85DD0];
      v124[1] = 3221225472;
      v124[2] = __133__HMMTRProtocolOperationManager_handleHueSaturationWriteWithOperation_clientQueue_operationResponseHandler_updatedAttributesHandler___block_invoke_110;
      v124[3] = &unk_2786EDB68;
      v124[4] = v92;
      v125 = v16;
      handlerCopy = v111;
      v126 = v111;
      v36 = v119;
      v127 = v119;
      v51 = v117;
      v97 = v86;
      v53 = v86;
      v54 = v114;
      [v118 moveToSaturationWithParams:v97 expectedValues:v117 expectedValueInterval:v114 completionHandler:v124];

      v55 = v125;
    }

    queueCopy = v112;
    goto LABEL_38;
  }

  v28 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543362;
    v136 = v31;
    _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@Required parameter matterDevice is nil in the hue/saturation write request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v28);
  v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:3 userInfo:0];
  characteristicDescription = [(HMMTRProtocolOperationManager *)selfCopy5 _processWriteResponseForOperation:operationCopy writeResponseValues:0 writeResponseError:v32];
  (*(handlerCopy + 2))(handlerCopy, characteristicDescription);
LABEL_39:

  v98 = *MEMORY[0x277D85DE8];
}

void __133__HMMTRProtocolOperationManager_handleHueSaturationWriteWithOperation_clientQueue_operationResponseHandler_updatedAttributesHandler___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277CD50B8];
  v2 = MEMORY[0x277CD51C0];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "endpoint")}];
  v4 = [v2 attributePathWithEndpointID:v3 clusterID:&unk_283EE7ED8 attributeID:&unk_283EE7EF0];
  v14[0] = v4;
  v13[1] = *MEMORY[0x277CD50D8];
  v5 = *MEMORY[0x277CD5198];
  v6 = *MEMORY[0x277CD51A0];
  v11[0] = *MEMORY[0x277CD5188];
  v11[1] = v6;
  v12[0] = v5;
  v12[1] = &unk_283EE7F08;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v14[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v15[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];

  (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __133__HMMTRProtocolOperationManager_handleHueSaturationWriteWithOperation_clientQueue_operationResponseHandler_updatedAttributesHandler___block_invoke_108(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _processWriteResponseForOperation:*(a1 + 40) writeResponseValues:0 writeResponseError:a2];
  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }

  if (!a2)
  {
    (*(*(a1 + 56) + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __133__HMMTRProtocolOperationManager_handleHueSaturationWriteWithOperation_clientQueue_operationResponseHandler_updatedAttributesHandler___block_invoke_110(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _processWriteResponseForOperation:*(a1 + 40) writeResponseValues:0 writeResponseError:a2];
  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }

  if (!a2)
  {
    (*(*(a1 + 56) + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __133__HMMTRProtocolOperationManager_handleHueSaturationWriteWithOperation_clientQueue_operationResponseHandler_updatedAttributesHandler___block_invoke_113(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _processWriteResponseForOperation:*(a1 + 40) writeResponseValues:0 writeResponseError:a2];
  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }

  if (!a2)
  {
    (*(*(a1 + 56) + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)handleIdentifyDeviceWriteWithOperation:(id)operation clientQueue:(id)queue operationResponseHandler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  queueCopy = queue;
  handlerCopy = handler;
  writePrimaryRequestTuple = [operationCopy writePrimaryRequestTuple];
  hmdAccessoryUUID = [writePrimaryRequestTuple hmdAccessoryUUID];

  if (hmdAccessoryUUID && ([operationCopy matterDevice], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = [HMMTRIdentifyDevice alloc];
    matterDevice = [operationCopy matterDevice];
    topology = [operationCopy topology];
    v17 = [(HMMTRIdentifyDevice *)v14 initWithDevice:matterDevice topology:topology queue:queueCopy];

    LOWORD(matterDevice) = [operationCopy endpoint];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __109__HMMTRProtocolOperationManager_handleIdentifyDeviceWriteWithOperation_clientQueue_operationResponseHandler___block_invoke;
    v25[3] = &unk_2786F0C10;
    v25[4] = self;
    v26 = operationCopy;
    v27 = handlerCopy;
    [(HMMTRIdentifyDevice *)v17 identifyWithEndpoint:matterDevice completionHandler:v25];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      matterDevice2 = [operationCopy matterDevice];
      *buf = 138543874;
      v29 = v21;
      v30 = 2112;
      v31 = hmdAccessoryUUID;
      v32 = 2112;
      v33 = matterDevice2;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@A required parameter was not included in identify write request. accessoryUUID: %@, matterDevice: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:3 userInfo:0];
    v23 = [(HMMTRProtocolOperationManager *)selfCopy _processWriteResponseForOperation:operationCopy writeResponseValues:0 writeResponseError:v17];
    (*(handlerCopy + 2))(handlerCopy, v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __109__HMMTRProtocolOperationManager_handleIdentifyDeviceWriteWithOperation_clientQueue_operationResponseHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _processWriteResponseForOperation:*(a1 + 40) writeResponseValues:0 writeResponseError:a2];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (BOOL)handleSpecialCaseCharacteristicWithOperation:(id)operation accessoryServer:(id)server clientQueue:(id)queue operationResponseHandler:(id)handler updatedAttributesHandler:(id)attributesHandler
{
  v61 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  serverCopy = server;
  queueCopy = queue;
  handlerCopy = handler;
  attributesHandlerCopy = attributesHandler;
  characteristic = [operationCopy characteristic];
  type = [characteristic type];
  if ([type isEqualToString:@"0000001E-0000-1000-8000-0026BB765291"])
  {
    type2 = [operationCopy type];

    if (type2 == 1)
    {
      [(HMMTRProtocolOperationManager *)self handleLockTargetStateWriteWithOperation:operationCopy accessoryServer:serverCopy clientQueue:queueCopy operationResponseHandler:handlerCopy];
LABEL_26:
      v43 = 1;
      goto LABEL_27;
    }
  }

  else
  {
  }

  characteristic2 = [operationCopy characteristic];
  type3 = [characteristic2 type];
  if ([type3 isEqualToString:@"00000014-0000-1000-8000-0026BB765291"])
  {
    type4 = [operationCopy type];

    if (type4 == 1)
    {
      [(HMMTRProtocolOperationManager *)self handleIdentifyDeviceWriteWithOperation:operationCopy clientQueue:queueCopy operationResponseHandler:handlerCopy];
      goto LABEL_26;
    }
  }

  else
  {
  }

  if ([operationCopy type] == 1)
  {
    characteristic3 = [operationCopy characteristic];
    type5 = [characteristic3 type];
    if ([type5 isEqualToString:@"00000013-0000-1000-8000-0026BB765291"])
    {

LABEL_13:
      [(HMMTRProtocolOperationManager *)self handleHueSaturationWriteWithOperation:operationCopy clientQueue:queueCopy operationResponseHandler:handlerCopy updatedAttributesHandler:attributesHandlerCopy];
      goto LABEL_26;
    }

    characteristic4 = [operationCopy characteristic];
    [characteristic4 type];
    selfCopy = self;
    v27 = handlerCopy;
    v28 = queueCopy;
    v29 = attributesHandlerCopy;
    v31 = v30 = serverCopy;
    v52 = [v31 isEqualToString:@"0000002F-0000-1000-8000-0026BB765291"];

    serverCopy = v30;
    attributesHandlerCopy = v29;
    queueCopy = v28;
    handlerCopy = v27;
    self = selfCopy;

    if (v52)
    {
      goto LABEL_13;
    }
  }

  if ([operationCopy type] == 1)
  {
    characteristic5 = [operationCopy characteristic];
    type6 = [characteristic5 type];
    v34 = [type6 isEqualToString:@"000000B0-0000-1000-8000-0026BB765291"];

    if (v34)
    {
      if ([operationCopy handlingType])
      {
        handlingType = [operationCopy handlingType];
        v36 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v38 = HMFGetOSLogHandle();
        v39 = v38;
        if (handlingType == 3)
        {
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v40 = HMFGetLogIdentifier();
            writePrimaryRequestTuple = [operationCopy writePrimaryRequestTuple];
            [writePrimaryRequestTuple hmdAccessoryUUID];
            v42 = v53 = serverCopy;
            *buf = 138543618;
            v56 = v40;
            v57 = 2112;
            v58 = v42;
            _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_DEBUG, "%{public}@Dropping write request for active characteristic. accessoryUUID: %@", buf, 0x16u);

            serverCopy = v53;
          }
        }

        else if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v44 = v51 = v36;
          handlingType2 = [operationCopy handlingType];
          [operationCopy writePrimaryRequestTuple];
          v46 = v54 = serverCopy;
          hmdAccessoryUUID = [v46 hmdAccessoryUUID];
          *buf = 138543874;
          v56 = v44;
          v57 = 2048;
          v58 = handlingType2;
          v59 = 2112;
          v60 = hmdAccessoryUUID;
          _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_ERROR, "%{public}@Invalid handling type %lu. Dropping write request for active characteristic. accessoryUUID: %@", buf, 0x20u);

          serverCopy = v54;
          v36 = v51;
        }

        objc_autoreleasePoolPop(v36);
        v48 = [(HMMTRProtocolOperationManager *)selfCopy2 _processWriteResponseForOperation:operationCopy writeResponseValues:0 writeResponseError:0];
        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, v48);
        }

        goto LABEL_26;
      }
    }
  }

  v43 = 0;
LABEL_27:

  v49 = *MEMORY[0x277D85DE8];
  return v43;
}

- (BOOL)_isBasicClusterOperationForBridgedDevice:(Class)device endpointID:(unint64_t)d
{
  if (([(objc_class *)device isEqual:objc_opt_class()]& 1) == 0)
  {
    v6 = [(objc_class *)device isEqual:objc_opt_class()];
    return d && (v6 & 1) != 0;
  }

  return d != 0;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t31 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t31, &__block_literal_global_134);
  }

  v3 = logCategory__hmf_once_v32;

  return v3;
}

uint64_t __44__HMMTRProtocolOperationManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v32 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (HMMTRProtocolOperationManager)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_2628);
  }

  v3 = sharedInstance_manager;

  return v3;
}

uint64_t __47__HMMTRProtocolOperationManager_sharedInstance__block_invoke()
{
  sharedInstance_manager = objc_alloc_init(HMMTRProtocolOperationManager);

  return MEMORY[0x2821F96F8]();
}

@end