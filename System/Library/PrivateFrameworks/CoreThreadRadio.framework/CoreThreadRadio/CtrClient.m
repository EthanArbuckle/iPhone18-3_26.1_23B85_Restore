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
- (id)init:(const char *)a3;
- (void)provideExtendedMACAddress:(id)a3 completion:(id)a4;
- (void)setEventHandler:(const void *)a3 EventBlock:(id)a4 dqueue:(queue)a5;
- (void)startFWUpdate:(id)a3 isWedDevice:(BOOL)a4 completion:(id)a5;
- (void)startPairingForExtendedMACAddress:(id)a3 isWedDevice:(BOOL)a4 completion:(id)a5;
- (void)stopFWUpdate:(id)a3;
- (void)stopPairing:(id)a3;
- (void)threadMeshInfoForHomeMetrics:(id)a3 completionHandler:(id)a4;
- (void)threadStart:(id)a3 activeOperationalDataSet:(id)a4 geoAvailable:(BOOL)a5 routerMode:(BOOL)a6 eMAC:(id)a7 waitForSync:(BOOL)a8 completion:(id)a9;
- (void)threadStart:(id)a3 geoAvailable:(BOOL)a4 isPrimaryUser:(BOOL)a5 waitForSync:(BOOL)a6 completion:(id)a7;
- (void)threadStopWithCompletion:(id)a3;
@end

@implementation CtrClient

- (id)init:(const char *)a3
{
  if (MGGetBoolAnswer())
  {
    v11.receiver = self;
    v11.super_class = CtrClient;
    v5 = [(CtrClient *)&v11 init];
    v6 = v5;
    if (v5)
    {
      [(CtrClient *)v5 createClient:a3];
      cntrl = v6->CtrXPCClientPtr.__cntrl_;
      v6->CtrXPCClientPtr = v10;
      if (cntrl)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
      }
    }

    self = v6;
    v8 = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [CtrClient init:];
    }

    v8 = 0;
  }

  return v8;
}

- (void)setEventHandler:(const void *)a3 EventBlock:(id)a4 dqueue:(queue)a5
{
  v8 = a4;
  ptr = self->CtrXPCClientPtr.__ptr_;
  v10 = *a5.var0.var0;
  object = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  CtrXPC::Client::setEventHandler(ptr, a3, v8, &object);
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

- (void)threadMeshInfoForHomeMetrics:(id)a3 completionHandler:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  if (v6)
  {
    v8 = [v5 allObjects];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 count];
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
          v14 = [v13 accessoryManufacturer];
          v15 = v14;
          std::string::basic_string[abi:ne200100]<0>(&v40, [v14 UTF8String]);
          v16 = (buf + v11 * 8);
          if (*(&buf[2] + v11 * 8 + 7) < 0)
          {
            operator delete(v16[2]);
          }

          *(v16 + 1) = v40;
          v16[4] = v41;
          HIBYTE(v41) = 0;
          LOBYTE(v40) = 0;

          v17 = [v13 accessoryModel];
          v18 = v17;
          std::string::basic_string[abi:ne200100]<0>(&v40, [v17 UTF8String]);
          v19 = (buf + v11 * 8);
          if (*(&buf[3] + v11 * 8 + 15) < 0)
          {
            operator delete(v19[5]);
          }

          *(v19 + 5) = v40;
          v19[7] = v41;
          HIBYTE(v41) = 0;
          LOBYTE(v40) = 0;

          v20 = [v13 hostName];
          v21 = v20;
          std::string::basic_string[abi:ne200100]<0>(&v40, [v20 UTF8String]);
          v22 = (buf + v11 * 8);
          if (*(&buf[5] + v11 * 8 + 7) < 0)
          {
            operator delete(v22[8]);
          }

          *(v22 + 4) = v40;
          v22[10] = v41;
          HIBYTE(v41) = 0;
          LOBYTE(v40) = 0;

          v23 = [v13 serviceInstanceName];
          v24 = v23;
          std::string::basic_string[abi:ne200100]<0>(&v40, [v23 UTF8String]);
          v25 = (buf + v11 * 8);
          if (*(&buf[6] + v11 * 8 + 15) < 0)
          {
            operator delete(v25[11]);
          }

          *(v25 + 11) = v40;
          v25[13] = v41;
          HIBYTE(v41) = 0;
          LOBYTE(v40) = 0;

          v26 = [v13 ipv6Address];
          v27 = v26;
          std::string::basic_string[abi:ne200100]<0>(&v40, [v26 UTF8String]);
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
        v39 = v6;
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
      v44 = v6;
      dispatch_async(global_queue, v42);
    }

    else
    {
      v34 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__CtrClient_threadMeshInfoForHomeMetrics_completionHandler___block_invoke;
      block[3] = &unk_278EC0298;
      v46 = v6;
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
    v13 = [v9 UTF8String];
  }

  else
  {
    v13 = 0;
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
  *&v17[8] = v13;
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

- (void)threadStart:(id)a3 geoAvailable:(BOOL)a4 isPrimaryUser:(BOOL)a5 waitForSync:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v50[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a7;
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
  if (v12)
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v12 encoding:4];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
      v17 = [v15 UTF8String];
      v32[10] = v17;
      v18 = xpc_dictionary_create(0, 0, 0);
      v19 = v32;
      v32[7] = v18;
      *(v19 + 72) = v8;
      *(v19 + 88) = v10;
      *(v19 + 73) = v9;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v15;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "activeOperationalDataset : %@ \n", &buf, 0xCu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = v8;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "waitForSync flag : %d \n", &buf, 8u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = v10;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "geoAvailable flag : %d\n", &buf, 8u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = v9;
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
      v29 = v13;
      CtrXPC::Client::threadStartWithCompletion(ptr, &buf, v28);
    }

    else
    {
      v25 = MEMORY[0x277CCA9B8];
      v47 = *MEMORY[0x277CCA450];
      v48 = @"activeOperationalDataset parameter is encoded incorrectly";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v15 = [v25 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v26];

      (*(v13 + 2))(v13, v15);
    }
  }

  else
  {
    v23 = MEMORY[0x277CCA9B8];
    v49 = *MEMORY[0x277CCA450];
    v50[0] = @"activeOperationalDataset parameter is required";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v15 = [v23 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v24];

    (*(v13 + 2))(v13, v15);
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

- (void)threadStart:(id)a3 activeOperationalDataSet:(id)a4 geoAvailable:(BOOL)a5 routerMode:(BOOL)a6 eMAC:(id)a7 waitForSync:(BOOL)a8 completion:(id)a9
{
  v9 = a8;
  v11 = a6;
  v12 = a5;
  v65[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a9;
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
  v18 = v15;
  v45 = v18;
  if (v14 | v18)
  {
    if (v16 || !v11)
    {
      if (v14)
      {
        v24 = [v14 UUIDString];
        if (v24)
        {
          v38 = v24;
          v25 = v24;
          v24 = [v38 UTF8String];
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
        v38 = 0;
        v24 = 0;
      }

      v47[6] = v24;
      v26 = xpc_dictionary_create(0, 0, 0);
      v27 = 0;
      v28 = v47;
      v47[7] = v26;
      *(v28 + 72) = v9;
      *(v28 + 88) = v12;
      *(v28 + 90) = v11;
      v29 = 0;
      if (v16 && v11)
      {
        v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v16 encoding:4];
        v31 = v30;
        v27 = [v30 UTF8String];
        v28 = v47;
        v29 = v30;
      }

      v28[12] = v27;
      if (v18)
      {
        v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v18 encoding:4];
        v32 = v21;
        v33 = [v21 UTF8String];
        v28 = v47;
      }

      else
      {
        v33 = 0;
        v21 = 0;
      }

      v28[10] = v33;
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
        *&buf[4] = v9;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "waitForSync flag : %d \n", buf, 8u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v12;
        _os_log_impl(&dword_247A76000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "geoAvailable flag : %d\n", buf, 8u);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v11;
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
        *&buf[4] = v16;
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
      v41 = v17;
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

      (*(v17 + 2))(v17, 0, v21);
    }
  }

  else
  {
    v22 = MEMORY[0x277CCA9B8];
    v64 = *MEMORY[0x277CCA450];
    v65[0] = @"inUniqueId or activeOperationalDataset parameter is required";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:&v64 count:1];
    v21 = [v22 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v23];

    (*(v17 + 2))(v17, 0, v21);
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

- (void)threadStopWithCompletion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
  v9 = v4;
  v6 = v4;
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

- (void)provideExtendedMACAddress:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  *&v28[14] = 0;
  *&v28[6] = 0;
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
    v10 = [v9 UTF8String];
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  ptr = self->CtrXPCClientPtr.__ptr_;
  v23[0] = 0;
  v23[1] = v8;
  v23[2] = 0;
  v24 = 256;
  v25 = *v28;
  v26 = *&v28[16];
  v27 = v10;
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
  v22 = v10;
  v12 = v7;
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

- (void)startPairingForExtendedMACAddress:(id)a3 isWedDevice:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  *&v31[13] = 0;
  *&v31[6] = 0;
  if (v8 || !v6)
  {
    if (v8)
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
      v12 = v13;
      if (!v13)
      {
        v16 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CCA450];
        v28 = @"failed to interpret eMACAddress";
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v12 = [v16 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v17];

        v9[2](v9, v12);
        goto LABEL_10;
      }

      v14 = [v13 UTF8String];
    }

    else
    {
      v14 = 0;
      v12 = 0;
    }

    ptr = self->CtrXPCClientPtr.__ptr_;
    v21[0] = 0;
    v21[2] = 0;
    v22 = 256;
    v23 = *v31;
    v24 = v31[16];
    v25 = v6;
    v26 = v14;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __70__CtrClient_startPairingForExtendedMACAddress_isWedDevice_completion___block_invoke;
    v19[3] = &unk_278EC0338;
    v20 = v9;
    CtrXPC::Client::startPairing(ptr, v21, v19);
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30 = @"eMACAddress is required if it is wed device";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v12 = [v10 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v11];

    v9[2](v9, v12);
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

- (void)stopPairing:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
  v9 = v4;
  v6 = v4;
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

- (void)startFWUpdate:(id)a3 isWedDevice:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  *&v31[13] = 0;
  *&v31[6] = 0;
  if (v8 || !v6)
  {
    if (v8)
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
      v12 = v13;
      if (!v13)
      {
        v16 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CCA450];
        v28 = @"failed to interpret eMACAddress";
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v12 = [v16 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v17];

        v9[2](v9, v12);
        goto LABEL_10;
      }

      v14 = [v13 UTF8String];
    }

    else
    {
      v14 = 0;
      v12 = 0;
    }

    ptr = self->CtrXPCClientPtr.__ptr_;
    v21[0] = 0;
    v21[2] = 0;
    v22 = 256;
    v23 = *v31;
    v24 = v31[16];
    v25 = v6;
    v26 = v14;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __50__CtrClient_startFWUpdate_isWedDevice_completion___block_invoke;
    v19[3] = &unk_278EC0338;
    v20 = v9;
    CtrXPC::Client::startFWUpdate(ptr, v21, v19);
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30 = @"eMACAddress is required if it is wed device";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v12 = [v10 errorWithDomain:@"com.threadradiod.ctr" code:1 userInfo:v11];

    v9[2](v9, v12);
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

- (void)stopFWUpdate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
  v9 = v4;
  v6 = v4;
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