@interface Lt10zus2DOk3OfFf
+ (id)sharedInstance;
- (BOOL)l7UrdRfCzeduYqtA:(id)a;
- (Lt10zus2DOk3OfFf)initWithServiceName:(id)name;
- (id)BFzukpKGO3cStNGp:(id)gp;
- (void)JI0A3nkqsab9cUj8:(id)uj8 completion:(id)completion;
- (void)QeMnG23X94qgz7jT:(id)t hostChallenge:(id)challenge challengeResponse:(id)response seid:(id)seid nonce:(id)nonce completion:(id)completion;
- (void)Z8aAH7stm0EYhyxg:(id)yhyxg dhAnc7b9U376IHnX:(id)x xz5EHXEN4FjlhJbi:(id)jbi uhVTXyAfCFn7u0Ue:(id)ue EQUjQp7JcQbqcPcD:(id)d A5wDLa5TFdFZlz3A:(id)a TJKMyOe6zn5PdGIr:(id)ir eCqgGM0WcnHOslnr:(unint64_t)self0 eCszfxdv3kUXvhgV:(unint64_t)self1 uWp4aZpP2vLhc04Q:(id)self2 QZYtNpvp0hKd248p:(id)self3 oCwPYmtRv8s31KUH:(id)self4 completion:(id)self5;
- (void)ZfE6lVphNUVrZcKx:(id)kx completion:(id)completion;
- (void)cacheData:(id)data forKey:(id)key andCategory:(int64_t)category completion:(id)completion;
- (void)dKsJLlNX54lzKt5n:(id)kt5n eqF2XJh3hHBJQf2K:(id)k;
- (void)evrtH713YbFfEOzk:(id)ozk completion:(id)completion;
- (void)fetchConfigThrowingWithCompletion:(id)completion;
- (void)fetchConfigWithCompletion:(id)completion;
- (void)fetchDataForKey:(id)key andCategory:(int64_t)category completion:(id)completion;
- (void)fetchGeoCodingsForAddresses:(id)addresses completion:(id)completion;
- (void)lJIqliFcwusu4FxD:(id)d be2xk53Wn161LTDz:(id)dz completion:(id)completion;
- (void)ofLBc0SV56ddaijH:(id)h i7D0Lridvo8oYoNd:(id)nd completion:(id)completion;
- (void)registerICloudLoginWithCompletion:(id)completion;
- (void)uTtwJoGUgL3N0GVz;
- (void)unregisterICloudLoginWithCompletion:(id)completion;
- (void)updateGeoCodingsForAddresses:(id)addresses locations:(id)locations;
- (void)updateRavioliWithCompletion:(id)completion;
- (void)vffg4lwI2HftPvpO:(id)o;
@end

@implementation Lt10zus2DOk3OfFf

+ (id)sharedInstance
{
  if (sharedInstance_onceToken[0] != -1)
  {
    +[Lt10zus2DOk3OfFf sharedInstance];
  }

  v3 = sharedInstance_reference;

  return v3;
}

uint64_t __34__Lt10zus2DOk3OfFf_sharedInstance__block_invoke()
{
  sharedInstance_reference = [[Lt10zus2DOk3OfFf alloc] initWithServiceName:@"com.apple.asd.scoring"];

  return MEMORY[0x1EEE66BB8]();
}

- (Lt10zus2DOk3OfFf)initWithServiceName:(id)name
{
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = Lt10zus2DOk3OfFf;
  v5 = [(Lt10zus2DOk3OfFf *)&v20 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    disconnectionCallbacks = v5->_disconnectionCallbacks;
    v5->_disconnectionCallbacks = v6;

    v8 = dispatch_queue_create("com.apple.asd.interrupt", 0);
    syncQueue = v5->_syncQueue;
    v5->_syncQueue = v8;

    v10 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:nameCopy options:4096];
    connection = v5->_connection;
    v5->_connection = v10;

    v12 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F56DCDE0];
    [(NSXPCConnection *)v5->_connection setRemoteObjectInterface:v12];

    objc_initWeak(&location, v5);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __40__Lt10zus2DOk3OfFf_initWithServiceName___block_invoke;
    v17 = &unk_1E85EDE70;
    objc_copyWeak(&v18, &location);
    [(NSXPCConnection *)v5->_connection setInterruptionHandler:&v14];
    [(NSXPCConnection *)v5->_connection resume:v14];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __40__Lt10zus2DOk3OfFf_initWithServiceName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained uTtwJoGUgL3N0GVz];
}

- (void)JI0A3nkqsab9cUj8:(id)uj8 completion:(id)completion
{
  uj8Copy = uj8;
  completionCopy = completion;
  v8 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_50];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__Lt10zus2DOk3OfFf_JI0A3nkqsab9cUj8_completion___block_invoke_2;
  aBlock[3] = &unk_1E85EDEB8;
  v9 = completionCopy;
  v22 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [(Lt10zus2DOk3OfFf *)self BFzukpKGO3cStNGp:v10];
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__Lt10zus2DOk3OfFf_JI0A3nkqsab9cUj8_completion___block_invoke_3;
  v16[3] = &unk_1E85EDEE0;
  objc_copyWeak(&v19, &location);
  v12 = v11;
  v17 = v12;
  v13 = v9;
  v18 = v13;
  v14 = _Block_copy(v16);
  toDictionary = [uj8Copy toDictionary];
  [v8 k0p7Rchr49btq6wB:toDictionary HY6FXG20397zwmVg:v14];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __48__Lt10zus2DOk3OfFf_JI0A3nkqsab9cUj8_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
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

- (void)QeMnG23X94qgz7jT:(id)t hostChallenge:(id)challenge challengeResponse:(id)response seid:(id)seid nonce:(id)nonce completion:(id)completion
{
  tCopy = t;
  challengeCopy = challenge;
  responseCopy = response;
  seidCopy = seid;
  nonceCopy = nonce;
  completionCopy = completion;
  v17 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_53];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__Lt10zus2DOk3OfFf_QeMnG23X94qgz7jT_hostChallenge_challengeResponse_seid_nonce_completion___block_invoke_2;
  aBlock[3] = &unk_1E85EDEB8;
  v18 = completionCopy;
  v33 = v18;
  v19 = _Block_copy(aBlock);
  v20 = [(Lt10zus2DOk3OfFf *)self BFzukpKGO3cStNGp:v19];
  objc_initWeak(&location, self);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __91__Lt10zus2DOk3OfFf_QeMnG23X94qgz7jT_hostChallenge_challengeResponse_seid_nonce_completion___block_invoke_3;
  v27[3] = &unk_1E85EDF08;
  objc_copyWeak(&v30, &location);
  v21 = v20;
  v28 = v21;
  v22 = v18;
  v29 = v22;
  v23 = _Block_copy(v27);
  [v17 Me7YKKqFAKjegMFz:tCopy hostChallenge:challengeCopy challengeResponse:responseCopy seid:seidCopy nonce:nonceCopy HY6FXG20397zwmVg:v23];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

void __91__Lt10zus2DOk3OfFf_QeMnG23X94qgz7jT_hostChallenge_challengeResponse_seid_nonce_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)ZfE6lVphNUVrZcKx:(id)kx completion:(id)completion
{
  kxCopy = kx;
  completionCopy = completion;
  v8 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_56];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__Lt10zus2DOk3OfFf_ZfE6lVphNUVrZcKx_completion___block_invoke_2;
  aBlock[3] = &unk_1E85EDEB8;
  v9 = completionCopy;
  v21 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [(Lt10zus2DOk3OfFf *)self BFzukpKGO3cStNGp:v10];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__Lt10zus2DOk3OfFf_ZfE6lVphNUVrZcKx_completion___block_invoke_3;
  v15[3] = &unk_1E85EDF30;
  objc_copyWeak(&v18, &location);
  v12 = v11;
  v16 = v12;
  v13 = v9;
  v17 = v13;
  v14 = _Block_copy(v15);
  [v8 f9MGfLOgnHPuKTrU:kxCopy HY6FXG20397zwmVg:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __48__Lt10zus2DOk3OfFf_ZfE6lVphNUVrZcKx_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)vffg4lwI2HftPvpO:(id)o
{
  oCopy = o;
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_59];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__Lt10zus2DOk3OfFf_vffg4lwI2HftPvpO___block_invoke_2;
  aBlock[3] = &unk_1E85EDEB8;
  v6 = oCopy;
  v18 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(Lt10zus2DOk3OfFf *)self BFzukpKGO3cStNGp:v7];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__Lt10zus2DOk3OfFf_vffg4lwI2HftPvpO___block_invoke_3;
  v12[3] = &unk_1E85EDF08;
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

void __37__Lt10zus2DOk3OfFf_vffg4lwI2HftPvpO___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)Z8aAH7stm0EYhyxg:(id)yhyxg dhAnc7b9U376IHnX:(id)x xz5EHXEN4FjlhJbi:(id)jbi uhVTXyAfCFn7u0Ue:(id)ue EQUjQp7JcQbqcPcD:(id)d A5wDLa5TFdFZlz3A:(id)a TJKMyOe6zn5PdGIr:(id)ir eCqgGM0WcnHOslnr:(unint64_t)self0 eCszfxdv3kUXvhgV:(unint64_t)self1 uWp4aZpP2vLhc04Q:(id)self2 QZYtNpvp0hKd248p:(id)self3 oCwPYmtRv8s31KUH:(id)self4 completion:(id)self5
{
  yhyxgCopy = yhyxg;
  xCopy = x;
  jbiCopy = jbi;
  ueCopy = ue;
  dCopy = d;
  aCopy = a;
  irCopy = ir;
  qCopy = q;
  kd248pCopy = kd248p;
  hCopy = h;
  completionCopy = completion;
  v33 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_61];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __235__Lt10zus2DOk3OfFf_Z8aAH7stm0EYhyxg_dhAnc7b9U376IHnX_xz5EHXEN4FjlhJbi_uhVTXyAfCFn7u0Ue_EQUjQp7JcQbqcPcD_A5wDLa5TFdFZlz3A_TJKMyOe6zn5PdGIr_eCqgGM0WcnHOslnr_eCszfxdv3kUXvhgV_uWp4aZpP2vLhc04Q_QZYtNpvp0hKd248p_oCwPYmtRv8s31KUH_completion___block_invoke_2;
  aBlock[3] = &unk_1E85EDEB8;
  v27 = completionCopy;
  v45 = v27;
  v28 = _Block_copy(aBlock);
  v29 = [(Lt10zus2DOk3OfFf *)self BFzukpKGO3cStNGp:v28];
  objc_initWeak(&location, self);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __235__Lt10zus2DOk3OfFf_Z8aAH7stm0EYhyxg_dhAnc7b9U376IHnX_xz5EHXEN4FjlhJbi_uhVTXyAfCFn7u0Ue_EQUjQp7JcQbqcPcD_A5wDLa5TFdFZlz3A_TJKMyOe6zn5PdGIr_eCqgGM0WcnHOslnr_eCszfxdv3kUXvhgV_uWp4aZpP2vLhc04Q_QZYtNpvp0hKd248p_oCwPYmtRv8s31KUH_completion___block_invoke_3;
  v39[3] = &unk_1E85EDF58;
  objc_copyWeak(&v42, &location);
  v30 = v29;
  v40 = v30;
  v31 = v27;
  v41 = v31;
  v32 = _Block_copy(v39);
  [v33 sPLljm0ZB9z7TiKd:yhyxgCopy nSLeS2inTAbpsUeZ:xCopy noUfOiGjp1iQmKZX:jbiCopy pPGyXmlDbN3mzzHm:ueCopy iSOZt67ioKsVcqQZ:irCopy hjCrdFOLMJN0Cc5Q:oslnr lE40aye8U2u533Ka:v JRuZv6Feh9qwrGmN:qCopy Wn0aIR2B54NCtGQc:kd248pCopy B3l3lS18BITy5E4L:hCopy UywAszL6AB8Y6LTJ:v32 uNao9X8A82jVmQkK:? completion:?];

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
}

void __235__Lt10zus2DOk3OfFf_Z8aAH7stm0EYhyxg_dhAnc7b9U376IHnX_xz5EHXEN4FjlhJbi_uhVTXyAfCFn7u0Ue_EQUjQp7JcQbqcPcD_A5wDLa5TFdFZlz3A_TJKMyOe6zn5PdGIr_eCqgGM0WcnHOslnr_eCszfxdv3kUXvhgV_uWp4aZpP2vLhc04Q_QZYtNpvp0hKd248p_oCwPYmtRv8s31KUH_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
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

- (void)updateRavioliWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_64];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__Lt10zus2DOk3OfFf_updateRavioliWithCompletion___block_invoke_2;
  aBlock[3] = &unk_1E85EDEB8;
  v6 = completionCopy;
  v16 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(Lt10zus2DOk3OfFf *)self BFzukpKGO3cStNGp:v7];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__Lt10zus2DOk3OfFf_updateRavioliWithCompletion___block_invoke_3;
  v11[3] = &unk_1E85EDF80;
  objc_copyWeak(&v14, &location);
  v9 = v8;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  [v5 k4eQYhyzyebbQqys:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __48__Lt10zus2DOk3OfFf_updateRavioliWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchConfigThrowingWithCompletion:(id)completion
{
  completionCopy = completion;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  connection = self->_connection;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __54__Lt10zus2DOk3OfFf_fetchConfigThrowingWithCompletion___block_invoke;
  v23[3] = &unk_1E85EDFA8;
  v23[4] = &v24;
  v6 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v23];
  v7 = v25[5];
  if (!(v7 | v6))
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:kCoreASErrorDomainCA];
    v10 = [v8 errorWithDomain:v9 code:-32 userInfo:0];
    v11 = v25[5];
    v25[5] = v10;

    v7 = v25[5];
  }

  if (v7)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__Lt10zus2DOk3OfFf_fetchConfigThrowingWithCompletion___block_invoke_2;
    aBlock[3] = &unk_1E85EDEB8;
    v12 = completionCopy;
    v21 = v12;
    v13 = _Block_copy(aBlock);
    v14 = [(Lt10zus2DOk3OfFf *)self BFzukpKGO3cStNGp:v13];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54__Lt10zus2DOk3OfFf_fetchConfigThrowingWithCompletion___block_invoke_3;
    v16[3] = &unk_1E85EDFD0;
    objc_copyWeak(&v19, &location);
    v15 = v14;
    v17 = v15;
    v18 = v12;
    [v6 fetchConfigWithCompletionXPC:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  _Block_object_dispose(&v24, 8);
}

void __54__Lt10zus2DOk3OfFf_fetchConfigThrowingWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchConfigWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_69];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__Lt10zus2DOk3OfFf_fetchConfigWithCompletion___block_invoke_2;
  aBlock[3] = &unk_1E85EDEB8;
  v6 = completionCopy;
  v16 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(Lt10zus2DOk3OfFf *)self BFzukpKGO3cStNGp:v7];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__Lt10zus2DOk3OfFf_fetchConfigWithCompletion___block_invoke_3;
  v11[3] = &unk_1E85EDFD0;
  objc_copyWeak(&v14, &location);
  v9 = v8;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  [v5 fetchConfigWithCompletionXPC:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __46__Lt10zus2DOk3OfFf_fetchConfigWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)updateGeoCodingsForAddresses:(id)addresses locations:(id)locations
{
  v15[2] = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  locationsCopy = locations;
  v8 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_71];
  if (addressesCopy && locationsCopy)
  {
    v9 = MEMORY[0x1E696ACC8];
    v14[0] = @"addresses";
    v14[1] = @"locations";
    v15[0] = addressesCopy;
    v15[1] = locationsCopy;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v13 = 0;
    v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v13];

    [v8 updateGeoCodingsXPC:v11 completion:&__block_literal_global_81];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)fetchGeoCodingsForAddresses:(id)addresses completion:(id)completion
{
  addressesCopy = addresses;
  completionCopy = completion;
  v8 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_83];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__Lt10zus2DOk3OfFf_fetchGeoCodingsForAddresses_completion___block_invoke_2;
  aBlock[3] = &unk_1E85EDEB8;
  v9 = completionCopy;
  v22 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [(Lt10zus2DOk3OfFf *)self BFzukpKGO3cStNGp:v10];
  v20 = 0;
  v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:addressesCopy requiringSecureCoding:1 error:&v20];
  v13 = v20;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__Lt10zus2DOk3OfFf_fetchGeoCodingsForAddresses_completion___block_invoke_3;
  v16[3] = &unk_1E85EDF08;
  objc_copyWeak(&v19, &location);
  v14 = v11;
  v17 = v14;
  v15 = v9;
  v18 = v15;
  [v8 fetchGeoCodingsForAddressesXPC:v12 completion:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __59__Lt10zus2DOk3OfFf_fetchGeoCodingsForAddresses_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    if (a3 || !v5)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v7 = objc_opt_self();
      v22 = 0;
      v8 = [ASGeoCodingKeyedUnarchiver unarchivedObjectOfClass:v7 fromData:v5 error:&v22];
      v9 = v22;

      if (v9 || !v8)
      {
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = v8;
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v18 + 1) + 8 * i);
              v16 = objc_opt_self();
              LOBYTE(v15) = objc_opt_isKindOfClass();

              if ((v15 & 1) == 0)
              {
                (*(*(a1 + 40) + 16))();

                goto LABEL_18;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        (*(*(a1 + 40) + 16))();
LABEL_18:
        v9 = 0;
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __77__Lt10zus2DOk3OfFf_llNEghuIdfPH7O8I_all_pregeneration_workflowID_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)dKsJLlNX54lzKt5n:(id)kt5n eqF2XJh3hHBJQf2K:(id)k
{
  connection = self->_connection;
  kCopy = k;
  kt5nCopy = kt5n;
  v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:&__block_literal_global_90];
  v9 = [(Lt10zus2DOk3OfFf *)self BFzukpKGO3cStNGp:&__block_literal_global_92];
  [v10 djoNSwl5j57W5mfl:kt5nCopy eqF2XJh3hHBJQf2K:kCopy];

  [(Lt10zus2DOk3OfFf *)self l7UrdRfCzeduYqtA:v9];
}

- (void)lJIqliFcwusu4FxD:(id)d be2xk53Wn161LTDz:(id)dz completion:(id)completion
{
  dCopy = d;
  dzCopy = dz;
  completionCopy = completion;
  v11 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_94];
  v12 = [(Lt10zus2DOk3OfFf *)self BFzukpKGO3cStNGp:&__block_literal_global_96];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__Lt10zus2DOk3OfFf_lJIqliFcwusu4FxD_be2xk53Wn161LTDz_completion___block_invoke_3;
  v15[3] = &unk_1E85EDF80;
  objc_copyWeak(&v18, &location);
  v13 = v12;
  v16 = v13;
  v14 = completionCopy;
  v17 = v14;
  [v11 lJIqliFcwusu4FxD:dCopy be2xk53Wn161LTDz:dzCopy completion:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __65__Lt10zus2DOk3OfFf_lJIqliFcwusu4FxD_be2xk53Wn161LTDz_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)evrtH713YbFfEOzk:(id)ozk completion:(id)completion
{
  ozkCopy = ozk;
  completionCopy = completion;
  v8 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_98];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__Lt10zus2DOk3OfFf_evrtH713YbFfEOzk_completion___block_invoke_2;
  aBlock[3] = &unk_1E85EDEB8;
  v9 = completionCopy;
  v20 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [(Lt10zus2DOk3OfFf *)self BFzukpKGO3cStNGp:v10];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__Lt10zus2DOk3OfFf_evrtH713YbFfEOzk_completion___block_invoke_3;
  v14[3] = &unk_1E85EDFF8;
  objc_copyWeak(&v17, &location);
  v12 = v11;
  v15 = v12;
  v13 = v9;
  v16 = v13;
  [v8 rGvculjlqIwBJaoX:ozkCopy completion:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

uint64_t __48__Lt10zus2DOk3OfFf_evrtH713YbFfEOzk_completion___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __48__Lt10zus2DOk3OfFf_evrtH713YbFfEOzk_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)cacheData:(id)data forKey:(id)key andCategory:(int64_t)category completion:(id)completion
{
  dataCopy = data;
  keyCopy = key;
  completionCopy = completion;
  v13 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_101];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__Lt10zus2DOk3OfFf_cacheData_forKey_andCategory_completion___block_invoke_2;
  aBlock[3] = &unk_1E85EDEB8;
  v14 = completionCopy;
  v24 = v14;
  v15 = _Block_copy(aBlock);
  v16 = [(Lt10zus2DOk3OfFf *)self BFzukpKGO3cStNGp:v15];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __60__Lt10zus2DOk3OfFf_cacheData_forKey_andCategory_completion___block_invoke_3;
  v19[3] = &unk_1E85EDF80;
  objc_copyWeak(&v22, &location);
  v17 = v16;
  v20 = v17;
  v18 = v14;
  v21 = v18;
  [v13 cacheDataXPC:dataCopy forKey:keyCopy andCategory:category completion:v19];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __60__Lt10zus2DOk3OfFf_cacheData_forKey_andCategory_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchDataForKey:(id)key andCategory:(int64_t)category completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v10 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_103];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__Lt10zus2DOk3OfFf_fetchDataForKey_andCategory_completion___block_invoke_2;
  aBlock[3] = &unk_1E85EDEB8;
  v11 = completionCopy;
  v22 = v11;
  v12 = _Block_copy(aBlock);
  v13 = [(Lt10zus2DOk3OfFf *)self BFzukpKGO3cStNGp:v12];
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __59__Lt10zus2DOk3OfFf_fetchDataForKey_andCategory_completion___block_invoke_3;
  v16[3] = &unk_1E85EDF08;
  objc_copyWeak(&v19, &location);
  v14 = v13;
  v17 = v14;
  v15 = v11;
  v18 = v15;
  [v10 fetchDataForKeyXPC:keyCopy andCategory:category completion:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

uint64_t __59__Lt10zus2DOk3OfFf_fetchDataForKey_andCategory_completion___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __59__Lt10zus2DOk3OfFf_fetchDataForKey_andCategory_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)registerICloudLoginWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_105];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__Lt10zus2DOk3OfFf_registerICloudLoginWithCompletion___block_invoke_2;
  aBlock[3] = &unk_1E85EDEB8;
  v6 = completionCopy;
  v16 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(Lt10zus2DOk3OfFf *)self BFzukpKGO3cStNGp:v7];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__Lt10zus2DOk3OfFf_registerICloudLoginWithCompletion___block_invoke_3;
  v11[3] = &unk_1E85EDF80;
  objc_copyWeak(&v14, &location);
  v9 = v8;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  [v5 registerICloudLoginWithCompletionXPC:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __54__Lt10zus2DOk3OfFf_registerICloudLoginWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)unregisterICloudLoginWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_107];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__Lt10zus2DOk3OfFf_unregisterICloudLoginWithCompletion___block_invoke_2;
  aBlock[3] = &unk_1E85EDEB8;
  v6 = completionCopy;
  v16 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(Lt10zus2DOk3OfFf *)self BFzukpKGO3cStNGp:v7];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__Lt10zus2DOk3OfFf_unregisterICloudLoginWithCompletion___block_invoke_3;
  v11[3] = &unk_1E85EDF80;
  objc_copyWeak(&v14, &location);
  v9 = v8;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  [v5 unregisterICloudLoginWithCompletionXPC:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __56__Lt10zus2DOk3OfFf_unregisterICloudLoginWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)ofLBc0SV56ddaijH:(id)h i7D0Lridvo8oYoNd:(id)nd completion:(id)completion
{
  hCopy = h;
  ndCopy = nd;
  completionCopy = completion;
  v11 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_109];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__Lt10zus2DOk3OfFf_ofLBc0SV56ddaijH_i7D0Lridvo8oYoNd_completion___block_invoke_2;
  aBlock[3] = &unk_1E85EDEB8;
  v12 = completionCopy;
  v23 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [(Lt10zus2DOk3OfFf *)self BFzukpKGO3cStNGp:v13];
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __65__Lt10zus2DOk3OfFf_ofLBc0SV56ddaijH_i7D0Lridvo8oYoNd_completion___block_invoke_3;
  v17[3] = &unk_1E85EDF08;
  objc_copyWeak(&v20, &location);
  v15 = v14;
  v18 = v15;
  v16 = v12;
  v19 = v16;
  [v11 pRo6qBDnfEL0sBNs:hCopy i7D0Lridvo8oYoNd:ndCopy completion:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

uint64_t __65__Lt10zus2DOk3OfFf_ofLBc0SV56ddaijH_i7D0Lridvo8oYoNd_completion___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __65__Lt10zus2DOk3OfFf_ofLBc0SV56ddaijH_i7D0Lridvo8oYoNd_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained l7UrdRfCzeduYqtA:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)BFzukpKGO3cStNGp:(id)gp
{
  gpCopy = gp;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__Lt10zus2DOk3OfFf_BFzukpKGO3cStNGp___block_invoke;
  block[3] = &unk_1E85EE020;
  block[4] = self;
  v15 = gpCopy;
  v8 = uUIDString;
  v14 = v8;
  v9 = gpCopy;
  dispatch_sync(syncQueue, block);
  v10 = v14;
  v11 = v8;

  return v8;
}

void __37__Lt10zus2DOk3OfFf_BFzukpKGO3cStNGp___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = _Block_copy(*(a1 + 48));
  [v2 setObject:v3 forKey:*(a1 + 40)];
}

- (BOOL)l7UrdRfCzeduYqtA:(id)a
{
  aCopy = a;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__Lt10zus2DOk3OfFf_l7UrdRfCzeduYqtA___block_invoke;
  block[3] = &unk_1E85EE048;
  v9 = aCopy;
  v10 = &v11;
  block[4] = self;
  v6 = aCopy;
  dispatch_sync(syncQueue, block);
  LOBYTE(syncQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return syncQueue;
}

uint64_t __37__Lt10zus2DOk3OfFf_l7UrdRfCzeduYqtA___block_invoke(void *a1)
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
  block[2] = __36__Lt10zus2DOk3OfFf_uTtwJoGUgL3N0GVz__block_invoke;
  block[3] = &unk_1E85EE070;
  block[4] = self;
  dispatch_sync(syncQueue, block);
}

void __36__Lt10zus2DOk3OfFf_uTtwJoGUgL3N0GVz__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:kCoreASErrorDomainCA];
  v4 = [v2 errorWithDomain:v3 code:-31 userInfo:0];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [*(*(a1 + 32) + 16) allValues];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v11 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [*(*(a1 + 32) + 16) removeAllObjects];
  v10 = *MEMORY[0x1E69E9840];
}

@end