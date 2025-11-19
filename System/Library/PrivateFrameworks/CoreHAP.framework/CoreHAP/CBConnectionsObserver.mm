@interface CBConnectionsObserver
+ (void)initialize;
- (BOOL)attachSessionWithError:(id *)a3;
- (BOOL)cleanupWithError:(id *)a3;
- (CBConnectionsObserver)initWithCentralManager:(id)a3 Queue:(id)a4 Error:(id *)a5;
- (OS_dispatch_queue)dispatchQueue;
- (int)getAvailableHAPConnections;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)updateBleStatus:(BTRemoteContext *)a3;
@end

@implementation CBConnectionsObserver

- (OS_dispatch_queue)dispatchQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_dispatchQueue);

  return WeakRetained;
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = cbManagerState2String;
    v9 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v4, "state")}];
    v10 = [v8 objectForKeyedSubscript:v9];
    *buf = 138543874;
    v21 = v7;
    v22 = 2112;
    v23 = v10;
    v24 = 2048;
    v25 = [v4 state];
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] centralManagerDidUpdateState state %@ (%ld)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if ([v4 state] == 5)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v13;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] centralManagerDidUpdateState trying to (re)attach MobileBluetooth session", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v19 = 0;
    [(CBConnectionsObserver *)self attachSessionWithError:&v19];
    v14 = v19;
    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v21 = v17;
        v22 = 2112;
        v23 = v14;
        _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] centralManagerDidUpdateState failed to (re)attach MobileBluetooth session, error :%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateBleStatus:(BTRemoteContext *)a3
{
  v38 = *MEMORY[0x277D85DE8];
  a3->var6.lowEnergyConnections = 0;
  v5 = [(CBConnectionsObserver *)self central];
  if (v5)
  {
    v6 = v5;
    v7 = [(CBConnectionsObserver *)self central];
    v8 = [v7 state];

    if (v8 == 5)
    {
      v9 = [(CBConnectionsObserver *)self central];
      v10 = [v9 retrieveConnectedPeripheralsWithServices:MEMORY[0x277CBEBF8] allowAll:1];

      a3->var6.lowEnergyConnections = [v10 count];
      if (a3->var5.var0)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = v10;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v30;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v30 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v29 + 1) + 8 * i);
              v17 = objc_autoreleasePoolPush();
              v18 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = HMFGetLogIdentifier();
                *buf = 138543618;
                v34 = v19;
                v35 = 2112;
                v36 = v16;
                _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] updateBleStatus device %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v17);
              if ([v16 hasTag:@"FastConnection"])
              {
                ++a3->var6.leRemote;
                v20 = objc_autoreleasePoolPush();
                v21 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  v22 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v34 = v22;
                  _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] updateBleStatus found a LE Remote", buf, 0xCu);
                }

                objc_autoreleasePoolPop(v20);
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v13);
        }

        v10 = v28;
      }

      v23 = objc_autoreleasePoolPush();
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = HMFGetLogIdentifier();
        lowEnergyConnections = a3->var6.lowEnergyConnections;
        *buf = 138543618;
        v34 = v25;
        v35 = 2048;
        v36 = lowEnergyConnections;
        _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] updateBleStatus found connected BLE devices: %ld", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (int)getAvailableHAPConnections
{
  v75 = *MEMORY[0x277D85DE8];
  if (![(CBConnectionsObserver *)self hasStarted])
  {
    v8 = 0;
    goto LABEL_50;
  }

  *(&qword_27D8AF878 + 7) = 0;
  xmmword_27D8AF860 = 0u;
  *&qword_27D8AF870 = 0u;
  xmmword_27D8AF840 = 0u;
  *&qword_27D8AF850 = 0u;
  xmmword_27D8AF820 = 0u;
  unk_27D8AF830 = 0u;
  xmmword_27D8AF800 = 0u;
  *&qword_27D8AF810 = 0u;
  [(CBConnectionsObserver *)self updateBleStatus:&g_ctx];
  if (qword_27D8AF7C0)
  {
    ModulePower = BTLocalDeviceGetModulePower();
    if (ModulePower)
    {
      v4 = ModulePower;
      v5 = objc_autoreleasePoolPush();
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v7;
        *&buf[12] = 1024;
        *&buf[14] = v4;
        _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] updateClassicStatus: BTLocalDeviceGetModulePower failed with error %d", buf, 0x12u);
      }

      goto LABEL_12;
    }

    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v9;
      *&buf[12] = 1024;
      *&buf[14] = 0;
      v10 = "%{public}@[CBConnectionsObserver] updateClassicStatus: not powered on, power status %d";
      v11 = v6;
      v12 = 18;
      goto LABEL_11;
    }
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v9;
      v10 = "%{public}@[CBConnectionsObserver] updateClassicStatus: no local device found, has initialization failed?";
      v11 = v6;
      v12 = 12;
LABEL_11:
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }
  }

LABEL_12:

  objc_autoreleasePoolPop(v5);
  v72 = xmmword_27D8AF860;
  v73 = *&qword_27D8AF870;
  v74 = qword_27D8AF880;
  v68 = xmmword_27D8AF820;
  v69 = unk_27D8AF830;
  v70 = xmmword_27D8AF840;
  v71 = *&qword_27D8AF850;
  *buf = xmmword_27D8AF800;
  *&buf[16] = *&qword_27D8AF810;
  if (byte_27D8AF7C8 == 1)
  {
    v13 = [ATVModel atvStateFromState:buf];
    v14 = [(CBConnectionsObserver *)self model];
    v15 = [v14 findTupleForATVState:v13];
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    *v61 = 138543618;
    v62 = v18;
    v63 = 2112;
    v64 = *&v15;
    _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] tuple is %@", v61, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  if (!v15)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      *v61 = 138543362;
      v62 = v21;
      _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] updateBandwidth: work-in-progress", v61, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v22 = objc_autoreleasePoolPush();
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      *v61 = 138543362;
      v62 = v24;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] updateBandwidth: TODO this is work-in-progress", v61, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v25 = (*&dword_27D8AF7F4 * v72) / qword_27D8AF7D0;
    v26 = objc_autoreleasePoolPush();
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = HMFGetLogIdentifier();
      *v61 = 138543618;
      v62 = v28;
      v63 = 2048;
      v64 = *&buf[24];
      _os_log_impl(&dword_22AADC000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] updateBandwidth: A2DPActive: %ld\n", v61, 0x16u);
    }

    v29 = v25 + 0.0;

    objc_autoreleasePoolPop(v26);
    if (*&buf[24])
    {
      v30 = objc_autoreleasePoolPush();
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = HMFGetLogIdentifier();
        *v61 = 138543362;
        v62 = v32;
        _os_log_impl(&dword_22AADC000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] updateBandwidth: TODO add formula for A2DP bandwidth", v61, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
    }

    v33 = (v29 + (((v71 + v71) + (*(&v71 + 1) * 4.0)) / qword_27D8AF7D0)) + (v70 * *&dword_27D8AF7F0);
    if (v74 == 1)
    {
      v34 = *&dword_27D8AF7E0;
      if (*&dword_27D8AF7E0 < unk_27D8AF7E4)
      {
        v34 = unk_27D8AF7E4;
      }

      v33 = ((v33 + *&qword_27D8AF7D8) + *(&qword_27D8AF7D8 + 1)) + v34;
    }

    v35 = *&dword_27D8AF7EC;
    v36 = *(&v69 + 1);
    v37 = objc_autoreleasePoolPush();
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = HMFGetLogIdentifier();
      *v61 = 138543362;
      v62 = v39;
      _os_log_impl(&dword_22AADC000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] updateBandwidth: TODO add formula for shared antenna\n", v61, 0xCu);
    }

    objc_autoreleasePoolPop(v37);
    *&v40 = fminf((v33 + (v35 * v36)) * 100.0, 100.0);
    LODWORD(v41) = LODWORD(v40);
    v15 = [HAPBTLETuple makeTupleWithState:buf MaxHAPConnections:(dword_27D8AF7E8 + v69 - DWORD2(v69)) MinBandwidth:v40 MaxBandwidth:v41];
  }

  v42 = objc_autoreleasePoolPush();
  v43 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = HMFGetLogIdentifier();
    v45 = [HAPBTLETuple state2String:buf];
    *v61 = 138543618;
    v62 = v44;
    v63 = 2112;
    v64 = *&v45;
    _os_log_impl(&dword_22AADC000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] status\n%@", v61, 0x16u);
  }

  objc_autoreleasePoolPop(v42);
  v46 = objc_autoreleasePoolPush();
  v47 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = HMFGetLogIdentifier();
    [v15 maxBandwidth];
    v50 = v49;
    v51 = [v15 maxHAPConnections];
    *v61 = 138543874;
    v62 = v48;
    v63 = 2048;
    v64 = v50;
    v65 = 1024;
    v66 = v51;
    _os_log_impl(&dword_22AADC000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] max bandwidth: %f%% maxHAPConnections %d \n", v61, 0x1Cu);
  }

  objc_autoreleasePoolPop(v46);
  v52 = [v15 maxHAPConnections];
  if (byte_27D8AF7C8 == 1)
  {
    if (v52 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v52;
    }

    v53 = objc_autoreleasePoolPush();
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = HMFGetLogIdentifier();
      *v61 = 138543618;
      v62 = v55;
      v63 = 1024;
      LODWORD(v64) = v8;
      _os_log_impl(&dword_22AADC000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] adjusted for ATV maxHAPConnections: %d \n", v61, 0x12u);
    }

    objc_autoreleasePoolPop(v53);
  }

  else
  {
    v8 = v52 & ~(v52 >> 31);
  }

  v56 = objc_autoreleasePoolPush();
  v57 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v58 = HMFGetLogIdentifier();
    *v61 = 138543618;
    v62 = v58;
    v63 = 1024;
    LODWORD(v64) = v8;
    _os_log_impl(&dword_22AADC000, v57, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] returning maxHAPConnections: %d \n", v61, 0x12u);
  }

  objc_autoreleasePoolPop(v56);
LABEL_50:
  v59 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)attachSessionWithError:(id *)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = qword_27D8AF7C0 != 0;
  if (qword_27D8AF7C0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v6;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] BTSessionAttachWithQueue already attached\n", &v13, 0xCu);
    }
  }

  else
  {
    [sessionName UTF8String];
    v8 = [(CBConnectionsObserver *)self dispatchQueue];
    v9 = BTSessionAttachWithQueue();

    if (!v9)
    {
      v3 = 1;
      goto LABEL_8;
    }

    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] BTSessionAttachWithQueue with error %d \n", &v13, 0x12u);
    }
  }

  objc_autoreleasePoolPop(v4);
LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)cleanupWithError:(id *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 0;
  }

  if (![(CBConnectionsObserver *)self hasStarted])
  {
    goto LABEL_13;
  }

  [(CBConnectionsObserver *)self setHasStarted:0];
  [(CBConnectionsObserver *)self setCentral:0];
  if (qword_27D8AF7C0)
  {
    qword_27D8AF7C0 = 0;
  }

  if (qword_27D8AF7B8)
  {
    v5 = BTSessionDetachWithQueue();
    v6 = v5 == 0;
    if (v5)
    {
      v7 = v5;
      v8 = objc_autoreleasePoolPush();
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543618;
        v19 = v10;
        v20 = 1024;
        v21 = v7;
        _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] BTSessionDetachWithQueue failed with error %d", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v8);
      if (a3)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to detach session, code %d", v7];
        v12 = MEMORY[0x277CCA9B8];
        v16 = *MEMORY[0x277CCA450];
        v17 = v11;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
        *a3 = [v12 errorWithDomain:@"CBConnectionsObserver" code:1 userInfo:v13];
      }
    }

    qword_27D8AF7B8 = 0;
  }

  else
  {
LABEL_13:
    v6 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (CBConnectionsObserver)initWithCentralManager:(id)a3 Queue:(id)a4 Error:(id *)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v35.receiver = self;
  v35.super_class = CBConnectionsObserver;
  v10 = [(CBConnectionsObserver *)&v35 init];
  v11 = v10;
  if (a5)
  {
    *a5 = 0;
  }

  if (v10)
  {
    v10->_hasStarted = 1;
    objc_storeWeak(&v10->_dispatchQueue, v9);
    v12 = MEMORY[0x277CCACA8];
    v13 = getprogname();
    v14 = [v12 stringWithFormat:@"%s-%u", v13, getpid()];
    v15 = sessionName;
    sessionName = v14;

    g_ctx = sessionEventCallback;
    qword_27D8AF798 = serviceEventCallback;
    qword_27D8AF7A0 = localDeviceCallback;
    xmmword_27D8AF800 = 0u;
    *&qword_27D8AF810 = 0u;
    xmmword_27D8AF820 = 0u;
    unk_27D8AF830 = 0u;
    xmmword_27D8AF840 = 0u;
    *&qword_27D8AF850 = 0u;
    xmmword_27D8AF860 = 0u;
    *&qword_27D8AF870 = 0u;
    *(&qword_27D8AF878 + 7) = 0;
    v16 = IsAppleTV();
    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v19)
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v20;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] running on Apple TV \n", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v21 = objc_alloc_init(ATVModel);
      model = v11->_model;
      v11->_model = v21;

      v23 = 1;
    }

    else
    {
      if (v19)
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v24;
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] running on iOS device \n", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v23 = 0;
    }

    byte_27D8AF7C8 = v23;
    qword_27D8AF7D8 = 0;
    *&dword_27D8AF7E0 = 0;
    qword_27D8AF7D0 = 18;
    *&dword_27D8AF7EC = 0x3E4CCCCD3D4CCCCDLL;
    dword_27D8AF7F4 = 1086324736;
    dword_27D8AF7E8 = 5;
    v25 = [objc_alloc(MEMORY[0x277CBDFF8]) initWithDelegate:v11 queue:v9];
    central = v11->_central;
    v11->_central = v25;

    if ([(CBCentralManager *)v11->_central state]== 5)
    {
      v34 = 0;
      [(CBConnectionsObserver *)v11 attachSessionWithError:&v34];
      v27 = v34;
      if (v27)
      {
        v28 = objc_autoreleasePoolPush();
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543618;
          v37 = v30;
          v38 = 2112;
          v39 = v27;
          _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] initWithCentralManager failed to attache MobileBluetooth session, error :%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v28);
        if (a5)
        {
          v31 = v27;
          *a5 = v27;
        }
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (void)initialize
{
  v14[6] = *MEMORY[0x277D85DE8];
  v13[0] = &unk_283EA9920;
  v13[1] = &unk_283EA9938;
  v14[0] = @"Unknown";
  v14[1] = @"Resetting";
  v13[2] = &unk_283EA9950;
  v13[3] = &unk_283EA9968;
  v14[2] = @"Unsupported";
  v14[3] = @"Unauthorized";
  v13[4] = &unk_283EA9980;
  v13[5] = &unk_283EA9998;
  v14[4] = @"Powered Off";
  v14[5] = @"Powered On";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:6];
  v3 = cbManagerState2String;
  cbManagerState2String = v2;

  v11[0] = &unk_283EA99B0;
  v11[1] = &unk_283EA99C8;
  v12[0] = @"Power State Changed";
  v12[1] = @"Discoverability Changed";
  v11[2] = &unk_283EA99E0;
  v11[3] = &unk_283EA99F8;
  v12[2] = @"Connectability Changed";
  v12[3] = @"Pairing status Changed";
  v11[4] = &unk_283EA9A10;
  v11[5] = &unk_283EA9A28;
  v12[4] = @"Connection status Changed";
  v12[5] = @"Discovery Started";
  v11[6] = &unk_283EA9A40;
  v11[7] = &unk_283EA9A58;
  v12[6] = @"Discovery Stopped";
  v12[7] = @"Advertising Status Changed";
  v11[8] = &unk_283EA9A70;
  v12[8] = @"Name Changed";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:9];
  v5 = btLocalDeviceState2String;
  btLocalDeviceState2String = v4;

  v9[0] = &unk_283EA99B0;
  v9[1] = &unk_283EA9A70;
  v10[0] = @"Service Connect";
  v10[1] = @"Service Disconnect";
  v9[2] = &unk_283EA99C8;
  v10[2] = @"Service Dependent Event";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v7 = btServiceEvent2String;
  btServiceEvent2String = v6;

  v8 = *MEMORY[0x277D85DE8];
}

@end