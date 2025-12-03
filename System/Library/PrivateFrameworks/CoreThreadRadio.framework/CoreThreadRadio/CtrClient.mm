@interface CtrClient
- (Result)addPrefix:(Result *__return_ptr)retstr;
- (Result)addService:(Result *__return_ptr)retstr;
- (Result)attachToNetwork:(Result *__return_ptr)retstr;
- (Result)attachToNetwork:(Result *__return_ptr)retstr output:;
- (Result)commissionOrFormNetwork:(Result *__return_ptr)retstr output:;
- (Result)form:(Result *__return_ptr)retstr;
- (Result)generatePSKc:(Result *__return_ptr)retstr output:;
- (Result)generateThreadDiagnosticsMonitorLogs;
- (Result)getProperty:(Result *__return_ptr)retstr output:;
- (Result)join:(Result *__return_ptr)retstr;
- (Result)joiner:(Result *__return_ptr)retstr;
- (Result)leave;
- (Result)removePrefix:(Result *__return_ptr)retstr;
- (Result)removeService:(Result *__return_ptr)retstr;
- (Result)reset:(Result *__return_ptr)retstr;
- (Result)resume;
- (Result)scan:(Result *__return_ptr)retstr;
- (Result)sendData:(Result *__return_ptr)retstr data:data_length:;
- (Result)sendNwDiagReqGet:(Result *__return_ptr)retstr;
- (Result)setChannel:(Result *__return_ptr)retstr;
- (Result)setProperty:(Result *__return_ptr)retstr prperty_val:;
- (Result)threadLeave;
- (Result)threadStart:(Result *__return_ptr)retstr outUniqueId:;
- (Result)threadStart:(Result *__return_ptr)retstr outUniqueId:waitForSync:;
- (Result)threadStart:(Result *__return_ptr)retstr outputUniqueId:;
- (Result)updateAccData:(Result *__return_ptr)retstr;
- (Result)updateHomeThreadInfo:(Result *__return_ptr)retstr;
- (Result)updatePrimaryResident:(Result *__return_ptr)retstr isPrimaryResidentThreadCapable:primaryResidentInfo:;
- (id).cxx_construct;
- (id)init:(const char *)init;
- (void)provideExtendedMACAddress:(id)address completion:(id)completion;
- (void)setEventHandler:(const void *)handler EventBlock:(id)block dqueue:(queue)dqueue;
- (void)startFWUpdate:(id)update isWedDevice:(BOOL)device completion:(id)completion;
- (void)startPairingForExtendedMACAddress:(id)address isWedDevice:(BOOL)device completion:(id)completion;
- (void)stopFWUpdate:(id)update;
- (void)stopPairing:(id)pairing;
- (void)threadMeshInfoForHomeMetrics:(id)metrics completionHandler:(id)handler;
- (void)threadStart:(id)start activeOperationalDataSet:(id)set geoAvailable:(BOOL)available routerMode:(BOOL)mode eMAC:(id)c waitForSync:(BOOL)sync completion:(id)completion;
- (void)threadStart:(id)start geoAvailable:(BOOL)available isPrimaryUser:(BOOL)user waitForSync:(BOOL)sync completion:(id)completion;
- (void)threadStopWithCompletion:(id)completion;
@end

@implementation CtrClient

- (id)init:(const char *)init
{
  if (MGGetBoolAnswer())
  {
    v11.receiver = self;
    v11.super_class = CtrClient;
    v5 = [(CtrClient *)&v11 init];
    v6 = v5;
    if (v5)
    {
      [(CtrClient *)v5 createClient:init];
      cntrl = v6->CtrXPCClientPtr.__cntrl_;
      v6->CtrXPCClientPtr = v10;
      if (cntrl)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
      }
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [CtrClient init:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setEventHandler:(const void *)handler EventBlock:(id)block dqueue:(queue)dqueue
{
  blockCopy = block;
  ptr = self->CtrXPCClientPtr.__ptr_;
  v10 = *dqueue.var0.var0;
  object = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  CtrXPC::Client::setEventHandler(ptr, handler, blockCopy, &object);
  if (object)
  {
    dispatch_release(object);
  }
}

- (Result)getProperty:(Result *__return_ptr)retstr output:
{
  v4 = *(v1 + 8);
  CtrXPC::Client::getProperty(v2, v3, retstr);
  return result;
}

- (Result)setProperty:(Result *__return_ptr)retstr prperty_val:
{
  v4 = *(v1 + 8);
  CtrXPC::Client::set(v2, v3, retstr);
  return result;
}

- (Result)sendData:(Result *__return_ptr)retstr data:data_length:
{
  v5 = *(v1 + 8);
  CtrXPC::Client::sendData(v2, v3, v4, retstr);
  return result;
}

- (Result)addPrefix:(Result *__return_ptr)retstr
{
  v3 = *(v1 + 8);
  v4 = v2[1];
  v6[0] = *v2;
  v6[1] = v4;
  CtrXPC::Client::addPrefix(v6, retstr);
  return result;
}

- (Result)removePrefix:(Result *__return_ptr)retstr
{
  v3 = *(v1 + 8);
  v4 = v2[1];
  v6[0] = *v2;
  v6[1] = v4;
  CtrXPC::Client::removePrefix(v6, retstr);
  return result;
}

- (Result)updateAccData:(Result *__return_ptr)retstr
{
  v3 = *(v1 + 8);
  v5 = *v2;
  v6 = *(v2 + 2);
  CtrXPC::Client::updateAccData(&v5, retstr);
  return result;
}

- (Result)form:(Result *__return_ptr)retstr
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 8);
  v4 = *(v2 + 80);
  v9[4] = *(v2 + 64);
  v9[5] = v4;
  v10 = *(v2 + 96);
  v5 = *(v2 + 16);
  v9[0] = *v2;
  v9[1] = v5;
  v6 = *(v2 + 48);
  v9[2] = *(v2 + 32);
  v9[3] = v6;
  CtrXPC::Client::form(v9, retstr);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (Result)leave
{
  v2 = *(v1 + 8);
  CtrXPC::Client::leave(retstr);
  return result;
}

- (Result)scan:(Result *__return_ptr)retstr
{
  v3 = *(v1 + 8);
  v5 = *v2;
  v6 = *(v2 + 2);
  CtrXPC::Client::scan(&v5, retstr);
  return result;
}

- (Result)addService:(Result *__return_ptr)retstr
{
  v3 = *(v1 + 8);
  v5 = *v2;
  v6 = *(v2 + 2);
  CtrXPC::Client::addService(&v5, retstr);
  return result;
}

- (Result)removeService:(Result *__return_ptr)retstr
{
  v4 = *(v1 + 8);
  CtrXPC::Client::removeService(v2, v3, retstr);
  return result;
}

- (Result)join:(Result *__return_ptr)retstr
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 8);
  v4 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v4;
  v7[2] = *(v2 + 32);
  v8 = *(v2 + 48);
  CtrXPC::Client::join(v7, retstr);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (Result)joiner:(Result *__return_ptr)retstr
{
  v3 = *(v1 + 8);
  v4 = *(v2 + 48);
  v7[2] = *(v2 + 32);
  v7[3] = v4;
  v8 = *(v2 + 64);
  v5 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v5;
  CtrXPC::Client::joiner(v7, retstr);
  return result;
}

- (Result)resume
{
  v2 = *(v1 + 8);
  CtrXPC::Client::resume(retstr);
  return result;
}

- (Result)reset:(Result *__return_ptr)retstr
{
  v3 = *(v1 + 8);
  CtrXPC::Client::reset(v2, retstr);
  return result;
}

- (Result)sendNwDiagReqGet:(Result *__return_ptr)retstr
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 8);
  v4 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v4;
  v8 = *(v2 + 32);
  CtrXPC::Client::send_network_diag_get(v7, retstr);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (Result)setChannel:(Result *__return_ptr)retstr
{
  v3 = *(v1 + 8);
  CtrXPC::Client::setChannel(v2, retstr);
  return result;
}

- (Result)attachToNetwork:(Result *__return_ptr)retstr output:
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *(v1 + 8);
  v5 = v2[1];
  v8[0] = *v2;
  v8[1] = v5;
  v8[2] = v2[2];
  CtrXPC::Client::attachToNetwork(v8, v3, retstr);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (Result)attachToNetwork:(Result *__return_ptr)retstr
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 8);
  v4 = v2[1];
  v7[0] = *v2;
  v7[1] = v4;
  v7[2] = v2[2];
  CtrXPC::Client::attachToNetwork(v7, retstr);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (Result)commissionOrFormNetwork:(Result *__return_ptr)retstr output:
{
  v4 = *(v1 + 8);
  CtrXPC::Client::commissionOrFormNetwork(v3, v2, retstr);
  return result;
}

- (Result)generatePSKc:(Result *__return_ptr)retstr output:
{
  v4 = *(v1 + 8);
  v5 = v2[1];
  v7[0] = *v2;
  v7[1] = v5;
  CtrXPC::Client::generatePSKc(v7, v3, retstr);
  return result;
}

- (Result)threadStart:(Result *__return_ptr)retstr outputUniqueId:
{
  retstr->var0 = 3;
  *&retstr->var1.var0.var1.var1 = 0uLL;
  retstr->var1.var0.var1.var0 = 0;
  return result;
}

- (Result)threadStart:(Result *__return_ptr)retstr outUniqueId:
{
  retstr->var0 = 3;
  *&retstr->var1.var0.var1.var1 = 0uLL;
  retstr->var1.var0.var1.var0 = 0;
  return result;
}

- (Result)generateThreadDiagnosticsMonitorLogs
{
  v2 = v1;
  std::string::basic_string[abi:ne200100]<0>(&v8, "Command Error");
  v4 = v8;
  v5 = v9;
  v6 = *(v2 + 8);
  CtrXPC::Client::generate_diagnostics(retstr);
  if (v5 < 0)
  {
    operator delete(v4);
  }

  return result;
}

- (Result)threadStart:(Result *__return_ptr)retstr outUniqueId:waitForSync:
{
  retstr->var0 = 3;
  *&retstr->var1.var0.var1.var1 = 0uLL;
  retstr->var1.var0.var1.var0 = 0;
  return result;
}

- (Result)threadLeave
{
  v2 = *(v1 + 8);
  CtrXPC::Client::threadLeave(retstr);
  return result;
}

- (void)threadMeshInfoForHomeMetrics:(id)metrics completionHandler:(id)handler
{
  v57 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  handlerCopy = handler;
  v7 = objc_autoreleasePoolPush();
  if (handlerCopy)
  {
    allObjects = [metricsCopy allObjects];
    v9 = allObjects;
    if (allObjects)
    {
      v10 = [allObjects count];
      if (v10)
      {
        v11 = 0;
        v12 = 0;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        ++[CtrClient threadMeshInfoForHomeMetrics:completionHandler:]::sequenceNumber;
        memset(&buf[1], 0, 112);
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v48[0] = 0;
        v56 = 0;
        *&buf[0] = v10;
        *(&buf[0] + 1) = [CtrClient threadMeshInfoForHomeMetrics:completionHandler:]::sequenceNumber;
        do
        {
          v13 = [v9 objectAtIndex:v12];
          accessoryManufacturer = [v13 accessoryManufacturer];
          v15 = accessoryManufacturer;
          std::string::basic_string[abi:ne200100]<0>(&v40, [accessoryManufacturer UTF8String]);
          v16 = (buf + v11 * 8);
          if (*(&buf[2] + v11 * 8 + 7) < 0)
          {
            operator delete(v16[2]);
          }

          *(v16 + 1) = v40;
          v16[4] = v41;
          HIBYTE(v41) = 0;
          LOBYTE(v40) = 0;

          accessoryModel = [v13 accessoryModel];
          v18 = accessoryModel;
          std::string::basic_string[abi:ne200100]<0>(&v40, [accessoryModel UTF8String]);
          v19 = (buf + v11 * 8);
          if (*(&buf[3] + v11 * 8 + 15) < 0)
          {
            operator delete(v19[5]);
          }

          *(v19 + 5) = v40;
          v19[7] = v41;
          HIBYTE(v41) = 0;
          LOBYTE(v40) = 0;

          hostName = [v13 hostName];
          v21 = hostName;
          std::string::basic_string[abi:ne200100]<0>(&v40, [hostName UTF8String]);
          v22 = (buf + v11 * 8);
          if (*(&buf[5] + v11 * 8 + 7) < 0)
          {
            operator delete(v22[8]);
          }

          *(v22 + 4) = v40;
          v22[10] = v41;
          HIBYTE(v41) = 0;
          LOBYTE(v40) = 0;

          serviceInstanceName = [v13 serviceInstanceName];
          v24 = serviceInstanceName;
          std::string::basic_string[abi:ne200100]<0>(&v40, [serviceInstanceName UTF8String]);
          v25 = (buf + v11 * 8);
          if (*(&buf[6] + v11 * 8 + 15) < 0)
          {
            operator delete(v25[11]);
          }

          *(v25 + 11) = v40;
          v25[13] = v41;
          HIBYTE(v41) = 0;
          LOBYTE(v40) = 0;

          ipv6Address = [v13 ipv6Address];
          v27 = ipv6Address;
          std::string::basic_string[abi:ne200100]<0>(&v40, [ipv6Address UTF8String]);
          v28 = (buf + v11 * 8);
          if (SHIBYTE(v48[v11]) < 0)
          {
            operator delete(v28[14]);
          }

          *(v28 + 7) = v40;
          v28[16] = v41;
          HIBYTE(v41) = 0;
          LOBYTE(v40) = 0;

          LODWORD(v48[v11 + 1]) = [v13 browseStatus];
          HIDWORD(v48[v11 + 1]) = [v13 resolveStatus];
          LODWORD(v48[v11 + 2]) = [v13 transactionStatus];
          BYTE4(v48[v11 + 2]) = [v13 isWrite];
          BYTE5(v48[v11 + 2]) = [v13 isLinkFallBack];
          BYTE6(v48[v11 + 2]) = [v13 communicationProtocol];
          HIBYTE(v48[v11 + 2]) = [v13 hapThreadAccessoryCapabilities];
          v48[v11 + 3] = [v13 errorCode];
          v48[v11 + 4] = [v13 hapCoAPTokenInfo];
          v48[v11 + 5] = [v13 matterSessionInfo];
          v48[v11 + 6] = [v13 consecutiveFailureCount];
          v48[v11 + 7] = [v13 consecutiveSuccessCount];
          v48[v11 + 8] = [v13 durationSecondsSinceLastSuccessfulRequest];

          ++v12;
          v11 += 23;
        }

        while (*&buf[0] > v12);
        ptr = self->CtrXPCClientPtr.__ptr_;
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __60__CtrClient_threadMeshInfoForHomeMetrics_completionHandler___block_invoke_2;
        v38[3] = &unk_278EC02C0;
        v39 = handlerCopy;
        CtrXPC::Client::threadMeshInfoForHomeMetrics(ptr, buf, v38);

        v30 = 368;
        do
        {
          v31 = (buf + v30);
          if (*(&v43 + v30 + 7) < 0)
          {
            operator delete(*(v31 - 9));
          }

          if (*(v31 - 73) < 0)
          {
            operator delete(*(&v40 + v30 + 8));
          }

          v32 = (buf + v30);
          if (*(&v40 + v30 + 7) < 0)
          {
            operator delete(*(v32 - 15));
          }

          if (*(v32 - 121) < 0)
          {
            operator delete(v38[v30 / 8]);
          }

          if (*(&buf[-9] + v30 - 1) < 0)
          {
            operator delete(*(v31 - 21));
          }

          v30 -= 184;
        }

        while (v30);
        v33 = 1;
        goto LABEL_37;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [CtrClient threadMeshInfoForHomeMetrics:completionHandler:];
      }

      global_queue = dispatch_get_global_queue(0, 0);
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __60__CtrClient_threadMeshInfoForHomeMetrics_completionHandler___block_invoke_14;
      v43 = &unk_278EC0298;
      v44 = handlerCopy;
      dispatch_async(global_queue, v42);
    }

    else
    {
      v34 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__CtrClient_threadMeshInfoForHomeMetrics_completionHandler___block_invoke;
      block[3] = &unk_278EC0298;
      v46 = handlerCopy;
      dispatch_async(v34, block);
    }

    v33 = 0;
LABEL_37:

    goto LABEL_38;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [CtrClient threadMeshInfoForHomeMetrics:completionHandler:];
  }

  v33 = 0;
LABEL_38:
  objc_autoreleasePoolPop(v7);
  if (v33 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 136315650;
    *(buf + 4) = "[CtrClient threadMeshInfoForHomeMetrics:completionHandler:]";
    WORD6(buf[0]) = 1024;
    *(buf + 14) = 600;
    WORD1(buf[1]) = 2048;
    *(&buf[1] + 4) = [CtrClient threadMeshInfoForHomeMetrics:completionHandler:]::sequenceNumber;
    _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d Returning client api call for sequenceNumber : %llu", buf, 0x1Cu);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __60__CtrClient_threadMeshInfoForHomeMetrics_completionHandler___block_invoke_2(uint64_t a1, _DWORD *a2, xpc_object_t *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __60__CtrClient_threadMeshInfoForHomeMetrics_completionHandler___block_invoke_2_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    xarray = xpc_dictionary_get_value(*a3, "accessoryOutputArray");
    count = xpc_array_get_count(xarray);
    uint64 = xpc_dictionary_get_uint64(*a3, "outputSequenceNumber");
    v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
    if (count)
    {
      v5 = 0;
      for (i = 0; i < count; v5 = ++i)
      {
        value = xpc_array_get_value(xarray, v5);
        if (MEMORY[0x24C1B2CC0]() == MEMORY[0x277D86468])
        {
          v8 = xpc_dictionary_get_uint64(value, "threadMeshReachabilityStatusBitMap");
          v9 = xpc_dictionary_get_uint64(value, "threadTXReachabilityStatusBitMap");
          v10 = xpc_dictionary_get_uint64(value, "threadRXReachabilityStatusBitMap");
          v11 = xpc_dictionary_get_uint64(value, "srpStatusBitMap");
          v12 = xpc_dictionary_get_uint64(value, "threadTXErrorEnum");
          v13 = xpc_dictionary_get_uint64(value, "threadMeshRXErrorEnum");
          v14 = xpc_dictionary_get_uint64(value, "threadMeshReachabilityErrorEnum");
          v15 = xpc_dictionary_get_uint64(value, "srpErrorEnum");
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136317954;
            v25 = "[CtrClient threadMeshInfoForHomeMetrics:completionHandler:]_block_invoke";
            v26 = 1024;
            v27 = 585;
            v28 = 1024;
            v29 = i;
            v30 = 2048;
            v31 = v12;
            v32 = 2048;
            v33 = v13;
            v34 = 2048;
            v35 = v14;
            v36 = 2048;
            v37 = v15;
            v38 = 2048;
            v39 = v10;
            v40 = 2048;
            v41 = v9;
            v42 = 2048;
            v43 = v10;
            v44 = 2048;
            v45 = v11;
            v46 = 2048;
            v47 = uint64;
            _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s:%d Array element %hhu: threadTXErrorEnum:%llu threadMeshRXErrorEnum:%llu threadMeshReachabilityErrorEnum:%llu srpErrorEnum:%llu threadRXReachabilityStatusBitMap: %llu threadTXReachabilityStatusBitMap:%llu threadRXReachabilityStatusBitMap:%llu srpStatusBitMap:%llu outputSequenceNumber:%llu \n", buf, 0x72u);
          }

          v16 = [[CtrAccessorySpecificThreadInfoOutput alloc] initWithAccessorySpecificThreadInfoOutput:v14 threadMeshUnderlyingStatusBitmap:v8 threadTXError:v12 threadTXUnderlyingStatusBitmap:v9 threadRXUnderlyingStatusBitmap:v10 srpError:v15 srpUnderlyingStatusBitmap:v11];
          [v22 addObject:v16];
        }
      }
    }

    v17 = *(a1 + 32);
    v18 = [MEMORY[0x277CBEB98] setWithArray:v22];
    (*(v17 + 16))(v17, v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (Result)updatePrimaryResident:(Result *__return_ptr)retstr isPrimaryResidentThreadCapable:primaryResidentInfo:
{
  v5 = v3;
  v6 = v2;
  v7 = v1;
  v20 = *MEMORY[0x277D85DE8];
  v9 = v4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v17 = 136315394;
    *&v17[4] = "[CtrClient updatePrimaryResident:isPrimaryResidentThreadCapable:primaryResidentInfo:]";
    *&v17[12] = 1024;
    *&v17[14] = 605;
    _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s %d", v17, 0x12u);
  }

  std::string::basic_string[abi:ne200100]<0>(v17, "Command Error");
  v10 = *v17;
  v11 = SHIBYTE(v19);
  if (v9)
  {
    v12 = v9;
    uTF8String = [v9 UTF8String];
  }

  else
  {
    uTF8String = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v17 = 138412802;
    *&v17[4] = v9;
    *&v17[12] = 1024;
    *&v17[14] = v6;
    v18 = 1024;
    v19 = v5;
    _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "primaryInfo=%@,  isPrimaryResident=%d, isPrimaryResidentThreadCapable=%d\n", v17, 0x18u);
  }

  v14 = *(v7 + 8);
  v17[0] = v6 != 0;
  v17[1] = v5 != 0;
  *&v17[8] = uTF8String;
  CtrXPC::Client::updatePrimaryResident(v17, retstr);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (Result)updateHomeThreadInfo:(Result *__return_ptr)retstr
{
  v3 = v2;
  v4 = v1;
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v11 = 136315394;
    *&v11[4] = "[CtrClient updateHomeThreadInfo:]";
    *&v11[12] = 1024;
    *&v11[14] = 623;
    _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s %d", v11, 0x12u);
  }

  std::string::basic_string[abi:ne200100]<0>(v11, "Command Error");
  v6 = *v11;
  v7 = v11[23];
  v8 = *(v4 + 8);
  *v11 = vuzp1q_s32(*v3, *(v3 + 16));
  *&v11[16] = vmovn_s64(*(v3 + 32));
  CtrXPC::Client::updateHomeThreadInfo(v11, retstr);
  if (v7 < 0)
  {
    operator delete(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)threadStart:(id)start geoAvailable:(BOOL)available isPrimaryUser:(BOOL)user waitForSync:(BOOL)sync completion:(id)completion
{
  syncCopy = sync;
  userCopy = user;
  availableCopy = available;
  v50[1] = *MEMORY[0x277D85DE8];
  startCopy = start;
  completionCopy = completion;
  v31 = 0;
  v32 = &v31;
  v33 = 0x6812000000;
  v34 = __Block_byref_object_copy__0;
  v35 = __Block_byref_object_dispose__0;
  v36 = "";
  v37 = 0;
  v38 = 0;
  v39 = 256;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  if (startCopy)
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:startCopy encoding:4];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
      uTF8String = [v15 UTF8String];
      v32[10] = uTF8String;
      v18 = xpc_dictionary_create(0, 0, 0);
      v19 = v32;
      v32[7] = v18;
      *(v19 + 72) = syncCopy;
      *(v19 + 88) = availableCopy;
      *(v19 + 73) = userCopy;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v15;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "activeOperationalDataset : %@ \n", &buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = syncCopy;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "waitForSync flag : %d \n", &buf, 8u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = availableCopy;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "geoAvailable flag : %d\n", &buf, 8u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = userCopy;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "isPrimaryUser flag : %d\n", &buf, 8u);
      }

      ptr = self->CtrXPCClientPtr.__ptr_;
      v21 = *(v32 + 3);
      v22 = *(v32 + 4);
      v46 = v32[12];
      buf = v21;
      v44 = v22;
      v45 = *(v32 + 5);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __75__CtrClient_threadStart_geoAvailable_isPrimaryUser_waitForSync_completion___block_invoke;
      v28[3] = &unk_278EC02E8;
      v30 = &v31;
      v29 = completionCopy;
      CtrXPC::Client::threadStartWithCompletion(ptr, &buf, v28);
    }

    else
    {
      v25 = MEMORY[0x277CCA9B8];
      v47 = *MEMORY[0x277CCA450];
      v48 = @"activeOperationalDataset parameter is encoded incorrectly";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v15 = [v25 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v26];

      (*(completionCopy + 2))(completionCopy, v15);
    }
  }

  else
  {
    v23 = MEMORY[0x277CCA9B8];
    v49 = *MEMORY[0x277CCA450];
    v50[0] = @"activeOperationalDataset parameter is required";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v15 = [v23 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v24];

    (*(completionCopy + 2))(completionCopy, v15);
  }

  _Block_object_dispose(&v31, 8);
  v27 = *MEMORY[0x277D85DE8];
}

void __75__CtrClient_threadStart_geoAvailable_isPrimaryUser_waitForSync_completion___block_invoke(uint64_t a1, _DWORD *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  xpc_release(*(*(*(a1 + 40) + 8) + 56));
  if (*a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __75__CtrClient_threadStart_geoAvailable_isPrimaryUser_waitForSync_completion___block_invoke_cold_1();
    }

    v4 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA450];
    v9 = @"Error: threadstart failed !";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v6 = [v4 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v5];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v11 = "[CtrClient threadStart:geoAvailable:isPrimaryUser:waitForSync:completion:]_block_invoke";
      v12 = 1024;
      v13 = 676;
      _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s:%d: threadstart is successful !", buf, 0x12u);
    }

    (*(*(a1 + 32) + 16))();
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)threadStart:(id)start activeOperationalDataSet:(id)set geoAvailable:(BOOL)available routerMode:(BOOL)mode eMAC:(id)c waitForSync:(BOOL)sync completion:(id)completion
{
  syncCopy = sync;
  modeCopy = mode;
  availableCopy = available;
  v65[1] = *MEMORY[0x277D85DE8];
  startCopy = start;
  setCopy = set;
  cCopy = c;
  completionCopy = completion;
  v46 = 0;
  v47 = &v46;
  v48 = 0x6812000000;
  v49 = __Block_byref_object_copy__0;
  v50 = __Block_byref_object_dispose__0;
  v51 = "";
  v52 = 0;
  v53 = 0;
  v54 = 256;
  v57 = 0;
  v55 = 0;
  v56 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = __Block_byref_object_copy__42;
  v44[4] = __Block_byref_object_dispose__43;
  v18 = setCopy;
  v45 = v18;
  if (startCopy | v18)
  {
    if (cCopy || !modeCopy)
    {
      if (startCopy)
      {
        uUIDString = [startCopy UUIDString];
        if (uUIDString)
        {
          v38 = uUIDString;
          v25 = uUIDString;
          uUIDString = [v38 UTF8String];
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
        v38 = 0;
        uUIDString = 0;
      }

      v47[6] = uUIDString;
      v26 = xpc_dictionary_create(0, 0, 0);
      uTF8String = 0;
      v28 = v47;
      v47[7] = v26;
      *(v28 + 72) = syncCopy;
      *(v28 + 88) = availableCopy;
      *(v28 + 90) = modeCopy;
      v29 = 0;
      if (cCopy && modeCopy)
      {
        v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:cCopy encoding:4];
        v31 = v30;
        uTF8String = [v30 UTF8String];
        v28 = v47;
        v29 = v30;
      }

      v28[12] = uTF8String;
      if (v18)
      {
        v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v18 encoding:4];
        v32 = v21;
        uTF8String2 = [v21 UTF8String];
        v28 = v47;
      }

      else
      {
        uTF8String2 = 0;
        v21 = 0;
      }

      v28[10] = uTF8String2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v38;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "inUniqueId string : %@ \n", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v21;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "activeOperationalDataset : %@ \n", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = syncCopy;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "waitForSync flag : %d \n", buf, 8u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = availableCopy;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "geoAvailable flag : %d\n", buf, 8u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = modeCopy;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "routerMode flag : %d\n", buf, 8u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v29;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "eMAC str : %@\n", buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = cCopy;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "eMAC : %@\n", buf, 0xCu);
      }

      ptr = self->CtrXPCClientPtr.__ptr_;
      v35 = *(v47 + 3);
      v36 = *(v47 + 4);
      v61 = v47[12];
      *buf = v35;
      v59 = v36;
      v60 = *(v47 + 5);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __102__CtrClient_threadStart_activeOperationalDataSet_geoAvailable_routerMode_eMAC_waitForSync_completion___block_invoke;
      v40[3] = &unk_278EC0310;
      v42 = &v46;
      v41 = completionCopy;
      v43 = v44;
      CtrXPC::Client::threadStartWithCompletion(ptr, buf, v40);
    }

    else
    {
      v19 = MEMORY[0x277CCA9B8];
      v62 = *MEMORY[0x277CCA450];
      v63 = @"eMAC is required if router mode is on";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      v21 = [v19 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v20];

      (*(completionCopy + 2))(completionCopy, 0, v21);
    }
  }

  else
  {
    v22 = MEMORY[0x277CCA9B8];
    v64 = *MEMORY[0x277CCA450];
    v65[0] = @"inUniqueId or activeOperationalDataset parameter is required";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:&v64 count:1];
    v21 = [v22 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v23];

    (*(completionCopy + 2))(completionCopy, 0, v21);
  }

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(&v46, 8);

  v37 = *MEMORY[0x277D85DE8];
}

void __102__CtrClient_threadStart_activeOperationalDataSet_geoAvailable_routerMode_eMAC_waitForSync_completion___block_invoke(void *a1, _DWORD *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    if (xpc_dictionary_get_string(*(*(a1[5] + 8) + 56), "PropVal"))
    {
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_dictionary_get_string(*(*(a1[5] + 8) + 56), "PropVal")}];
      if (v4)
      {
        v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
        if (v5)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v10 = v5;
            v11 = 2112;
            v12 = v4;
            _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Output UUID : %@, UUID-NSSTRING : %@ \n", buf, 0x16u);
          }

          xpc_release(*(*(a1[5] + 8) + 56));
          (*(a1[4] + 16))();

LABEL_19:
          v7 = *MEMORY[0x277D85DE8];
          return;
        }
      }
    }

    if (*(*(a1[6] + 8) + 40))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v10 = "[CtrClient threadStart:activeOperationalDataSet:geoAvailable:routerMode:eMAC:waitForSync:completion:]_block_invoke";
        v11 = 1024;
        LODWORD(v12) = 772;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s:%d: Even after the success, output value is nil", buf, 0x12u);
      }

      (*(a1[4] + 16))();
    }

    else
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.threadradiod.ctr" code:0 userInfo:0];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __102__CtrClient_threadStart_activeOperationalDataSet_geoAvailable_routerMode_eMAC_waitForSync_completion___block_invoke_cold_1();
      }
    }

    goto LABEL_19;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:0];
  xpc_release(*(*(a1[5] + 8) + 56));
  (*(a1[4] + 16))();
  v3 = *MEMORY[0x277D85DE8];
}

- (void)threadStopWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v17 = 0;
  *&v16[6] = 0;
  ptr = self->CtrXPCClientPtr.__ptr_;
  v10[0] = 0;
  v10[2] = 0;
  v11 = 256;
  *v12 = *v16;
  *&v12[7] = 0;
  v13 = 1;
  v14 = 0;
  v15 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__CtrClient_threadStopWithCompletion___block_invoke;
  v8[3] = &unk_278EC0338;
  v9 = completionCopy;
  v6 = completionCopy;
  CtrXPC::Client::threadStopWithCompletion(ptr, v10, v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __38__CtrClient_threadStopWithCompletion___block_invoke(uint64_t a1, _DWORD *a2)
{
  if (*a2)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

- (void)provideExtendedMACAddress:(id)address completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  completionCopy = completion;
  *&v28[14] = 0;
  *&v28[6] = 0;
  v8 = xpc_dictionary_create(0, 0, 0);
  if (addressCopy)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:addressCopy encoding:4];
    uTF8String = [v9 UTF8String];
  }

  else
  {
    uTF8String = 0;
    v9 = 0;
  }

  ptr = self->CtrXPCClientPtr.__ptr_;
  v23[0] = 0;
  v23[1] = v8;
  v23[2] = 0;
  v24 = 256;
  v25 = *v28;
  v26 = *&v28[16];
  v27 = uTF8String;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__CtrClient_provideExtendedMACAddress_completion___block_invoke;
  v14[3] = &unk_278EC0360;
  v16 = 0;
  v17 = v8;
  v18 = 0;
  v19 = 256;
  v21 = *&v28[16];
  v20 = *v28;
  v22 = uTF8String;
  v12 = completionCopy;
  v15 = v12;
  CtrXPC::Client::provideExtendedMACAddress(ptr, v23, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __50__CtrClient_provideExtendedMACAddress_completion___block_invoke(uint64_t a1, _DWORD *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  if (*a2)
  {
    string = xpc_dictionary_get_string(v3, "PropVal");
    if (string && ([MEMORY[0x277CCACA8] stringWithUTF8String:string], v5 = objc_claimAutoreleasedReturnValue(), (v6 = v5) != 0))
    {
      v7 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA498];
      v15[0] = v5;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v9 = [v7 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v8];

      v10 = v6;
    }

    else
    {
      v10 = 0;
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:0];
    }

    xpc_release(*(a1 + 48));
    (*(*(a1 + 32) + 16))();

    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    xpc_release(v3);
    v12 = *(*(a1 + 32) + 16);
    v13 = *MEMORY[0x277D85DE8];

    v12();
  }
}

- (void)startPairingForExtendedMACAddress:(id)address isWedDevice:(BOOL)device completion:(id)completion
{
  deviceCopy = device;
  v32 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  completionCopy = completion;
  *&v31[13] = 0;
  *&v31[6] = 0;
  if (addressCopy || !deviceCopy)
  {
    if (addressCopy)
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:addressCopy encoding:4];
      v12 = v13;
      if (!v13)
      {
        v16 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CCA450];
        v28 = @"failed to interpret eMACAddress";
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v12 = [v16 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v17];

        completionCopy[2](completionCopy, v12);
        goto LABEL_10;
      }

      uTF8String = [v13 UTF8String];
    }

    else
    {
      uTF8String = 0;
      v12 = 0;
    }

    ptr = self->CtrXPCClientPtr.__ptr_;
    v21[0] = 0;
    v21[2] = 0;
    v22 = 256;
    v23 = *v31;
    v24 = v31[16];
    v25 = deviceCopy;
    v26 = uTF8String;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __70__CtrClient_startPairingForExtendedMACAddress_isWedDevice_completion___block_invoke;
    v19[3] = &unk_278EC0338;
    v20 = completionCopy;
    CtrXPC::Client::startPairing(ptr, v21, v19);
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30 = @"eMACAddress is required if it is wed device";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v12 = [v10 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v11];

    completionCopy[2](completionCopy, v12);
  }

LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
}

void __70__CtrClient_startPairingForExtendedMACAddress_isWedDevice_completion___block_invoke(uint64_t a1, _DWORD *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v3 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"Failed to start pairing";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v5 = [v3 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v4];

    (*(*(a1 + 32) + 16))();
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(*(a1 + 32) + 16);
    v9 = *MEMORY[0x277D85DE8];

    v8();
  }
}

- (void)stopPairing:(id)pairing
{
  v17 = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  v16 = 0;
  *&v15[6] = 0;
  ptr = self->CtrXPCClientPtr.__ptr_;
  v10[0] = 0;
  v10[2] = 0;
  v11 = 256;
  v12 = *v15;
  v13 = 0;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __25__CtrClient_stopPairing___block_invoke;
  v8[3] = &unk_278EC0338;
  v9 = pairingCopy;
  v6 = pairingCopy;
  CtrXPC::Client::stopPairing(ptr, v10, v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __25__CtrClient_stopPairing___block_invoke(uint64_t a1, _DWORD *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v3 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"Failed to stop pairing";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v5 = [v3 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v4];

    (*(*(a1 + 32) + 16))();
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(*(a1 + 32) + 16);
    v9 = *MEMORY[0x277D85DE8];

    v8();
  }
}

- (void)startFWUpdate:(id)update isWedDevice:(BOOL)device completion:(id)completion
{
  deviceCopy = device;
  v32 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  completionCopy = completion;
  *&v31[13] = 0;
  *&v31[6] = 0;
  if (updateCopy || !deviceCopy)
  {
    if (updateCopy)
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:updateCopy encoding:4];
      v12 = v13;
      if (!v13)
      {
        v16 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CCA450];
        v28 = @"failed to interpret eMACAddress";
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v12 = [v16 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v17];

        completionCopy[2](completionCopy, v12);
        goto LABEL_10;
      }

      uTF8String = [v13 UTF8String];
    }

    else
    {
      uTF8String = 0;
      v12 = 0;
    }

    ptr = self->CtrXPCClientPtr.__ptr_;
    v21[0] = 0;
    v21[2] = 0;
    v22 = 256;
    v23 = *v31;
    v24 = v31[16];
    v25 = deviceCopy;
    v26 = uTF8String;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __50__CtrClient_startFWUpdate_isWedDevice_completion___block_invoke;
    v19[3] = &unk_278EC0338;
    v20 = completionCopy;
    CtrXPC::Client::startFWUpdate(ptr, v21, v19);
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30 = @"eMACAddress is required if it is wed device";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v12 = [v10 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v11];

    completionCopy[2](completionCopy, v12);
  }

LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
}

void __50__CtrClient_startFWUpdate_isWedDevice_completion___block_invoke(uint64_t a1, _DWORD *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v3 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"Failed to start FW Update";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v5 = [v3 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v4];

    (*(*(a1 + 32) + 16))();
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(*(a1 + 32) + 16);
    v9 = *MEMORY[0x277D85DE8];

    v8();
  }
}

- (void)stopFWUpdate:(id)update
{
  v17 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v16 = 0;
  *&v15[6] = 0;
  ptr = self->CtrXPCClientPtr.__ptr_;
  v10[0] = 0;
  v10[2] = 0;
  v11 = 256;
  v12 = *v15;
  v13 = 0;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __26__CtrClient_stopFWUpdate___block_invoke;
  v8[3] = &unk_278EC0338;
  v9 = updateCopy;
  v6 = updateCopy;
  CtrXPC::Client::stopFWUpdate(ptr, v10, v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __26__CtrClient_stopFWUpdate___block_invoke(uint64_t a1, _DWORD *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v3 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"Failed to stop FW Update";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v5 = [v3 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v4];

    (*(*(a1 + 32) + 16))();
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(*(a1 + 32) + 16);
    v9 = *MEMORY[0x277D85DE8];

    v8();
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)init:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)threadMeshInfoForHomeMetrics:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)threadMeshInfoForHomeMetrics:completionHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__CtrClient_threadMeshInfoForHomeMetrics_completionHandler___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __75__CtrClient_threadStart_geoAvailable_isPrimaryUser_waitForSync_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __102__CtrClient_threadStart_activeOperationalDataSet_geoAvailable_routerMode_eMAC_waitForSync_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

@end