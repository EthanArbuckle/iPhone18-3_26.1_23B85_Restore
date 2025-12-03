@interface HMMTRDeviceReader
- (HMMTRDeviceReader)initWithClientQueue:(id)queue distributor:(id)distributor device:(id)device endpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID;
- (void)_readAttributeAfterAttributeListConfirmationWithCompletionHandler:(id)handler;
- (void)readAttributeWithCompletion:(id)completion;
@end

@implementation HMMTRDeviceReader

- (void)_readAttributeAfterAttributeListConfirmationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  device = [(HMMTRDeviceReader *)self device];
  endpointID = [(HMMTRDeviceReader *)self endpointID];
  clusterID = [(HMMTRDeviceReader *)self clusterID];
  attributeID = [(HMMTRDeviceReader *)self attributeID];
  v9 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v10 = [device readAttributeWithEndpointID:endpointID clusterID:clusterID attributeID:attributeID params:v9];

  if (v10)
  {
    clientQueue = [(HMMTRDeviceReader *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__HMMTRDeviceReader__readAttributeAfterAttributeListConfirmationWithCompletionHandler___block_invoke;
    block[3] = &unk_2786EF5A8;
    v43 = handlerCopy;
    v42 = v10;
    v12 = handlerCopy;
    dispatch_async(clientQueue, block);
  }

  else
  {
    v13 = MEMORY[0x277CD51C0];
    endpointID2 = [(HMMTRDeviceReader *)self endpointID];
    clusterID2 = [(HMMTRDeviceReader *)self clusterID];
    attributeID2 = [(HMMTRDeviceReader *)self attributeID];
    v17 = [v13 attributePathWithEndpointID:endpointID2 clusterID:clusterID2 attributeID:attributeID2];

    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__5708;
    v39 = __Block_byref_object_dispose__5709;
    v40 = 0;
    distributor = [(HMMTRDeviceReader *)self distributor];
    clientQueue2 = [(HMMTRDeviceReader *)self clientQueue];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __87__HMMTRDeviceReader__readAttributeAfterAttributeListConfirmationWithCompletionHandler___block_invoke_2;
    v31[3] = &unk_2786EE0B0;
    v34 = &v35;
    v31[4] = self;
    v20 = v17;
    v32 = v20;
    v21 = handlerCopy;
    v33 = v21;
    v22 = [distributor registerHandlerForAttributePath:v20 queue:clientQueue2 handler:v31];
    v23 = v36[5];
    v36[5] = v22;

    v24 = dispatch_time(0, [(HMMTRDeviceReader *)self reportTimeoutNSecs]);
    clientQueue3 = [(HMMTRDeviceReader *)self clientQueue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __87__HMMTRDeviceReader__readAttributeAfterAttributeListConfirmationWithCompletionHandler___block_invoke_3;
    v27[3] = &unk_2786EF788;
    v27[4] = self;
    v28 = v20;
    v29 = v21;
    v30 = &v35;
    v26 = v21;
    v12 = v20;
    dispatch_after(v24, clientQueue3, v27);

    _Block_object_dispose(&v35, 8);
  }
}

void __87__HMMTRDeviceReader__readAttributeAfterAttributeListConfirmationWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v14 = v3;
    v4 = [*(a1 + 32) distributor];
    [v4 deregisterHandlerForAttributePath:*(a1 + 40) registry:*(*(*(a1 + 56) + 8) + 40)];

    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;

    v7 = *(a1 + 48);
    if (v14)
    {
      v8 = [v14 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
      (*(v7 + 16))(v7, v8);
    }

    else
    {
      v8 = [*(a1 + 32) device];
      v9 = [*(a1 + 32) endpointID];
      v10 = [*(a1 + 32) clusterID];
      v11 = [*(a1 + 32) attributeID];
      v12 = objc_alloc_init(MEMORY[0x277CD54D8]);
      v13 = [v8 readAttributeWithEndpointID:v9 clusterID:v10 attributeID:v11 params:v12];
      (*(v7 + 16))(v7, v13);
    }

    v3 = v14;
  }
}

uint64_t __87__HMMTRDeviceReader__readAttributeAfterAttributeListConfirmationWithCompletionHandler___block_invoke_3(uint64_t result)
{
  if (*(*(*(result + 56) + 8) + 40))
  {
    v1 = result;
    v2 = [*(result + 32) distributor];
    [v2 deregisterHandlerForAttributePath:v1[5] registry:*(*(v1[7] + 8) + 40)];

    v3 = *(v1[7] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    v5 = *(v1[6] + 16);

    return v5();
  }

  return result;
}

- (void)readAttributeWithCompletion:(id)completion
{
  completionCopy = completion;
  device = [(HMMTRDeviceReader *)self device];
  endpointID = [(HMMTRDeviceReader *)self endpointID];
  clusterID = [(HMMTRDeviceReader *)self clusterID];
  attributeID = [(HMMTRDeviceReader *)self attributeID];
  v9 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v10 = [device readAttributeWithEndpointID:endpointID clusterID:clusterID attributeID:attributeID params:v9];

  if (v10)
  {
    clientQueue = [(HMMTRDeviceReader *)self clientQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__HMMTRDeviceReader_readAttributeWithCompletion___block_invoke;
    block[3] = &unk_2786EF5A8;
    v57 = completionCopy;
    v56 = v10;
    dispatch_async(clientQueue, block);

    v12 = v57;
  }

  else
  {
    device2 = [(HMMTRDeviceReader *)self device];
    endpointID2 = [(HMMTRDeviceReader *)self endpointID];
    clusterID2 = [(HMMTRDeviceReader *)self clusterID];
    v16 = objc_alloc_init(MEMORY[0x277CD54D8]);
    v12 = [device2 readAttributeWithEndpointID:endpointID2 clusterID:clusterID2 attributeID:&unk_283EE8148 params:v16];

    if (v12)
    {
      v17 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReadResultValue:v12 forIdentify:@"AttributeList"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      attributeID2 = [(HMMTRDeviceReader *)self attributeID];
      v21 = [v19 containsObject:attributeID2];

      clientQueue2 = [(HMMTRDeviceReader *)self clientQueue];
      if (v21)
      {
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __49__HMMTRDeviceReader_readAttributeWithCompletion___block_invoke_2;
        v51[3] = &unk_2786EF5A8;
        v51[4] = self;
        v52 = completionCopy;
        dispatch_async(clientQueue2, v51);

        v23 = v52;
      }

      else
      {
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __49__HMMTRDeviceReader_readAttributeWithCompletion___block_invoke_5;
        v53[3] = &unk_2786EF878;
        v54 = completionCopy;
        dispatch_async(clientQueue2, v53);

        v23 = v54;
      }
    }

    else
    {
      v24 = MEMORY[0x277CD51C0];
      endpointID3 = [(HMMTRDeviceReader *)self endpointID];
      clusterID3 = [(HMMTRDeviceReader *)self clusterID];
      v27 = [v24 attributePathWithEndpointID:endpointID3 clusterID:clusterID3 attributeID:&unk_283EE8148];

      v45 = 0;
      v46 = &v45;
      v47 = 0x3032000000;
      v48 = __Block_byref_object_copy__5708;
      v49 = __Block_byref_object_dispose__5709;
      v50 = 0;
      distributor = [(HMMTRDeviceReader *)self distributor];
      clientQueue3 = [(HMMTRDeviceReader *)self clientQueue];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __49__HMMTRDeviceReader_readAttributeWithCompletion___block_invoke_7;
      v41[3] = &unk_2786EE0B0;
      v44 = &v45;
      v41[4] = self;
      v30 = v27;
      v42 = v30;
      v31 = completionCopy;
      v43 = v31;
      v32 = [distributor registerHandlerForAttributePath:v30 queue:clientQueue3 handler:v41];
      v33 = v46[5];
      v46[5] = v32;

      v34 = dispatch_time(0, [(HMMTRDeviceReader *)self reportTimeoutNSecs]);
      clientQueue4 = [(HMMTRDeviceReader *)self clientQueue];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __49__HMMTRDeviceReader_readAttributeWithCompletion___block_invoke_2_9;
      v37[3] = &unk_2786EF788;
      v40 = &v45;
      v37[4] = self;
      v38 = v30;
      v39 = v31;
      v36 = v30;
      dispatch_after(v34, clientQueue4, v37);

      _Block_object_dispose(&v45, 8);
      v12 = 0;
    }
  }
}

uint64_t __49__HMMTRDeviceReader_readAttributeWithCompletion___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v21 = v3;
    v5 = [*(a1 + 32) distributor];
    [v5 deregisterHandlerForAttributePath:*(a1 + 40) registry:*(*(*(a1 + 56) + 8) + 40)];

    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;

    if (v21)
    {
      v8 = [HMMTRUtilities mtrBaseClusterValueFromMTRClusterReportValue:?];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      v11 = [*(a1 + 32) attributeID];
      v12 = [v10 containsObject:v11];

      if (v12)
      {
        v3 = [*(a1 + 32) _readAttributeAfterAttributeListConfirmationWithCompletionHandler:*(a1 + 48)];
      }

      else
      {
        v3 = (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      v13 = *(a1 + 48);
      v14 = [*(a1 + 32) device];
      v15 = [*(a1 + 32) endpointID];
      v16 = [*(a1 + 32) clusterID];
      v17 = [*(a1 + 32) attributeID];
      v18 = objc_alloc_init(MEMORY[0x277CD54D8]);
      v19 = [v14 readAttributeWithEndpointID:v15 clusterID:v16 attributeID:v17 params:v18];
      (*(v13 + 16))(v13, v19);
    }

    v4 = v21;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t __49__HMMTRDeviceReader_readAttributeWithCompletion___block_invoke_2_9(uint64_t result)
{
  if (*(*(*(result + 56) + 8) + 40))
  {
    v1 = result;
    v2 = [*(result + 32) distributor];
    [v2 deregisterHandlerForAttributePath:v1[5] registry:*(*(v1[7] + 8) + 40)];

    v3 = *(v1[7] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    v5 = *(v1[6] + 16);

    return v5();
  }

  return result;
}

- (HMMTRDeviceReader)initWithClientQueue:(id)queue distributor:(id)distributor device:(id)device endpointID:(id)d clusterID:(id)iD attributeID:(id)attributeID
{
  queueCopy = queue;
  distributorCopy = distributor;
  deviceCopy = device;
  dCopy = d;
  iDCopy = iD;
  attributeIDCopy = attributeID;
  v24.receiver = self;
  v24.super_class = HMMTRDeviceReader;
  v18 = [(HMMTRDeviceReader *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_clientQueue, queue);
    objc_storeStrong(&v19->_distributor, distributor);
    objc_storeStrong(&v19->_device, device);
    objc_storeStrong(&v19->_endpointID, d);
    objc_storeStrong(&v19->_clusterID, iD);
    objc_storeStrong(&v19->_attributeID, attributeID);
    v19->_reportTimeoutNSecs = 60000000000;
  }

  return v19;
}

@end