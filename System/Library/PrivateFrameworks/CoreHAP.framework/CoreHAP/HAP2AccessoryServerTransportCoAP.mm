@interface HAP2AccessoryServerTransportCoAP
+ (id)stringFromCoAPAddress:(uint64_t)a1;
- (BOOL)mergeWithNewTransport:(id)a3;
- (HAP2AccessoryServerTransportCoAP)initWithAccessoryInfo:(id)a3 discovery:(id)a4 operationQueue:(id)a5;
- (HAP2AccessoryServerTransportCoAP)initWithOperationQueue:(id)a3 delegateQueue:(id)a4;
- (HAP2AccessoryServerTransportCoAP)initWithOperationQueue:(id)a3 delegateQueue:(id)a4 serviceName:(id)a5 serviceType:(id)a6 serviceDomain:(id)a7 addressResolutionTimeout:(double)a8 discovery:(id)a9 accessoryInfo:(id)a10 coapClient:(id)a11 coapClientFactory:(id)a12;
- (id)coapClient;
- (id)discovery;
- (id)initWithServiceName:(void *)a3 type:(void *)a4 domain:(void *)a5 operationQueue:(void *)a6 discovery:(void *)a7 accessoryInfo:;
- (id)mimeTypeForWellKnownEndpoint:(unint64_t)a3;
- (id)wellKnownEndpoint:(unint64_t)a3;
- (unint64_t)protocolFeaturesForVersion:(id)a3;
- (void)_handleResolve:(uint64_t)a1;
- (void)_openClientWithActivity:(void *)a1;
- (void)client:(id)a3 didReceiveEvent:(id)a4;
- (void)clientDidDisconnect:(id)a3 error:(id)a4;
- (void)doCloseWithError:(id)a3 completion:(id)a4;
- (void)doOpenWithCompletion:(id)a3;
- (void)doSendRequest:(id)a3 completion:(id)a4;
- (void)doUpdateMaxRequestTimeout:(double)a3;
- (void)numOfAddresses;
- (void)numOfAddressesTried;
- (void)setCoapClient:(id *)a1;
- (void)setSendRequestCompletion:(void *)a1;
- (void)setStateChangeCompletion:(void *)a1;
- (void)stateChangeCompletion;
@end

@implementation HAP2AccessoryServerTransportCoAP

- (void)client:(id)a3 didReceiveEvent:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(HAP2AccessoryServerTransportBase *)self state];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v7 = hap2Log_accessory;
  if (v6 == 2)
  {
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = self;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%@ Received event: %@", &v11, 0x16u);
    }

    v8 = [(HAP2AccessoryServerTransportBaseWithDelegate *)self delegate];
    v9 = v8;
    if (v8)
    {
      [v8 transport:self didReceiveEvent:v5];
    }
  }

  else
  {
    if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v9 = v7;
    v11 = 138412802;
    v12 = self;
    v13 = 2048;
    v14 = [(HAP2AccessoryServerTransportBase *)self state];
    v15 = 2112;
    v16 = v5;
    _os_log_error_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%@ Received event in bad state %lu: %@", &v11, 0x20u);
  }

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)clientDidDisconnect:(id)a3 error:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v6 = hap2Log_accessory;
  if (v5)
  {
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412546;
      v12 = self;
      v13 = 2112;
      v14 = v5;
      _os_log_error_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, "%@ Disconnected with error: %@", &v11, 0x16u);
    }

    v7 = [(HAP2AccessoryServerTransportCoAP *)&self->super.super.super.super.isa discovery];
    if (v7)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v8 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = self;
        _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%@ Requesting discovery reconfirm after disconnect", &v11, 0xCu);
      }

      if (self)
      {
        accessoryInfo = self->_accessoryInfo;
      }

      else
      {
        accessoryInfo = 0;
      }

      [v7 reconfirmAccessory:accessoryInfo];
    }

    [(HAP2AccessoryServerTransportBase *)self didDisconnectWithError:v5];
  }

  else if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = self;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEFAULT, "%@ Disconnected", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)discovery
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 21);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)doUpdateMaxRequestTimeout:(double)a3
{
  v5 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [v5 assertCurrentQueue];

  v6 = 5.0;
  if (a3 >= 5.0)
  {
    v6 = a3;
  }

  v7 = 4;
  if (v6 < 15.0)
  {
    v7 = 3;
  }

  if (v6 >= 30.0)
  {
    v8 = 5;
  }

  else
  {
    v8 = v7;
  }

  v9 = v6 / ~(-1 << v8);
  if (self)
  {
    v10 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
    [v10 assertCurrentQueue];

    self->_maxTransmitAttempts = v8;
    v11 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
    [v11 assertCurrentQueue];

    self->_initialACKTimeout = v9;
  }

  v12 = [(HAP2AccessoryServerTransportCoAP *)&self->super.super.super.super.isa coapClient];

  if (v12)
  {
    v13 = [(HAP2AccessoryServerTransportCoAP *)&self->super.super.super.super.isa coapClient];
    [v13 alterMaxTransmitAttempts:v8 initialACKTimeout:v9];
  }
}

- (id)coapClient
{
  if (a1)
  {
    v2 = a1;
    v3 = [a1 operationQueue];
    [v3 assertCurrentQueue];

    a1 = v2[12];
    v1 = vars8;
  }

  return a1;
}

- (void)doCloseWithError:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [v8 assertCurrentQueue];

  [(HAP2AccessoryServerTransportCoAP *)self setStateChangeCompletion:v6];
  v11 = v7;
  if (self)
  {
    v9 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
    [v9 assertCurrentQueue];

    v10 = [(HAP2AccessoryServerTransportCoAP *)&self->super.super.super.super.isa coapClient];
    [(HAP2AccessoryServerTransportCoAP *)&self->super.super.super.super.isa setCoapClient:?];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__HAP2AccessoryServerTransportCoAP__closeWithError___block_invoke;
    v12[3] = &unk_2786D6A98;
    v12[4] = self;
    v13 = v11;
    [v10 closeWithError:v13 completion:v12];
  }
}

- (void)setStateChangeCompletion:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    v4 = [a1 operationQueue];
    [v4 assertCurrentQueue];

    v5 = MEMORY[0x231885210](v3);
    v6 = a1[9];
    a1[9] = v5;
  }
}

- (void)setCoapClient:(id *)a1
{
  v5 = a2;
  v4 = [a1 operationQueue];
  [v4 assertCurrentQueue];

  objc_storeStrong(a1 + 12, a2);
}

void __52__HAP2AccessoryServerTransportCoAP__closeWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HAP2AccessoryServerTransportCoAP__closeWithError___block_invoke_2;
  v9[3] = &unk_2786D7078;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v6 = v3;
  v7 = MEMORY[0x231885210](v9);
  v8 = [*(a1 + 32) operationQueue];
  [v8 addConcurrentBlock:v7];
}

void __52__HAP2AccessoryServerTransportCoAP__closeWithError___block_invoke_2(void *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v3 = hap2Log_accessory;
  if (v2)
  {
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      v4 = a1[5];
      *buf = 138412546;
      v37 = v4;
      v38 = 2112;
      v39 = v5;
      _os_log_error_impl(&dword_22AADC000, v3, OS_LOG_TYPE_ERROR, "%@ Failed to close: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v6 = a1[5];
    *buf = 138412290;
    v37 = v6;
    _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_INFO, "%@ Closed", buf, 0xCu);
  }

  v33 = [(HAP2AccessoryServerTransportCoAP *)a1[5] stateChangeCompletion];
  [(HAP2AccessoryServerTransportCoAP *)a1[5] setStateChangeCompletion:?];
  v7 = a1[5];
  if (v7)
  {
    v8 = (v7 + 232);
    v9 = v8[1];
    v34 = *v8;
    v35 = v9;
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v10 = [HAP2AccessoryServerTransportCoAP stringFromCoAPAddress:?];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v11 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
  {
    v28 = a1[5];
    if (v28)
    {
      v29 = *(v28 + 144);
    }

    else
    {
      v29 = 0;
    }

    v30 = a1[6];
    *buf = 138413058;
    v37 = v28;
    v38 = 2112;
    v39 = v29;
    v40 = 2112;
    v41 = v30;
    v42 = 2112;
    v43 = v10;
    v31 = v11;
    _os_log_debug_impl(&dword_22AADC000, v31, OS_LOG_TYPE_DEBUG, "%@ '%@' - Close with error %@ and IP: %@", buf, 0x2Au);
  }

  v12 = a1[5];
  if (v12)
  {
    v12 = v12[25];
  }

  v13 = v12;
  v14 = [v13 count];
  v32 = [HAP2AccessorySessionInfo alloc];
  v15 = [(HAP2AccessoryServerTransportCoAP *)a1[5] numOfAddresses];
  v16 = [(HAP2AccessoryServerTransportCoAP *)a1[5] numOfAddressesTried];
  v17 = a1[5];
  if (v17)
  {
    v17 = v17[27];
  }

  v18 = v17;
  v19 = [v18 count];
  v20 = a1[5];
  if (v20)
  {
    v21 = *(v20 + 144);
    v22 = *(v20 + 64);
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v23 = v21;
  v24 = v22 & 1;
  v25 = v10;
  v26 = [(HAP2AccessorySessionInfo *)v32 initWithNumIPs:v15 numIPsTried:v16 numBonjourNames:v19 ipAddress:v10 serviceName:v23 resolveAttempted:v24];
  (v33)[2](v33, v14 != 0, v26, a1[4]);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)stateChangeCompletion
{
  if (a1)
  {
    v2 = a1;
    v3 = [a1 operationQueue];
    [v3 assertCurrentQueue];

    a1 = MEMORY[0x231885210](v2[9]);
    v1 = vars8;
  }

  return a1;
}

+ (id)stringFromCoAPAddress:(uint64_t)a1
{
  v13 = *MEMORY[0x277D85DE8];
  objc_opt_self();
  if (a2)
  {
    coap_print_addr(a2, __s1, 0x36uLL);
    objc_opt_self();
    v3 = [MEMORY[0x277CBEA90] dataWithBytes:__s1 length:{strnlen(__s1, 0x40uLL)}];
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];

    v5 = [v4 rangeOfString:@"["];
    v6 = [v4 rangeOfString:@"]"];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x7FFFFFFFFFFFFFFFLL || v5 >= v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = [v4 substringWithRange:{v5 + 1, v6 + ~v5}];
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)numOfAddresses
{
  if (result)
  {
    v1 = result;
    v2 = [result operationQueue];
    [v2 assertCurrentQueue];

    return v1[16];
  }

  return result;
}

- (void)numOfAddressesTried
{
  if (result)
  {
    v1 = result;
    v2 = [result operationQueue];
    [v2 assertCurrentQueue];

    return v1[17];
  }

  return result;
}

- (void)doSendRequest:(id)a3 completion:(id)a4
{
  v40[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [v8 assertCurrentQueue];

  v9 = [v6 endpoint];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v6 endpoint];

    if (v10)
    {
      [(HAP2AccessoryServerTransportCoAP *)self setSendRequestCompletion:v7];
      v11 = v6;
      v12 = v10;
      if (self)
      {
        v13 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
        [v13 assertCurrentQueue];

        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v14 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
        {
          v15 = v14;
          v16 = [v11 data];
          *buf = 138413058;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = v11;
          *&buf[22] = 2112;
          v36 = v12;
          LOWORD(v37) = 2112;
          *(&v37 + 2) = v16;
          _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_INFO, "%@ Sending %@ to '%@': %@", buf, 0x2Au);
        }

        v17 = [MEMORY[0x277D0F770] currentActivity];
        v18 = v17;
        if (v17)
        {
          v40[0] = v12;
          v39[0] = @"path";
          v39[1] = @"method";
          v34 = v17;
          v19 = @"POST";
          v40[1] = @"POST";
          v39[2] = @"serializationType";
          v20 = [v11 mimeType];
          v40[2] = v20;
          v39[3] = @"reading";
          [v11 isForReading];
          v21 = HMFBooleanToString();
          v40[3] = v21;
          v39[4] = @"writing";
          [v11 isForWriting];
          v22 = HMFBooleanToString();
          v40[4] = v22;
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:5];

          v18 = v34;
        }

        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v24 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
        {
          v32 = v24;
          v33 = [v11 dscpPriority];
          *buf = 138412546;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = v33;
          _os_log_debug_impl(&dword_22AADC000, v32, OS_LOG_TYPE_DEBUG, "%@ Sending request with priority %ld", buf, 0x16u);
        }

        v25 = [(HAP2AccessoryServerTransportCoAP *)&self->super.super.super.super.isa coapClient];
        v26 = [v11 data];
        v27 = [v11 dscpPriority];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __54__HAP2AccessoryServerTransportCoAP__sendRequest_path___block_invoke;
        v36 = &unk_2786D6AC8;
        *&v37 = self;
        *(&v37 + 1) = v11;
        v38 = v12;
        [v25 sendRequestWithMethod:2 path:v38 payload:v26 dscpPriority:v27 completion:buf];
      }

      goto LABEL_22;
    }
  }

  else
  {
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v28 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    v30 = v28;
    v31 = [v6 endpoint];
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v31;
    _os_log_error_impl(&dword_22AADC000, v30, OS_LOG_TYPE_ERROR, "%@ Invalid endpoint: %@", buf, 0x16u);
  }

  v12 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9];
  (*(v7 + 2))(v7, 0, v12);
LABEL_22:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)setSendRequestCompletion:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    v4 = [a1 operationQueue];
    [v4 assertCurrentQueue];

    v5 = MEMORY[0x231885210](v3);
    v6 = a1[10];
    a1[10] = v5;
  }
}

void __54__HAP2AccessoryServerTransportCoAP__sendRequest_path___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v7 = hap2Log_accessory;
  if (v6)
  {
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      v21 = *(a1 + 48);
      *buf = 138413058;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      v29 = 2112;
      v30 = v21;
      v31 = 2112;
      v32 = v6;
      _os_log_error_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%@ Failed to send %@ to '%@': %@", buf, 0x2Au);
    }

    v8 = [v6 domain];
    if (v8 == @"HAPErrorDomain")
    {
      v12 = [v6 code];

      if (v12 == 8)
      {
        v13 = [MEMORY[0x277CCA9B8] hapErrorWithCode:17 description:@"CoAP authentication failure" reason:0 suggestion:0 underlyingError:v6];
LABEL_14:
        v11 = v13;
        goto LABEL_15;
      }
    }

    else
    {
    }

    v13 = [MEMORY[0x277CCA9B8] hapErrorWithCode:8 description:@"CoAP communication failure" reason:0 suggestion:0 underlyingError:v6 marker:2106];
    goto LABEL_14;
  }

  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    *buf = 138412802;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%@ Received response to %@: %@", buf, 0x20u);
  }

  v11 = 0;
LABEL_15:
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __54__HAP2AccessoryServerTransportCoAP__sendRequest_path___block_invoke_97;
  v22[3] = &unk_2786D7078;
  v22[4] = *(a1 + 32);
  v23 = v11;
  v24 = v5;
  v14 = v5;
  v15 = v11;
  v16 = MEMORY[0x231885210](v22);
  v17 = [*(a1 + 32) operationQueue];
  [v17 addConcurrentBlock:v16];

  v18 = *MEMORY[0x277D85DE8];
}

void __54__HAP2AccessoryServerTransportCoAP__sendRequest_path___block_invoke_97(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(a1 + 32) operationQueue];
    [v3 assertCurrentQueue];

    v12 = MEMORY[0x231885210](*(v2 + 80));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    v12 = 0;
  }

  [(HAP2AccessoryServerTransportCoAP *)v4 setSendRequestCompletion:?];
  v5 = *(a1 + 40);
  if (!v5)
  {
    v6 = *(a1 + 32);
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = [*(a1 + 32) operationQueue];
    [v7 assertCurrentQueue];

    *(v6 + 128) = 0;
    v8 = *(a1 + 32);
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = [*(a1 + 32) operationQueue];
    [v9 assertCurrentQueue];

    *(v8 + 136) = 0;
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 200);
    }

    else
    {
LABEL_13:
      v11 = 0;
    }

    [v11 removeAllObjects];
    v5 = *(a1 + 40);
  }

  v12[2](v12, *(a1 + 48), v5);
}

- (void)doOpenWithCompletion:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [v5 assertCurrentQueue];

  [(HAP2AccessoryServerTransportCoAP *)self setStateChangeCompletion:v4];
  v6 = [(HAP2AccessoryServerTransportCoAP *)&self->super.super.super.super.isa coapClient];

  if (v6)
  {
    if (self)
    {
      v7 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
      [v7 assertCurrentQueue];

      v8 = MEMORY[0x277CCACA8];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v8 stringWithFormat:@"%@ Open Client", v10];

      *block = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v11];
      [(HAP2AccessoryServerTransportCoAP *)self _openClientWithActivity:?];
      __HMFActivityScopeLeave();
    }
  }

  else if (self)
  {
    v12 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
    [v12 assertCurrentQueue];

    v13 = MEMORY[0x277CCACA8];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v13 stringWithFormat:@"%@ Resolve", v15];

    v41 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v16];
    if ([(NSMutableArray *)self->_addressList count])
    {
      *block = MEMORY[0x277D85DD0];
      *&block[8] = 3221225472;
      *&block[16] = __58__HAP2AccessoryServerTransportCoAP__initiateNewConnection__block_invoke;
      v44 = &unk_2786D6CA0;
      *v45 = self;
      v17 = MEMORY[0x231885210](block);
      v18 = [(HAP2AccessoryServerTransportBase *)self operationQueue];
      [v18 addConcurrentBlock:v17];
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v19 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        serviceName = self->_serviceName;
        serviceType = self->_serviceType;
        serviceDomain = self->_serviceDomain;
        *block = 138413315;
        *&block[4] = self;
        *&block[12] = 2113;
        *&block[14] = serviceName;
        *&block[22] = 2113;
        v44 = serviceName;
        *v45 = 2112;
        *&v45[2] = serviceType;
        v46 = 2112;
        v47 = serviceDomain;
        v38 = serviceType;
        v39 = serviceName;
        v40 = v19;
        _os_log_error_impl(&dword_22AADC000, v40, OS_LOG_TYPE_ERROR, "%@ Attempting to resolve '%{private}@' '%{private}@.%@.%@'", block, 0x34u);
      }

      self->_numOfAddresses = 0;
      self->_numOfAddressesTried = 0;
      self->_resolveAttempted = 1;
      secure_udp = nw_parameters_create_secure_udp(*MEMORY[0x277CD9238], &__block_literal_global_23293);
      v21 = nw_interface_create_with_name();
      nw_parameters_prohibit_interface(secure_udp, v21);

      v22 = self->_serviceName;
      v23 = [(NSString *)v22 UTF8String];
      v24 = self->_serviceType;
      v25 = [(NSString *)v24 UTF8String];
      v26 = self->_serviceDomain;
      bonjour_service = nw_endpoint_create_bonjour_service(v23, v25, [(NSString *)v26 UTF8String]);
      v28 = nw_connection_create(bonjour_service, secure_udp);
      objc_storeStrong(&self->_nwConnection, v28);

      v29 = self->_nwConnection;
      v30 = [(HAP2AccessoryServerTransportBase *)self delegateQueue];
      nw_connection_set_queue(v29, v30);

      v31 = dispatch_time(0, (self->_addressResolutionTimeout * 1000000000.0));
      v32 = [(HAP2AccessoryServerTransportBase *)self delegateQueue];
      *block = MEMORY[0x277D85DD0];
      *&block[8] = 3221225472;
      *&block[16] = __51__HAP2AccessoryServerTransportCoAP__resolveAddress__block_invoke_2;
      v44 = &unk_2786D6CA0;
      *v45 = self;
      dispatch_after(v31, v32, block);

      nwConnection = self->_nwConnection;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __51__HAP2AccessoryServerTransportCoAP__resolveAddress__block_invoke_44;
      handler[3] = &unk_2786D6A50;
      handler[4] = self;
      nw_connection_set_state_changed_handler(nwConnection, handler);
      nw_connection_start(self->_nwConnection);
    }

    __HMFActivityScopeLeave();
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __58__HAP2AccessoryServerTransportCoAP__initiateNewConnection__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  ++*(*(a1 + 32) + 136);
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v2 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3[18];
    }

    else
    {
      v4 = 0;
    }

    v5 = v3[17];
    v6 = v3[16];
    *v12 = 138413059;
    *&v12[4] = v3;
    *&v12[12] = 2113;
    *&v12[14] = v4;
    *&v12[22] = 2048;
    v13 = v5;
    LOWORD(v14) = 2048;
    *(&v14 + 2) = v6;
    v7 = v2;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%@ '%{private}@' trying address %lu of %lu", v12, 0x2Au);
  }

  v8 = *(a1 + 32);
  v9 = [*(v8 + 200) objectAtIndexedSubscript:{0, *v12, *&v12[16], v13, v14}];
  -[HAP2AccessoryServerTransportCoAP _handleResolve:](v8, [v9 address]);

  result = [*(*(a1 + 32) + 200) removeObjectAtIndex:0];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void __51__HAP2AccessoryServerTransportCoAP__resolveAddress__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v2 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 144);
    }

    else
    {
      v4 = 0;
    }

    v9 = 138412547;
    v10 = v3;
    v11 = 2113;
    v12 = v4;
    v5 = v2;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%@ '%{private}@' Cancelling address resolver", &v9, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 120);
  }

  else
  {
    v7 = 0;
  }

  nw_connection_cancel(v7);
  v8 = *MEMORY[0x277D85DE8];
}

void __51__HAP2AccessoryServerTransportCoAP__resolveAddress__block_invoke_44(uint64_t a1, int a2, void *a3)
{
  v93 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v6 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
  {
    v47 = *(a1 + 32);
    if (v47)
    {
      v48 = *(v47 + 144);
    }

    else
    {
      v48 = 0;
    }

    *buf = 138412803;
    v82 = v47;
    *v83 = 2113;
    *&v83[2] = v48;
    *&v83[10] = 1024;
    *&v83[12] = a2;
    v49 = v6;
    _os_log_debug_impl(&dword_22AADC000, v49, OS_LOG_TYPE_DEBUG, "%@ NWConnection '%{private}@' resolve state=%d", buf, 0x1Cu);
  }

  if (a2 == 5)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v10 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
    {
      v53 = *(a1 + 32);
      if (v53)
      {
        v54 = *(v53 + 144);
      }

      else
      {
        v54 = 0;
      }

      *buf = 138412547;
      v82 = v53;
      *v83 = 2113;
      *&v83[2] = v54;
      v55 = v10;
      _os_log_debug_impl(&dword_22AADC000, v55, OS_LOG_TYPE_DEBUG, "%@ '%{private}@' Stopping address resolver", buf, 0x16u);
    }

    v11 = [*(*(a1 + 32) + 200) count];
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v12 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        v14 = *(v13 + 144);
      }

      else
      {
        v14 = 0;
      }

      *buf = 138413059;
      v82 = v13;
      *v83 = 2113;
      if (v11)
      {
        v15 = @"trying first address";
      }

      else
      {
        v15 = @"aborting";
      }

      *&v83[2] = v14;
      *&v83[10] = 2048;
      *&v83[12] = v11;
      v84 = 2112;
      v85 = v15;
      v16 = v12;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%@ '%{private}@' resolves to %lu address(es), %@", buf, 0x2Au);
    }

    if (v11)
    {
      if (v11 != 1)
      {
        v17 = *(a1 + 32);
        v18 = objc_opt_class();
        v19 = *(a1 + 32);
        if (v19)
        {
          v20 = *(v19 + 200);
        }

        else
        {
          v20 = 0;
        }

        [v18 sortAddressList:v20];
      }

      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __51__HAP2AccessoryServerTransportCoAP__resolveAddress__block_invoke_52;
      v76[3] = &unk_2786D6CA0;
      v76[4] = *(a1 + 32);
      v21 = MEMORY[0x231885210](v76);
      v22 = [*(a1 + 32) operationQueue];
      [v22 addConcurrentBlock:v21];
    }

    else
    {
      v44 = [MEMORY[0x277CCA9B8] hapErrorWithCode:19 description:@"Resolved no addresses" reason:@"HAP2AccessoryServerTransportCoAP discovered 0 addresses during call to _resolveAddress" suggestion:0 underlyingError:0 marker:105];
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __51__HAP2AccessoryServerTransportCoAP__resolveAddress__block_invoke_2_59;
      v74[3] = &unk_2786D7050;
      v74[4] = *(a1 + 32);
      v75 = v44;
      v21 = v44;
      v45 = MEMORY[0x231885210](v74);
      v46 = [*(a1 + 32) operationQueue];
      [v46 addConcurrentBlock:v45];
    }

    goto LABEL_94;
  }

  if (a2 == 3)
  {
    if (v5)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v7 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v60 = *(a1 + 32);
        if (v60)
        {
          v61 = *(v60 + 144);
        }

        else
        {
          v61 = 0;
        }

        *buf = 138412803;
        v82 = v60;
        *v83 = 2113;
        *&v83[2] = v61;
        *&v83[10] = 2112;
        *&v83[12] = v5;
        v62 = v7;
        _os_log_error_impl(&dword_22AADC000, v62, OS_LOG_TYPE_ERROR, "%@ '%{private}@' error in state_ready report (%@) - attempting next IP connection", buf, 0x20u);
      }

      v8 = *(a1 + 32);
      if (v8)
      {
        v9 = *(v8 + 120);
      }

      else
      {
        v9 = 0;
      }

      nw_connection_cancel_current_endpoint(v9);
      goto LABEL_95;
    }

    v29 = *(a1 + 32);
    if (v29)
    {
      v30 = *(v29 + 120);
    }

    else
    {
      v30 = 0;
    }

    v21 = nw_connection_copy_current_path(v30);
    memset(v83, 0, sizeof(v83));
    v82 = 0;
    if (v21)
    {
      v31 = nw_path_copy_endpoint();
      v32 = v31;
      if (v31)
      {
        address = nw_endpoint_get_address(v31);
        if (address)
        {
          v73 = v32;
          *buf = address->sa_len;
          __memcpy_chk();
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v34 = *(*(a1 + 32) + 200);
          v35 = [(HAP2AccessoryDeviceIPAddress *)v34 countByEnumeratingWithState:&v77 objects:v92 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v78;
            while (2)
            {
              for (i = 0; i != v36; ++i)
              {
                if (*v78 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = [*(*(&v77 + 1) + 8 * i) address];
                if (*(v39 + 5) == 30 && *(v39 + 12) == *v83 && *(v39 + 20) == *&v83[8])
                {
                  if (hap2LogInitialize_onceToken != -1)
                  {
                    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
                  }

                  v56 = hap2Log_accessory;
                  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
                  {
                    v57 = *(a1 + 32);
                    if (v57)
                    {
                      v58 = *(v57 + 144);
                    }

                    else
                    {
                      v58 = 0;
                    }

                    *v86 = 138412547;
                    v87 = v57;
                    v88 = 2113;
                    v89 = v58;
                    v59 = v56;
                    _os_log_impl(&dword_22AADC000, v59, OS_LOG_TYPE_DEFAULT, "%@ '%{private}@' Duplicate IP address - skipping", v86, 0x16u);
                  }

                  goto LABEL_90;
                }
              }

              v36 = [(HAP2AccessoryDeviceIPAddress *)v34 countByEnumeratingWithState:&v77 objects:v92 count:16];
              if (v36)
              {
                continue;
              }

              break;
            }
          }

          ++*(*(a1 + 32) + 128);
          if ([*(*(a1 + 32) + 200) count] == *(*(a1 + 32) + 208))
          {
            if (hap2LogInitialize_onceToken != -1)
            {
              dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
            }

            v41 = hap2Log_accessory;
            if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
            {
              v69 = *(a1 + 32);
              if (v69)
              {
                v70 = *(v69 + 144);
              }

              else
              {
                v70 = 0;
              }

              v71 = *(v69 + 208);
              *v86 = 138412803;
              v87 = v69;
              v88 = 2113;
              v89 = v70;
              v90 = 2048;
              v91 = v71;
              v72 = v41;
              _os_log_error_impl(&dword_22AADC000, v72, OS_LOG_TYPE_ERROR, "%@ '%{private}@' resolves to more than %lu addresses; ignoring rest", v86, 0x20u);
            }

            v42 = *(a1 + 32);
            if (v42)
            {
              v43 = *(v42 + 120);
            }

            else
            {
              v43 = 0;
            }

            v32 = v73;
            nw_connection_cancel(v43);
          }

          else
          {
            v34 = [[HAP2AccessoryDeviceIPAddress alloc] initWithAddress:buf];
            [*(*(a1 + 32) + 200) addObject:v34];
LABEL_90:
            v63 = *(a1 + 32);
            if (v63)
            {
              v64 = *(v63 + 120);
            }

            else
            {
              v64 = 0;
            }

            v32 = v73;
            nw_connection_cancel_current_endpoint(v64);
          }

          goto LABEL_93;
        }
      }
    }

    else
    {
      v32 = 0;
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v50 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v66 = *(a1 + 32);
      if (v66)
      {
        v67 = *(v66 + 144);
      }

      else
      {
        v67 = 0;
      }

      *v86 = 138412547;
      v87 = v66;
      v88 = 2113;
      v89 = v67;
      v68 = v50;
      _os_log_error_impl(&dword_22AADC000, v68, OS_LOG_TYPE_ERROR, "%@ '%{private}@' reported a network path that cannot be resolved to an IP address - skipping", v86, 0x16u);
    }

    v51 = *(a1 + 32);
    if (v51)
    {
      v52 = *(v51 + 120);
    }

    else
    {
      v52 = 0;
    }

    nw_connection_cancel_current_endpoint(v52);
LABEL_93:

LABEL_94:
    goto LABEL_95;
  }

  if (a2 == 4 || v5)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v23 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 32);
      if (v24)
      {
        v25 = *(v24 + 144);
      }

      else
      {
        v25 = 0;
      }

      *buf = 138413059;
      v82 = v24;
      *v83 = 2113;
      *&v83[2] = v25;
      *&v83[10] = 2112;
      *&v83[12] = v5;
      v84 = 1024;
      LODWORD(v85) = a2;
      v26 = v23;
      _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_DEFAULT, "%@ '%{private}@' Address resolution completed - error (%@) in state %d", buf, 0x26u);
    }

    v27 = *(a1 + 32);
    if (v27)
    {
      v28 = *(v27 + 120);
    }

    else
    {
      v28 = 0;
    }

    nw_connection_cancel(v28);
  }

LABEL_95:

  v65 = *MEMORY[0x277D85DE8];
}

uint64_t __51__HAP2AccessoryServerTransportCoAP__resolveAddress__block_invoke_52(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(v2 + 200) objectAtIndexedSubscript:0];
  -[HAP2AccessoryServerTransportCoAP _handleResolve:](v2, [v3 address]);

  result = [*(*(a1 + 32) + 200) removeObjectAtIndex:0];
  ++*(*(a1 + 32) + 136);
  return result;
}

void __51__HAP2AccessoryServerTransportCoAP__resolveAddress__block_invoke_2_59(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v3 = [v1 operationQueue];
    [v3 assertCurrentQueue];

    v4 = [(HAP2AccessoryServerTransportCoAP *)v1 stateChangeCompletion];

    if (v4)
    {
      v5 = [(HAP2AccessoryServerTransportCoAP *)v1 stateChangeCompletion];
      [(HAP2AccessoryServerTransportCoAP *)v1 setStateChangeCompletion:?];
      v6 = *(v1 + 248);
      v24[0] = *(v1 + 232);
      v24[1] = v6;
      v7 = [HAP2AccessoryServerTransportCoAP stringFromCoAPAddress:v24];
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v8 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
      {
        v9 = *(v1 + 144);
        *buf = 138413058;
        v26 = v1;
        v27 = 2112;
        v28 = v9;
        v29 = 2112;
        v30 = v2;
        v31 = 2112;
        v32 = v7;
        v10 = v8;
        _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%@ '%@' - resolver failure with error %@ and IP: %@", buf, 0x2Au);
      }

      v11 = [HAP2AccessorySessionInfo alloc];
      v12 = [(HAP2AccessoryServerTransportCoAP *)v1 numOfAddresses];
      v13 = [(HAP2AccessoryServerTransportCoAP *)v1 numOfAddressesTried];
      v14 = *(v1 + 216);
      v15 = [v14 count];
      v16 = *(v1 + 144);
      v17 = *(v1 + 64);
      v18 = v16;
      v19 = [(HAP2AccessorySessionInfo *)v11 initWithNumIPs:v12 numIPsTried:v13 numBonjourNames:v15 ipAddress:v7 serviceName:v18 resolveAttempted:v17];
      (v5)[2](v5, 0, v19, v2);
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v20 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v22 = *(v1 + 144);
        *buf = 138412547;
        v26 = v1;
        v27 = 2113;
        v28 = v22;
        v23 = v20;
        _os_log_error_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%@ '%{private}@' - resolver failure has already been handled", buf, 0x16u);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_handleResolve:(uint64_t)a1
{
  v39 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = [a1 operationQueue];
    [v4 assertCurrentQueue];

    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"%@ Open Client after Resolve", v7];

    v29 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v8];
    if (coap_print_addr(a2, __dst, 0x36uLL))
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 144);
        v11 = [(HAP2AccessoryServerTransportCoAP *)a1 numOfAddresses];
        v12 = [(HAP2AccessoryServerTransportCoAP *)a1 numOfAddressesTried];
        v13 = *(a1 + 200);
        *buf = 138413571;
        *v31 = a1;
        *&v31[8] = 2113;
        *&v31[10] = v10;
        *&v31[18] = 2081;
        *&v31[20] = __dst;
        v32 = 2048;
        v33 = v11;
        v34 = 2048;
        v35 = v12;
        v36 = 2048;
        v37 = [v13 count];
        _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%@ Resolved '%{private}@' to %{private}s (discovered %lu, tried %lu with %lu names)", buf, 0x3Eu);
      }
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v14 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1 + 144);
        *buf = 138412547;
        *v31 = a1;
        *&v31[8] = 2113;
        *&v31[10] = v27;
        v28 = v14;
        _os_log_error_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, "%@ Resolved '%{private}@' but can't print the address...", buf, 0x16u);
      }
    }

    *(a1 + 232) = 0u;
    *(a1 + 248) = 0u;
    v15 = *a2;
    *(a1 + 232) = v15;
    v16 = *(a2 + 5);
    if (v16 == 2)
    {
      *(a1 + 236) = *(a2 + 1);
    }

    else if (v16 == 30)
    {
      *(a1 + 237) = 30;
      *(a1 + 244) = *(a2 + 3);
      *(a1 + 238) = *(a2 + 3);
      *(a1 + 260) = a2[7];
    }

    else
    {
      memcpy((a1 + 236), a2 + 1, v15);
    }

    memset(v31, 0, sizeof(v31));
    v17 = *(a1 + 232);
    *buf = *(a1 + 232);
    v18 = *(a1 + 237);
    if (v18 == 2)
    {
      *v31 = *(a1 + 236);
    }

    else if (v18 == 30)
    {
      v31[1] = 30;
      *&v31[8] = *(a1 + 244);
      *&v31[2] = *(a1 + 238);
      *&v31[24] = *(a1 + 260);
    }

    else
    {
      memcpy(v31, (a1 + 236), v17);
    }

    v19 = *(a1 + 192);
    if (v19)
    {
      v20 = [v19 createWithSocketAddress:v31];
    }

    else
    {
      v21 = [HAP2CoAPClient alloc];
      v22 = *(a1 + 144);
      v23 = [a1 operationQueue];
      [v23 assertCurrentQueue];

      v24 = *(a1 + 104);
      v25 = [a1 operationQueue];
      [v25 assertCurrentQueue];

      v20 = [(HAP2CoAPClient *)v21 initWithSocketAddress:v31 withAccessoryName:v22 maxTransmitAttempts:v24 initialACKTimeout:*(a1 + 112)];
    }

    [(HAP2CoAPClient *)v20 setDelegate:a1];
    [(HAP2AccessoryServerTransportCoAP *)a1 setCoapClient:v20];

    [(HAP2AccessoryServerTransportCoAP *)a1 _openClientWithActivity:v29];
    __HMFActivityScopeLeave();
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_openClientWithActivity:(void *)a1
{
  v3 = a2;
  v4 = [a1 operationQueue];
  [v4 assertCurrentQueue];

  v5 = [(HAP2AccessoryServerTransportCoAP *)a1 coapClient];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HAP2AccessoryServerTransportCoAP__openClientWithActivity___block_invoke;
  v7[3] = &unk_2786D6A98;
  v7[4] = a1;
  v6 = v3;
  v8 = v6;
  [v5 openWithCompletion:v7];
}

void __60__HAP2AccessoryServerTransportCoAP__openClientWithActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __60__HAP2AccessoryServerTransportCoAP__openClientWithActivity___block_invoke_2;
  v10 = &unk_2786D7050;
  v11 = *(a1 + 32);
  v12 = v3;
  v4 = v3;
  v5 = MEMORY[0x231885210](&v7);
  v6 = [*(a1 + 32) operationQueue];
  [v6 addConcurrentBlock:v5];

  [*(a1 + 40) invalidate];
}

void __60__HAP2AccessoryServerTransportCoAP__openClientWithActivity___block_invoke_2(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v41 = [(HAP2AccessoryServerTransportCoAP *)*(a1 + 32) stateChangeCompletion];
  [(HAP2AccessoryServerTransportCoAP *)*(a1 + 32) setStateChangeCompletion:?];
  v2 = *(a1 + 40);
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v3 = hap2Log_accessory;
  if (v2)
  {
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v38 = *(a1 + 32);
      v39 = *(a1 + 40);
      *buf = 138412546;
      v45 = v38;
      v46 = 2112;
      v47 = v39;
      _os_log_error_impl(&dword_22AADC000, v3, OS_LOG_TYPE_ERROR, "%@ Failed to open: %@", buf, 0x16u);
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 200);
    }

    else
    {
      v5 = 0;
    }

    if (![v5 count])
    {
      v6 = [(HAP2AccessoryServerTransportCoAP *)*(a1 + 32) discovery];
      if (v6)
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v7 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
        {
          v8 = *(a1 + 32);
          *buf = 138412290;
          v45 = v8;
          _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%@ Requesting discovery reconfirm after failing to open", buf, 0xCu);
        }

        v9 = *(a1 + 32);
        if (v9)
        {
          v10 = *(v9 + 176);
        }

        else
        {
          v10 = 0;
        }

        [v6 reconfirmAccessory:v10];
      }
    }
  }

  else if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    *buf = 138412290;
    v45 = v11;
    _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_INFO, "%@ Opened", buf, 0xCu);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = (v12 + 232);
    v14 = v13[1];
    v42 = *v13;
    v43 = v14;
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v15 = [HAP2AccessoryServerTransportCoAP stringFromCoAPAddress:?];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v16 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v17 = *(a1 + 32);
    if (v17)
    {
      v18 = *(v17 + 144);
    }

    else
    {
      v18 = 0;
    }

    v19 = *(a1 + 40);
    *buf = 138413059;
    v45 = v17;
    v46 = 2113;
    v47 = v18;
    v48 = 2112;
    v49 = v19;
    v50 = 2112;
    v51 = v15;
    v20 = v16;
    _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%@ '%{private}@' - Opening finished with error %@ and IP: %@", buf, 0x2Au);
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    v21 = v21[25];
  }

  v22 = v21;
  v23 = [v22 count];
  v40 = [HAP2AccessorySessionInfo alloc];
  v24 = [(HAP2AccessoryServerTransportCoAP *)*(a1 + 32) numOfAddresses];
  v25 = [(HAP2AccessoryServerTransportCoAP *)*(a1 + 32) numOfAddressesTried];
  v26 = *(a1 + 32);
  if (v26)
  {
    v26 = v26[27];
  }

  v27 = v15;
  v28 = v26;
  v29 = [v28 count];
  v30 = *(a1 + 32);
  if (v30)
  {
    v31 = *(v30 + 144);
    v32 = *(v30 + 64);
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v33 = v31;
  v34 = v32 & 1;
  v35 = v27;
  v36 = [(HAP2AccessorySessionInfo *)v40 initWithNumIPs:v24 numIPsTried:v25 numBonjourNames:v29 ipAddress:v27 serviceName:v33 resolveAttempted:v34];
  (v41)[2](v41, v23 != 0, v36, *(a1 + 40));

  v37 = *MEMORY[0x277D85DE8];
}

- (BOOL)mergeWithNewTransport:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    while (1)
    {
      objc_opt_class();
      v7 = objc_opt_isKindOfClass() & 1;
      v8 = v7 ? v6 : 0;
      v9 = v8;
      if (v7)
      {
        break;
      }

      v10 = [v6 underlyingTransport];

      v6 = v10;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    v13 = v6[18];
    v14 = v6[19];
    v15 = v6[20];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __58__HAP2AccessoryServerTransportCoAP_mergeWithNewTransport___block_invoke;
    v26 = &unk_2786D6A08;
    v27 = self;
    v28 = v13;
    v29 = v14;
    v30 = v15;
    v16 = v15;
    v17 = v14;
    v18 = v13;
    v19 = MEMORY[0x231885210](&v23);
    v20 = [(HAP2AccessoryServerTransportBase *)self operationQueue:v23];
    [v20 addBlock:v19];

    v12 = 1;
  }

  else
  {
LABEL_8:
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v11 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v32 = self;
      v33 = 2112;
      v34 = v5;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%@ Cannot merge with non-CoAP transport, replacing with %@", buf, 0x16u);
    }

    v12 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

void __58__HAP2AccessoryServerTransportCoAP_mergeWithNewTransport___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[18];
  }

  v3 = v2;
  if ([v3 isEqualToString:*(a1 + 40)])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v4 = v4[19];
    }

    v5 = v4;
    if ([v5 isEqualToString:*(a1 + 48)])
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = *(v6 + 160);
      }

      else
      {
        v7 = 0;
      }

      v8 = [v7 isEqualToString:*(a1 + 56)];

      if (v8)
      {
        goto LABEL_30;
      }

      goto LABEL_13;
    }
  }

LABEL_13:
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v9 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    *buf = 138413058;
    v28 = v10;
    v29 = 2112;
    v30 = v11;
    v31 = 2112;
    v32 = v12;
    v33 = 2112;
    v34 = v13;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%@ Using new connection details: name = '%@' type = '%@' domain = '%@'", buf, 0x2Au);
  }

  objc_storeStrong((*(a1 + 32) + 144), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 152), *(a1 + 48));
  objc_storeStrong((*(a1 + 32) + 160), *(a1 + 56));
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@", *(a1 + 40), *(a1 + 48), *(a1 + 56)];
  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = *(v15 + 216);
  }

  else
  {
    v16 = 0;
  }

  [v16 removeObject:v14];
  v17 = *(a1 + 32);
  if (v17)
  {
    v18 = *(v17 + 216);
  }

  else
  {
    v18 = 0;
  }

  [v18 insertObject:v14 atIndex:0];
  v19 = *(a1 + 32);
  if (v19)
  {
    v19 = v19[27];
  }

  v20 = v19;
  v21 = [v20 count];
  v22 = *(a1 + 32);
  if (v22)
  {
    v23 = *(v22 + 224);
  }

  else
  {
    v23 = 0;
  }

  if (v21 > v23)
  {
    v24 = *(a1 + 32);
    if (v24)
    {
      v25 = *(v24 + 216);
    }

    else
    {
      v25 = 0;
    }

    [v25 removeLastObject];
  }

LABEL_30:
  v26 = *MEMORY[0x277D85DE8];
}

- (id)mimeTypeForWellKnownEndpoint:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return @"application/octet-stream";
  }

  else
  {
    return off_2786D6B18[a3 - 1];
  }
}

- (id)wellKnownEndpoint:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return &stru_283E79C60;
  }

  else
  {
    return off_2786D6AE8[a3 - 1];
  }
}

- (unint64_t)protocolFeaturesForVersion:(id)a3
{
  v3 = a3;
  if ([v3 majorVersion] == 1)
  {
    v4 = [v3 minorVersion];
    v5 = 47;
    if (!v4)
    {
      v5 = 15;
    }

    if (v4 == 1)
    {
      v6 = 25;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)initWithServiceName:(void *)a3 type:(void *)a4 domain:(void *)a5 operationQueue:(void *)a6 discovery:(void *)a7 accessoryInfo:
{
  if (!a1)
  {
    return 0;
  }

  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = a2;
  v19 = HAPDispatchQueueName(a1, @"delegateQueue");
  v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v21 = dispatch_get_global_queue(17, 0);
  v22 = dispatch_queue_create_with_target_V2(v19, v20, v21);

  v23 = [a1 initWithOperationQueue:v15 delegateQueue:v22 serviceName:v18 serviceType:v17 serviceDomain:v16 addressResolutionTimeout:v14 discovery:3.0 accessoryInfo:v13 coapClient:0 coapClientFactory:0];
  v24 = v23;

  return v24;
}

- (HAP2AccessoryServerTransportCoAP)initWithAccessoryInfo:(id)a3 discovery:(id)a4 operationQueue:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 rawDiscoveryInfo];
  v12 = [v11 objectForKeyedSubscript:@"bonjourServiceName"];
  v13 = [v11 objectForKeyedSubscript:@"bonjourServiceType"];
  v14 = [v11 objectForKeyedSubscript:@"bonjourServiceDomain"];
  v15 = [(HAP2AccessoryServerTransportCoAP *)self initWithServiceName:v12 type:v13 domain:v14 operationQueue:v8 discovery:v9 accessoryInfo:v10];

  return v15;
}

- (HAP2AccessoryServerTransportCoAP)initWithOperationQueue:(id)a3 delegateQueue:(id)a4 serviceName:(id)a5 serviceType:(id)a6 serviceDomain:(id)a7 addressResolutionTimeout:(double)a8 discovery:(id)a9 accessoryInfo:(id)a10 coapClient:(id)a11 coapClientFactory:(id)a12
{
  v64 = *MEMORY[0x277D85DE8];
  v18 = a5;
  v19 = a6;
  obj = a7;
  v20 = a7;
  v21 = a9;
  v58 = a10;
  v22 = a11;
  v23 = v18;
  v24 = a12;
  v59.receiver = self;
  v59.super_class = HAP2AccessoryServerTransportCoAP;
  v25 = v20;
  v26 = [(HAP2AccessoryServerTransportBase *)&v59 initWithOperationQueue:a3 delegateQueue:a4];
  v27 = v26;
  if (v26)
  {
    v57 = v24;
    objc_storeStrong(&v26->_serviceName, a5);
    objc_storeStrong(&v27->_serviceType, a6);
    objc_storeStrong(&v27->_serviceDomain, obj);
    v27->_addressResolutionTimeout = a8;
    v28 = v21;
    objc_storeWeak(&v27->_discovery, v21);
    objc_storeStrong(&v27->_accessoryInfo, a10);
    v27->_maxTransmitAttempts = 0;
    v27->_initialACKTimeout = 0.0;
    v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    addressList = v27->_addressList;
    v27->_addressList = v29;

    v27->_numOfAddresses = 0;
    v27->_numOfAddressesTried = 0;
    v27->_resolveAttempted = 0;
    v31 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    bonjourNames = v27->_bonjourNames;
    v27->_bonjourNames = v31;

    v33 = v27->_bonjourNames;
    v53 = v25;
    v55 = v19;
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@", v23, v19, v25];
    [(NSMutableArray *)v33 insertObject:v34 atIndex:0];

    *&v27->_ipAddress.addr.sa.sa_len = 0;
    *&v27->_ipAddress.addr.sin6.sin6_addr.__u6_addr32[2] = 0;
    *v27->_ipAddress.addr.sin6.sin6_addr.__u6_addr8 = 0;
    v27->_ipAddress.addr.sin6.sin6_scope_id = 0;
    v27->_ipAddress.size = 28;
    v35 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v36 = [v35 preferenceForKey:@"AccessoryMaximumIPAddressesTracked"];
    v37 = [v36 numberValue];

    if ([v37 intValue] >= 1 && objc_msgSend(v37, "intValue") < 0x15)
    {
      v39 = [v37 unsignedIntValue];
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v38 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v61 = v27;
        v62 = 2048;
        v39 = 10;
        v63 = 10;
        _os_log_error_impl(&dword_22AADC000, v38, OS_LOG_TYPE_ERROR, "%@ Preference 'AccessoryMaximumIPAddressesTracked' setting beyond bounds - using default %lu", buf, 0x16u);
      }

      else
      {
        v39 = 10;
      }
    }

    v27->_maxAddressesAllowed = v39;
    v40 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v41 = [v40 preferenceForKey:@"AccessoryMaximumBonjourNamesTracked"];
    v42 = [v41 numberValue];

    if ([v42 intValue] >= 1 && objc_msgSend(v42, "intValue") < 0xB)
    {
      v44 = [v42 unsignedIntValue];
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v43 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v61 = v27;
        v62 = 2048;
        v44 = 5;
        v63 = 5;
        _os_log_error_impl(&dword_22AADC000, v43, OS_LOG_TYPE_ERROR, "%@ Preference 'AccessoryMaximumBonjourNamesTracked' setting beyond bounds - using default %lu", buf, 0x16u);
      }

      else
      {
        v44 = 5;
      }
    }

    v27->_maxBonjourNamesAllowed = v44;
    if (v22)
    {
      [v22 setDelegate:v27];
      v45 = &OBJC_IVAR___HAP2AccessoryServerTransportCoAP__coapClient;
      v46 = v22;
    }

    else
    {
      v45 = &OBJC_IVAR___HAP2AccessoryServerTransportCoAP__coapClientFactory;
      v46 = v57;
    }

    v25 = v53;
    v19 = v55;
    v47 = *v45;
    v48 = v46;
    v49 = *(&v27->super.super.super.super.isa + v47);
    *(&v27->super.super.super.super.isa + v47) = v48;

    v24 = v57;
    v21 = v28;
  }

  v50 = *MEMORY[0x277D85DE8];
  return v27;
}

- (HAP2AccessoryServerTransportCoAP)initWithOperationQueue:(id)a3 delegateQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"%@ is unavailable", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

uint64_t __52__HAP2AccessoryServerTransportCoAP_sortAddressList___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 address];
  v6 = [v4 address];

  v7 = *(v6 + 5);
  if (*(v5 + 5) == 30)
  {
    if (v7 != 30)
    {
      return -1;
    }

    v8 = bswap64(*(v5 + 12));
    v9 = bswap64(*(v6 + 12));
    if (v8 == v9 && (v8 = bswap64(*(v5 + 20)), v9 = bswap64(*(v6 + 20)), v8 == v9))
    {
      v10 = 0;
    }

    else if (v8 < v9)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    if (v7 == 30)
    {
      return 1;
    }

    v12 = bswap32(*(v5 + 8));
    v13 = bswap32(*(v6 + 8));
    v14 = v12 >= v13;
    v15 = v12 > v13;
    v16 = !v14;
    v10 = v15 - v16;
  }

  v17 = v10 < 0;
  v18 = v10 != 0;
  if (v17)
  {
    return -1;
  }

  else
  {
    return v18;
  }
}

@end