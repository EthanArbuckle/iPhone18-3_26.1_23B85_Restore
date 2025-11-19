@interface CARWirelessPairingSession
- (CARWirelessPairingDelegate)delegate;
- (CARWirelessPairingSession)initWithVehicleAddress:(id)a3 supportedCapabilites:(unint64_t)a4 keyIdentifier:(id)a5;
- (void)_delegate_handleCompletedWithResult:(unint64_t)a3;
- (void)_delegate_handleRequestedPairingWithDeviceAddress:(id)a3 forIntent:(unint64_t)a4 C192:(id)a5 R192:(id)a6 C256:(id)a7 R256:(id)a8;
- (void)_servicePerform:(id)a3;
- (void)_setupConnection;
- (void)_synchronous_servicePerform:(id)a3;
- (void)cancelPairing;
- (void)dealloc;
- (void)handleVehicleReportedResult:(BOOL)a3;
- (void)invalidate;
- (void)requestPairing;
- (void)setupVehicleDataC192:(id)a3 r192:(id)a4 c256:(id)a5 r256:(id)a6;
@end

@implementation CARWirelessPairingSession

- (CARWirelessPairingSession)initWithVehicleAddress:(id)a3 supportedCapabilites:(unint64_t)a4 keyIdentifier:(id)a5
{
  v9 = a3;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = CARWirelessPairingSession;
  v11 = [(CARWirelessPairingSession *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_vehicleAddress, a3);
    v12->_supportedCapabilities = a4;
    objc_storeStrong(&v12->_keyIdentifier, a5);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_DEFAULT, 0);

    v15 = dispatch_queue_create("com.apple.carkit.wirelessPairingSession", v14);
    clientQueue = v12->_clientQueue;
    v12->_clientQueue = v15;

    [(CARWirelessPairingSession *)v12 _setupConnection];
  }

  return v12;
}

- (void)dealloc
{
  [(CARWirelessPairingSession *)self invalidate];
  v3.receiver = self;
  v3.super_class = CARWirelessPairingSession;
  [(CARWirelessPairingSession *)&v3 dealloc];
}

- (void)requestPairing
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__CARWirelessPairingSession_requestPairing__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 48);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__CARWirelessPairingSession_requestPairing__block_invoke_22;
    v6[3] = &unk_1E82FD3A0;
    objc_copyWeak(v7, (a1 + 40));
    v7[1] = *(a1 + 48);
    [v3 requestPairingForIntent:v4 completion:v6];
    objc_destroyWeak(v7);
  }

  else
  {
    v5 = CarPairingLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __43__CARWirelessPairingSession_requestPairing__block_invoke_cold_1();
    }

    [*(a1 + 32) _delegate_handleCompletedWithResult:5];
  }
}

void __43__CARWirelessPairingSession_requestPairing__block_invoke_22(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v28 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v22 = CarPairingLogging();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (a2 || !v15)
  {
    if (v23)
    {
      v24 = 134218242;
      v25 = a2;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&dword_1C81FC000, v22, OS_LOG_TYPE_DEFAULT, "cannot request pairing, result: %lu error: %@", &v24, 0x16u);
    }

    [WeakRetained _delegate_handleCompletedWithResult:a2];
  }

  else
  {
    if (v23)
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_1C81FC000, v22, OS_LOG_TYPE_DEFAULT, "received pairing data", &v24, 2u);
    }

    [WeakRetained _delegate_handleRequestedPairingWithDeviceAddress:v15 forIntent:*(a1 + 40) C192:v16 R192:v17 C256:v18 R256:v19];
  }
}

- (void)setupVehicleDataC192:(id)a3 r192:(id)a4 c256:(id)a5 r256:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = CarPairingLogging();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1C81FC000, v14, OS_LOG_TYPE_DEFAULT, "setting up vehicle pairing data", buf, 2u);
  }

  objc_initWeak(buf, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__CARWirelessPairingSession_setupVehicleDataC192_r192_c256_r256___block_invoke;
  v19[3] = &unk_1E82FD418;
  v19[4] = self;
  v15 = v10;
  v20 = v15;
  v16 = v11;
  v21 = v16;
  v17 = v12;
  v22 = v17;
  v18 = v13;
  v23 = v18;
  objc_copyWeak(&v24, buf);
  [(CARWirelessPairingSession *)self _servicePerform:v19];
  objc_destroyWeak(&v24);

  objc_destroyWeak(buf);
}

void __65__CARWirelessPairingSession_setupVehicleDataC192_r192_c256_r256___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__CARWirelessPairingSession_setupVehicleDataC192_r192_c256_r256___block_invoke_25;
    v9[3] = &unk_1E82FD3F0;
    objc_copyWeak(&v10, (a1 + 72));
    [v3 setupVehicleDataC192:v4 r192:v5 c256:v6 r256:v7 completion:v9];
    objc_destroyWeak(&v10);
  }

  else
  {
    v8 = CarPairingLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __65__CARWirelessPairingSession_setupVehicleDataC192_r192_c256_r256___block_invoke_cold_1();
    }

    [*(a1 + 32) _delegate_handleCompletedWithResult:5];
  }
}

void __65__CARWirelessPairingSession_setupVehicleDataC192_r192_c256_r256___block_invoke_25(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = CarPairingLogging();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v8)
    {
      v9 = 134218242;
      v10 = a2;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_DEFAULT, "pairing completed unsuccessfully, result: %lu error: %@", &v9, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_DEFAULT, "pairing completed successfully", &v9, 2u);
    }

    a2 = 0;
  }

  [WeakRetained _delegate_handleCompletedWithResult:a2];
}

- (void)handleVehicleReportedResult:(BOOL)a3
{
  v3 = a3;
  v5 = CarPairingLogging();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_DEFAULT, "vehicle reported pairing success", v7, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CARWirelessPairingSession handleVehicleReportedResult:];
    }

    [(CARWirelessPairingSession *)self cancelPairing];
  }
}

- (void)cancelPairing
{
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C81FC000, v3, OS_LOG_TYPE_DEFAULT, "cancelling pairing", v4, 2u);
  }

  [(CARWirelessPairingSession *)self _servicePerform:&__block_literal_global_25];
}

- (void)invalidate
{
  [(CARWirelessPairingSession *)self cancelPairing];
  v3 = [(CARWirelessPairingSession *)self connection];
  [v3 invalidate];

  [(CARWirelessPairingSession *)self setConnection:0];
}

- (void)_setupConnection
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.carkit.pairing.service" options:4096];
  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4803B88];
  [v3 setRemoteObjectInterface:v4];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__CARWirelessPairingSession__setupConnection__block_invoke;
  v8[3] = &unk_1E82FC248;
  objc_copyWeak(&v9, &location);
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__CARWirelessPairingSession__setupConnection__block_invoke_84;
  v6[3] = &unk_1E82FC248;
  objc_copyWeak(&v7, &location);
  [v3 setInvalidationHandler:v6];
  [v3 resume];
  [(CARWirelessPairingSession *)self setConnection:v3];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__CARWirelessPairingSession__setupConnection__block_invoke_85;
  v5[3] = &unk_1E82FD460;
  v5[4] = self;
  [(CARWirelessPairingSession *)self _synchronous_servicePerform:v5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __45__CARWirelessPairingSession__setupConnection__block_invoke(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __45__CARWirelessPairingSession__setupConnection__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionReset];
}

void __45__CARWirelessPairingSession__setupConnection__block_invoke_84(uint64_t a1)
{
  v2 = CarPairingLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __45__CARWirelessPairingSession__setupConnection__block_invoke_84_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void __45__CARWirelessPairingSession__setupConnection__block_invoke_85(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 vehicleAddress];
  v5 = [*(a1 + 32) keyIdentifier];
  [v4 initializeForVehicleAddress:v6 keyIdentifier:v5 completion:&__block_literal_global_88];
}

void __45__CARWirelessPairingSession__setupConnection__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = CarPairingLogging();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __45__CARWirelessPairingSession__setupConnection__block_invoke_2_cold_2();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __45__CARWirelessPairingSession__setupConnection__block_invoke_2_cold_1();
  }
}

- (void)_servicePerform:(id)a3
{
  v4 = a3;
  v5 = [(CARWirelessPairingSession *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:&__block_literal_global_91];

  v4[2](v4, v6);
}

void __45__CARWirelessPairingSession__servicePerform___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __45__CARWirelessPairingSession__servicePerform___block_invoke_cold_1();
  }
}

- (void)_synchronous_servicePerform:(id)a3
{
  v4 = a3;
  v5 = [(CARWirelessPairingSession *)self connection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_93_0];

  v4[2](v4, v6);
}

void __57__CARWirelessPairingSession__synchronous_servicePerform___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CarPairingLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __57__CARWirelessPairingSession__synchronous_servicePerform___block_invoke_cold_1();
  }
}

- (void)_delegate_handleRequestedPairingWithDeviceAddress:(id)a3 forIntent:(unint64_t)a4 C192:(id)a5 R192:(id)a6 C256:(id)a7 R256:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [(CARWirelessPairingSession *)self clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __109__CARWirelessPairingSession__delegate_handleRequestedPairingWithDeviceAddress_forIntent_C192_R192_C256_R256___block_invoke;
  block[3] = &unk_1E82FD488;
  block[4] = self;
  v26 = v14;
  v30 = v18;
  v31 = a4;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v20 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  dispatch_async(v19, block);
}

void __109__CARWirelessPairingSession__delegate_handleRequestedPairingWithDeviceAddress_forIntent_C192_R192_C256_R256___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v4 = objc_opt_respondsToSelector();
    v3 = v5;
    if (v4)
    {
      [v5 pairingSession:*(a1 + 32) requestedPairingWithDeviceAddress:*(a1 + 40) forIntent:*(a1 + 80) c192:*(a1 + 48) r192:*(a1 + 56) c256:*(a1 + 64) r256:*(a1 + 72)];
      v3 = v5;
    }
  }
}

- (void)_delegate_handleCompletedWithResult:(unint64_t)a3
{
  v5 = [(CARWirelessPairingSession *)self clientQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__CARWirelessPairingSession__delegate_handleCompletedWithResult___block_invoke;
  v6[3] = &unk_1E82FD2C8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

uint64_t __65__CARWirelessPairingSession__delegate_handleCompletedWithResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v4 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v4 pairingSession:*(a1 + 32) completedWithResult:*(a1 + 40)];
    }
  }

  return MEMORY[0x1EEE66C38]();
}

- (CARWirelessPairingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __43__CARWirelessPairingSession_requestPairing__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__CARWirelessPairingSession_setupVehicleDataC192_r192_c256_r256___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleVehicleReportedResult:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __45__CARWirelessPairingSession__setupConnection__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __45__CARWirelessPairingSession__setupConnection__block_invoke_84_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end