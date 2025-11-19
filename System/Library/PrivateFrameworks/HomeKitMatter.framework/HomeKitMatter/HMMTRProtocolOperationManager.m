@interface HMMTRProtocolOperationManager
+ (HMMTRProtocolOperationManager)sharedInstance;
+ (id)logCategory;
- (BOOL)_isBasicClusterOperationForBridgedDevice:(Class)a3 endpointID:(unint64_t)a4;
- (BOOL)handleSpecialCaseCharacteristicWithOperation:(id)a3 accessoryServer:(id)a4 clientQueue:(id)a5 operationResponseHandler:(id)a6 updatedAttributesHandler:(id)a7;
- (id)_processGenericResponseForOperation:(id)a3 responseValues:(id)a4 responseError:(id)a5;
- (id)_processReadResponseForOperation:(id)a3 readResponseValues:(id)a4 readResponseError:(id)a5;
- (id)_processResponseForOperation:(id)a3 responseValues:(id)a4 responseError:(id)a5;
- (id)_processWriteResponseForOperation:(id)a3 writeResponseValues:(id)a4 writeResponseError:(id)a5;
- (id)_responseTupleWithMappedValueForOperation:(id)a3 responseValue:(id)a4 responseError:(id)a5;
- (void)_addArgumentsToInvocation:(id)a3 primaryArgument:(id)a4 completionHandlerArgument:(id)a5 characteristicDescriptor:(id)a6 forCharacteristic:(id)a7;
- (void)_addArgumentsToInvocation:(id)a3 primaryArgument:(id)a4 expectedValues:(id)a5 expectedValueInterval:(id)a6 completionHandlerArgument:(id)a7 characteristicDescriptor:(id)a8 forCharacteristic:(id)a9;
- (void)_addParamsToInvocation:(id)a3 paramsObject:(id)a4 completionHandlerArgument:(id)a5 characteristicDescriptor:(id)a6 forCharacteristic:(id)a7;
- (void)_addParamsToInvocation:(id)a3 paramsObject:(id)a4 expectedValues:(id)a5 expectedValueInterval:(id)a6 completionHandlerArgument:(id)a7 characteristicDescriptor:(id)a8 forCharacteristic:(id)a9;
- (void)handleHueSaturationWriteWithOperation:(id)a3 clientQueue:(id)a4 operationResponseHandler:(id)a5 updatedAttributesHandler:(id)a6;
- (void)handleIdentifyDeviceWriteWithOperation:(id)a3 clientQueue:(id)a4 operationResponseHandler:(id)a5;
- (void)handleLockTargetStateWriteWithOperation:(id)a3 accessoryServer:(id)a4 clientQueue:(id)a5 operationResponseHandler:(id)a6;
- (void)registerOperation:(id)a3 accessoryServer:(id)a4 clientQueue:(id)a5 reportDistributor:(id)a6 operationResponseHandler:(id)a7 updatedAttributesHandler:(id)a8;
@end

@implementation HMMTRProtocolOperationManager

- (void)_addArgumentsToInvocation:(id)a3 primaryArgument:(id)a4 expectedValues:(id)a5 expectedValueInterval:(id)a6 completionHandlerArgument:(id)a7 characteristicDescriptor:(id)a8 forCharacteristic:(id)a9
{
  v78 = *MEMORY[0x277D85DE8];
  v59 = a3;
  v67 = a4;
  v66 = a5;
  v65 = a6;
  v15 = a7;
  v64 = v15;
  v16 = a8;
  v17 = a9;
  [HMMTRHAPService chipPluginServiceForCharacteristic:v17];
  v58 = v57 = v16;
  if (!v58)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v21 = v17;
      v23 = v22 = v15;
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@Trying send a message for a characteristic that does not belong to a service owned by HomeKitMatter", buf, 0xCu);

      v15 = v22;
      v17 = v21;
    }

    objc_autoreleasePoolPop(v18);
    v16 = v57;
  }

  v24 = [v16 arguments];
  v25 = [v16 primaryArgIndex];
  if ([v16 syncWriteFunc])
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  if (v25)
  {
    ++v26;
  }

  if (v15)
  {
    v27 = v26 + 1;
  }

  else
  {
    v27 = v26;
  }

  if ([v24 count])
  {
    v27 = v27 + [v24 count];
  }

  v28 = v59;
  v29 = objc_autoreleasePoolPush();
  v30 = self;
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v32 = v55 = v24;
    NSStringFromSelector([v59 selector]);
    v33 = v53 = v15;
    v34 = [v58 endpoint];
    [MEMORY[0x277CCABB0] numberWithInt:v27];
    v52 = v29;
    v36 = v35 = v25;
    *buf = 138544386;
    *&buf[4] = v32;
    v70 = 2112;
    v71 = v17;
    v72 = 2112;
    v73 = v33;
    v74 = 2112;
    v75 = v34;
    v76 = 2112;
    v77 = v36;
    _os_log_impl(&dword_22AEAE000, v31, OS_LOG_TYPE_DEBUG, "%{public}@Characteristic: (%@), selector: %@, endpoint: %@, numberOfArguments = %@", buf, 0x34u);

    v25 = v35;
    v29 = v52;

    v28 = v59;
    v15 = v53;

    v24 = v55;
  }

  v56 = v17;

  objc_autoreleasePoolPop(v29);
  v37 = v27;
  if (v15)
  {
    [v28 setArgument:&v64 atIndex:v27 + 1];
    v37 = v27 - 1;
  }

  [v28 setArgument:&v65 atIndex:v37 + 1];
  if ([v16 syncWriteFunc])
  {
    v38 = v37 - 1;
  }

  else
  {
    v38 = v37 - 2;
    [v28 setArgument:&v66 atIndex:v37];
  }

  v54 = v25;
  if (v25)
  {
    v39 = [v25 integerValue];
    [v28 setArgument:&v67 atIndex:v39 + 2];
  }

  else
  {
    v39 = -1;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v40 = v24;
  v41 = [v24 allKeys];
  v42 = [v41 countByEnumeratingWithState:&v60 objects:v68 count:16];
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
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v60 + 1) + 8 * i);
        v47 = [v46 integerValue];
        if (v47 != v38 && v47 != v39)
        {
          v49 = v47;
          *buf = [v40 objectForKey:v46];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [*buf isEqualToString:@"NULL"])
          {
            v50 = *buf;
            *buf = 0;
          }

          v28 = v59;
          [v59 setArgument:buf atIndex:v49 + 2];
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v43);
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)_addArgumentsToInvocation:(id)a3 primaryArgument:(id)a4 completionHandlerArgument:(id)a5 characteristicDescriptor:(id)a6 forCharacteristic:(id)a7
{
  v65 = *MEMORY[0x277D85DE8];
  v48 = a3;
  v54 = a4;
  v12 = a5;
  v53 = v12;
  v13 = a6;
  v47 = a7;
  v46 = [HMMTRHAPService chipPluginServiceForCharacteristic:?];
  if (!v46)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
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

  v18 = [v13 arguments];
  v19 = [v13 primaryArgIndex];
  v20 = v19;
  if (v12)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  if (v19)
  {
    v22 = v21;
  }

  else
  {
    v22 = v12 != 0;
  }

  if ([v18 count])
  {
    v22 = v22 + [v18 count];
  }

  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  v44 = v13;
  v45 = v20;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = HMFGetLogIdentifier();
    v27 = NSStringFromSelector([v48 selector]);
    [v46 endpoint];
    v29 = v28 = v12;
    v30 = [MEMORY[0x277CCABB0] numberWithInt:v22];
    *buf = 138544386;
    *&buf[4] = v26;
    v57 = 2112;
    v58 = v47;
    v59 = 2112;
    v60 = v27;
    v61 = 2112;
    v62 = v29;
    v63 = 2112;
    v64 = v30;
    _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Characteristic: (%@), selector: %@, endpoint: %@, numberOfArguments = %@", buf, 0x34u);

    v12 = v28;
    v20 = v45;
  }

  objc_autoreleasePoolPop(v23);
  if (v12)
  {
    v31 = v22 - 1;
    [v48 setArgument:&v53 atIndex:v31 + 2];
    if (v20)
    {
LABEL_17:
      v32 = [v20 integerValue];
      [v48 setArgument:&v54 atIndex:v32 + 2];
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

  v32 = -1;
LABEL_20:
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v33 = [v18 allKeys];
  v34 = [v33 countByEnumeratingWithState:&v49 objects:v55 count:16];
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
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v49 + 1) + 8 * i);
        v39 = [v38 integerValue];
        if (v39 != v31 && v39 != v32)
        {
          v41 = v39;
          *buf = [v18 objectForKey:v38];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [*buf isEqualToString:@"NULL"])
          {
            v42 = *buf;
            *buf = 0;
          }

          [v48 setArgument:buf atIndex:v41 + 2];
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v35);
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)_addParamsToInvocation:(id)a3 paramsObject:(id)a4 expectedValues:(id)a5 expectedValueInterval:(id)a6 completionHandlerArgument:(id)a7 characteristicDescriptor:(id)a8 forCharacteristic:(id)a9
{
  v70 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v15 = a4;
  v60 = v15;
  v59 = a5;
  v58 = a6;
  v57 = a7;
  v16 = a8;
  v17 = self;
  v47 = a9;
  v18 = [v16 paramsIndex];
  v44 = [v18 integerValue];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [v16 paramsArguments];
  v51 = [obj countByEnumeratingWithState:&v53 objects:v69 count:16];
  if (v51)
  {
    v19 = *v54;
    v48 = v16;
    v49 = *v54;
    v46 = v17;
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
        v23 = [v16 paramsArguments];
        v52 = [v23 objectForKey:v21];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v52 isEqualToString:@"NULL"])
        {
          v24 = objc_autoreleasePoolPush();
          v25 = v17;
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
          v29 = [v15 methodSignatureForSelector:v22];
          if (v29)
          {
            v30 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v29];
            [v30 setSelector:v22];
            [v30 setArgument:&v52 atIndex:2];
            [v30 invokeWithTarget:v15];

            v16 = v48;
          }

          else
          {
            v37 = objc_autoreleasePoolPush();
            v38 = v17;
            v39 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v40 = HMFGetLogIdentifier();
              v41 = [v16 paramsClass];
              v42 = [v47 instanceID];
              *buf = 138544130;
              v62 = v40;
              v63 = 2112;
              v64 = v21;
              v65 = 2112;
              v66 = v41;
              v19 = v49;
              v67 = 2112;
              v68 = v42;
              _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_ERROR, "%{public}@Couldn't get Signature for Property %@ for Params of type %@ for characteristic %@", buf, 0x2Au);

              v16 = v48;
              v17 = v46;
            }

            objc_autoreleasePoolPop(v37);
          }
        }

        else
        {
          v31 = objc_autoreleasePoolPush();
          v32 = v17;
          v33 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v34 = HMFGetLogIdentifier();
            v35 = [v16 paramsClass];
            v36 = [v47 instanceID];
            *buf = 138544130;
            v62 = v34;
            v63 = 2112;
            v64 = v21;
            v65 = 2112;
            v66 = v35;
            v19 = v49;
            v67 = 2112;
            v68 = v36;
            _os_log_impl(&dword_22AEAE000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to set Property %@ for Params of type %@ for characteristic %@", buf, 0x2Au);

            v17 = v46;
          }

          objc_autoreleasePoolPop(v31);
        }
      }

      v51 = [obj countByEnumeratingWithState:&v53 objects:v69 count:16];
    }

    while (v51);
  }

  [v45 setArgument:&v60 atIndex:v44 + 2];
  [v45 setArgument:&v59 atIndex:v44 + 3];
  [v45 setArgument:&v58 atIndex:v44 + 4];
  [v45 setArgument:&v57 atIndex:v44 + 5];

  v43 = *MEMORY[0x277D85DE8];
}

- (void)_addParamsToInvocation:(id)a3 paramsObject:(id)a4 completionHandlerArgument:(id)a5 characteristicDescriptor:(id)a6 forCharacteristic:(id)a7
{
  v66 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v12 = a4;
  v13 = self;
  v14 = v12;
  v56 = v12;
  v55 = a5;
  v15 = a6;
  v45 = a7;
  v16 = [v15 paramsIndex];
  v42 = [v16 integerValue];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [v15 paramsArguments];
  v49 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
  if (v49)
  {
    v48 = *v52;
    v46 = v14;
    v44 = self;
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
        v20 = [v15 paramsArguments];
        v50 = [v20 objectForKey:v18];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v50 isEqualToString:@"NULL"])
        {
          v21 = objc_autoreleasePoolPush();
          v22 = v13;
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
            v35 = v13;
            v36 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v37 = HMFGetLogIdentifier();
              v38 = [v15 paramsClass];
              [v45 instanceID];
              v40 = v39 = v15;
              *buf = 138544130;
              v58 = v37;
              v59 = 2112;
              v60 = v18;
              v61 = 2112;
              v62 = v38;
              v14 = v46;
              v63 = 2112;
              v64 = v40;
              _os_log_impl(&dword_22AEAE000, v36, OS_LOG_TYPE_ERROR, "%{public}@Couldn't get Signature for Property %@ for Params of type %@ for characteristic %@", buf, 0x2Au);

              v15 = v39;
              v13 = v44;
            }

            objc_autoreleasePoolPop(v34);
          }
        }

        else
        {
          v28 = objc_autoreleasePoolPush();
          v29 = v13;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = HMFGetLogIdentifier();
            v32 = [v15 paramsClass];
            v33 = [v45 instanceID];
            *buf = 138544130;
            v58 = v31;
            v59 = 2112;
            v60 = v18;
            v61 = 2112;
            v62 = v32;
            v14 = v46;
            v63 = 2112;
            v64 = v33;
            _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to set Property %@ for Params of type %@ for characteristic %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v28);
        }
      }

      v49 = [obj countByEnumeratingWithState:&v51 objects:v65 count:16];
    }

    while (v49);
  }

  [v43 setArgument:&v56 atIndex:v42 + 2];
  [v43 setArgument:&v55 atIndex:v42 + 3];

  v41 = *MEMORY[0x277D85DE8];
}

- (id)_processReadResponseForOperation:(id)a3 readResponseValues:(id)a4 readResponseError:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 characteristic];
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v11 instanceID];
    v25 = 138544130;
    v26 = v15;
    v27 = 2112;
    v28 = v16;
    v29 = 2112;
    v30 = v9;
    v31 = 2112;
    v32 = v10;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Processing read response for characteristic %@. Value: %@ Error: %@", &v25, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  if ([v10 code] == 2)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v13;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v20;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Could not find description for characteristic %@, falling back to localized version", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x277CFEA90] responseTupleForCharacteristic:v11 error:0];
  }

  else
  {
    v21 = [(HMMTRProtocolOperationManager *)v13 _responseTupleWithMappedValueForOperation:v8 responseValue:v9 responseError:v10];
  }

  v22 = v21;

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_responseTupleWithMappedValueForOperation:(id)a3 responseValue:(id)a4 responseError:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 characteristic];
  if (v10)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = [v10 domain];
    v14 = [v12 errorWithDomain:v13 code:objc_msgSend(v10 userInfo:{"code"), 0}];
  }

  else
  {
    if (v9)
    {
      v15 = [v8 characteristicDescription];
      v16 = [v15 mapValue];

      if (v16)
      {
        v17 = [v8 characteristicDescription];
        v18 = [v17 mapValue];
        v19 = (v18)[2](v18, v9);
        [v11 setValue:v19];

        v20 = objc_autoreleasePoolPush();
        v21 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = HMFGetLogIdentifier();
          v24 = [v11 value];
          v25 = [v11 instanceID];
          v29 = 138544130;
          v30 = v23;
          v31 = 2112;
          v32 = v9;
          v33 = 2112;
          v34 = v24;
          v35 = 2112;
          v36 = v25;
          _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Mapped value from dictionary %@ to %@ for instanceID %@.", &v29, 0x2Au);
        }

        objc_autoreleasePoolPop(v20);
      }

      else
      {
        [v11 setValue:v9];
      }
    }

    v14 = 0;
  }

  v26 = [MEMORY[0x277CFEA90] responseTupleForCharacteristic:v11 error:v14];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)_processWriteResponseForOperation:(id)a3 writeResponseValues:(id)a4 writeResponseError:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v8 characteristic];
    v16 = [v15 instanceID];
    v17 = [v8 value];
    v27 = 138544130;
    v28 = v14;
    v29 = 2112;
    v30 = v16;
    v31 = 2112;
    v32 = v17;
    v33 = 2112;
    v34 = v10;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory received write response for characteristic %@. Targeted value: %@\nError: %@", &v27, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  if (v10)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = [v10 domain];
    v20 = [v18 errorWithDomain:v19 code:objc_msgSend(v10 userInfo:{"code"), 0}];
  }

  else
  {
    v19 = [v8 value];
    v21 = [v8 characteristic];
    [v21 setValue:v19];

    v20 = 0;
  }

  v22 = MEMORY[0x277CFEA90];
  v23 = [v8 characteristic];
  v24 = [v22 responseTupleForCharacteristic:v23 error:v20];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_processGenericResponseForOperation:(id)a3 responseValues:(id)a4 responseError:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier();
    v18 = 138543874;
    v19 = v14;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_DEBUG, "%{public}@CHIP Accessory received response. Error: %@ Response %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HMMTRProtocolOperationManager *)v12 _responseTupleWithMappedValueForOperation:v8 responseValue:v9 responseError:v10];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_processResponseForOperation:(id)a3 responseValues:(id)a4 responseError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 type];
  v12 = 0;
  if (v11 <= 1)
  {
    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_12;
      }

      v18 = [(HMMTRProtocolOperationManager *)self _processWriteResponseForOperation:v8 writeResponseValues:v9 writeResponseError:v10];
      goto LABEL_11;
    }
  }

  else
  {
    if ((v11 - 2) < 2)
    {
      v13 = [v8 characteristic];

      if (v13)
      {
        v14 = [v8 characteristic];
        v15 = [v14 copy];

        v16 = [v8 characteristic];
        v17 = [v16 service];
        [v15 setService:v17];

        [v8 setCharacteristic:v15];
      }

      v18 = [(HMMTRProtocolOperationManager *)self _processGenericResponseForOperation:v8 responseValues:v9 responseError:v10];
      goto LABEL_11;
    }

    if (v11 != 4)
    {
      goto LABEL_12;
    }
  }

  v18 = [(HMMTRProtocolOperationManager *)self _processReadResponseForOperation:v8 readResponseValues:v9 readResponseError:v10];
LABEL_11:
  v12 = v18;
LABEL_12:

  return v12;
}

- (void)registerOperation:(id)a3 accessoryServer:(id)a4 clientQueue:(id)a5 reportDistributor:(id)a6 operationResponseHandler:(id)a7 updatedAttributesHandler:(id)a8
{
  v138 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v113 = a6;
  v17 = a7;
  v18 = a8;
  v112 = v15;
  if (![(HMMTRProtocolOperationManager *)self handleSpecialCaseCharacteristicWithOperation:v14 accessoryServer:v15 clientQueue:v16 operationResponseHandler:v17 updatedAttributesHandler:v18])
  {
    v19 = [v14 characteristicDescription];
    v114 = v19;
    v20 = v19;
    if (!v19)
    {
      v23 = 2;
      goto LABEL_21;
    }

    if (-[HMMTRProtocolOperationManager _isBasicClusterOperationForBridgedDevice:endpointID:](self, "_isBasicClusterOperationForBridgedDevice:endpointID:", [v19 clusterClass], objc_msgSend(v14, "endpoint")))
    {
      v21 = objc_alloc(MEMORY[0x277CD5250]);
      v22 = [v14 matterDevice];
      v109 = [v21 initWithDevice:v22 endpoint:objc_msgSend(v14 queue:{"endpoint"), v16}];
      v107 = &unk_283EE7F50;
    }

    else
    {
      v24 = objc_alloc([v20 clusterClass]);
      v25 = [v14 matterDevice];
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "endpoint")}];
      v109 = [v24 initWithDevice:v25 endpointID:v26 queue:v16];

      v22 = [v14 characteristicDescription];
      v107 = [v22 clusterID];
    }

    v27 = [v14 characteristicDescription];
    v108 = [v27 attributeID];

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
      v34 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        v37 = NSStringFromSelector([v114 clusterSelector]);
        v38 = [v114 clusterClass];
        *buf = 138543874;
        *&buf[4] = v36;
        v132 = 2112;
        v133 = v37;
        v134 = 2112;
        v135 = v38;
        _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_ERROR, "%{public}@CHIP Accessory couldn't get signature for Selector:%@ on Cluster:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v33);
      v23 = 1;
LABEL_21:
      v39 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTRProtocolOperationErrorDomain" code:v23 userInfo:0];
      v32 = v39;
      v111 = 0;
      if (v17 && v39)
      {
        v110 = [(HMMTRProtocolOperationManager *)self _processResponseForOperation:v14 responseValues:0 responseError:v39];
        v17[2](v17, v110);
        v111 = 0;
      }

      goto LABEL_105;
    }

    v106 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:?];
    [v106 setSelector:{objc_msgSend(v114, "clusterSelector")}];
    objc_initWeak(&location, self);
    v29 = [v14 type];
    if (v29 != 1 || ([v14 matterDevice], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v30 = [v14 type];
      if (v29 == 1)
      {
        v31 = v30 == 3;

        if (!v31)
        {
LABEL_13:
          if ([v14 type] != 1)
          {
            v118[0] = MEMORY[0x277D85DD0];
            v118[1] = 3221225472;
            v118[2] = __147__HMMTRProtocolOperationManager_registerOperation_accessoryServer_clientQueue_reportDistributor_operationResponseHandler_updatedAttributesHandler___block_invoke_2;
            v118[3] = &unk_2786EDBB8;
            objc_copyWeak(&v122, &location);
            v118[4] = self;
            v119 = v14;
            v121 = v17;
            v120 = v16;
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
          v124 = v14;
          v126 = v17;
          v125 = v16;
          v101 = MEMORY[0x2318887D0](v123);

LABEL_26:
          v105 = 0;
LABEL_28:
          v40 = v114;
          v99 = objc_alloc_init([v114 paramsClass]);
          v102 = [v14 value];
          v117 = objc_alloc_init(MEMORY[0x277CD54D8]);
          v41 = [v14 matterDevice];
          if (v41)
          {
            v42 = [v14 type] == 4;

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

          v43 = [v14 matterDevice];
          if (!v43 || (v44 = [v14 type] == 1, v43, v40 = v114, !v44))
          {
            v54 = [v14 matterDevice];
            if (v54)
            {
              v55 = [v14 type] == 2;

              v40 = v114;
              if (!v55)
              {
                context = objc_autoreleasePoolPush();
                v57 = self;
                v58 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                {
                  v59 = HMFGetLogIdentifier();
                  v60 = [v14 characteristic];
                  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "type")}];
                  *buf = 138543874;
                  *&buf[4] = v59;
                  v132 = 2112;
                  v133 = v60;
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
              v56 = [v14 characteristic];
              [(HMMTRProtocolOperationManager *)self _addParamsToInvocation:v106 paramsObject:v99 completionHandlerArgument:v101 characteristicDescriptor:v40 forCharacteristic:v56];
            }

            else
            {
              if ([v14 type] == 1 && v102)
              {
                v62 = [v40 mapValue];
                v63 = v62 == 0;

                if (!v63)
                {
                  v64 = [v114 mapValue];
                  v65 = [v14 value];
                  v66 = (v64)[2](v64, v65);

                  v102 = v66;
                }

                v40 = v114;
              }

              v56 = [v14 characteristic];
              [(HMMTRProtocolOperationManager *)self _addArgumentsToInvocation:v106 primaryArgument:v102 completionHandlerArgument:v101 characteristicDescriptor:v40 forCharacteristic:v56];
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
              v79 = [v14 characteristic];
              v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "type")}];
              v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "endpoint")}];
              *buf = 138544130;
              *&buf[4] = v78;
              v132 = 2112;
              v133 = v79;
              v134 = 2112;
              v135 = v80;
              v136 = 2112;
              v137 = v81;
              _os_log_impl(&dword_22AEAE000, v77, OS_LOG_TYPE_INFO, "%{public}@CHIP Accessory sending request for characteristic %@ of type %@ on endpoint %@", buf, 0x2Au);

              v76 = v97;
            }

            objc_autoreleasePoolPop(v76);
            if ([v14 type] == 4 && ((objc_msgSend(v14, "matterDevice"), (v82 = objc_claimAutoreleasedReturnValue()) != 0) ? (v83 = v108 == 0) : (v83 = 1), v83 ? (v84 = 0) : (v84 = 1), v82, v84))
            {
              v85 = [HMMTRDeviceReader alloc];
              v86 = [v14 matterDevice];
              v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "endpoint")}];
              v88 = [(HMMTRDeviceReader *)v85 initWithClientQueue:v16 distributor:v113 device:v86 endpointID:v87 clusterID:v107 attributeID:v108];

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

            v89 = [v14 matterDevice];

            if (v89)
            {
              if ([v14 type] == 4 && !v108)
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

              if ([v14 type] == 1)
              {
                v92 = [v114 syncWriteFunc] ^ 1;
                if (!v17)
                {
                  LOBYTE(v92) = 1;
                }

                if ((v92 & 1) == 0)
                {
                  v93 = [(HMMTRProtocolOperationManager *)contexta _processResponseForOperation:v14 responseValues:0 responseError:0];
                  v17[2](v17, v93);
                }

                goto LABEL_102;
              }
            }

            if (v17 && [v14 type] == 1)
            {
              v94 = [(HMMTRProtocolOperationManager *)contexta _processResponseForOperation:v14 responseValues:0 responseError:0];
              v17[2](v17, v94);
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

          v45 = [v114 mapWriteValueToExpectedValues];

          if (v45)
          {
            v46 = [v114 mapWriteValueToExpectedValues];
            v47 = [v14 endpoint];
            v48 = [v14 value];
            v100 = (v46)[2](v46, v47, v48);

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

          v56 = v67;
          if ([v50 paramsClass])
          {
            v68 = [v14 characteristic];
            [(HMMTRProtocolOperationManager *)self _addParamsToInvocation:v106 paramsObject:v99 expectedValues:v98 expectedValueInterval:v56 completionHandlerArgument:v101 characteristicDescriptor:v50 forCharacteristic:v68];
LABEL_72:

            goto LABEL_73;
          }

          if (!v102)
          {
            v102 = 0;
            goto LABEL_68;
          }

          if ([v50 syncWriteFunc] && objc_msgSend(v100, "count") == 1)
          {
            v69 = [v100 objectAtIndexedSubscript:0];
            v70 = [v69 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
            v71 = v102;
          }

          else
          {
            v72 = [v50 mapValue];

            if (!v72)
            {
LABEL_66:
              v50 = v114;
LABEL_68:
              v73 = [v50 syncWriteFunc];
              v74 = [v14 characteristic];
              v68 = v74;
              if (v73)
              {
                v75 = 0;
              }

              else
              {
                v75 = v101;
              }

              [(HMMTRProtocolOperationManager *)self _addArgumentsToInvocation:v106 primaryArgument:v102 expectedValues:v98 expectedValueInterval:v56 completionHandlerArgument:v75 characteristicDescriptor:v50 forCharacteristic:v74];
              goto LABEL_72;
            }

            v69 = [v114 mapValue];
            v71 = [v14 value];
            v70 = (v69)[2](v69, v71);
          }

          v102 = v70;
          goto LABEL_66;
        }
      }

      else if (v30 != 3)
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
    v128 = v14;
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

- (void)handleLockTargetStateWriteWithOperation:(id)a3 accessoryServer:(id)a4 clientQueue:(id)a5 operationResponseHandler:(id)a6
{
  v48 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 writePrimaryRequestTuple];
  v15 = [v14 hmdAccessoryUUID];

  if (v15 && ([v10 matterDevice], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    v17 = [HMMTRSyncClusterDoorLock alloc];
    v18 = [v10 matterDevice];
    v19 = -[HMMTRSyncClusterDoorLock initWithDevice:endpoint:queue:accessoryServer:](v17, "initWithDevice:endpoint:queue:accessoryServer:", v18, [v10 endpoint], v12, v11);

    v20 = [v10 value];
    v21 = [v20 integerValue];

    if (v21 == 1)
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __126__HMMTRProtocolOperationManager_handleLockTargetStateWriteWithOperation_accessoryServer_clientQueue_operationResponseHandler___block_invoke_2;
      v36[3] = &unk_2786F0C10;
      v36[4] = self;
      v37 = v10;
      v38 = v13;
      [(HMMTRSyncClusterDoorLock *)v19 lockDoorWithAccessoryUUID:v15 completionHandler:v36];

      v22 = v37;
      goto LABEL_10;
    }

    if (!v21)
    {
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __126__HMMTRProtocolOperationManager_handleLockTargetStateWriteWithOperation_accessoryServer_clientQueue_operationResponseHandler___block_invoke;
      v39[3] = &unk_2786F0C10;
      v39[4] = self;
      v40 = v10;
      v41 = v13;
      [(HMMTRSyncClusterDoorLock *)v19 unlockDoorWithAccessoryUUID:v15 completionHandler:v39];

      v22 = v40;
LABEL_10:

      goto LABEL_14;
    }

    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      [v10 value];
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
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [v10 matterDevice];
      *buf = 138543874;
      v43 = v26;
      v44 = 2112;
      v45 = v15;
      v46 = 2112;
      v47 = v27;
      _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_ERROR, "%{public}@A required parameter was not included in write request for door lock target state. accessoryUUID: %@, matterDevice: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:3 userInfo:0];
    v28 = [(HMMTRProtocolOperationManager *)v24 _processWriteResponseForOperation:v10 writeResponseValues:0 writeResponseError:v19];
    (*(v13 + 2))(v13, v28);
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

- (void)handleHueSaturationWriteWithOperation:(id)a3 clientQueue:(id)a4 operationResponseHandler:(id)a5 updatedAttributesHandler:(id)a6
{
  v145 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 matterDevice];

  if (v14)
  {
    v15 = [v10 characteristicDescription];
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v132[2] = __133__HMMTRProtocolOperationManager_handleHueSaturationWriteWithOperation_clientQueue_operationResponseHandler_updatedAttributesHandler___block_invoke;
    v132[3] = &unk_2786EF5A8;
    v16 = v10;
    v133 = v16;
    v134 = v13;
    v119 = MEMORY[0x2318887D0](v132);
    v17 = objc_alloc([v15 clusterClass]);
    v18 = [v16 matterDevice];
    v118 = [v17 initWithDevice:v18 endpoint:objc_msgSend(v16 queue:{"endpoint"), v11}];

    v19 = [v15 mapWriteValueToExpectedValues];

    if (v19)
    {
      v20 = [v15 mapWriteValueToExpectedValues];
      v21 = [v16 endpoint];
      v22 = [v16 value];
      v23 = (v20)[2](v20, v21, v22);

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
    v35 = [v16 handlingType];
    v36 = v119;
    if (v35 == 2)
    {
      v102 = v10;
      v105 = v13;
      v113 = v11;
      v115 = v34;
      v110 = v12;
      v58 = objc_alloc_init(MEMORY[0x277CD52D0]);
      v59 = [v16 characteristic];
      v60 = [v59 type];
      v61 = [v60 isEqualToString:@"00000013-0000-1000-8000-0026BB765291"];

      v62 = [v15 mapValue];
      v63 = [v16 writePrimaryRequestTuple];
      v64 = [v63 value];
      v65 = (v62)[2](v62, v64);
      if (v61)
      {
        [v58 setHue:v65];

        v66 = [v16 writeSecondaryRequestTuple];
        v67 = [v66 value];
        v68 = [HMMTRProtocolMap linearMapForCharacteristic:@"0000002F-0000-1000-8000-0026BB765291" value:v67 fromRange:&unk_283EE9258 toRange:&unk_283EE9270];
        [v58 setSaturation:v68];
      }

      else
      {
        [v58 setSaturation:v65];

        v66 = [v16 writeSecondaryRequestTuple];
        v67 = [v66 value];
        v68 = [HMMTRProtocolMap linearMapForCharacteristic:@"00000013-0000-1000-8000-0026BB765291" value:v67 fromRange:&unk_283EE9228 toRange:&unk_283EE9240];
        [v58 setHue:v68];
      }

      [v58 setTransitionTime:&unk_283EE7E78];
      [v58 setOptionsMask:&unk_283EE7F38];
      [v58 setOptionsOverride:&unk_283EE7F38];
      v74 = objc_autoreleasePoolPush();
      v75 = self;
      v76 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        v77 = HMFGetLogIdentifier();
        v78 = [v16 characteristic];
        v99 = [v16 writeSecondaryRequestTuple];
        [v99 characteristic];
        v79 = v100 = v58;
        v80 = v74;
        v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "type")}];
        v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "endpoint")}];
        *buf = 138544386;
        v136 = v77;
        v137 = 2112;
        v138 = v78;
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
      v120[4] = v75;
      v121 = v16;
      v12 = v110;
      v122 = v110;
      v36 = v119;
      v123 = v119;
      v51 = v117;
      v54 = v115;
      [v118 moveToHueAndSaturationWithParams:v58 expectedValues:v117 expectedValueInterval:v115 completionHandler:v120];

      v11 = v113;
      v10 = v102;
      v13 = v105;
      goto LABEL_38;
    }

    if (v35 == 1)
    {
      v56 = v34;
      v57 = [(HMMTRProtocolOperationManager *)self _processWriteResponseForOperation:v16 writeResponseValues:0 writeResponseError:0];
      if (v12)
      {
        (*(v12 + 2))(v12, v57);
      }

      v51 = v117;
      v54 = v56;
      goto LABEL_38;
    }

    v114 = v34;
    if (v35)
    {
      v69 = objc_autoreleasePoolPush();
      v70 = self;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v72 = v106 = v13;
        v73 = [v16 handlingType];
        *buf = 138543618;
        v136 = v72;
        v137 = 2048;
        v138 = v73;
        _os_log_impl(&dword_22AEAE000, v71, OS_LOG_TYPE_ERROR, "%{public}@Unhandled handling type: %lu", buf, 0x16u);

        v13 = v106;
      }

      objc_autoreleasePoolPop(v69);
      v36 = v119;
      v51 = v117;
      v54 = v114;
      goto LABEL_38;
    }

    v37 = [v16 characteristic];
    v38 = [v37 type];
    v39 = [v38 isEqualToString:@"00000013-0000-1000-8000-0026BB765291"];

    if (v39)
    {
      v109 = v12;
      v112 = v11;
      v40 = objc_alloc_init(MEMORY[0x277CD52D8]);
      v41 = [v15 mapValue];
      v42 = [v16 writePrimaryRequestTuple];
      v43 = [v42 value];
      v44 = (v41)[2](v41, v43);
      [v40 setHue:v44];

      [v40 setTransitionTime:&unk_283EE7E78];
      [v40 setOptionsMask:&unk_283EE7F38];
      [v40 setOptionsOverride:&unk_283EE7F38];
      v45 = objc_autoreleasePoolPush();
      v46 = self;
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
      v128[4] = v46;
      v129 = v16;
      v12 = v109;
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
      v107 = self;
      v83 = [v16 characteristic];
      v84 = [v83 type];
      v85 = [v84 isEqualToString:@"0000002F-0000-1000-8000-0026BB765291"];

      v36 = v119;
      v51 = v117;
      v54 = v114;
      if (!v85)
      {
LABEL_38:

        v32 = v118;
        goto LABEL_39;
      }

      v111 = v12;
      v112 = v11;
      v86 = objc_alloc_init(MEMORY[0x277CD52E0]);
      v87 = [v15 mapValue];
      v88 = [v16 writePrimaryRequestTuple];
      v89 = [v88 value];
      v90 = (v87)[2](v87, v89);
      [v86 setSaturation:v90];

      [v86 setTransitionTime:&unk_283EE7E78];
      [v86 setOptionsMask:&unk_283EE7F38];
      [v86 setOptionsOverride:&unk_283EE7F38];
      v91 = objc_autoreleasePoolPush();
      v92 = v107;
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
      v12 = v111;
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

    v11 = v112;
    goto LABEL_38;
  }

  v28 = objc_autoreleasePoolPush();
  v29 = self;
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
  v15 = [(HMMTRProtocolOperationManager *)v29 _processWriteResponseForOperation:v10 writeResponseValues:0 writeResponseError:v32];
  (*(v12 + 2))(v12, v15);
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

- (void)handleIdentifyDeviceWriteWithOperation:(id)a3 clientQueue:(id)a4 operationResponseHandler:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 writePrimaryRequestTuple];
  v12 = [v11 hmdAccessoryUUID];

  if (v12 && ([v8 matterDevice], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = [HMMTRIdentifyDevice alloc];
    v15 = [v8 matterDevice];
    v16 = [v8 topology];
    v17 = [(HMMTRIdentifyDevice *)v14 initWithDevice:v15 topology:v16 queue:v9];

    LOWORD(v15) = [v8 endpoint];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __109__HMMTRProtocolOperationManager_handleIdentifyDeviceWriteWithOperation_clientQueue_operationResponseHandler___block_invoke;
    v25[3] = &unk_2786F0C10;
    v25[4] = self;
    v26 = v8;
    v27 = v10;
    [(HMMTRIdentifyDevice *)v17 identifyWithEndpoint:v15 completionHandler:v25];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v8 matterDevice];
      *buf = 138543874;
      v29 = v21;
      v30 = 2112;
      v31 = v12;
      v32 = 2112;
      v33 = v22;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@A required parameter was not included in identify write request. accessoryUUID: %@, matterDevice: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:3 userInfo:0];
    v23 = [(HMMTRProtocolOperationManager *)v19 _processWriteResponseForOperation:v8 writeResponseValues:0 writeResponseError:v17];
    (*(v10 + 2))(v10, v23);
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

- (BOOL)handleSpecialCaseCharacteristicWithOperation:(id)a3 accessoryServer:(id)a4 clientQueue:(id)a5 operationResponseHandler:(id)a6 updatedAttributesHandler:(id)a7
{
  v61 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 characteristic];
  v18 = [v17 type];
  if ([v18 isEqualToString:@"0000001E-0000-1000-8000-0026BB765291"])
  {
    v19 = [v12 type];

    if (v19 == 1)
    {
      [(HMMTRProtocolOperationManager *)self handleLockTargetStateWriteWithOperation:v12 accessoryServer:v13 clientQueue:v14 operationResponseHandler:v15];
LABEL_26:
      v43 = 1;
      goto LABEL_27;
    }
  }

  else
  {
  }

  v20 = [v12 characteristic];
  v21 = [v20 type];
  if ([v21 isEqualToString:@"00000014-0000-1000-8000-0026BB765291"])
  {
    v22 = [v12 type];

    if (v22 == 1)
    {
      [(HMMTRProtocolOperationManager *)self handleIdentifyDeviceWriteWithOperation:v12 clientQueue:v14 operationResponseHandler:v15];
      goto LABEL_26;
    }
  }

  else
  {
  }

  if ([v12 type] == 1)
  {
    v23 = [v12 characteristic];
    v24 = [v23 type];
    if ([v24 isEqualToString:@"00000013-0000-1000-8000-0026BB765291"])
    {

LABEL_13:
      [(HMMTRProtocolOperationManager *)self handleHueSaturationWriteWithOperation:v12 clientQueue:v14 operationResponseHandler:v15 updatedAttributesHandler:v16];
      goto LABEL_26;
    }

    v25 = [v12 characteristic];
    [v25 type];
    v26 = self;
    v27 = v15;
    v28 = v14;
    v29 = v16;
    v31 = v30 = v13;
    v52 = [v31 isEqualToString:@"0000002F-0000-1000-8000-0026BB765291"];

    v13 = v30;
    v16 = v29;
    v14 = v28;
    v15 = v27;
    self = v26;

    if (v52)
    {
      goto LABEL_13;
    }
  }

  if ([v12 type] == 1)
  {
    v32 = [v12 characteristic];
    v33 = [v32 type];
    v34 = [v33 isEqualToString:@"000000B0-0000-1000-8000-0026BB765291"];

    if (v34)
    {
      if ([v12 handlingType])
      {
        v35 = [v12 handlingType];
        v36 = objc_autoreleasePoolPush();
        v37 = self;
        v38 = HMFGetOSLogHandle();
        v39 = v38;
        if (v35 == 3)
        {
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v40 = HMFGetLogIdentifier();
            v41 = [v12 writePrimaryRequestTuple];
            [v41 hmdAccessoryUUID];
            v42 = v53 = v13;
            *buf = 138543618;
            v56 = v40;
            v57 = 2112;
            v58 = v42;
            _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_DEBUG, "%{public}@Dropping write request for active characteristic. accessoryUUID: %@", buf, 0x16u);

            v13 = v53;
          }
        }

        else if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v44 = v51 = v36;
          v45 = [v12 handlingType];
          [v12 writePrimaryRequestTuple];
          v46 = v54 = v13;
          v47 = [v46 hmdAccessoryUUID];
          *buf = 138543874;
          v56 = v44;
          v57 = 2048;
          v58 = v45;
          v59 = 2112;
          v60 = v47;
          _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_ERROR, "%{public}@Invalid handling type %lu. Dropping write request for active characteristic. accessoryUUID: %@", buf, 0x20u);

          v13 = v54;
          v36 = v51;
        }

        objc_autoreleasePoolPop(v36);
        v48 = [(HMMTRProtocolOperationManager *)v37 _processWriteResponseForOperation:v12 writeResponseValues:0 writeResponseError:0];
        if (v15)
        {
          v15[2](v15, v48);
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

- (BOOL)_isBasicClusterOperationForBridgedDevice:(Class)a3 endpointID:(unint64_t)a4
{
  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) == 0)
  {
    v6 = [(objc_class *)a3 isEqual:objc_opt_class()];
    return a4 && (v6 & 1) != 0;
  }

  return a4 != 0;
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