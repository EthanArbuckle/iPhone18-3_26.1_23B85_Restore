@interface HMDThreadRadioClient
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isThreadNetworkUp;
- (BOOL)shouldInformThreadOfResidentChange:(BOOL)change primaryResidentIsThreadCapable:(BOOL)capable;
- (HMDThreadRadioClient)init;
- (id)_WEDStateChangeEventFromThreadEvent:(shared_ptr<CtrXPC::Event>)event;
- (int64_t)_WEDConnectionStateFromStatus:(id)status disconnectReason:(id)reason;
- (int64_t)_connectionStateFromString:(id)string;
- (int64_t)_nodeTypeFromString:(id)string;
- (void)_notifyObserversOfCallStateChangedEvent:(id)event;
- (void)_notifyObserversOfPeripheralDeviceNodeTypeEvent:(id)event;
- (void)_notifyObserversOfThreadNetworkEvent:(id)event;
- (void)_notifyObserversOfThreadPreferredNetworkUpdatedEvent:(id)event;
- (void)_notifyObserversOfThreadWakeOnDeviceConnectionStateEvent:(id)event;
- (void)_registerForThreadNetworkEvents;
- (void)_reportCurrentThreadState:(id)state;
- (void)_unregisterForThreadNetworkEvents;
- (void)_updateThreadMessageReliabilityParametersWithUserDefinedValues:(BOOL)values;
- (void)connectToExtendedMACAddress:(id)address completion:(id)completion;
- (void)informThreadLayerOfResidentChange:(BOOL)change primaryResidentIsThreadCapable:(BOOL)capable;
- (void)registerForThreadNetworkEvents:(id)events;
- (void)setThreadMessageReliabilityParameters:(id)parameters activeRetransmitMs:(id)ms activeThresholdMs:(id)thresholdMs additionalRetransmitDelayMs:(id)delayMs;
- (void)startFirmwareUpdateWithExtendedMACAddress:(id)address isWedDevice:(BOOL)device completion:(id)completion;
- (void)startThreadNetwork:(id)network completion:(id)completion;
- (void)startThreadNetworkWithOperationalDataset:(id)dataset isOwnerUser:(BOOL)user completion:(id)completion;
- (void)startThreadPairingWithExtendedMACAddress:(id)address isWedDevice:(BOOL)device completion:(id)completion;
- (void)stopFirmwareUpdateWithCompletion:(id)completion;
- (void)stopThreadNetworkWithCompletion:(id)completion;
- (void)stopThreadPairingWithCompletion:(id)completion;
- (void)triggerThreadNetworkStateCaptureForAccessories:(id)accessories isSessionFailure:(BOOL)failure withCompletion:(id)completion;
- (void)triggerThreadNetworkStateCaptureWithCompletion:(id)completion;
- (void)unregisterForThreadNetworkEvents:(id)events;
@end

@implementation HMDThreadRadioClient

- (BOOL)shouldInformThreadOfResidentChange:(BOOL)change primaryResidentIsThreadCapable:(BOOL)capable
{
  capableCopy = capable;
  changeCopy = change;
  threadLayerInformedResidentState = [(HMDThreadRadioClient *)self threadLayerInformedResidentState];
  if (changeCopy)
  {
    if (threadLayerInformedResidentState == 1)
    {
      return 0;
    }
  }

  else if (capableCopy)
  {
    if (threadLayerInformedResidentState == 2)
    {
      return 0;
    }
  }

  else if (threadLayerInformedResidentState == 3)
  {
    return 0;
  }

  return 1;
}

- (void)informThreadLayerOfResidentChange:(BOOL)change primaryResidentIsThreadCapable:(BOOL)capable
{
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    threadStateCaptureQueue = [(HMDThreadRadioClient *)self threadStateCaptureQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __89__HMDThreadRadioClient_informThreadLayerOfResidentChange_primaryResidentIsThreadCapable___block_invoke;
    v9[3] = &unk_27972C680;
    v9[4] = self;
    changeCopy = change;
    capableCopy = capable;
    dispatch_async(threadStateCaptureQueue, v9);
  }
}

void __89__HMDThreadRadioClient_informThreadLayerOfResidentChange_primaryResidentIsThreadCapable___block_invoke(uint64_t a1)
{
  v61[20] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) shouldInformThreadOfResidentChange:*(a1 + 40) primaryResidentIsThreadCapable:*(a1 + 41)])
  {
    v2 = [*(a1 + 32) threadClient];
    v3 = v2;
    if (v2)
    {
      [v2 updatePrimaryResident:*(a1 + 40) isPrimaryResidentThreadCapable:*(a1 + 41) primaryResidentInfo:0];
    }

    else
    {
      *v47 = 0u;
      v48 = 0u;
    }

    if (SLODWORD(v47[0]) > 6)
    {
      if (SLODWORD(v47[0]) > 9)
      {
        if (LODWORD(v47[0]) == 10)
        {
          v8 = 3;
          goto LABEL_30;
        }

        if (LODWORD(v47[0]) == 12)
        {
          v8 = 80;
          goto LABEL_30;
        }
      }

      else
      {
        if (LODWORD(v47[0]) == 7)
        {
          v8 = 10;
          goto LABEL_30;
        }

        if (LODWORD(v47[0]) == 9)
        {
          v8 = 27;
          goto LABEL_30;
        }
      }
    }

    else
    {
      if (SLODWORD(v47[0]) > 4)
      {
        if (LODWORD(v47[0]) == 5)
        {
          v8 = 48;
        }

        else
        {
          v8 = 15;
        }

LABEL_30:
        v16 = objc_autoreleasePoolPush();
        v17 = objc_opt_class();
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v19 = HMFGetLogIdentifier();
          *buf = 138543874;
          *&buf[4] = v19;
          *&buf[12] = 2048;
          *&buf[14] = LODWORD(v47[0]);
          v54 = 2048;
          *&v55 = v8;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@CoreThreadRadio result code %lu mapped to HMErrorCode %lu", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
        v20 = MEMORY[0x277CCACA8];
        v61[6] = 0;
        v21 = MEMORY[0x277D828A0] + 64;
        v61[0] = MEMORY[0x277D828A0] + 64;
        v22 = MEMORY[0x277D82828];
        v23 = *(MEMORY[0x277D82828] + 16);
        *buf = *(MEMORY[0x277D82828] + 8);
        *&buf[*(*buf - 24)] = v23;
        v24 = &buf[*(*buf - 24)];
        std::ios_base::init(v24, &buf[8]);
        v25 = v8;
        v26 = MEMORY[0x277D828A0] + 24;
        v24[1].__vftable = 0;
        v24[1].__fmtflags_ = -1;
        *buf = v26;
        v61[0] = v21;
        v27 = MEMORY[0x277D82868] + 16;
        *&buf[8] = MEMORY[0x277D82868] + 16;
        MEMORY[0x259C02800](&buf[16]);
        v57 = 0u;
        *__src = 0u;
        v55 = 0u;
        v28 = MEMORY[0x277D82878] + 16;
        *&buf[8] = MEMORY[0x277D82878] + 16;
        memset(&v58, 0, sizeof(v58));
        v59 = &v58;
        v60 = 16;
        std::string::resize(&v58, 0x16uLL, 0);
        size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v58.__r_.__value_.__l.__size_;
        }

        __src[1] = &v58;
        *&v57 = &v58;
        *(&v57 + 1) = &v58 + size;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "Result:'", 8);
        if (LODWORD(v47[0]) > 0xE)
        {
          v30 = "kInvalidErrorCode";
        }

        else
        {
          v30 = off_27972B690[LODWORD(v47[0])];
        }

        std::string::basic_string[abi:ne200100]<0>(__p, v30);
        if ((v52 & 0x80u) == 0)
        {
          v31 = __p;
        }

        else
        {
          v31 = __p[0];
        }

        if ((v52 & 0x80u) == 0)
        {
          v32 = v52;
        }

        else
        {
          v32 = __p[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, v31, v32);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "'", 1);
        if (v52 < 0)
        {
          operator delete(__p[0]);
        }

        v33 = HIBYTE(v48);
        if (v48 < 0)
        {
          v33 = v48;
        }

        if (v33)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, " Info:'", 7);
          if (v48 >= 0)
          {
            v34 = &v47[1];
          }

          else
          {
            v34 = v47[1];
          }

          if (v48 >= 0)
          {
            v35 = HIBYTE(v48);
          }

          else
          {
            v35 = v48;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, v34, v35);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "'", 1);
        }

        if ((v60 & 0x10) != 0)
        {
          v37 = v59;
          if (v59 < v57)
          {
            v59 = v57;
            v37 = v57;
          }

          v38 = __src[1];
        }

        else
        {
          if ((v60 & 8) == 0)
          {
            v36 = 0;
            v50 = 0;
LABEL_69:
            *(&__dst + v36) = 0;
            *buf = *v22;
            *&buf[*(*buf - 24)] = v22[3];
            *&buf[8] = v28;
            if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v58.__r_.__value_.__l.__data_);
            }

            *&buf[8] = v27;
            std::locale::~locale(&buf[16]);
            std::ostream::~ostream();
            MEMORY[0x259C02850](v61);
            if (v50 >= 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst;
            }

            v40 = [v20 stringWithCString:p_dst encoding:4];
            if (v50 < 0)
            {
              operator delete(__dst);
            }

            v41 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v8 description:0 reason:v40 suggestion:0];

            v42 = objc_autoreleasePoolPush();
            v43 = *(a1 + 32);
            v44 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v45 = HMFGetLogIdentifier();
              *buf = 138543618;
              *&buf[4] = v45;
              *&buf[12] = 2112;
              *&buf[14] = v41;
              _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Failed to inform Thread layer of primary resident update: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v42);
LABEL_79:
            if (SHIBYTE(v48) < 0)
            {
              operator delete(v47[1]);
            }

            goto LABEL_81;
          }

          v38 = v55;
          v37 = __src[0];
        }

        v36 = v37 - v38;
        if ((v37 - v38) >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v36 >= 0x17)
        {
          operator new();
        }

        v50 = v37 - v38;
        if (v36)
        {
          memmove(&__dst, v38, v36);
        }

        v8 = v25;
        goto LABEL_69;
      }

      if (!LODWORD(v47[0]))
      {
        v9 = objc_autoreleasePoolPush();
        v10 = *(a1 + 32);
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = HMFGetLogIdentifier();
          v13 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
          v14 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 41)];
          *buf = 138543874;
          *&buf[4] = v12;
          *&buf[12] = 2112;
          *&buf[14] = v13;
          v54 = 2112;
          *&v55 = v14;
          _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Successfully informed Thread layer of primary resident change (isPrimary=%@ primaryThreadCapable=%@)", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v9);
        if (*(a1 + 40))
        {
          v15 = 1;
        }

        else if (*(a1 + 41))
        {
          v15 = 2;
        }

        else
        {
          v15 = 3;
        }

        [*(a1 + 32) setThreadLayerInformedResidentState:v15];
        goto LABEL_79;
      }

      if (LODWORD(v47[0]) == 4)
      {
        v8 = 23;
        goto LABEL_30;
      }
    }

    v8 = 52;
    goto LABEL_30;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    *&buf[4] = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Not informing Thread layer of primary resident change as state has not changed.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
LABEL_81:
  v46 = *MEMORY[0x277D85DE8];
}

- (void)triggerThreadNetworkStateCaptureForAccessories:(id)accessories isSessionFailure:(BOOL)failure withCompletion:(id)completion
{
  completionCopy = completion;
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    threadStateCaptureQueue = [(HMDThreadRadioClient *)self threadStateCaptureQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __103__HMDThreadRadioClient_triggerThreadNetworkStateCaptureForAccessories_isSessionFailure_withCompletion___block_invoke_2;
    v14[3] = &unk_279733DB0;
    failureCopy = failure;
    v14[4] = self;
    v15 = completionCopy;
    v10 = completionCopy;
    dispatch_async(threadStateCaptureQueue, v14);

    v11 = v15;
  }

  else
  {
    v12 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__HMDThreadRadioClient_triggerThreadNetworkStateCaptureForAccessories_isSessionFailure_withCompletion___block_invoke;
    block[3] = &unk_2797348C0;
    v18 = completionCopy;
    v13 = completionCopy;
    dispatch_async(v12, block);

    v11 = v18;
  }
}

void __103__HMDThreadRadioClient_triggerThreadNetworkStateCaptureForAccessories_isSessionFailure_withCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1, 0, 0);
}

void __103__HMDThreadRadioClient_triggerThreadNetworkStateCaptureForAccessories_isSessionFailure_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) threadClient];
  v3 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __103__HMDThreadRadioClient_triggerThreadNetworkStateCaptureForAccessories_isSessionFailure_withCompletion___block_invoke_3;
  v4[3] = &unk_27972B670;
  v5 = *(a1 + 40);
  [v2 captureTriggerData:0 triggerId:v3 ^ 1u accessoryInfoList:0 completionHandler:v4];
}

void __103__HMDThreadRadioClient_triggerThreadNetworkStateCaptureForAccessories_isSessionFailure_withCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = a2;
  v7 = a3;
  v8 = a4;
  if (!v23)
  {
    v21 = *(a1 + 32);
    if (!v8)
    {
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      v22 = 1;
LABEL_15:
      (*(v21 + 16))(v21, 0, 0, v12);
      if ((v22 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v22 = 0;
LABEL_13:
    v12 = v8;
    goto LABEL_15;
  }

  if (v8)
  {
    v9 = [v8 domain];
    if ([v9 isEqualToString:@"com.threadradiod.ctr"])
    {
      v10 = [v8 code];

      if (!v10)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v22 = 0;
    v21 = *(a1 + 32);
    goto LABEL_13;
  }

LABEL_5:
  if ([v23 duration])
  {
    v11 = v23;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;
  v13 = *(a1 + 32);
  v14 = objc_alloc(MEMORY[0x277CBEAC0]);
  v15 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v12, "num_border_routers_advertised")}];
  v16 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v12, "num_apple_BRs")}];
  v17 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v12, "num_border_routers_advertised")}];
  v18 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v12, "num_border_routers_advertised")}];
  v19 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v12, "num_border_routers_advertised")}];
  v20 = [v14 initWithObjectsAndKeys:{v15, @"numAdvertisedBRs", v16, @"numAppleBRs", v17, @"numThirdPartyBRs", v18, @"numThreadNetworks", v19, @"maxSimuIPPrefixesDetected", 0}];
  (*(v13 + 16))(v13, v20, 0, 0);

LABEL_16:
LABEL_17:
}

- (void)triggerThreadNetworkStateCaptureWithCompletion:(id)completion
{
  completionCopy = completion;
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    threadStateCaptureQueue = [(HMDThreadRadioClient *)self threadStateCaptureQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__HMDThreadRadioClient_triggerThreadNetworkStateCaptureWithCompletion___block_invoke_2;
    block[3] = &unk_279735738;
    block[4] = self;
    v12 = completionCopy;
    v7 = completionCopy;
    dispatch_async(threadStateCaptureQueue, block);

    v8 = v12;
  }

  else
  {
    v9 = dispatch_get_global_queue(21, 0);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__HMDThreadRadioClient_triggerThreadNetworkStateCaptureWithCompletion___block_invoke;
    v13[3] = &unk_2797348C0;
    v14 = completionCopy;
    v10 = completionCopy;
    dispatch_async(v9, v13);

    v8 = v14;
  }
}

void __71__HMDThreadRadioClient_triggerThreadNetworkStateCaptureWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1, 0);
}

void __71__HMDThreadRadioClient_triggerThreadNetworkStateCaptureWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) threadClient];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__HMDThreadRadioClient_triggerThreadNetworkStateCaptureWithCompletion___block_invoke_3;
  v3[3] = &unk_27972B670;
  v4 = *(a1 + 40);
  [v2 captureTriggerData:0 triggerId:2 accessoryInfoList:0 completionHandler:v3];
}

void __71__HMDThreadRadioClient_triggerThreadNetworkStateCaptureWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = a2;
  v7 = a3;
  v8 = a4;
  if (!v17)
  {
    v15 = *(a1 + 32);
    if (!v8)
    {
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      v16 = 1;
LABEL_15:
      (*(v15 + 16))(v15, 0, v12);
      if ((v16 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v16 = 0;
LABEL_13:
    v12 = v8;
    goto LABEL_15;
  }

  if (v8)
  {
    v9 = [v8 domain];
    if ([v9 isEqualToString:@"com.threadradiod.ctr"])
    {
      v10 = [v8 code];

      if (!v10)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v16 = 0;
    v15 = *(a1 + 32);
    goto LABEL_13;
  }

LABEL_5:
  if ([v17 duration])
  {
    v11 = v17;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;
  v13 = *(a1 + 32);
  v14 = -[HMDThreadNetworkStatusReport initWithNumAdvertisedBRs:numAppleBRs:numThirdPartyBRs:numThreadNetworks:maxSimuIPPrefixesDetected:txTotal:txSuccess:txDelayAvg:rxTotal:rxSuccess:reportDuration:]([HMDThreadNetworkStatusReport alloc], "initWithNumAdvertisedBRs:numAppleBRs:numThirdPartyBRs:numThreadNetworks:maxSimuIPPrefixesDetected:txTotal:txSuccess:txDelayAvg:rxTotal:rxSuccess:reportDuration:", [v12 num_border_routers_advertised], objc_msgSend(v12, "num_apple_BRs"), objc_msgSend(v12, "num_thirdparty_BRs"), objc_msgSend(v12, "num_thread_networks"), objc_msgSend(v12, "max_simultaneous_prefix_detected"), objc_msgSend(v12, "tx_total"), objc_msgSend(v12, "tx_total_success"), objc_msgSend(v12, "tx_delayavg"), objc_msgSend(v12, "rx_total"), objc_msgSend(v12, "rx_total_success"), objc_msgSend(v12, "duration"));
  (*(v13 + 16))(v13, v14, 0);

LABEL_16:
LABEL_17:
}

- (BOOL)isThreadNetworkUp
{
  v25 = *MEMORY[0x277D85DE8];
  if (self->_threadNetworkUp)
  {
    threadNetworkUp = 1;
    goto LABEL_20;
  }

  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (!threadClient)
  {
    threadNetworkUp = self->_threadNetworkUp;
    goto LABEL_20;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  threadClient2 = [(HMDThreadRadioClient *)self threadClient];
  v7 = threadClient2;
  if (threadClient2)
  {
    [threadClient2 getProperty:"NCP:State" output:v5];
  }

  else
  {
    *__p = 0u;
    v20 = 0u;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  if (LODWORD(__p[0]))
  {
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@failed to fetch kWPANTUNDProperty_NCPState", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v13;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@fetched kWPANTUNDProperty_NCPState got value =%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = xpc_dictionary_get_value(v5, "PropVal");
    string_ptr = xpc_string_get_string_ptr(v14);

    if (string_ptr)
    {
      v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:string_ptr];
      threadNetworkUp = [(HMDThreadRadioClient *)selfCopy _connectionStateFromString:v16]> 1;

      goto LABEL_17;
    }
  }

  threadNetworkUp = 0;
LABEL_17:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[1]);
  }

LABEL_20:
  v17 = *MEMORY[0x277D85DE8];
  return threadNetworkUp;
}

- (void)_unregisterForThreadNetworkEvents
{
  v14 = *MEMORY[0x277D85DE8];
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  if (threadClient)
  {
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@_unregisterForThreadNetworkEvents", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    threadClient2 = [(HMDThreadRadioClient *)selfCopy threadClient];
    [threadClient2 setClientEventsOff];
  }

  else
  {
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_registerForThreadNetworkEvents
{
  v43 = *MEMORY[0x277D85DE8];
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    objc_initWeak(&location, self);
    threadClient2 = [(HMDThreadRadioClient *)self threadClient];
    std::string::basic_string[abi:ne200100]<0>(buf, "NCP:State");
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __55__HMDThreadRadioClient__registerForThreadNetworkEvents__block_invoke;
    v38[3] = &unk_27972B648;
    objc_copyWeak(&v39, &location);
    threadEventQueue = [(HMDThreadRadioClient *)self threadEventQueue];
    v5 = threadEventQueue;
    [threadClient2 setEventHandler:buf EventBlock:v38 dqueue:&threadEventQueue];
    v6 = threadEventQueue;
    threadEventQueue = 0;

    if (v42 < 0)
    {
      operator delete(*buf);
    }

    threadClient3 = [(HMDThreadRadioClient *)self threadClient];
    std::string::basic_string[abi:ne200100]<0>(buf, "Network:NodeType");
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __55__HMDThreadRadioClient__registerForThreadNetworkEvents__block_invoke_303;
    v35[3] = &unk_27972B648;
    objc_copyWeak(&v36, &location);
    threadEventQueue2 = [(HMDThreadRadioClient *)self threadEventQueue];
    v8 = threadEventQueue2;
    [threadClient3 setEventHandler:buf EventBlock:v35 dqueue:&threadEventQueue2];
    v9 = threadEventQueue2;
    threadEventQueue2 = 0;

    if (v42 < 0)
    {
      operator delete(*buf);
    }

    threadClient4 = [(HMDThreadRadioClient *)self threadClient];
    std::string::basic_string[abi:ne200100]<0>(buf, "WakeOnDeviceConnectionStatus");
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __55__HMDThreadRadioClient__registerForThreadNetworkEvents__block_invoke_305;
    v32[3] = &unk_27972B648;
    objc_copyWeak(&v33, &location);
    threadEventQueue3 = [(HMDThreadRadioClient *)self threadEventQueue];
    v11 = threadEventQueue3;
    [threadClient4 setEventHandler:buf EventBlock:v32 dqueue:&threadEventQueue3];
    v12 = threadEventQueue3;
    threadEventQueue3 = 0;

    if (v42 < 0)
    {
      operator delete(*buf);
    }

    threadClient5 = [(HMDThreadRadioClient *)self threadClient];
    std::string::basic_string[abi:ne200100]<0>(buf, "PeripheralDeviceType");
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __55__HMDThreadRadioClient__registerForThreadNetworkEvents__block_invoke_307;
    v29[3] = &unk_27972B648;
    objc_copyWeak(&v30, &location);
    threadEventQueue4 = [(HMDThreadRadioClient *)self threadEventQueue];
    v14 = threadEventQueue4;
    [threadClient5 setEventHandler:buf EventBlock:v29 dqueue:&threadEventQueue4];
    v15 = threadEventQueue4;
    threadEventQueue4 = 0;

    if (v42 < 0)
    {
      operator delete(*buf);
    }

    threadClient6 = [(HMDThreadRadioClient *)self threadClient];
    std::string::basic_string[abi:ne200100]<0>(buf, "bt_airpod_esco");
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __55__HMDThreadRadioClient__registerForThreadNetworkEvents__block_invoke_310;
    v26[3] = &unk_27972B648;
    objc_copyWeak(&v27, &location);
    threadEventQueue5 = [(HMDThreadRadioClient *)self threadEventQueue];
    v17 = threadEventQueue5;
    [threadClient6 setEventHandler:buf EventBlock:v26 dqueue:&threadEventQueue5];
    v18 = threadEventQueue5;
    threadEventQueue5 = 0;

    if (v42 < 0)
    {
      operator delete(*buf);
    }

    threadClient7 = [(HMDThreadRadioClient *)self threadClient];
    [threadClient7 setClientEventsOn];

    [(HMDThreadRadioClient *)self _reportCurrentThreadState:0];
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v36);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __55__HMDThreadRadioClient__registerForThreadNetworkEvents__block_invoke(uint64_t a1, CtrXPC::Event **a2)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      CtrXPC::Event::getName(__p, *a2);
      v8 = v19;
      v9 = __p[0];
      v10 = CtrXPC::Event::getDataValue(*a2);
      v11 = v10;
      v12 = __p;
      *buf = 138543874;
      if (v8 < 0)
      {
        v12 = v9;
      }

      v21 = v7;
      v22 = 2080;
      v23 = v12;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Received thread event: event name - %s, value =%@", buf, 0x20u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    objc_autoreleasePoolPop(v4);
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = CtrXPC::Event::getDataValue(*a2);
    v15 = [v13 initWithCString:xpc_string_get_string_ptr(v14)];

    v16 = -[HMDThreadNetworkStateChangeEvent initWithEventType:eventValue:]([HMDThreadNetworkStateChangeEvent alloc], "initWithEventType:eventValue:", 0, [v5 _connectionStateFromString:v15]);
    [v5 _notifyObserversOfThreadNetworkEvent:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __55__HMDThreadRadioClient__registerForThreadNetworkEvents__block_invoke_303(uint64_t a1, CtrXPC::Event **a2)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      CtrXPC::Event::getName(__p, *a2);
      v8 = v19;
      v9 = __p[0];
      v10 = CtrXPC::Event::getDataValue(*a2);
      v11 = v10;
      v12 = __p;
      *buf = 138543874;
      if (v8 < 0)
      {
        v12 = v9;
      }

      v21 = v7;
      v22 = 2080;
      v23 = v12;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Received thread event: event name - %s, value =%@", buf, 0x20u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    objc_autoreleasePoolPop(v4);
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = CtrXPC::Event::getDataValue(*a2);
    v15 = [v13 initWithCString:xpc_string_get_string_ptr(v14)];

    v16 = -[HMDThreadNetworkStateChangeEvent initWithEventType:eventValue:]([HMDThreadNetworkStateChangeEvent alloc], "initWithEventType:eventValue:", 1, [v5 _nodeTypeFromString:v15]);
    [v5 _notifyObserversOfThreadNetworkEvent:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __55__HMDThreadRadioClient__registerForThreadNetworkEvents__block_invoke_305(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a2 + 8);
    v15 = *a2;
    v16 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = [WeakRetained _WEDStateChangeEventFromThreadEvent:&v15];
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v6)
    {
      [v4 _notifyObserversOfThreadWakeOnDeviceConnectionStateEvent:v6];
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = v4;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        CtrXPC::Event::getName(__p, *a2);
        if (v14 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        *buf = 138543618;
        v18 = v10;
        v19 = 2080;
        v20 = v11;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Ignoring thread event: event name - %s", buf, 0x16u);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }

      objc_autoreleasePoolPop(v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __55__HMDThreadRadioClient__registerForThreadNetworkEvents__block_invoke_307(uint64_t a1, CtrXPC::Event **a2)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      CtrXPC::Event::getName(__p, *a2);
      v8 = v19;
      v9 = __p[0];
      v10 = CtrXPC::Event::getDataValue(*a2);
      v11 = v10;
      v12 = __p;
      *buf = 138543874;
      if (v8 < 0)
      {
        v12 = v9;
      }

      v21 = v7;
      v22 = 2080;
      v23 = v12;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Received thread event: event name - %s, value =%@", buf, 0x20u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    objc_autoreleasePoolPop(v4);
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = CtrXPC::Event::getDataValue(*a2);
    v15 = [v13 initWithCString:xpc_string_get_string_ptr(v14)];

    v16 = -[HMDThreadNetworkPeripheralDeviceNodeTypeEvent initWithPeripheralDeviceNodeType:]([HMDThreadNetworkPeripheralDeviceNodeTypeEvent alloc], "initWithPeripheralDeviceNodeType:", [v5 _nodeTypeFromString:v15]);
    [v5 _notifyObserversOfPeripheralDeviceNodeTypeEvent:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __55__HMDThreadRadioClient__registerForThreadNetworkEvents__block_invoke_310(uint64_t a1, CtrXPC::Event **a2)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      CtrXPC::Event::getName(__p, *a2);
      v8 = v18;
      v9 = __p[0];
      v10 = CtrXPC::Event::getDataValue(*a2);
      v11 = v10;
      v12 = __p;
      *buf = 138543874;
      if (v8 < 0)
      {
        v12 = v9;
      }

      v20 = v7;
      v21 = 2080;
      v22 = v12;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Received thread event: event name - %s, value =%@", buf, 0x20u);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    objc_autoreleasePoolPop(v4);
    v13 = CtrXPC::Event::getDataValue(*a2);
    value = xpc_BOOL_get_value(v13);

    v15 = [[HMDThreadNetworkBTCallStateEvent alloc] initWithCallState:value];
    [v5 _notifyObserversOfCallStateChangedEvent:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_reportCurrentThreadState:(id)state
{
  v38 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = xpc_dictionary_create(0, 0, 0);
  threadClient = [(HMDThreadRadioClient *)self threadClient];
  v7 = threadClient;
  if (threadClient)
  {
    [threadClient getProperty:"NCP:State" output:v5];
  }

  else
  {
    *__p = 0u;
    v35 = 0u;
  }

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  if (LODWORD(__p[0]))
  {
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@failed to fetch kWPANTUNDProperty_NCPState", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@fetched kWPANTUNDProperty_NCPState got value =%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = xpc_dictionary_get_value(v5, "PropVal");
    v16 = [v14 initWithCString:xpc_string_get_string_ptr(v15)];

    v17 = [[HMDThreadNetworkStateChangeEvent alloc] initWithEventType:0 eventValue:[(HMDThreadRadioClient *)selfCopy _connectionStateFromString:v16]];
    if (stateCopy)
    {
      [stateCopy threadNetworkStateChange:v17];
    }

    else
    {
      [(HMDThreadRadioClient *)selfCopy _notifyObserversOfThreadNetworkEvent:v17];
    }
  }

  threadClient2 = [(HMDThreadRadioClient *)selfCopy threadClient];
  v19 = threadClient2;
  if (threadClient2)
  {
    [threadClient2 getProperty:"Network:NodeType" output:v5];
    v20 = *buf;
  }

  else
  {
    v20 = 0;
    memset(buf, 0, 32);
  }

  __pa = v20;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[1]);
  }

  __p_8 = *&buf[8];
  v36 = buf[31];
  buf[31] = 0;
  buf[8] = 0;

  v21 = objc_autoreleasePoolPush();
  v22 = selfCopy;
  if (__pa)
  {
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@failed to fetch kWPANTUNDEvent_NetworkNodeType", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  else
  {
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v26;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@fetched kWPANTUNDEvent_NetworkNodeType got value =%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v27 = objc_alloc(MEMORY[0x277CCACA8]);
    v28 = xpc_dictionary_get_value(v5, "PropVal");
    v29 = [v27 initWithCString:xpc_string_get_string_ptr(v28)];

    v30 = [[HMDThreadNetworkStateChangeEvent alloc] initWithEventType:1 eventValue:[(HMDThreadRadioClient *)v22 _nodeTypeFromString:v29]];
    [(HMDThreadRadioClient *)v22 _notifyObserversOfThreadNetworkEvent:v30];
    if (stateCopy)
    {
      [stateCopy threadNetworkStateChange:v30];
    }

    else
    {
      [(HMDThreadRadioClient *)v22 _notifyObserversOfThreadNetworkEvent:v30];
    }
  }

  if (v36 < 0)
  {
    operator delete(__p_8);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversOfCallStateChangedEvent:(id)event
{
  v18 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  os_unfair_lock_lock_with_options();
  observers = [(HMDThreadRadioClient *)self observers];
  allObjects = [observers allObjects];

  os_unfair_lock_unlock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 threadBTCallStateChange:{eventCopy, v13}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversOfPeripheralDeviceNodeTypeEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  os_unfair_lock_lock_with_options();
  observers = [(HMDThreadRadioClient *)self observers];
  allObjects = [observers allObjects];

  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v10++) threadPeripheralDeviceNodeTypeChange:{eventCopy, v12}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversOfThreadWakeOnDeviceConnectionStateEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  os_unfair_lock_lock_with_options();
  observers = [(HMDThreadRadioClient *)self observers];
  allObjects = [observers allObjects];

  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v10++) threadWakeOnDeviceConnectionStateChange:{eventCopy, v12}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversOfThreadPreferredNetworkUpdatedEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  os_unfair_lock_lock_with_options();
  observers = [(HMDThreadRadioClient *)self observers];
  allObjects = [observers allObjects];

  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v10++) threadPreferredNetworkUpdated:{eventCopy, v12}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversOfThreadNetworkEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  os_unfair_lock_lock_with_options();
  observers = [(HMDThreadRadioClient *)self observers];
  allObjects = [observers allObjects];

  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v10++) threadNetworkStateChange:{eventCopy, v12}];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_WEDStateChangeEventFromThreadEvent:(shared_ptr<CtrXPC::Event>)event
{
  var0 = event.var0;
  v38 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    CtrXPC::Event::getName(__p, *var0);
    if (v33 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = *__p;
    }

    *buf = 138543618;
    v35 = v7;
    v36 = 2080;
    v37 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Received thread event: event name - %s", buf, 0x16u);
    if (v33 < 0)
    {
      operator delete(*__p);
    }
  }

  objc_autoreleasePoolPop(v5);
  xarray = CtrXPC::Event::getDataValue(*var0);
  count = xpc_array_get_count(xarray);
  if (count)
  {
    uppercaseString = 0;
    v27 = 0;
    v28 = 0;
    v12 = 0;
    *&v10 = 138543618;
    v25 = v10;
    while (1)
    {
      v13 = xpc_array_get_dictionary(xarray, v12);
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:{xpc_dictionary_get_string(v13, "key")}];
      v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:{xpc_dictionary_get_string(v13, "value")}];
      if ([v14 isEqualToString:@"extendedMACAddress"])
      {
        v16 = [v15 stringByReplacingOccurrencesOfString:@":" withString:&stru_286509E58];

        uppercaseString = [v16 uppercaseString];
      }

      else if ([v14 isEqualToString:@"status"])
      {
        v16 = v28;
        v28 = v15;
      }

      else
      {
        if (![v14 isEqualToString:@"wed_unsolicted_disconnect"])
        {
          v17 = objc_autoreleasePoolPush();
          v18 = selfCopy;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = HMFGetLogIdentifier();
            *__p = v25;
            *&__p[4] = v20;
            v31 = 2112;
            v32 = v14;
            _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring key: %@", __p, 0x16u);
          }

          objc_autoreleasePoolPop(v17);
          goto LABEL_17;
        }

        v16 = v27;
        v27 = v15;
      }

LABEL_17:
      if (count == ++v12)
      {
        goto LABEL_23;
      }
    }
  }

  v27 = 0;
  v28 = 0;
  uppercaseString = 0;
LABEL_23:
  v21 = [(HMDThreadRadioClient *)selfCopy _WEDConnectionStateFromStatus:v28 disconnectReason:v27, v25];
  v22 = 0;
  if (uppercaseString && v21)
  {
    v22 = [[HMDThreadNetworkWakeOnDeviceConnectionStateChangeEvent alloc] initWitheMACAddress:uppercaseString connectionState:v21];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (int64_t)_WEDConnectionStateFromStatus:(id)status disconnectReason:(id)reason
{
  statusCopy = status;
  reasonCopy = reason;
  if ([statusCopy isEqualToString:@"wed_added"])
  {
    v7 = 1;
  }

  else if ([statusCopy isEqualToString:@"wed_removed"])
  {
    if ([reasonCopy isEqualToString:@"none"])
    {
      v7 = 2;
    }

    else if ([reasonCopy isEqualToString:@"linkloss"])
    {
      v7 = 3;
    }

    else if ([reasonCopy isEqualToString:@"threadradiod-daemon-crash"])
    {
      v7 = 4;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_nodeTypeFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"unknown"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"sleepy-router"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"router"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"end-device"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"sleepy-end-device"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"synchronized-sleepy-end-device"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"commissioner"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"leader"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_connectionStateFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"uninitialized"] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"uninitialized:fault") & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"uninitialized:upgrading"))
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"offline:deep-sleep"] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"offline") & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"offline:commissioned"))
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"associating"] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"associating:credentials-needed"))
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"associated"] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"associated:no-parent") & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"associated:netwake-asleep"))
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"associated:netwake-waking"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)unregisterForThreadNetworkEvents:(id)events
{
  eventsCopy = events;
  os_unfair_lock_lock_with_options();
  observers = [(HMDThreadRadioClient *)self observers];
  v5 = [observers count];

  observers2 = [(HMDThreadRadioClient *)self observers];
  [observers2 removeObject:eventsCopy];

  observers3 = [(HMDThreadRadioClient *)self observers];
  v8 = [observers3 count];

  os_unfair_lock_unlock(&self->_lock);
  if (!v8 && v5)
  {
    [(HMDThreadRadioClient *)self _unregisterForThreadNetworkEvents];
  }
}

- (void)registerForThreadNetworkEvents:(id)events
{
  v17 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  os_unfair_lock_lock_with_options();
  observers = [(HMDThreadRadioClient *)self observers];
  v6 = [observers count];

  observers2 = [(HMDThreadRadioClient *)self observers];
  [observers2 addObject:eventsCopy];

  os_unfair_lock_unlock(&self->_lock);
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  if (v6)
  {
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@registerForThreadNetworkEvents - events already setup, reading and notifying current state", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDThreadRadioClient *)selfCopy _reportCurrentThreadState:eventsCopy];
  }

  else
  {
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@registerForThreadNetworkEvents - setting up events for first observer", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [(HMDThreadRadioClient *)selfCopy _registerForThreadNetworkEvents];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)stopThreadNetworkWithCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  [(HMDThreadRadioClient *)self _updateThreadMessageReliabilityParametersWithUserDefinedValues:0];
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  if (threadClient)
  {
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Scheduling an attempt to stop the thread network", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    threadClient2 = [(HMDThreadRadioClient *)selfCopy threadClient];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __56__HMDThreadRadioClient_stopThreadNetworkWithCompletion___block_invoke_200;
      v23[3] = &unk_279735738;
      v23[4] = selfCopy;
      v24 = completionCopy;
      v13 = [defaultScheduler performWithQualityOfService:25 block:v23];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v20;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@ThreadClient did not respond to selector - threadStopWithCompletion:", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(completionCopy + 2))(completionCopy, v21);
    }
  }

  else
  {
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v16 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__HMDThreadRadioClient_stopThreadNetworkWithCompletion___block_invoke;
    block[3] = &unk_2797348C0;
    v26 = completionCopy;
    dispatch_async(v16, block);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __56__HMDThreadRadioClient_stopThreadNetworkWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1);
}

void __56__HMDThreadRadioClient_stopThreadNetworkWithCompletion___block_invoke_200(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Attempting to stop thread network", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) threadClient];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HMDThreadRadioClient_stopThreadNetworkWithCompletion___block_invoke_201;
  v8[3] = &unk_279733F30;
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 40);
  [v6 threadStopWithCompletion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __56__HMDThreadRadioClient_stopThreadNetworkWithCompletion___block_invoke_201(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(a1 + 32) + 13) = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  if (v3)
  {
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to stop thread network: %@", &v10, 0x16u);
    }
  }

  else
  {
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully stopped thread network", &v10, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateThreadMessageReliabilityParametersWithUserDefinedValues:(BOOL)values
{
  valuesCopy = values;
  v24 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    v20 = 138543618;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Should use user defined values for thread message reliability parameters: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (valuesCopy)
  {
    LOBYTE(v20) = 0;
    v10 = *MEMORY[0x277CBF028];
    v11 = &unk_286628CF0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"matter.thread.idleRetransmitMs", *MEMORY[0x277CBF028], &v20);
    if (v20 && AppIntegerValue)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithLong:AppIntegerValue];
    }

    v13 = &unk_286628CF0;
    v14 = CFPreferencesGetAppIntegerValue(@"matter.thread.activeRetransmitMs", v10, &v20);
    if (v20 && v14)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithLong:v14];
    }

    v15 = &unk_286628CF0;
    v16 = CFPreferencesGetAppIntegerValue(@"matter.thread.activeThresholdMs", v10, &v20);
    if (v20 && v16)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithLong:v16];
    }

    v17 = CFPreferencesGetAppIntegerValue(@"matter.thread.additionalRetransmitDelayMs", v10, &v20);
    v18 = &unk_286628CF0;
    if (v20 && v17)
    {
      v18 = [MEMORY[0x277CCABB0] numberWithLong:v17];
    }
  }

  else
  {
    v11 = &unk_286628CF0;
    v13 = &unk_286628CF0;
    v15 = &unk_286628CF0;
    v18 = &unk_286628CF0;
  }

  [(HMDThreadRadioClient *)selfCopy setThreadMessageReliabilityParameters:v11 activeRetransmitMs:v13 activeThresholdMs:v15 additionalRetransmitDelayMs:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setThreadMessageReliabilityParameters:(id)parameters activeRetransmitMs:(id)ms activeThresholdMs:(id)thresholdMs additionalRetransmitDelayMs:(id)delayMs
{
  v35 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  msCopy = ms;
  thresholdMsCopy = thresholdMs;
  delayMsCopy = delayMs;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v25 = 138544386;
    v26 = v17;
    v27 = 2112;
    v28 = parametersCopy;
    v29 = 2112;
    v30 = msCopy;
    v31 = 2112;
    v32 = thresholdMsCopy;
    v33 = 2112;
    v34 = delayMsCopy;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating thread message reliability parameters, idleRetransmitMs=%@, activeRetransmitMs=%@, activeThresholdMs=%@, additionalRetransmitDelayMs=%@", &v25, 0x34u);
  }

  objc_autoreleasePoolPop(v14);
  threadClient = [(HMDThreadRadioClient *)selfCopy threadClient];
  v19 = threadClient == 0;

  if (v19)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device, not setting thread reliability parameters", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  else
  {
    MTRSetMessageReliabilityParameters();
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)stopFirmwareUpdateWithCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    threadClient2 = [(HMDThreadRadioClient *)self threadClient];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __57__HMDThreadRadioClient_stopFirmwareUpdateWithCompletion___block_invoke_184;
      aBlock[3] = &unk_279735738;
      aBlock[4] = self;
      v23 = completionCopy;
      v8 = _Block_copy(aBlock);
      defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
      v10 = [defaultScheduler performWithQualityOfService:25 block:v8];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@ThreadClient did not respond to selector - stopFWUpdate:", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(completionCopy + 2))(completionCopy, v20);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__HMDThreadRadioClient_stopFirmwareUpdateWithCompletion___block_invoke;
    block[3] = &unk_2797348C0;
    v25 = completionCopy;
    dispatch_async(v15, block);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __57__HMDThreadRadioClient_stopFirmwareUpdateWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1);
}

void __57__HMDThreadRadioClient_stopFirmwareUpdateWithCompletion___block_invoke_184(uint64_t a1)
{
  v2 = [*(a1 + 32) threadClient];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__HMDThreadRadioClient_stopFirmwareUpdateWithCompletion___block_invoke_2;
  v4[3] = &unk_279733F30;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 stopFWUpdate:v4];
}

void __57__HMDThreadRadioClient_stopFirmwareUpdateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Error while informing thread sw of stopFWUpdate, error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)startFirmwareUpdateWithExtendedMACAddress:(id)address isWedDevice:(BOOL)device completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  completionCopy = completion;
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    threadClient2 = [(HMDThreadRadioClient *)self threadClient];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __89__HMDThreadRadioClient_startFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke_181;
      aBlock[3] = &unk_279732430;
      aBlock[4] = self;
      v28 = addressCopy;
      deviceCopy = device;
      v29 = completionCopy;
      v13 = _Block_copy(aBlock);
      defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
      v15 = [defaultScheduler performWithQualityOfService:25 block:v13];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v24;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@ThreadClient did not respond to selector - startFWUpdate:isWedDevice:completion", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(completionCopy + 2))(completionCopy, v25);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__HMDThreadRadioClient_startFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke;
    block[3] = &unk_2797348C0;
    v32 = completionCopy;
    dispatch_async(v20, block);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __89__HMDThreadRadioClient_startFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1);
}

void __89__HMDThreadRadioClient_startFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke_181(uint64_t a1)
{
  v2 = [*(a1 + 32) threadClient];
  v3 = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __89__HMDThreadRadioClient_startFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke_2;
  v5[3] = &unk_27972B620;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  [v2 startFWUpdate:v6 isWedDevice:v3 completion:v5];
}

void __89__HMDThreadRadioClient_startFirmwareUpdateWithExtendedMACAddress_isWedDevice_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = *(a1 + 56);
      v10 = HMFBooleanToString();
      v12 = 138544130;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Error while informing thread sw of startFWUpdate (emac: %@, isWed: %@), error: %@", &v12, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stopThreadPairingWithCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    threadClient2 = [(HMDThreadRadioClient *)self threadClient];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __56__HMDThreadRadioClient_stopThreadPairingWithCompletion___block_invoke_178;
      aBlock[3] = &unk_279735738;
      aBlock[4] = self;
      v23 = completionCopy;
      v8 = _Block_copy(aBlock);
      defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
      v10 = [defaultScheduler performWithQualityOfService:25 block:v8];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@ThreadClient did not respond to selector - stopPairing:", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(completionCopy + 2))(completionCopy, v20);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__HMDThreadRadioClient_stopThreadPairingWithCompletion___block_invoke;
    block[3] = &unk_2797348C0;
    v25 = completionCopy;
    dispatch_async(v15, block);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __56__HMDThreadRadioClient_stopThreadPairingWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1);
}

void __56__HMDThreadRadioClient_stopThreadPairingWithCompletion___block_invoke_178(uint64_t a1)
{
  v2 = [*(a1 + 32) threadClient];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__HMDThreadRadioClient_stopThreadPairingWithCompletion___block_invoke_2;
  v4[3] = &unk_279733F30;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 stopPairing:v4];
}

void __56__HMDThreadRadioClient_stopThreadPairingWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Error while informing thread sw of pairing stop, error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)startThreadPairingWithExtendedMACAddress:(id)address isWedDevice:(BOOL)device completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  completionCopy = completion;
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    threadClient2 = [(HMDThreadRadioClient *)self threadClient];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __88__HMDThreadRadioClient_startThreadPairingWithExtendedMACAddress_isWedDevice_completion___block_invoke_175;
      aBlock[3] = &unk_279732430;
      aBlock[4] = self;
      v28 = addressCopy;
      deviceCopy = device;
      v29 = completionCopy;
      v13 = _Block_copy(aBlock);
      defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
      v15 = [defaultScheduler performWithQualityOfService:25 block:v13];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v34 = v24;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@ThreadClient did not respond to selector - startPairingForExtendedMACAddress:isWedDevice:completion", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(completionCopy + 2))(completionCopy, v25);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v20 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__HMDThreadRadioClient_startThreadPairingWithExtendedMACAddress_isWedDevice_completion___block_invoke;
    block[3] = &unk_2797348C0;
    v32 = completionCopy;
    dispatch_async(v20, block);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __88__HMDThreadRadioClient_startThreadPairingWithExtendedMACAddress_isWedDevice_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1);
}

void __88__HMDThreadRadioClient_startThreadPairingWithExtendedMACAddress_isWedDevice_completion___block_invoke_175(uint64_t a1)
{
  v2 = [*(a1 + 32) threadClient];
  v3 = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__HMDThreadRadioClient_startThreadPairingWithExtendedMACAddress_isWedDevice_completion___block_invoke_2;
  v5[3] = &unk_279733F30;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  [v2 startPairingForExtendedMACAddress:v4 isWedDevice:v3 completion:v5];
}

void __88__HMDThreadRadioClient_startThreadPairingWithExtendedMACAddress_isWedDevice_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Error while informing thread sw of pairing start, error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)connectToExtendedMACAddress:(id)address completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  completionCopy = completion;
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    threadClient2 = [(HMDThreadRadioClient *)self threadClient];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __63__HMDThreadRadioClient_connectToExtendedMACAddress_completion___block_invoke_171;
      v31 = &unk_2797355D0;
      v11 = addressCopy;
      v32 = v11;
      selfCopy = self;
      v12 = completionCopy;
      v34 = v12;
      v13 = _Block_copy(&v28);
      [(HMDThreadRadioClient *)self deferredCommandTimer:v28];
      if (v11)
        v14 = {;
        [v14 abort];

        defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
        v16 = [defaultScheduler performWithQualityOfService:25 block:v13];
      }

      else
        defaultScheduler = {;
        [defaultScheduler startWithBlock:v13 completion:v12 commandType:1];
      }

      v22 = v32;
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v38 = v26;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@ThreadClient did not respond to selector - provideExtendedMACAddress:completion", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      (*(completionCopy + 2))(completionCopy, v22);
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__HMDThreadRadioClient_connectToExtendedMACAddress_completion___block_invoke;
    block[3] = &unk_2797348C0;
    v36 = completionCopy;
    dispatch_async(v21, block);

    v22 = v36;
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __63__HMDThreadRadioClient_connectToExtendedMACAddress_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1);
}

void __63__HMDThreadRadioClient_connectToExtendedMACAddress_completion___block_invoke_171(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  if (v2)
  {
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 32);
      *buf = 138543618;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Attempting to connect to device with eMAC address %@", buf, 0x16u);
    }
  }

  else
  {
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v8;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Received nil eMAC, disconnecting from current device", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v3);
  v9 = [*(a1 + 40) threadClient];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__HMDThreadRadioClient_connectToExtendedMACAddress_completion___block_invoke_172;
  v13[3] = &unk_279735168;
  v12 = *(a1 + 32);
  v10 = v12.i64[0];
  v14 = vextq_s8(v12, v12, 8uLL);
  v15 = *(a1 + 48);
  [v9 provideExtendedMACAddress:v10 completion:v13];

  v11 = *MEMORY[0x277D85DE8];
}

void __63__HMDThreadRadioClient_connectToExtendedMACAddress_completion___block_invoke_172(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v10 = 138543874;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Error while trying to connect to emac address: %@ error: %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 48) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startThreadNetworkWithOperationalDataset:(id)dataset isOwnerUser:(BOOL)user completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  datasetCopy = dataset;
  completionCopy = completion;
  [(HMDThreadRadioClient *)self _updateThreadMessageReliabilityParametersWithUserDefinedValues:1];
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    v11 = +[HMDLocation sharedManager];
    locationAuthorized = [v11 locationAuthorized];

    v13 = locationAuthorized == 1 && [(HMDThreadRadioClient *)self isGeoAvailable];
    v19 = [datasetCopy hmf_hexadecimalStringWithOptions:0];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__113704;
    v33 = __Block_byref_object_dispose__113705;
    v34 = [v19 dataUsingEncoding:4];
    defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __88__HMDThreadRadioClient_startThreadNetworkWithOperationalDataset_isOwnerUser_completion___block_invoke_166;
    v23[3] = &unk_27972B5F8;
    v23[4] = self;
    p_buf = &buf;
    v26 = v13;
    userCopy = user;
    v24 = completionCopy;
    v21 = [defaultScheduler performWithQualityOfService:25 block:v23];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v18 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__HMDThreadRadioClient_startThreadNetworkWithOperationalDataset_isOwnerUser_completion___block_invoke;
    block[3] = &unk_2797348C0;
    v29 = completionCopy;
    dispatch_async(v18, block);

    v19 = v29;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __88__HMDThreadRadioClient_startThreadNetworkWithOperationalDataset_isOwnerUser_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1);
}

void __88__HMDThreadRadioClient_startThreadNetworkWithOperationalDataset_isOwnerUser_completion___block_invoke_166(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138543618;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Attempting to start thread network with operation data set: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) threadClient];
  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = *(a1 + 56);
  v10 = *(a1 + 57);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__HMDThreadRadioClient_startThreadNetworkWithOperationalDataset_isOwnerUser_completion___block_invoke_167;
  v12[3] = &unk_279733F30;
  v12[4] = *(a1 + 32);
  v13 = *(a1 + 40);
  [v7 threadStart:v8 geoAvailable:v9 isPrimaryUser:v10 waitForSync:0 completion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __88__HMDThreadRadioClient_startThreadNetworkWithOperationalDataset_isOwnerUser_completion___block_invoke_167(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to start thread network: %@", &v10, 0x16u);
    }
  }

  else
  {
    *(*(a1 + 32) + 13) = 1;
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully started thread network", &v10, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startThreadNetwork:(id)network completion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  completionCopy = completion;
  threadClient = [(HMDThreadRadioClient *)self threadClient];

  if (threadClient)
  {
    if (networkCopy)
    {
      v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:networkCopy];
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      if (v9)
      {
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543362;
          v39 = v13;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Scheduling an attempt to join an existing thread network", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v10);
        v14 = objc_autoreleasePoolPush();
        v15 = selfCopy;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          v39 = v17;
          v40 = 2112;
          v41 = v9;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Thread networkID: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        goto LABEL_17;
      }

      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v39 = v27;
        v40 = 2112;
        v41 = networkCopy;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@NetworkID is not valid for thread unique id: %@", buf, 0x16u);
      }
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v26;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Scheduling an attempt to create a new thread network", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
LABEL_17:
    v28 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v31;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Incorrect startThread API used", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    v32 = dispatch_get_global_queue(21, 0);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __54__HMDThreadRadioClient_startThreadNetwork_completion___block_invoke_163;
    v34[3] = &unk_2797348C0;
    v35 = completionCopy;
    v23 = completionCopy;
    dispatch_async(v32, v34);

    goto LABEL_20;
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543362;
    v39 = v21;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Thread radio client is not available on this device", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  v22 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HMDThreadRadioClient_startThreadNetwork_completion___block_invoke;
  block[3] = &unk_2797348C0;
  v37 = completionCopy;
  v9 = completionCopy;
  dispatch_async(v22, block);

  v23 = v37;
LABEL_20:

  v33 = *MEMORY[0x277D85DE8];
}

void __54__HMDThreadRadioClient_startThreadNetwork_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1, 0);
}

void __54__HMDThreadRadioClient_startThreadNetwork_completion___block_invoke_163(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  (*(v1 + 16))(v1, 0);
}

- (HMDThreadRadioClient)init
{
  v34 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = HMDThreadRadioClient;
  v2 = [(HMDThreadRadioClient *)&v31 init];
  if (!v2)
  {
    goto LABEL_11;
  }

  if ((isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() & 1) == 0)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = v2;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v26;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Thread service not enabled", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v3 = +[HMDDeviceCapabilities deviceCapabilities];
  supportsThreadService = [v3 supportsThreadService];

  if ((supportsThreadService & 1) == 0)
  {
    v23 = objc_autoreleasePoolPush();
    v27 = v2;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v28;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@This device doesn't support thread service", buf, 0xCu);
    }

LABEL_10:

    objc_autoreleasePoolPop(v23);
    goto LABEL_11;
  }

  if (objc_opt_class())
  {
    v5 = [objc_alloc(MEMORY[0x277D025E8]) init:"HomeD"];
    threadClient = v2->_threadClient;
    v2->_threadClient = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);
    v9 = dispatch_queue_create("thread-state-capture", v8);
    threadStateCaptureQueue = v2->_threadStateCaptureQueue;
    v2->_threadStateCaptureQueue = v9;

    v2->_threadNetworkUp = 0;
    v2->_threadLayerInformedResidentState = 0;
    v2->_isGeoAvailable = 0;
    v11 = [HMDThreadCommandTimer alloc];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INITIATED, 0);
    v14 = dispatch_queue_create("thread-command-timer", v13);
    v15 = [(HMDThreadCommandTimer *)v11 initWithQueue:v14 delayInSecs:&unk_286628D08];
    deferredCommandTimer = v2->_deferredCommandTimer;
    v2->_deferredCommandTimer = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_DEFAULT, 0);
    v19 = dispatch_queue_create("thread-event", v18);
    threadEventQueue = v2->_threadEventQueue;
    v2->_threadEventQueue = v19;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;
  }

LABEL_11:
  v29 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (+[HMDThreadRadioClient logCategory]::_hmf_once_t788 != -1)
  {
    dispatch_once(&+[HMDThreadRadioClient logCategory]::_hmf_once_t788, &__block_literal_global_113731);
  }

  v3 = +[HMDThreadRadioClient logCategory]::_hmf_once_v789;

  return v3;
}

uint64_t __35__HMDThreadRadioClient_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = +[HMDThreadRadioClient logCategory]::_hmf_once_v789;
  +[HMDThreadRadioClient logCategory]::_hmf_once_v789 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end