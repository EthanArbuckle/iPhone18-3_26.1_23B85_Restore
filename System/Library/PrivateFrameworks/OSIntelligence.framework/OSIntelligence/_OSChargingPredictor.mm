@interface _OSChargingPredictor
+ (id)predictor;
- (BOOL)longChargeExpectedWithConfidence:(double)a3;
- (_OSChargingPredictor)init;
- (double)predictedChargeDuration;
- (double)timeUntilNextChargeSessionOfMinDuration:(double)a3 fromSOC:(int64_t)a4 WithError:(id *)a5;
- (id)chargePredictionOutputOfScheme:(unint64_t)a3 withError:(id *)a4;
- (id)fixModelOutput:(id)a3;
- (id)unfixModelOutput;
- (id)validConnection;
- (void)dealloc;
- (void)fixModelOutput:(id)a3 withHandler:(id)a4;
- (void)handleInterruption;
- (void)initConnection;
- (void)unfixModelOutputWithHandler:(id)a3;
@end

@implementation _OSChargingPredictor

- (id)validConnection
{
  os_unfair_lock_lock(&self->_lock);
  connection = self->_connection;
  if (!connection)
  {
    [(_OSChargingPredictor *)self initConnection];
    connection = self->_connection;
  }

  v4 = connection;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (_OSChargingPredictor)init
{
  v6.receiver = self;
  v6.super_class = _OSChargingPredictor;
  v2 = [(_OSChargingPredictor *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.osintelligence", "charging");
    log = v2->_log;
    v2->_log = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    [(_OSChargingPredictor *)v2 initConnection];
  }

  return v2;
}

- (void)initConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.OSIntelligence.charging" options:4096];
  connection = self->_connection;
  self->_connection = v3;

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286EBE0F8];
  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v5];

  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38___OSChargingPredictor_initConnection__block_invoke;
  v8[3] = &unk_2799C1528;
  objc_copyWeak(&v9, &location);
  [(NSXPCConnection *)self->_connection setInvalidationHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38___OSChargingPredictor_initConnection__block_invoke_58;
  v6[3] = &unk_2799C1528;
  objc_copyWeak(&v7, &location);
  [(NSXPCConnection *)self->_connection setInterruptionHandler:v6];
  [(NSXPCConnection *)self->_connection resume];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)handleInterruption
{
  os_unfair_lock_lock(&self->_lock);
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  v4.receiver = self;
  v4.super_class = _OSChargingPredictor;
  [(_OSChargingPredictor *)&v4 dealloc];
}

+ (id)predictor
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (BOOL)longChargeExpectedWithConfidence:(double)a3
{
  v4 = [(_OSChargingPredictor *)self chargePredictionOutputOfScheme:1 withError:0];
  v5 = v4;
  if (v4 && ([v4 confidence], v6 > a3))
  {
    [v5 chargingDuration];
    v8 = v7 > 1800.0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)predictedChargeDuration
{
  v2 = [(_OSChargingPredictor *)self chargePredictionOutputOfScheme:1 withError:0];
  v3 = v2;
  v4 = 0.0;
  if (v2 && [v2 meetsSystemConfidenceThreshold])
  {
    [v3 chargingDuration];
    v4 = v5;
  }

  return v4;
}

- (id)chargePredictionOutputOfScheme:(unint64_t)a3 withError:(id *)a4
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v8 = [(_OSChargingPredictor *)self validConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65___OSChargingPredictor_chargePredictionOutputOfScheme_withError___block_invoke;
  v13[3] = &unk_2799C1550;
  v13[5] = &v14;
  v13[6] = a2;
  v13[4] = self;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65___OSChargingPredictor_chargePredictionOutputOfScheme_withError___block_invoke_62;
  v12[3] = &unk_2799C1578;
  v12[4] = self;
  v12[5] = &v20;
  v12[6] = &v14;
  v12[7] = a2;
  [v9 chargeDurationPredictionOfScheme:a3 withHandler:v12];

  if (a4)
  {
    *a4 = v15[5];
  }

  v10 = v21[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v10;
}

- (double)timeUntilNextChargeSessionOfMinDuration:(double)a3 fromSOC:(int64_t)a4 WithError:(id *)a5
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v10 = [(_OSChargingPredictor *)self validConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82___OSChargingPredictor_timeUntilNextChargeSessionOfMinDuration_fromSOC_WithError___block_invoke;
  v16[3] = &unk_2799C1550;
  v16[5] = &v17;
  v16[6] = a2;
  v16[4] = self;
  v11 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82___OSChargingPredictor_timeUntilNextChargeSessionOfMinDuration_fromSOC_WithError___block_invoke_64;
  v15[3] = &unk_2799C15A0;
  v15[4] = self;
  v15[5] = &v23;
  v15[6] = &v17;
  v15[7] = a2;
  [v11 timeUntilNextChargeSessionOfMinDuration:a4 fromSOC:v15 withHandler:a3];

  if (a5)
  {
    *a5 = v18[5];
  }

  [v24[5] doubleValue];
  v13 = v12;
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  return v13;
}

- (id)fixModelOutput:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v5 = [(_OSChargingPredictor *)self validConnection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39___OSChargingPredictor_fixModelOutput___block_invoke;
  v10[3] = &unk_2799C15C8;
  v10[4] = self;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39___OSChargingPredictor_fixModelOutput___block_invoke_66;
  v9[3] = &unk_2799C15F0;
  v9[4] = &v11;
  [v6 fixModelOutput:v4 withHandler:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

- (void)fixModelOutput:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_OSChargingPredictor *)self validConnection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51___OSChargingPredictor_fixModelOutput_withHandler___block_invoke;
  v10[3] = &unk_2799C15C8;
  v10[4] = self;
  v9 = [v8 remoteObjectProxyWithErrorHandler:v10];
  [v9 fixModelOutput:v7 withHandler:v6];
}

- (id)unfixModelOutput
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v3 = [(_OSChargingPredictor *)self validConnection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40___OSChargingPredictor_unfixModelOutput__block_invoke;
  v8[3] = &unk_2799C15C8;
  v8[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40___OSChargingPredictor_unfixModelOutput__block_invoke_68;
  v7[3] = &unk_2799C15F0;
  v7[4] = &v9;
  [v4 unfixModelOutputWithHandler:v7];

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

- (void)unfixModelOutputWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(_OSChargingPredictor *)self validConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52___OSChargingPredictor_unfixModelOutputWithHandler___block_invoke;
  v7[3] = &unk_2799C15C8;
  v7[4] = self;
  v6 = [v5 remoteObjectProxyWithErrorHandler:v7];
  [v6 unfixModelOutputWithHandler:v4];
}

@end