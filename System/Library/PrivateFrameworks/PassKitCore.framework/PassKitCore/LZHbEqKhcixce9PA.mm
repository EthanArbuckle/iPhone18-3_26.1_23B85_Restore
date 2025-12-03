@interface LZHbEqKhcixce9PA
+ (id)sharedInstance;
- (BOOL)l7UrdRfCzeduYqtA:(id)a;
- (LZHbEqKhcixce9PA)initWithServiceName:(id)name;
- (id)BFzukpKGO3cStNGp:(id)gp;
- (void)JI0A3nkqsab9cUj8:(id)uj8 completion:(id)completion;
- (void)QeMnG23X94qgz7jT:(id)t hostChallenge:(id)challenge challengeResponse:(id)response seid:(id)seid nonce:(id)nonce completion:(id)completion;
- (void)Z8aAH7stm0EYhyxg:(id)yhyxg dhAnc7b9U376IHnX:(id)x xz5EHXEN4FjlhJbi:(id)jbi uhVTXyAfCFn7u0Ue:(id)ue EQUjQp7JcQbqcPcD:(id)d A5wDLa5TFdFZlz3A:(id)a TJKMyOe6zn5PdGIr:(id)ir eCqgGM0WcnHOslnr:(unint64_t)self0 eCszfxdv3kUXvhgV:(unint64_t)self1 uWp4aZpP2vLhc04Q:(id)self2 QZYtNpvp0hKd248p:(id)self3 oCwPYmtRv8s31KUH:(id)self4 completion:(id)self5;
- (void)ZfE6lVphNUVrZcKx:(id)kx completion:(id)completion;
- (void)evrtH713YbFfEOzk:(id)ozk completion:(id)completion;
- (void)llNEghuIdfPH7O8I:(BOOL)i all:(BOOL)all pregeneration:(BOOL)pregeneration workflowID:(id)d completion:(id)completion;
- (void)llNEghuIdfPH7O8I:(BOOL)i all:(BOOL)all workflowID:(id)d completion:(id)completion;
- (void)ofLBc0SV56ddaijH:(id)h i7D0Lridvo8oYoNd:(id)nd completion:(id)completion;
- (void)uTtwJoGUgL3N0GVz;
- (void)updateRavioliWithCompletion:(id)completion;
- (void)vffg4lwI2HftPvpO:(id)o;
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

- (LZHbEqKhcixce9PA)initWithServiceName:(id)name
{
  nameCopy = name;
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

    v10 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:nameCopy options:4096];
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

- (void)JI0A3nkqsab9cUj8:(id)uj8 completion:(id)completion
{
  uj8Copy = uj8;
  completionCopy = completion;
  v8 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_50];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__LZHbEqKhcixce9PA_JI0A3nkqsab9cUj8_completion___block_invoke_2;
  aBlock[3] = &unk_1E79C3EF0;
  v9 = completionCopy;
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
  toDictionary = [uj8Copy toDictionary];
  [v8 k0p7Rchr49btq6wB:toDictionary HY6FXG20397zwmVg:v14];

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
  aBlock[2] = __91__LZHbEqKhcixce9PA_QeMnG23X94qgz7jT_hostChallenge_challengeResponse_seid_nonce_completion___block_invoke_2;
  aBlock[3] = &unk_1E79C3EF0;
  v18 = completionCopy;
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
  [v17 Me7YKKqFAKjegMFz:tCopy hostChallenge:challengeCopy challengeResponse:responseCopy seid:seidCopy nonce:nonceCopy HY6FXG20397zwmVg:v23];

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

- (void)ZfE6lVphNUVrZcKx:(id)kx completion:(id)completion
{
  kxCopy = kx;
  completionCopy = completion;
  v8 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_56];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__LZHbEqKhcixce9PA_ZfE6lVphNUVrZcKx_completion___block_invoke_2;
  aBlock[3] = &unk_1E79C3EF0;
  v9 = completionCopy;
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
  [v8 f9MGfLOgnHPuKTrU:kxCopy HY6FXG20397zwmVg:v14];

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

- (void)vffg4lwI2HftPvpO:(id)o
{
  oCopy = o;
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_59];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__LZHbEqKhcixce9PA_vffg4lwI2HftPvpO___block_invoke_2;
  aBlock[3] = &unk_1E79C3EF0;
  v6 = oCopy;
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
  aBlock[2] = __235__LZHbEqKhcixce9PA_Z8aAH7stm0EYhyxg_dhAnc7b9U376IHnX_xz5EHXEN4FjlhJbi_uhVTXyAfCFn7u0Ue_EQUjQp7JcQbqcPcD_A5wDLa5TFdFZlz3A_TJKMyOe6zn5PdGIr_eCqgGM0WcnHOslnr_eCszfxdv3kUXvhgV_uWp4aZpP2vLhc04Q_QZYtNpvp0hKd248p_oCwPYmtRv8s31KUH_completion___block_invoke_2;
  aBlock[3] = &unk_1E79C3EF0;
  v27 = completionCopy;
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
  [v33 sPLljm0ZB9z7TiKd:yhyxgCopy nSLeS2inTAbpsUeZ:xCopy noUfOiGjp1iQmKZX:jbiCopy pPGyXmlDbN3mzzHm:ueCopy iSOZt67ioKsVcqQZ:irCopy hjCrdFOLMJN0Cc5Q:oslnr lE40aye8U2u533Ka:v JRuZv6Feh9qwrGmN:qCopy Wn0aIR2B54NCtGQc:kd248pCopy B3l3lS18BITy5E4L:hCopy UywAszL6AB8Y6LTJ:v32 uNao9X8A82jVmQkK:? completion:?];

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

- (void)updateRavioliWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_64];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__LZHbEqKhcixce9PA_updateRavioliWithCompletion___block_invoke_2;
  aBlock[3] = &unk_1E79C3EF0;
  v6 = completionCopy;
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

- (void)llNEghuIdfPH7O8I:(BOOL)i all:(BOOL)all workflowID:(id)d completion:(id)completion
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696ABC0];
  v8 = MEMORY[0x1E696AEC0];
  v9 = kCoreASErrorDomainCA;
  completionCopy = completion;
  v11 = [v8 stringWithUTF8String:v9];
  v14 = *MEMORY[0x1E696A578];
  v15[0] = @"Not implemented";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v13 = [v7 errorWithDomain:v11 code:-27006 userInfo:v12];
  (*(completion + 2))(completionCopy, v13);
}

- (void)evrtH713YbFfEOzk:(id)ozk completion:(id)completion
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = MEMORY[0x1E696AEC0];
  v7 = kCoreASErrorDomainCA;
  completionCopy = completion;
  v9 = [v6 stringWithUTF8String:v7];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = @"Not implemented";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v11 = [v5 errorWithDomain:v9 code:-27006 userInfo:v10];
  (*(completion + 2))(completionCopy, 0, v11);
}

- (void)ofLBc0SV56ddaijH:(id)h i7D0Lridvo8oYoNd:(id)nd completion:(id)completion
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696ABC0];
  v7 = MEMORY[0x1E696AEC0];
  v8 = kCoreASErrorDomainCA;
  completionCopy = completion;
  v10 = [v7 stringWithUTF8String:v8];
  v13 = *MEMORY[0x1E696A578];
  v14[0] = @"Not implemented";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v12 = [v6 errorWithDomain:v10 code:-27006 userInfo:v11];
  (*(completion + 2))(completionCopy, 0, v12);
}

- (void)llNEghuIdfPH7O8I:(BOOL)i all:(BOOL)all pregeneration:(BOOL)pregeneration workflowID:(id)d completion:(id)completion
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696ABC0];
  v9 = MEMORY[0x1E696AEC0];
  v10 = kCoreASErrorDomainCA;
  completionCopy = completion;
  v12 = [v9 stringWithUTF8String:v10];
  v15 = *MEMORY[0x1E696A578];
  v16[0] = @"Not implemented";
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v14 = [v8 errorWithDomain:v12 code:-27006 userInfo:v13];
  (*(completion + 2))(completionCopy, v14);
}

- (id)BFzukpKGO3cStNGp:(id)gp
{
  gpCopy = gp;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__LZHbEqKhcixce9PA_BFzukpKGO3cStNGp___block_invoke;
  block[3] = &unk_1E79C3FE0;
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

void __37__LZHbEqKhcixce9PA_BFzukpKGO3cStNGp___block_invoke(uint64_t a1)
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
  block[2] = __37__LZHbEqKhcixce9PA_l7UrdRfCzeduYqtA___block_invoke;
  block[3] = &unk_1E79C4008;
  v9 = aCopy;
  v10 = &v11;
  block[4] = self;
  v6 = aCopy;
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