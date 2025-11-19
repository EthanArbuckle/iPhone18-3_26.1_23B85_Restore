@interface _OSBatteryPredictor
+ (id)predictor;
- (BOOL)lowSOCPredicted;
- (BOOL)recommendsAutoLPMWithError:(id *)a3;
- (_OSBatteryPredictor)init;
- (double)timeToEmpty;
- (id)batteryLifeMitigationWithError:(id *)a3;
- (id)highDayDrainAroundCurrentDateWithError:(id *)a3;
- (id)lowSOCPredictionWithError:(id *)a3;
- (id)typicalBatteryLevelWithReferenceDays:(unint64_t)a3 aggregatedOverTimeWidth:(unint64_t)a4 withError:(id *)a5;
- (void)client:(id)a3 setIBLMNotificationsState:(int64_t)a4;
- (void)client:(id)a3 setIBLMState:(int64_t)a4;
- (void)dealloc;
- (void)overrideAllMitigations:(unint64_t)a3;
- (void)overrideCLPCMitigations:(unint64_t)a3;
@end

@implementation _OSBatteryPredictor

- (_OSBatteryPredictor)init
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = _OSBatteryPredictor;
  v2 = [(_OSBatteryPredictor *)&v21 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "battery");
    log = v2->_log;
    v2->_log = v3;

    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.OSIntelligence.battery" options:4096];
    connection = v2->_connection;
    v2->_connection = v5;

    v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286EBE158];
    v8 = MEMORY[0x277CBEB98];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v10 = [v8 setWithArray:v9];
    [v7 setClasses:v10 forSelector:sel_batteryLifeMitigationWithHandler_ argumentIndex:0 ofReply:1];

    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v7];
    objc_initWeak(&location, v2);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __27___OSBatteryPredictor_init__block_invoke;
    v18[3] = &unk_2799C1528;
    objc_copyWeak(&v19, &location);
    [(NSXPCConnection *)v2->_connection setInvalidationHandler:v18];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __27___OSBatteryPredictor_init__block_invoke_73;
    v16 = &unk_2799C1528;
    objc_copyWeak(&v17, &location);
    [(NSXPCConnection *)v2->_connection setInterruptionHandler:&v13];
    [(NSXPCConnection *)v2->_connection resume:v13];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  v4.receiver = self;
  v4.super_class = _OSBatteryPredictor;
  [(_OSBatteryPredictor *)&v4 dealloc];
}

+ (id)predictor
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (BOOL)lowSOCPredicted
{
  v2 = [(_OSBatteryPredictor *)self lowSOCPredictionWithError:0];
  v3 = v2;
  v7 = 0;
  if (v2)
  {
    [v2 confidence];
    v5 = v4;
    [v3 confidenceThreshold];
    if (v5 > v6)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (id)lowSOCPredictionWithError:(id *)a3
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_25D171000, log, OS_LOG_TYPE_INFO, "Requesting for low SOC prediction", v7, 2u);
  }

  v5 = objc_alloc_init(_OSBatteryLowSOCPredictorOutput);
  [(_OSBatteryLowSOCPredictorOutput *)v5 setConfidence:0.0];
  [(_OSBatteryLowSOCPredictorOutput *)v5 setLowSOCPredicted:0];
  [(_OSBatteryLowSOCPredictorOutput *)v5 setConfidence:0.0];
  [(_OSBatteryLowSOCPredictorOutput *)v5 setConfidenceThreshold:0.0];
  [(_OSBatteryLowSOCPredictorOutput *)v5 setModelName:@"NoOpModel"];
  [(_OSBatteryLowSOCPredictorOutput *)v5 setModelVersion:@"0.0"];
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [_OSBatteryPredictor lowSOCPredictionWithError:];
  }

  return v5;
}

- (id)typicalBatteryLevelWithReferenceDays:(unint64_t)a3 aggregatedOverTimeWidth:(unint64_t)a4 withError:(id *)a5
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  connection = self->_connection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94___OSBatteryPredictor_typicalBatteryLevelWithReferenceDays_aggregatedOverTimeWidth_withError___block_invoke;
  v15[3] = &unk_2799C1550;
  v15[5] = &v16;
  v15[6] = a2;
  v15[4] = self;
  v11 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94___OSBatteryPredictor_typicalBatteryLevelWithReferenceDays_aggregatedOverTimeWidth_withError___block_invoke_84;
  v14[3] = &unk_2799C1618;
  v14[4] = self;
  v14[5] = &v22;
  v14[6] = &v16;
  v14[7] = a2;
  [v11 typicalBatteryLevelWithReferenceDays:a3 aggregatedOverTimeWidth:a4 withHandler:v14];

  if (a5)
  {
    *a5 = v17[5];
  }

  v12 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v12;
}

- (id)highDayDrainAroundCurrentDateWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62___OSBatteryPredictor_highDayDrainAroundCurrentDateWithError___block_invoke;
  v11[3] = &unk_2799C1550;
  v11[5] = &v12;
  v11[6] = a2;
  v11[4] = self;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62___OSBatteryPredictor_highDayDrainAroundCurrentDateWithError___block_invoke_86;
  v10[3] = &unk_2799C1640;
  v10[4] = self;
  v10[5] = &v18;
  v10[6] = &v12;
  v10[7] = a2;
  [v7 highDayDrainAroundCurrentDateWithHandler:v10];

  if (a3)
  {
    *a3 = v13[5];
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

- (id)batteryLifeMitigationWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54___OSBatteryPredictor_batteryLifeMitigationWithError___block_invoke;
  v11[3] = &unk_2799C1550;
  v11[5] = &v12;
  v11[6] = a2;
  v11[4] = self;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54___OSBatteryPredictor_batteryLifeMitigationWithError___block_invoke_88;
  v10[3] = &unk_2799C1668;
  v10[4] = self;
  v10[5] = &v18;
  v10[6] = &v12;
  v10[7] = a2;
  [v7 batteryLifeMitigationWithHandler:v10];

  if (a3)
  {
    *a3 = v13[5];
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

- (void)overrideAllMitigations:(unint64_t)a3
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__0;
  v10[4] = __Block_byref_object_dispose__0;
  v11 = 0;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46___OSBatteryPredictor_overrideAllMitigations___block_invoke;
  v9[3] = &unk_2799C1550;
  v9[5] = v10;
  v9[6] = a2;
  v9[4] = self;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46___OSBatteryPredictor_overrideAllMitigations___block_invoke_90;
  v8[3] = &unk_2799C1690;
  v8[4] = self;
  v8[5] = a2;
  [v7 overrideAllMitigations:a3 withHandler:v8];

  _Block_object_dispose(v10, 8);
}

- (void)overrideCLPCMitigations:(unint64_t)a3
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__0;
  v10[4] = __Block_byref_object_dispose__0;
  v11 = 0;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47___OSBatteryPredictor_overrideCLPCMitigations___block_invoke;
  v9[3] = &unk_2799C1550;
  v9[5] = v10;
  v9[6] = a2;
  v9[4] = self;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47___OSBatteryPredictor_overrideCLPCMitigations___block_invoke_91;
  v8[3] = &unk_2799C1690;
  v8[4] = self;
  v8[5] = a2;
  [v7 overrideCLPCMitigations:a3 withHandler:v8];

  _Block_object_dispose(v10, 8);
}

- (void)client:(id)a3 setIBLMState:(int64_t)a4
{
  v7 = a3;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__0;
  v12[4] = __Block_byref_object_dispose__0;
  v13 = 0;
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43___OSBatteryPredictor_client_setIBLMState___block_invoke;
  v11[3] = &unk_2799C1550;
  v11[5] = v12;
  v11[6] = a2;
  v11[4] = self;
  v9 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43___OSBatteryPredictor_client_setIBLMState___block_invoke_92;
  v10[3] = &unk_2799C16B8;
  v10[4] = self;
  v10[5] = a2;
  v10[6] = a4;
  [v9 client:v7 setIBLMState:a4 withHandler:v10];

  _Block_object_dispose(v12, 8);
}

- (void)client:(id)a3 setIBLMNotificationsState:(int64_t)a4
{
  v7 = a3;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__0;
  v12[4] = __Block_byref_object_dispose__0;
  v13 = 0;
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56___OSBatteryPredictor_client_setIBLMNotificationsState___block_invoke;
  v11[3] = &unk_2799C1550;
  v11[5] = v12;
  v11[6] = a2;
  v11[4] = self;
  v9 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56___OSBatteryPredictor_client_setIBLMNotificationsState___block_invoke_94;
  v10[3] = &unk_2799C16B8;
  v10[4] = self;
  v10[5] = a2;
  v10[6] = a4;
  [v9 client:v7 setIBLMNotificationsState:a4 withHandler:v10];

  _Block_object_dispose(v12, 8);
}

- (BOOL)recommendsAutoLPMWithError:(id *)a3
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50___OSBatteryPredictor_recommendsAutoLPMWithError___block_invoke;
  v11[3] = &unk_2799C1550;
  v11[5] = &v16;
  v11[6] = a2;
  v11[4] = self;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50___OSBatteryPredictor_recommendsAutoLPMWithError___block_invoke_95;
  v10[3] = &unk_2799C16E0;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = &v16;
  v10[7] = a2;
  [v7 recommendsAutoLPMWithHandler:v10];

  if (a3)
  {
    *a3 = v17[5];
  }

  v8 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return v8;
}

- (double)timeToEmpty
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__0;
  v9[4] = __Block_byref_object_dispose__0;
  v10 = 0;
  connection = self->_connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34___OSBatteryPredictor_timeToEmpty__block_invoke;
  v8[3] = &unk_2799C15C8;
  v8[4] = self;
  v4 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34___OSBatteryPredictor_timeToEmpty__block_invoke_96;
  v7[3] = &unk_2799C1708;
  v7[4] = self;
  v7[5] = &v11;
  v7[6] = v9;
  [v4 predictedTimeTillDischargeWithHandler:v7];

  v5 = v12[3];
  _Block_object_dispose(v9, 8);

  _Block_object_dispose(&v11, 8);
  return v5;
}

@end