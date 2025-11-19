@interface DRPeer
- (DRPeer)initWithIdentifier:(id)a3;
- (void)_activate:(id)a3;
- (void)activate:(id)a3;
- (void)dealloc;
- (void)deviceFound:(id)a3 completion:(id)a4;
- (void)deviceLost;
- (void)reset;
@end

@implementation DRPeer

- (DRPeer)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DRPeer;
  v6 = [(DRPeer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_idsIdentifier, a3);
    v7->_requestedDataTypes = 0;
  }

  return v7;
}

- (void)deviceLost
{
  v3 = objc_initWeak(&location, self);
  [(DRPeer *)self reset];

  v4 = objc_loadWeakRetained(&location);
  v5 = [v4 internalDisconnectHandler];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&location);
    v7 = [v6 internalDisconnectHandler];
    v7[2]();
  }

  v8 = objc_loadWeakRetained(&location);
  v9 = [v8 disconnectHandler];

  if (v9)
  {
    v10 = objc_loadWeakRetained(&location);
    v11 = [v10 disconnectHandler];
    v11[2]();
  }

  objc_destroyWeak(&location);
}

- (void)deviceFound:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_initWeak(location, self);
  v9 = [(DRPeer *)self idsIdentifier];
  if ([v6 compareWithDeviceIdentifier:v9])
  {

    goto LABEL_4;
  }

  WeakRetained = objc_loadWeakRetained(location);
  v11 = [WeakRetained idsIdentifier];
  v12 = [v11 isEqualToString:@"RPDestinationIdentifierPairedCompanion"];

  if (v12)
  {
LABEL_4:
    v13 = objc_loadWeakRetained(location);
    v14 = [v13 deviceFoundClient];
    [v14 invalidate];

    v15 = objc_loadWeakRetained(location);
    v16 = [v15 rapportClient];
    [v16 setDestinationDevice:v6];

    if (gLogCategory_DRPeer <= 50 && (gLogCategory_DRPeer != -1 || _LogCategory_Initialize()))
    {
      v34 = [v6 idsDeviceIdentifier];
      LogPrintF();
    }

    v19 = [MEMORY[0x277CBEAA8] date];
    v20 = objc_loadWeakRetained(location);
    v21 = [v20 discoveryStartTimestamp];
    [v19 timeIntervalSinceDate:v21];
    v23 = v22;

    v24 = +[DataRelayAnalytics getInstance];
    [v24 updateRapportDiscoveryTime:v23];

    v25 = objc_loadWeakRetained(location);
    v26 = [v25 discoveryTimer];
    dispatch_source_cancel(v26);

    v27 = ([v6 statusFlags] & 0xF);
    if (v27 == 8)
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __33__DRPeer_deviceFound_completion___block_invoke;
      v41[3] = &unk_278F4E780;
      objc_copyWeak(&v42, location);
      v28 = objc_loadWeakRetained(location);
      v29 = [v28 rapportClient];
      [v29 setDisconnectHandler:v41];

      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __33__DRPeer_deviceFound_completion___block_invoke_2;
      v39[3] = &unk_278F4E780;
      objc_copyWeak(&v40, location);
      v30 = objc_loadWeakRetained(location);
      v31 = [v30 rapportClient];
      [v31 setErrorFlagsChangedHandler:v39];

      objc_destroyWeak(&v40);
      objc_destroyWeak(&v42);
    }

    v32 = objc_loadWeakRetained(location);
    v33 = [v32 rapportClient];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __33__DRPeer_deviceFound_completion___block_invoke_3;
    v36[3] = &unk_278F4EE38;
    objc_copyWeak(v38, location);
    v38[1] = v27;
    v36[4] = self;
    v37 = v7;
    [v33 activateWithCompletion:v36];

    objc_destroyWeak(v38);
    goto LABEL_14;
  }

  if (gLogCategory_DRPeer <= 50 && (gLogCategory_DRPeer != -1 || _LogCategory_Initialize()))
  {
    v17 = [v6 idsDeviceIdentifier];
    v18 = objc_loadWeakRetained(location);
    v35 = [v18 idsIdentifier];
    LogPrintF();
  }

LABEL_14:
  objc_destroyWeak(location);
}

void __33__DRPeer_deviceFound_completion___block_invoke(uint64_t a1)
{
  if (gLogCategory_DRPeer <= 90 && (gLogCategory_DRPeer != -1 || _LogCategory_Initialize()))
  {
    __33__DRPeer_deviceFound_completion___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained deviceLost];
}

void __33__DRPeer_deviceFound_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained rapportClient];
  [v3 errorFlags];

  if (gLogCategory_DRPeer <= 90 && (gLogCategory_DRPeer != -1 || _LogCategory_Initialize()))
  {
    __33__DRPeer_deviceFound_completion___block_invoke_2_cold_1();
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 deviceLost];
}

void __33__DRPeer_deviceFound_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_DRPeer <= 90 && (gLogCategory_DRPeer != -1 || _LogCategory_Initialize()))
    {
      __33__DRPeer_deviceFound_completion___block_invoke_3_cold_1(a1, v3);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v3);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained reset];

    goto LABEL_16;
  }

  *(*(a1 + 32) + 10) = 1;
  if (gLogCategory_DRPeer <= 50 && (gLogCategory_DRPeer != -1 || _LogCategory_Initialize()))
  {
    __33__DRPeer_deviceFound_completion___block_invoke_3_cold_2(a1);
  }

  v6 = *(a1 + 56);
  if ((v6 - 1) < 2)
  {
    v7 = 98338;
LABEL_15:
    v8 = objc_loadWeakRetained((a1 + 48));
    v9 = [v8 deviceLostClient];
    [v9 setFlags:v7];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __33__DRPeer_deviceFound_completion___block_invoke_4;
    v18[3] = &unk_278F4EDE8;
    objc_copyWeak(v19, (a1 + 48));
    v19[1] = *(a1 + 56);
    v10 = objc_loadWeakRetained((a1 + 48));
    v11 = [v10 deviceLostClient];
    [v11 setDeviceLostHandler:v18];

    v12 = objc_loadWeakRetained((a1 + 48));
    v13 = [v12 deviceLostClient];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __33__DRPeer_deviceFound_completion___block_invoke_5;
    v15[3] = &unk_278F4EE10;
    v16 = *(a1 + 40);
    objc_copyWeak(&v17, (a1 + 48));
    [v13 activateWithCompletion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(v19);
    goto LABEL_16;
  }

  if (v6 == 4)
  {
    v7 = 4;
    goto LABEL_15;
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, 0);
  }

LABEL_16:
}

void __33__DRPeer_deviceFound_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 idsDeviceIdentifier];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained idsIdentifier];
  if ([v3 isEqualToString:v5])
  {
  }

  else
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 idsIdentifier];
    v8 = [v7 isEqualToString:@"RPDestinationIdentifierPairedCompanion"];

    if (!v8)
    {
      return;
    }
  }

  if (gLogCategory_DRPeer <= 90 && (gLogCategory_DRPeer != -1 || _LogCategory_Initialize()))
  {
    __33__DRPeer_deviceFound_completion___block_invoke_4_cold_1(a1);
  }

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 deviceLost];
}

uint64_t __33__DRPeer_deviceFound_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v3 = v7;
  }

  if (v3)
  {
    if (gLogCategory_DRPeer <= 90 && (gLogCategory_DRPeer != -1 || _LogCategory_Initialize()))
    {
      __33__DRPeer_deviceFound_completion___block_invoke_5_cold_1(v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained reset];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_activate:(id)a3
{
  v4 = a3;
  if (gLogCategory_DRPeer <= 50 && (gLogCategory_DRPeer != -1 || _LogCategory_Initialize()))
  {
    [DRPeer _activate:?];
  }

  v5 = [MEMORY[0x277CBEAA8] now];
  discoveryStartTimestamp = self->_discoveryStartTimestamp;
  self->_discoveryStartTimestamp = v5;

  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  discoveryTimer = self->_discoveryTimer;
  self->_discoveryTimer = v7;

  v9 = self->_discoveryTimer;
  v10 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
  v11 = self->_discoveryTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __20__DRPeer__activate___block_invoke;
  handler[3] = &unk_278F4EE60;
  v12 = v4;
  handler[4] = self;
  v24 = v12;
  dispatch_source_set_event_handler(v11, handler);
  dispatch_activate(self->_discoveryTimer);
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __20__DRPeer__activate___block_invoke_2;
  v19[3] = &unk_278F4EE88;
  objc_copyWeak(&v21, &location);
  v13 = v12;
  v20 = v13;
  [(RPCompanionLinkClient *)self->_deviceFoundClient setDeviceFoundHandler:v19];
  deviceFoundClient = self->_deviceFoundClient;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __20__DRPeer__activate___block_invoke_3;
  v16[3] = &unk_278F4EE10;
  v15 = v13;
  v17 = v15;
  objc_copyWeak(&v18, &location);
  [(RPCompanionLinkClient *)deviceFoundClient activateWithCompletion:v16];
  objc_destroyWeak(&v18);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

uint64_t __20__DRPeer__activate___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277D44250];
  v3 = NSErrorV();
  v7 = v3;
  if (gLogCategory_DRPeer <= 90)
  {
    if (gLogCategory_DRPeer != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
    {
      __20__DRPeer__activate___block_invoke_cold_1(v3);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
    [*(a1 + 32) reset];
  }

  return MEMORY[0x2821F96F8]();
}

void __20__DRPeer__activate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained deviceFound:v3 completion:*(a1 + 32)];
}

void __20__DRPeer__activate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    if (gLogCategory_DRPeer <= 90 && (gLogCategory_DRPeer != -1 || _LogCategory_Initialize()))
    {
      __20__DRPeer__activate___block_invoke_3_cold_1(v6);
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))(v4, v6);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained reset];

    v3 = v6;
  }
}

- (void)activate:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __19__DRPeer_activate___block_invoke;
  v7[3] = &unk_278F4EEB0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)dealloc
{
  if (gLogCategory_DRPeer <= 50 && (gLogCategory_DRPeer != -1 || _LogCategory_Initialize()))
  {
    [DRPeer dealloc];
  }

  [(RPCompanionLinkClient *)self->_deviceFoundClient invalidate];
  [(RPCompanionLinkClient *)self->_deviceLostClient invalidate];
  [(RPCompanionLinkClient *)self->_rapportClient invalidate];
  discoveryTimer = self->_discoveryTimer;
  if (discoveryTimer)
  {
    dispatch_source_cancel(discoveryTimer);
  }

  v4.receiver = self;
  v4.super_class = DRPeer;
  [(DRPeer *)&v4 dealloc];
}

- (void)reset
{
  v16[1] = *MEMORY[0x277D85DE8];
  self->_requestedDataTypes = 0;
  if (gLogCategory_DRPeer <= 50 && (gLogCategory_DRPeer != -1 || _LogCategory_Initialize()))
  {
    [DRPeer reset];
  }

  discoveryTimer = self->_discoveryTimer;
  if (discoveryTimer)
  {
    dispatch_source_cancel(discoveryTimer);
  }

  [(RPCompanionLinkClient *)self->_deviceFoundClient invalidate];
  v4 = objc_alloc_init(MEMORY[0x277D44160]);
  deviceFoundClient = self->_deviceFoundClient;
  self->_deviceFoundClient = v4;

  [(RPCompanionLinkClient *)self->_deviceFoundClient setRssiThreshold:-75];
  v16[0] = self->_idsIdentifier;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [(RPCompanionLinkClient *)self->_deviceFoundClient setDeviceFilter:v6];

  v7 = [(NSString *)self->_idsIdentifier isEqualToString:@"RPDestinationIdentifierPairedCompanion"];
  v8 = self->_deviceFoundClient;
  if (v7)
  {
    v9 = 1155104;
  }

  else
  {
    v9 = 1155110;
  }

  [(RPCompanionLinkClient *)self->_deviceFoundClient setControlFlags:v9];
  [(RPCompanionLinkClient *)self->_deviceLostClient invalidate];
  v10 = objc_alloc_init(MEMORY[0x277D44160]);
  deviceLostClient = self->_deviceLostClient;
  self->_deviceLostClient = v10;

  discoveryStartTimestamp = self->_discoveryStartTimestamp;
  self->_discoveryStartTimestamp = 0;

  *&self->_hrmStarted = 0;
  self->_isActivated = 0;
  [(RPCompanionLinkClient *)self->_rapportClient invalidate];
  v13 = objc_alloc_init(MEMORY[0x277D44160]);
  rapportClient = self->_rapportClient;
  self->_rapportClient = v13;

  [(RPCompanionLinkClient *)self->_rapportClient setControlFlags:1056814];
  v15 = *MEMORY[0x277D85DE8];
}

void __33__DRPeer_deviceFound_completion___block_invoke_3_cold_1(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained identifier];
  v5 = rapportTransportFlagToString(*(a1 + 56));
  v6 = [a2 localizedDescription];
  LogPrintF();
}

void __33__DRPeer_deviceFound_completion___block_invoke_3_cold_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained identifier];
  v3 = rapportTransportFlagToString(*(a1 + 56));
  LogPrintF();
}

void __33__DRPeer_deviceFound_completion___block_invoke_5_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  LogPrintF();
}

void __20__DRPeer__activate___block_invoke_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  LogPrintF();
}

void __20__DRPeer__activate___block_invoke_3_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  LogPrintF();
}

@end