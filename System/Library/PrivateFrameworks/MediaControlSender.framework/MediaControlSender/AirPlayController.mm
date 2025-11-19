@interface AirPlayController
- (AirPlayController)init;
- (id)_setupConnection;
- (id)getProperty:(id)a3 qualifier:(id)a4 status:(int *)a5;
- (int)performCommand:(id)a3 qualifier:(id)a4 params:(id)a5 response:(id *)a6;
- (int)setProperty:(id)a3 qualifier:(id)a4 value:(id)a5;
- (void)dealloc;
- (void)getProperty:(id)a3 qualifier:(id)a4 completion:(id)a5;
- (void)performCommand:(id)a3 qualifier:(id)a4 params:(id)a5 completion:(id)a6;
- (void)postEvent:(id)a3 qualifier:(id)a4 params:(id)a5;
- (void)postEvent:(id)a3 qualifier:(id)a4 params:(id)a5 completion:(id)a6;
- (void)setProperty:(id)a3 qualifier:(id)a4 value:(id)a5 completion:(id)a6;
@end

@implementation AirPlayController

- (void)setProperty:(id)a3 qualifier:(id)a4 value:(id)a5 completion:(id)a6
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__AirPlayController_setProperty_qualifier_value_completion___block_invoke;
  block[3] = &unk_27989A848;
  block[7] = a5;
  block[8] = a6;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(queue, block);
}

uint64_t __60__AirPlayController_setProperty_qualifier_value_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _setupConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__AirPlayController_setProperty_qualifier_value_completion___block_invoke_2;
  v9[3] = &unk_27989A6B8;
  v9[4] = *(a1 + 64);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v9];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v6 = *(a1 + 56);
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__AirPlayController_setProperty_qualifier_value_completion___block_invoke_3;
  v8[3] = &unk_27989A7A8;
  v8[4] = *(a1 + 64);
  return [v3 setProperty:v4 qualifier:v5 value:v6 completion:v8];
}

uint64_t __60__AirPlayController_setProperty_qualifier_value_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (int)setProperty:(id)a3 qualifier:(id)a4 value:(id)a5
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__AirPlayController_setProperty_qualifier_value___block_invoke;
  v11[3] = &unk_27989A780;
  v11[4] = v9;
  v11[5] = &v12;
  [(AirPlayController *)self setProperty:a3 qualifier:a4 value:a5 completion:v11];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v9);
  LODWORD(v9) = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (void)getProperty:(id)a3 qualifier:(id)a4 completion:(id)a5
{
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__AirPlayController_getProperty_qualifier_completion___block_invoke;
  v6[3] = &unk_27989A8C0;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = a5;
  dispatch_async(queue, v6);
}

uint64_t __54__AirPlayController_getProperty_qualifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _setupConnection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__AirPlayController_getProperty_qualifier_completion___block_invoke_2;
  v8[3] = &unk_27989A6B8;
  v8[4] = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v8];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__AirPlayController_getProperty_qualifier_completion___block_invoke_3;
  v7[3] = &unk_27989A758;
  v7[4] = *(a1 + 56);
  return [v3 getProperty:v5 qualifier:v4 completion:v7];
}

uint64_t __54__AirPlayController_getProperty_qualifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3, 0);
}

- (id)getProperty:(id)a3 qualifier:(id)a4 status:(int *)a5
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v9 = dispatch_semaphore_create(0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__AirPlayController_getProperty_qualifier_status___block_invoke;
  v13[3] = &unk_27989A730;
  v13[5] = &v14;
  v13[6] = a5;
  v13[4] = v9;
  [(AirPlayController *)self getProperty:a3 qualifier:a4 completion:v13];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v9);
  v10 = v15[5];
  v11 = v15[5];
  _Block_object_dispose(&v14, 8);
  return v11;
}

intptr_t __50__AirPlayController_getProperty_qualifier_status___block_invoke(void *a1, int a2, void *a3)
{
  v4 = a1[6];
  if (v4)
  {
    *v4 = a2;
  }

  *(*(a1[5] + 8) + 40) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

- (void)postEvent:(id)a3 qualifier:(id)a4 params:(id)a5 completion:(id)a6
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__AirPlayController_postEvent_qualifier_params_completion___block_invoke;
  block[3] = &unk_27989A848;
  block[7] = a5;
  block[8] = a6;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(queue, block);
}

uint64_t __59__AirPlayController_postEvent_qualifier_params_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _setupConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__AirPlayController_postEvent_qualifier_params_completion___block_invoke_2;
  v9[3] = &unk_27989A6B8;
  v9[4] = *(a1 + 64);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v9];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v6 = *(a1 + 56);
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__AirPlayController_postEvent_qualifier_params_completion___block_invoke_3;
  v8[3] = &unk_27989A708;
  v8[4] = *(a1 + 64);
  return [v3 postEvent:v4 qualifier:v5 params:v6 completion:v8];
}

- (void)postEvent:(id)a3 qualifier:(id)a4 params:(id)a5
{
  v9 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__AirPlayController_postEvent_qualifier_params___block_invoke;
  v10[3] = &unk_27989A7D0;
  v10[4] = v9;
  [(AirPlayController *)self postEvent:a3 qualifier:a4 params:a5 completion:v10];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v9);
}

- (void)performCommand:(id)a3 qualifier:(id)a4 params:(id)a5 completion:(id)a6
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__AirPlayController_performCommand_qualifier_params_completion___block_invoke;
  block[3] = &unk_27989A848;
  block[7] = a5;
  block[8] = a6;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(queue, block);
}

uint64_t __64__AirPlayController_performCommand_qualifier_params_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _setupConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__AirPlayController_performCommand_qualifier_params_completion___block_invoke_2;
  v9[3] = &unk_27989A6B8;
  v9[4] = *(a1 + 64);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v9];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v6 = *(a1 + 56);
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__AirPlayController_performCommand_qualifier_params_completion___block_invoke_3;
  v8[3] = &unk_27989A6E0;
  v8[4] = *(a1 + 64);
  return [v3 performCommand:v4 qualifier:v5 params:v6 completion:v8];
}

uint64_t __64__AirPlayController_performCommand_qualifier_params_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3, 0);
}

- (int)performCommand:(id)a3 qualifier:(id)a4 params:(id)a5 response:(id *)a6
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v11 = dispatch_semaphore_create(0);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__AirPlayController_performCommand_qualifier_params_response___block_invoke;
  v16[3] = &unk_27989A690;
  v16[5] = &v23;
  v16[6] = &v17;
  v16[4] = v11;
  [(AirPlayController *)self performCommand:a3 qualifier:a4 params:a5 completion:v16];
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v11);
  v12 = v18[5];
  if (a6)
  {
    *a6 = v12;
  }

  v13 = v12;
  v14 = *(v24 + 6);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
  return v14;
}

intptr_t __62__AirPlayController_performCommand_qualifier_params_response___block_invoke(void *a1, int a2, void *a3)
{
  *(*(a1[5] + 8) + 24) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  v4 = a1[4];

  return dispatch_semaphore_signal(v4);
}

- (id)_setupConnection
{
  v18 = *MEMORY[0x277D85DE8];
  result = self->_cnx;
  if (!result)
  {
    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28699C760];
    v5 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:7];
    v7 = [v5 setWithArray:{v6, v11, v12, v13, v14, v15, v16}];
    [v4 setClasses:v7 forSelector:sel_performCommand_qualifier_params_completion_ argumentIndex:1 ofReply:0];
    [v4 setClasses:v7 forSelector:sel_performCommand_qualifier_params_completion_ argumentIndex:2 ofReply:0];
    [v4 setClasses:v7 forSelector:sel_postEvent_qualifier_params_completion_ argumentIndex:1 ofReply:0];
    [v4 setClasses:v7 forSelector:sel_postEvent_qualifier_params_completion_ argumentIndex:2 ofReply:0];
    [v4 setClasses:v7 forSelector:sel_getProperty_qualifier_completion_ argumentIndex:1 ofReply:0];
    [v4 setClasses:v7 forSelector:sel_getProperty_qualifier_completion_ argumentIndex:1 ofReply:1];
    [v4 setClasses:v7 forSelector:sel_setProperty_qualifier_value_completion_ argumentIndex:1 ofReply:0];
    [v4 setClasses:v7 forSelector:sel_setProperty_qualifier_value_completion_ argumentIndex:2 ofReply:0];
    v8 = objc_alloc(MEMORY[0x277CCAE80]);
    if (self->_xpcName)
    {
      xpcName = self->_xpcName;
    }

    else
    {
      xpcName = @"com.apple.airplay.sender.xpc";
    }

    v10 = [v8 initWithMachServiceName:xpcName options:0];
    self->_cnx = v10;
    [(NSXPCConnection *)v10 setRemoteObjectInterface:v4];
    [(NSXPCConnection *)self->_cnx resume];
    return self->_cnx;
  }

  return result;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_cnx invalidate];

  self->_cnx = 0;
  self->_xpcName = 0;
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v4.receiver = self;
  v4.super_class = AirPlayController;
  [(AirPlayController *)&v4 dealloc];
}

- (AirPlayController)init
{
  v4.receiver = self;
  v4.super_class = AirPlayController;
  v2 = [(AirPlayController *)&v4 init];
  if (v2)
  {
    v2->_queue = dispatch_queue_create("AirPlayController", 0);
  }

  return v2;
}

@end