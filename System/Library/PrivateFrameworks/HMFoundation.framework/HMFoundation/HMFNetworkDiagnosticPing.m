@interface HMFNetworkDiagnosticPing
- (HMFNetworkDiagnosticPing)initWithDevice:(id)a3 delegate:(id)a4 queue:(id)a5;
- (id)_configure;
- (id)_sendData:(id)a3;
- (id)_sendData:(id)a3 address:(id)a4;
- (id)_sendPing:(id)a3;
- (id)addressIPV4;
- (id)addressIPV6;
- (id)delayFuture:(double)a3;
- (id)dumpReport;
- (id)runWithDelay:(double)a3;
- (id)workContext;
- (void)_readDataFromSocket:(__CFSocket *)a3;
- (void)stopWithError:(id)a3;
@end

@implementation HMFNetworkDiagnosticPing

- (HMFNetworkDiagnosticPing)initWithDevice:(id)a3 delegate:(id)a4 queue:(id)a5
{
  v7.receiver = self;
  v7.super_class = HMFNetworkDiagnosticPing;
  v5 = [(HMFNetworkDiagnostic *)&v7 initWithDevice:a3 delegate:a4 queue:a5];
  if (v5)
  {
    v5->_identifier = arc4random();
    v5->_runDuration = -1.0;
    v5->_sockHandle_ipv4 = -1;
    v5->_sockHandle_ipv6 = -1;
  }

  return v5;
}

- (id)workContext
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HMFNetworkDiagnosticPing_workContext__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  if (_MergedGlobals_1_3 != -1)
  {
    dispatch_once(&_MergedGlobals_1_3, block);
  }

  return qword_280AFC530;
}

void __39__HMFNetworkDiagnosticPing_workContext__block_invoke(uint64_t a1)
{
  v2 = [HMFDispatchContext alloc];
  v5 = [*(a1 + 32) workQueue];
  v3 = [(HMFDispatchContext *)v2 initWithQueue:v5];
  v4 = qword_280AFC530;
  qword_280AFC530 = v3;
}

- (id)addressIPV6
{
  v2 = [(HMFNetworkDiagnostic *)self device];
  v3 = [v2 addresses];
  v4 = [v3 na_firstObjectPassingTest:&__block_literal_global_34];

  return v4;
}

- (id)addressIPV4
{
  v2 = [(HMFNetworkDiagnostic *)self device];
  v3 = [v2 addresses];
  v4 = [v3 na_firstObjectPassingTest:&__block_literal_global_3_1];

  return v4;
}

- (id)delayFuture:(double)a3
{
  if (a3 <= 0.0)
  {
    v6 = +[HMFFuture futureWithNoValue];
  }

  else
  {
    delayPromise = self->_delayPromise;
    self->_delayPromise = 0;

    v6 = [HMFFuture futureWithPromise:&self->_delayPromise];
    v7 = dispatch_time(0, (a3 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__HMFNetworkDiagnosticPing_delayFuture___block_invoke;
    block[3] = &unk_2786E6C80;
    block[4] = self;
    dispatch_after(v7, MEMORY[0x277D85CD0], block);
  }

  return v6;
}

void __40__HMFNetworkDiagnosticPing_delayFuture___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delayPromise];
  [v1 fulfillWithNoValue];
}

- (id)runWithDelay:(double)a3
{
  v5 = [(HMFNetworkDiagnosticPing *)self workContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__HMFNetworkDiagnosticPing_runWithDelay___block_invoke;
  v8[3] = &unk_2786E7838;
  v8[4] = self;
  *&v8[5] = a3;
  v6 = [HMFFuture inContext:v5 perform:v8];

  return v6;
}

uint64_t __41__HMFNetworkDiagnosticPing_runWithDelay___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isStarted])
  {
    return 1;
  }

  [*(a1 + 32) setStarted:1];
  v3 = [*(a1 + 32) pingDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) pingDelegate];
    v6 = *(a1 + 32);
    v7 = [v6 device];
    [v5 diagnostic:v6 didStartWithDevice:v7];
  }

  v8 = *(a1 + 32);
  v9 = [v8 device];
  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v8, "identifier")}];
  v12 = +[HMFSystemInfo systemInfo];
  v13 = [v12 name];
  v29 = [v10 stringWithFormat:@"ID: %@ -> Source: %@", v11, v13];

  v14 = MEMORY[0x277CCACA8];
  v15 = [v9 addresses];
  v16 = [v15 firstObject];
  v17 = [v16 addressString];
  v18 = [v9 serviceInfo];
  v19 = [v18 deviceID];
  v20 = [v9 host];
  v21 = [v14 stringWithFormat:@"Target: %@/%@/%@", v17, v19, v20];

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ -> %@", v29, v21];
  v23 = [v22 dataUsingEncoding:4];

  v24 = [*(a1 + 32) delayFuture:*(a1 + 40)];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __41__HMFNetworkDiagnosticPing_runWithDelay___block_invoke_2;
  v30[3] = &unk_2786E77E8;
  v30[4] = *(a1 + 32);
  v25 = v23;
  v31 = v25;
  v26 = [v24 then:v30];
  if (!v26)
  {
    _HMFPreconditionFailure(@"future");
  }

  v27 = v26;
  v2 = 3;

  return v2;
}

uint64_t __41__HMFNetworkDiagnosticPing_runWithDelay___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _sendPing:*(a1 + 40)];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__HMFNetworkDiagnosticPing_runWithDelay___block_invoke_3;
  v10[3] = &unk_2786E7C50;
  v10[4] = *(a1 + 32);
  v5 = [v4 recover:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__HMFNetworkDiagnosticPing_runWithDelay___block_invoke_4;
  v9[3] = &unk_2786E7630;
  v9[4] = *(a1 + 32);
  v6 = [v5 finally:v9];
  if (!v6)
  {
    _HMFPreconditionFailure(@"future");
  }

  v7 = v6;

  return 3;
}

uint64_t __41__HMFNetworkDiagnosticPing_runWithDelay___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) stopWithError:v3];
  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  return 2;
}

- (id)_sendPing:(id)a3
{
  v4 = a3;
  v5 = [(HMFNetworkDiagnosticPing *)self _configure];
  v9[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__HMFNetworkDiagnosticPing__sendPing___block_invoke;
  v10[3] = &unk_2786E77E8;
  v10[4] = self;
  v11 = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__HMFNetworkDiagnosticPing__sendPing___block_invoke_2;
  v9[3] = &unk_2786E7C50;
  v6 = v4;
  v7 = [v5 then:v10 orRecover:v9];

  return v7;
}

uint64_t __38__HMFNetworkDiagnosticPing__sendPing___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _sendData:*(a1 + 40)];
  if (!v4)
  {
    _HMFPreconditionFailure(@"future");
  }

  v5 = v4;

  return 3;
}

uint64_t __38__HMFNetworkDiagnosticPing__sendPing___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier(v5);
    v13 = 138543618;
    v14 = v7;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to configure with error: %{public}@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = v3;
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v11 = *MEMORY[0x277D85DE8];
  return 2;
}

- (void)stopWithError:(id)a3
{
  v10 = a3;
  if ([(HMFNetworkDiagnosticPing *)self sockHandle_ipv4]!= -1)
  {
    close([(HMFNetworkDiagnosticPing *)self sockHandle_ipv4]);
    [(HMFNetworkDiagnosticPing *)self setSockHandle_ipv4:0xFFFFFFFFLL];
  }

  if ([(HMFNetworkDiagnosticPing *)self sockHandle_ipv6]!= -1)
  {
    close([(HMFNetworkDiagnosticPing *)self sockHandle_ipv6]);
    [(HMFNetworkDiagnosticPing *)self setSockHandle_ipv6:0xFFFFFFFFLL];
  }

  if ([(HMFNetworkDiagnosticPing *)self socket_ipv4])
  {
    CFSocketInvalidate([(HMFNetworkDiagnosticPing *)self socket_ipv4]);
    [(HMFNetworkDiagnosticPing *)self setSocket_ipv4:0];
  }

  if ([(HMFNetworkDiagnosticPing *)self socket_ipv6])
  {
    CFSocketInvalidate([(HMFNetworkDiagnosticPing *)self socket_ipv6]);
    [(HMFNetworkDiagnosticPing *)self setSocket_ipv6:0];
  }

  v4 = [(HMFNetworkDiagnostic *)self device];
  [v4 invalidate];

  if ([(HMFNetworkDiagnostic *)self isStarted])
  {
    v5 = [(HMFNetworkDiagnosticPing *)self pingDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      if (v10)
      {
        v7 = v10;
      }

      else
      {
        v8 = [(HMFNetworkDiagnosticPing *)self readPromise];
        if (v8)
        {
          v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:14];
        }

        else
        {
          v7 = 0;
        }
      }

      v9 = [(HMFNetworkDiagnosticPing *)self pingDelegate];
      [v9 diagnostic:self didCompleteWithError:v7];
    }
  }

  [(HMFNetworkDiagnostic *)self setStarted:0];
}

- (id)dumpReport
{
  v3 = [(HMFNetworkDiagnostic *)self device];
  v4 = [v3 addresses];
  v5 = [v4 na_map:&__block_literal_global_17_0];

  v6 = [(HMFNetworkDiagnostic *)self device];
  v7 = [v6 serviceInfo];

  v8 = MEMORY[0x277CCACA8];
  v9 = [v7 serviceType];
  v10 = [v8 stringWithFormat:@"%@\t\t", v9];

  if (([v7 isHAP] & 1) == 0 && (objc_msgSend(v7, "isAirPlay") & 1) == 0)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [v7 serviceType];
    v13 = [v11 stringWithFormat:@"%@\t", v12];

    v10 = v13;
  }

  v14 = HMFIsCustomerBuild();
  v61 = MEMORY[0x277CCACA8];
  v15 = [v7 deviceID];
  v16 = v15;
  v17 = @"??:??:??:??:??:??";
  if (v15)
  {
    v17 = v15;
  }

  v60 = v17;
  v18 = [v7 category];
  v64 = v18;
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = @"-";
  }

  v59 = v19;
  v20 = [v7 stateNumber];
  v63 = v20;
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = @"-";
  }

  v58 = v21;
  v22 = [v7 configNumber];
  v62 = v22;
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = @"-";
  }

  v57 = v23;
  v24 = [v7 statusFlag];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = @"-";
  }

  v56 = v26;
  [(HMFNetworkDiagnosticPing *)self runDuration];
  v28 = v27;
  if (v14)
  {
    if (v27 < 0.0)
    {
      v65 = @"-";
    }

    else
    {
      v29 = MEMORY[0x277CCACA8];
      [(HMFNetworkDiagnosticPing *)self runDuration];
      v65 = [v29 stringWithFormat:@"%.3fs", v30];
    }

    v33 = [v5 count];
    if (v33)
    {
      v34 = [v5 componentsJoinedByString:{@", "}];
    }

    else
    {
      v34 = @"(N/A)";
    }

    v48 = MEMORY[0x277CCABB0];
    v49 = [(HMFNetworkDiagnostic *)self device];
    v50 = [v48 numberWithUnsignedShort:{objc_msgSend(v49, "port")}];
    v46 = [v61 stringWithFormat:@"%@%@\t%@\t\t%@\t%@\t%@\t%@\t\t (%@) / (%@) / %@ / %@\n", v10, v60, v59, v58, v57, v56, v65, @"<private>", @"<private>", v34, v50];

    if (v33)
    {
    }

    if (v28 < 0.0)
    {
      goto LABEL_39;
    }

LABEL_38:

    goto LABEL_39;
  }

  v54 = v10;
  if (v27 < 0.0)
  {
    v65 = @"-";
  }

  else
  {
    v31 = MEMORY[0x277CCACA8];
    [(HMFNetworkDiagnosticPing *)self runDuration];
    v65 = [v31 stringWithFormat:@"%.3fs", v32];
  }

  v35 = [v7 model];
  v36 = v35;
  v37 = @"(N/A)";
  if (v35)
  {
    v38 = v35;
  }

  else
  {
    v38 = @"(N/A)";
  }

  v52 = v38;
  v39 = [v7 serviceName];
  v40 = v39;
  if (v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = @"(N/A)";
  }

  v42 = [v5 count];
  v55 = v5;
  v53 = v16;
  if (v42)
  {
    v37 = [v5 componentsJoinedByString:{@", "}];
  }

  v43 = MEMORY[0x277CCABB0];
  v44 = [(HMFNetworkDiagnostic *)self device];
  v45 = [v43 numberWithUnsignedShort:{objc_msgSend(v44, "port")}];
  v51 = v41;
  v10 = v54;
  v46 = [v61 stringWithFormat:@"%@%@\t%@\t\t%@\t%@\t%@\t%@\t\t (%@) / (%@) / %@ / %@\n", v54, v60, v59, v58, v57, v56, v65, v52, v51, v37, v45];

  if (v42)
  {
  }

  v5 = v55;
  v16 = v53;
  if (v28 >= 0.0)
  {
    goto LABEL_38;
  }

LABEL_39:

  return v46;
}

- (id)_configure
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HMFNetworkDiagnosticPing *)self addressIPV4];
  if (v3)
  {
  }

  else
  {
    v4 = [(HMFNetworkDiagnosticPing *)self addressIPV6];

    if (!v4)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier(v10);
        v13 = [(HMFNetworkDiagnostic *)v10 device];
        v14 = [v13 shortDescription];
        LODWORD(v20.version) = 138543618;
        *(&v20.version + 4) = v12;
        WORD2(v20.info) = 2114;
        *(&v20.info + 6) = v14;
        _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_ERROR, "%{public}@No valid address for device: %{public}@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v15 = MEMORY[0x277CCA9B8];
      v16 = 4;
      goto LABEL_15;
    }
  }

  v5 = [(HMFNetworkDiagnosticPing *)self addressIPV4];

  if (v5)
  {
    [(HMFNetworkDiagnosticPing *)self setSockHandle_ipv4:socket(2, 2, 1)];
  }

  v6 = [(HMFNetworkDiagnosticPing *)self addressIPV6];

  if (v6)
  {
    [(HMFNetworkDiagnosticPing *)self setSockHandle_ipv6:socket(30, 2, 58)];
  }

  v20.version = 0;
  v20.info = self;
  memset(&v20.retain, 0, 24);
  [(HMFNetworkDiagnosticPing *)self setSocket_ipv4:create_socket([(HMFNetworkDiagnosticPing *)self sockHandle_ipv4], &v20)];
  v7 = [(HMFNetworkDiagnosticPing *)self sockHandle_ipv6];
  v20.version = 0;
  v20.info = self;
  memset(&v20.retain, 0, 24);
  [(HMFNetworkDiagnosticPing *)self setSocket_ipv6:create_socket(v7, &v20)];
  if ([(HMFNetworkDiagnosticPing *)self socket_ipv4]|| [(HMFNetworkDiagnosticPing *)self socket_ipv6])
  {
    v8 = +[HMFFuture futureWithNoValue];
    goto LABEL_16;
  }

  v15 = MEMORY[0x277CCA9B8];
  v16 = 15;
LABEL_15:
  v17 = [v15 hmfErrorWithCode:v16];
  v8 = [HMFFuture futureWithError:v17];

LABEL_16:
  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_sendData:(id)a3
{
  v4 = a3;
  v5 = [(HMFNetworkDiagnosticPing *)self addressIPV4];
  v6 = [(HMFNetworkDiagnosticPing *)self _sendData:v4 address:v5];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__HMFNetworkDiagnosticPing__sendData___block_invoke_2;
  v13[3] = &unk_2786E7C50;
  v13[4] = self;
  v7 = [v6 then:&__block_literal_global_47_0 orRecover:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__HMFNetworkDiagnosticPing__sendData___block_invoke_48;
  v11[3] = &unk_2786E7C78;
  v11[4] = self;
  v12 = v4;
  v8 = v4;
  v9 = [v7 finally:v11];

  return v9;
}

uint64_t __38__HMFNetworkDiagnosticPing__sendData___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier(v5);
    v8 = [*(a1 + 32) addressIPV4];
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to send data via address: %{public}@ with error: %{public}@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __38__HMFNetworkDiagnosticPing__sendData___block_invoke_48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 addressIPV6];
  v4 = [v1 _sendData:v2 address:v3];
  if (!v4)
  {
    _HMFPreconditionFailure(@"future");
  }

  v5 = v4;

  return 3;
}

- (id)_sendData:(id)a3 address:(id)a4
{
  v81 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    v56 = +[HMFFuture futureWithNoValue];
    goto LABEL_42;
  }

  if ([v7 addressFamily] == 1)
  {
    v9 = [(HMFNetworkDiagnosticPing *)self socket_ipv4];
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_29:
    v57 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
    v56 = [HMFFuture futureWithError:v57];

    goto LABEL_42;
  }

  v9 = [(HMFNetworkDiagnosticPing *)self socket_ipv6];
  if (!v9)
  {
    goto LABEL_29;
  }

LABEL_4:
  v68 = v9;
  v10 = [v8 addressFamily];
  if (v10 == 1)
  {
    v11 = 8;
  }

  else
  {
    v11 = -128;
  }

  v70 = [v8 dataUsingEncoding:1];
  v12 = [(HMFNetworkDiagnosticPing *)self identifier];
  v13 = [(HMFNetworkDiagnosticPing *)self sequenceNumber];
  v69 = v6;
  v14 = v6;
  v15 = v14;
  if ([v14 length] <= 0x37)
  {
    LODWORD(v67) = v11;
    v16 = [MEMORY[0x277CBEB28] dataWithCapacity:56];
    v17 = v16;
    if (v14)
    {
      [v16 appendData:v14];
    }

    v18 = [v14 length];
    v19 = 56 - v18;
    MEMORY[0x28223BE20](v18, v20);
    v22 = &v65 - v21;
    RandomBytes();
    v23 = [MEMORY[0x277CBEA90] dataWithBytes:v22 length:v19];
    [v17 appendData:v23];

    v15 = [v17 copy];
    LOBYTE(v11) = v67;
  }

  v24 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v15, "length") + 8}];
  if (!v24)
  {
    __assert_rtn("pingPacketWithType", "HMFNetworkDiagnosticPing.m", 448, "packet");
  }

  v25 = v24;
  v26 = [v24 mutableBytes];
  *v26 = v11;
  *(v26 + 1) = 0;
  *(v26 + 2) = 0;
  *(v26 + 4) = __rev16(v12);
  *(v26 + 6) = __rev16(v13);
  memcpy((v26 + 8), [v15 bytes], objc_msgSend(v15, "length"));
  if (v10 != 1)
  {
    goto LABEL_19;
  }

  v27 = [v25 bytes];
  v28 = [v25 length];
  if (v28 < 2)
  {
    v29 = 0;
    if (!v28)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v29 = 0;
    do
    {
      v30 = *v27++;
      v29 += v30;
      v28 -= 2;
    }

    while (v28 > 1);
    if (!v28)
    {
      goto LABEL_18;
    }
  }

  v29 += *v27;
LABEL_18:
  *(v26 + 2) = ~(HIWORD(v29) + v29 + (((v29 >> 16) + v29) >> 16));
LABEL_19:

  v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];
  v32 = objc_autoreleasePoolPush();
  v33 = self;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v35 = HMFGetLogIdentifier(v33);
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v25, "length")}];
    v37 = [(HMFNetworkDiagnostic *)v33 device];
    v38 = [v37 shortDescription];
    *buf = 138544130;
    v72 = v35;
    v73 = 2112;
    v74 = v36;
    v75 = 2112;
    v76 = v31;
    v77 = 2114;
    v78 = v38;
    _os_log_impl(&dword_22ADEC000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Sending data (%@: %@) to device: %{public}@", buf, 0x2Au);
  }

  v67 = v31;

  objc_autoreleasePoolPop(v32);
  [(HMFNetworkDiagnosticPing *)v33 setReadPromise:0];
  v39 = [MEMORY[0x277CBEAA8] date];
  [(HMFNetworkDiagnosticPing *)v33 setPingStartDate:v39];

  LODWORD(v39) = CFSocketGetNative(v68);
  v40 = [v25 bytes];
  v41 = [v25 length];
  v42 = sendto(v39, v40, v41, 0, [v70 bytes], objc_msgSend(v70, "length"));
  v43 = [v25 length];
  if (v42 == -1)
  {
    v44 = 6;
  }

  else
  {
    v44 = 15;
  }

  v45 = [MEMORY[0x277CBEAA8] now];
  v46 = [(HMFNetworkDiagnosticPing *)v33 pingStartDate];
  [v45 timeIntervalSinceDate:v46];
  v48 = v47;

  v49 = objc_autoreleasePoolPush();
  v50 = v33;
  v51 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    v65 = v49;
    v66 = v44;
    v68 = HMFGetLogIdentifier(v50);
    v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v25, "length")}];
    v53 = [(HMFNetworkDiagnostic *)v50 device];
    v54 = [v53 shortDescription];
    if (v42 == v43)
    {
      v55 = 0;
    }

    else
    {
      v55 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:v66];
    }

    *buf = 138544386;
    v72 = v68;
    v73 = 2112;
    v74 = v52;
    v75 = 2114;
    v76 = v54;
    v77 = 2114;
    v78 = v55;
    v79 = 2048;
    v80 = v48;
    _os_log_impl(&dword_22ADEC000, v51, OS_LOG_TYPE_INFO, "%{public}@Sent data (%@) to device: %{public}@ with error: %{public}@. Duration: %.3fs", buf, 0x34u);
    if (v42 != v43)
    {
    }

    v49 = v65;
    v44 = v66;
  }

  objc_autoreleasePoolPop(v49);
  v58 = [(HMFNetworkDiagnosticPing *)v50 sequenceNumber];
  v59 = v58 + 1;
  v60 = (v58 + 1);
  [(HMFNetworkDiagnosticPing *)v50 setSequenceNumber:v60];
  if (v60 != v59)
  {
    [(HMFNetworkDiagnosticPing *)v50 setSequenceNumber:0];
  }

  if (v42 == v43)
  {
    v61 = [HMFFuture futureWithPromise:&v50->_readPromise];
    [v61 timeout:1.0];
  }

  else
  {
    v61 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:v44];
    [HMFFuture futureWithError:v61];
  }
  v56 = ;
  v62 = v67;

  v6 = v69;
LABEL_42:

  v63 = *MEMORY[0x277D85DE8];

  return v56;
}

- (void)_readDataFromSocket:(__CFSocket *)a3
{
  v3 = MEMORY[0x28223BE20](self, a2);
  v51 = *MEMORY[0x277D85DE8];
  *&v49.sa_len = 0;
  *&v49.sa_data[6] = 0;
  v40 = 16;
  Native = CFSocketGetNative(v4);
  v6 = recvfrom(Native, v50, 0xFFFFuLL, 0, &v49, &v40);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v6;
    v8 = [MEMORY[0x277CBEAA8] now];
    v9 = [v3 pingStartDate];
    [v8 timeIntervalSinceDate:v9];
    v11 = v10;

    v12 = [MEMORY[0x277CBEB28] dataWithBytes:v50 length:v7];
    v13 = [[HMFNetAddress alloc] initWithSocketAddress:&v49];
    if ([(HMFNetAddress *)v13 addressFamily]== 1)
    {
      v14 = [v3 identifier];
      v15 = v12;
      if ([v15 length] < 0x1C || (v16 = objc_msgSend(v15, "bytes"), (*v16 & 0xF0) != 0x40) || v16[9] != 1 || (v17 = 4 * (*v16 & 0xF), objc_msgSend(v15, "length") < (v17 + 8)))
      {

        goto LABEL_36;
      }

      v33 = ([v15 mutableBytes] + v17);
      if (*v33 || *(v33 + 1))
      {
        goto LABEL_36;
      }

      v34 = v33[1];
      v33[1] = 0;
      v35 = [v15 length] - v17;
      if (v35 < 2)
      {
        v36 = 0;
        v37 = v33;
      }

      else
      {
        v36 = 0;
        v37 = v33;
        do
        {
          v38 = *v37++;
          v36 += v38;
          v35 -= 2;
        }

        while (v35 > 1);
      }

      if (v35)
      {
        v36 += *v37;
      }

      v33[1] = v34;
      if ((v34 ^ (HIWORD(v36) + v36 + (((v36 >> 16) + v36) >> 16))) != 0xFFFF || v14 != bswap32(v33[2]) >> 16)
      {
        goto LABEL_36;
      }

      v24 = 28;
    }

    else
    {
      if ([(HMFNetAddress *)v13 addressFamily]!= 2)
      {
LABEL_37:

        goto LABEL_38;
      }

      v22 = [v3 identifier];
      v15 = v12;
      if ([v15 length] < 8 || (v23 = objc_msgSend(v15, "bytes"), *v23 != 129) || v23[1] || v22 != bswap32(*(v23 + 2)) >> 16)
      {
LABEL_36:

        goto LABEL_37;
      }

      v24 = 8;
    }

    [v12 replaceBytesInRange:0 withBytes:v24 length:{0, 0}];

    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v12 encoding:4];
    v25 = objc_autoreleasePoolPush();
    v26 = v3;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier(v26);
      v29 = v15;
      if (!v15)
      {
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "length")}];
      }

      v30 = [v26 device];
      v31 = [v30 shortDescription];
      *buf = 138544130;
      v42 = v28;
      v43 = 2112;
      v44 = v29;
      v45 = 2114;
      v46 = v31;
      v47 = 2048;
      v48 = v11;
      _os_log_impl(&dword_22ADEC000, v27, OS_LOG_TYPE_INFO, "%{public}@Receive data (%@) from device: %{public}@. Duration: %.3fs", buf, 0x2Au);

      if (!v15)
      {
      }
    }

    objc_autoreleasePoolPop(v25);
    [v26 setRunDuration:v11];
    v32 = [v26 readPromise];
    [v32 fulfillWithNoValue];

    [v26 setReadPromise:0];
    goto LABEL_36;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = v3;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier(v19);
    *buf = 138543362;
    v42 = v21;
    _os_log_impl(&dword_22ADEC000, v20, OS_LOG_TYPE_ERROR, "%{public}@Receive invalid data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
LABEL_38:
  v39 = *MEMORY[0x277D85DE8];
}

@end