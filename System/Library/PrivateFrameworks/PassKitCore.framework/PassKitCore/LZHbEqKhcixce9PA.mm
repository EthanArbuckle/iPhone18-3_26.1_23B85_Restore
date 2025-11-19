@interface LZHbEqKhcixce9PA
+ (id)sharedInstance;
- (BOOL)l7UrdRfCzeduYqtA:(id)a3;
- (LZHbEqKhcixce9PA)initWithServiceName:(id)a3;
- (id)BFzukpKGO3cStNGp:(id)a3;
- (void)JI0A3nkqsab9cUj8:(id)a3 completion:(id)a4;
- (void)QeMnG23X94qgz7jT:(id)a3 hostChallenge:(id)a4 challengeResponse:(id)a5 seid:(id)a6 nonce:(id)a7 completion:(id)a8;
- (void)Z8aAH7stm0EYhyxg:(id)a3 dhAnc7b9U376IHnX:(id)a4 xz5EHXEN4FjlhJbi:(id)a5 uhVTXyAfCFn7u0Ue:(id)a6 EQUjQp7JcQbqcPcD:(id)a7 A5wDLa5TFdFZlz3A:(id)a8 TJKMyOe6zn5PdGIr:(id)a9 eCqgGM0WcnHOslnr:(unint64_t)a10 eCszfxdv3kUXvhgV:(unint64_t)a11 uWp4aZpP2vLhc04Q:(id)a12 QZYtNpvp0hKd248p:(id)a13 oCwPYmtRv8s31KUH:(id)a14 completion:(id)a15;
- (void)ZfE6lVphNUVrZcKx:(id)a3 completion:(id)a4;
- (void)evrtH713YbFfEOzk:(id)a3 completion:(id)a4;
- (void)llNEghuIdfPH7O8I:(BOOL)a3 all:(BOOL)a4 pregeneration:(BOOL)a5 workflowID:(id)a6 completion:(id)a7;
- (void)llNEghuIdfPH7O8I:(BOOL)a3 all:(BOOL)a4 workflowID:(id)a5 completion:(id)a6;
- (void)ofLBc0SV56ddaijH:(id)a3 i7D0Lridvo8oYoNd:(id)a4 completion:(id)a5;
- (void)uTtwJoGUgL3N0GVz;
- (void)updateRavioliWithCompletion:(id)a3;
- (void)vffg4lwI2HftPvpO:(id)a3;
@end

@implementation LZHbEqKhcixce9PA

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[LZHbEqKhcixce9PA sharedInstance];
  }

  v3 = sharedInstance_reference;

  return v3;
}

void __34__LZHbEqKhcixce9PA_sharedInstance__block_invoke()
{
  v0 = [[LZHbEqKhcixce9PA alloc] initWithServiceName:@"com.apple.asd.scoring"];
  v1 = sharedInstance_reference;
  sharedInstance_reference = v0;
}

- (LZHbEqKhcixce9PA)initWithServiceName:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = LZHbEqKhcixce9PA;
  v5 = [(LZHbEqKhcixce9PA *)&v20 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    disconnectionCallbacks = v5->_disconnectionCallbacks;
    v5->_disconnectionCallbacks = v6;

    v8 = dispatch_queue_create("com.apple.asd.interrupt", 0);
    syncQueue = v5->_syncQueue;
    v5->_syncQueue = v8;

    v10 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v4 options:4096];
    connection = v5->_connection;
    v5->_connection = v10;

    v12 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F247C6C8];
    [(NSXPCConnection *)v5->_connection setRemoteObjectInterface:v12];

    objc_initWeak(&location, v5);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __40__LZHbEqKhcixce9PA_initWithServiceName___block_invoke;
    v17 = &unk_1E79C3EA8;
    objc_copyWeak(&v18, &location);
    [(NSXPCConnection *)v5->_connection setInterruptionHandler:&v14];
    [(NSXPCConnection *)v5->_connection resume:v14];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __40__LZHbEqKhcixce9PA_initWithServiceName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained uTtwJoGUgL3N0GVz];
}

- (void)JI0A3nkqsab9cUj8:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_50];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__LZHbEqKhcixce9PA_JI0A3nkqsab9cUj8_completion___block_invoke_2;
  aBlock[3] = &unk_1E79C3EF0;
  v9 = v7;
  v22 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [(LZHbEqKhcixce9PA *)self BFzukpKGO3cStNGp:v10];
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__LZHbEqKhcixce9PA_JI0A3nkqsab9cUj8_completion___block_invoke_3;
  v16[3] = &unk_1E79C3F18;
  objc_copyWeak(&v19, &location);
  v12 = v11;
  v17 = v12;
  v13 = v9;
  v18 = v13;
  v14 = _Block_copy(v16);
  v15 = [v6 toDictionary];
  [v8 k0p7Rchr49btq6wB:v15 HY6FXG20397zwmVg:v14];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __48__LZHbEqKhcixce9PA_JI0A3nkqsab9cUj8_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)QeMnG23X94qgz7jT:(id)a3 hostChallenge:(id)a4 challengeResponse:(id)a5 seid:(id)a6 nonce:(id)a7 completion:(id)a8
{
  v26 = a3;
  v14 = a4;
  v25 = a5;
  v15 = a6;
  v24 = a7;
  v16 = a8;
  v17 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_53];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__LZHbEqKhcixce9PA_QeMnG23X94qgz7jT_hostChallenge_challengeResponse_seid_nonce_completion___block_invoke_2;
  aBlock[3] = &unk_1E79C3EF0;
  v18 = v16;
  v33 = v18;
  v19 = _Block_copy(aBlock);
  v20 = [(LZHbEqKhcixce9PA *)self BFzukpKGO3cStNGp:v19];
  objc_initWeak(&location, self);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __91__LZHbEqKhcixce9PA_QeMnG23X94qgz7jT_hostChallenge_challengeResponse_seid_nonce_completion___block_invoke_3;
  v27[3] = &unk_1E79C3F40;
  objc_copyWeak(&v30, &location);
  v21 = v20;
  v28 = v21;
  v22 = v18;
  v29 = v22;
  v23 = _Block_copy(v27);
  [v17 Me7YKKqFAKjegMFz:v26 hostChallenge:v14 challengeResponse:v25 seid:v15 nonce:v24 HY6FXG20397zwmVg:v23];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

void __91__LZHbEqKhcixce9PA_QeMnG23X94qgz7jT_hostChallenge_challengeResponse_seid_nonce_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)ZfE6lVphNUVrZcKx:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_56];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__LZHbEqKhcixce9PA_ZfE6lVphNUVrZcKx_completion___block_invoke_2;
  aBlock[3] = &unk_1E79C3EF0;
  v9 = v7;
  v21 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [(LZHbEqKhcixce9PA *)self BFzukpKGO3cStNGp:v10];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__LZHbEqKhcixce9PA_ZfE6lVphNUVrZcKx_completion___block_invoke_3;
  v15[3] = &unk_1E79C3F68;
  objc_copyWeak(&v18, &location);
  v12 = v11;
  v16 = v12;
  v13 = v9;
  v17 = v13;
  v14 = _Block_copy(v15);
  [v8 f9MGfLOgnHPuKTrU:v6 HY6FXG20397zwmVg:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __48__LZHbEqKhcixce9PA_ZfE6lVphNUVrZcKx_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)vffg4lwI2HftPvpO:(id)a3
{
  v4 = a3;
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_59];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__LZHbEqKhcixce9PA_vffg4lwI2HftPvpO___block_invoke_2;
  aBlock[3] = &unk_1E79C3EF0;
  v6 = v4;
  v18 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(LZHbEqKhcixce9PA *)self BFzukpKGO3cStNGp:v7];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__LZHbEqKhcixce9PA_vffg4lwI2HftPvpO___block_invoke_3;
  v12[3] = &unk_1E79C3F40;
  objc_copyWeak(&v15, &location);
  v9 = v8;
  v13 = v9;
  v10 = v6;
  v14 = v10;
  v11 = _Block_copy(v12);
  [v5 xs00laTiKIpDUzDP:v11];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __37__LZHbEqKhcixce9PA_vffg4lwI2HftPvpO___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)Z8aAH7stm0EYhyxg:(id)a3 dhAnc7b9U376IHnX:(id)a4 xz5EHXEN4FjlhJbi:(id)a5 uhVTXyAfCFn7u0Ue:(id)a6 EQUjQp7JcQbqcPcD:(id)a7 A5wDLa5TFdFZlz3A:(id)a8 TJKMyOe6zn5PdGIr:(id)a9 eCqgGM0WcnHOslnr:(unint64_t)a10 eCszfxdv3kUXvhgV:(unint64_t)a11 uWp4aZpP2vLhc04Q:(id)a12 QZYtNpvp0hKd248p:(id)a13 oCwPYmtRv8s31KUH:(id)a14 completion:(id)a15
{
  v21 = a3;
  v38 = a4;
  v37 = a5;
  v36 = a6;
  v35 = a7;
  v34 = a8;
  v22 = a9;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  v26 = a15;
  v33 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_61];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __235__LZHbEqKhcixce9PA_Z8aAH7stm0EYhyxg_dhAnc7b9U376IHnX_xz5EHXEN4FjlhJbi_uhVTXyAfCFn7u0Ue_EQUjQp7JcQbqcPcD_A5wDLa5TFdFZlz3A_TJKMyOe6zn5PdGIr_eCqgGM0WcnHOslnr_eCszfxdv3kUXvhgV_uWp4aZpP2vLhc04Q_QZYtNpvp0hKd248p_oCwPYmtRv8s31KUH_completion___block_invoke_2;
  aBlock[3] = &unk_1E79C3EF0;
  v27 = v26;
  v45 = v27;
  v28 = _Block_copy(aBlock);
  v29 = [(LZHbEqKhcixce9PA *)self BFzukpKGO3cStNGp:v28];
  objc_initWeak(&location, self);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __235__LZHbEqKhcixce9PA_Z8aAH7stm0EYhyxg_dhAnc7b9U376IHnX_xz5EHXEN4FjlhJbi_uhVTXyAfCFn7u0Ue_EQUjQp7JcQbqcPcD_A5wDLa5TFdFZlz3A_TJKMyOe6zn5PdGIr_eCqgGM0WcnHOslnr_eCszfxdv3kUXvhgV_uWp4aZpP2vLhc04Q_QZYtNpvp0hKd248p_oCwPYmtRv8s31KUH_completion___block_invoke_3;
  v39[3] = &unk_1E79C3F90;
  objc_copyWeak(&v42, &location);
  v30 = v29;
  v40 = v30;
  v31 = v27;
  v41 = v31;
  v32 = _Block_copy(v39);
  [v33 sPLljm0ZB9z7TiKd:v21 nSLeS2inTAbpsUeZ:v38 noUfOiGjp1iQmKZX:v37 pPGyXmlDbN3mzzHm:v36 iSOZt67ioKsVcqQZ:v22 hjCrdFOLMJN0Cc5Q:a10 lE40aye8U2u533Ka:a11 JRuZv6Feh9qwrGmN:v23 Wn0aIR2B54NCtGQc:v24 B3l3lS18BITy5E4L:v25 UywAszL6AB8Y6LTJ:v32 uNao9X8A82jVmQkK:? completion:?];

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
}

void __235__LZHbEqKhcixce9PA_Z8aAH7stm0EYhyxg_dhAnc7b9U376IHnX_xz5EHXEN4FjlhJbi_uhVTXyAfCFn7u0Ue_EQUjQp7JcQbqcPcD_A5wDLa5TFdFZlz3A_TJKMyOe6zn5PdGIr_eCqgGM0WcnHOslnr_eCszfxdv3kUXvhgV_uWp4aZpP2vLhc04Q_QZYtNpvp0hKd248p_oCwPYmtRv8s31KUH_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v14 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)updateRavioliWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_64];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__LZHbEqKhcixce9PA_updateRavioliWithCompletion___block_invoke_2;
  aBlock[3] = &unk_1E79C3EF0;
  v6 = v4;
  v16 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(LZHbEqKhcixce9PA *)self BFzukpKGO3cStNGp:v7];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__LZHbEqKhcixce9PA_updateRavioliWithCompletion___block_invoke_3;
  v11[3] = &unk_1E79C3FB8;
  objc_copyWeak(&v14, &location);
  v9 = v8;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  [v5 k4eQYhyzyebbQqys:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __48__LZHbEqKhcixce9PA_updateRavioliWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)llNEghuIdfPH7O8I:(BOOL)a3 all:(BOOL)a4 workflowID:(id)a5 completion:(id)a6
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696ABC0];
  v8 = MEMORY[0x1E696AEC0];
  v9 = kCoreASErrorDomainCA;
  v10 = a6;
  v11 = [v8 stringWithUTF8String:v9];
  v14 = *MEMORY[0x1E696A578];
  v15[0] = @"Not implemented";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v13 = [v7 errorWithDomain:v11 code:-27006 userInfo:v12];
  (*(a6 + 2))(v10, v13);
}

- (void)evrtH713YbFfEOzk:(id)a3 completion:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = MEMORY[0x1E696AEC0];
  v7 = kCoreASErrorDomainCA;
  v8 = a4;
  v9 = [v6 stringWithUTF8String:v7];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = @"Not implemented";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11 = [v5 errorWithDomain:v9 code:-27006 userInfo:v10];
  (*(a4 + 2))(v8, 0, v11);
}

- (void)ofLBc0SV56ddaijH:(id)a3 i7D0Lridvo8oYoNd:(id)a4 completion:(id)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696ABC0];
  v7 = MEMORY[0x1E696AEC0];
  v8 = kCoreASErrorDomainCA;
  v9 = a5;
  v10 = [v7 stringWithUTF8String:v8];
  v13 = *MEMORY[0x1E696A578];
  v14[0] = @"Not implemented";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12 = [v6 errorWithDomain:v10 code:-27006 userInfo:v11];
  (*(a5 + 2))(v9, 0, v12);
}

- (void)llNEghuIdfPH7O8I:(BOOL)a3 all:(BOOL)a4 pregeneration:(BOOL)a5 workflowID:(id)a6 completion:(id)a7
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696ABC0];
  v9 = MEMORY[0x1E696AEC0];
  v10 = kCoreASErrorDomainCA;
  v11 = a7;
  v12 = [v9 stringWithUTF8String:v10];
  v15 = *MEMORY[0x1E696A578];
  v16[0] = @"Not implemented";
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v14 = [v8 errorWithDomain:v12 code:-27006 userInfo:v13];
  (*(a7 + 2))(v11, v14);
}

- (id)BFzukpKGO3cStNGp:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v6 = [v5 UUIDString];

  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__LZHbEqKhcixce9PA_BFzukpKGO3cStNGp___block_invoke;
  block[3] = &unk_1E79C3FE0;
  block[4] = self;
  v15 = v4;
  v8 = v6;
  v14 = v8;
  v9 = v4;
  dispatch_sync(syncQueue, block);
  v10 = v14;
  v11 = v8;

  return v8;
}

void __37__LZHbEqKhcixce9PA_BFzukpKGO3cStNGp___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = _Block_copy(*(a1 + 48));
  [v2 setObject:v3 forKey:*(a1 + 40)];
}

- (BOOL)l7UrdRfCzeduYqtA:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__LZHbEqKhcixce9PA_l7UrdRfCzeduYqtA___block_invoke;
  block[3] = &unk_1E79C4008;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(syncQueue, block);
  LOBYTE(syncQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return syncQueue;
}

uint64_t __37__LZHbEqKhcixce9PA_l7UrdRfCzeduYqtA___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 24) = v2 != 0;

  v3 = a1[5];
  v4 = *(a1[4] + 16);

  return [v4 removeObjectForKey:v3];
}

- (void)uTtwJoGUgL3N0GVz
{
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__LZHbEqKhcixce9PA_uTtwJoGUgL3N0GVz__block_invoke;
  block[3] = &unk_1E79C4030;
  block[4] = self;
  dispatch_sync(syncQueue, block);
}

void __36__LZHbEqKhcixce9PA_uTtwJoGUgL3N0GVz__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:kCoreASErrorDomainCA];
  v4 = [v2 errorWithDomain:v3 code:-31 userInfo:0];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [*(*(a1 + 32) + 16) allValues];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [*(*(a1 + 32) + 16) removeAllObjects];
}

@end