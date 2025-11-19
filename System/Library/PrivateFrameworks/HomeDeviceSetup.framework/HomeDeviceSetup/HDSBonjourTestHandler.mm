@interface HDSBonjourTestHandler
- (HDSBonjourTestHandler)init;
- (void)_handleStart:(id)a3 responseHandler:(id)a4;
- (void)_handleStop:(id)a3 responseHandler:(id)a4;
- (void)activate;
- (void)invalidate;
@end

@implementation HDSBonjourTestHandler

- (HDSBonjourTestHandler)init
{
  v6.receiver = self;
  v6.super_class = HDSBonjourTestHandler;
  v2 = [(HDSBonjourTestHandler *)&v6 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HDSBonjourTestHandler_activate__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __33__HDSBonjourTestHandler_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSBonjourTest <= 30 && (gLogCategory_HDSBonjourTest != -1 || _LogCategory_Initialize()))
  {
    __33__HDSBonjourTestHandler_activate__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__HDSBonjourTestHandler_activate__block_invoke_2;
  v8[3] = &unk_279714668;
  v8[4] = v2;
  [v3 registerRequestID:@"_bjtS" options:0 handler:v8];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__HDSBonjourTestHandler_activate__block_invoke_3;
  v7[3] = &unk_279714668;
  v7[4] = v4;
  return [v5 registerRequestID:@"_bjtD" options:0 handler:v7];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HDSBonjourTestHandler_invalidate__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __35__HDSBonjourTestHandler_invalidate__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSBonjourTest <= 30 && (gLogCategory_HDSBonjourTest != -1 || _LogCategory_Initialize()))
  {
    __35__HDSBonjourTestHandler_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 16) = 1;
  [*(*(a1 + 32) + 8) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

- (void)_handleStart:(id)a3 responseHandler:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogCategory_HDSBonjourTest <= 30 && (gLogCategory_HDSBonjourTest != -1 || _LogCategory_Initialize()))
  {
    [HDSBonjourTestHandler _handleStart:responseHandler:];
  }

  v8 = [v6 objectForKeyedSubscript:@"bjtID"];
  if (v8)
  {
    [(CUBonjourAdvertiser *)self->_advertiser invalidate];
    v9 = objc_opt_new();
    advertiser = self->_advertiser;
    self->_advertiser = v9;

    [(CUBonjourAdvertiser *)self->_advertiser setDispatchQueue:self->_dispatchQueue];
    v14 = @"rpBA";
    v15[0] = v8;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [(CUBonjourAdvertiser *)self->_advertiser setTxtDictionary:v11];

    [(CUBonjourAdvertiser *)self->_advertiser setServiceType:@"_bonjourtest._tcp"];
    [(CUBonjourAdvertiser *)self->_advertiser setDomain:@"local."];
    [(CUBonjourAdvertiser *)self->_advertiser setLabel:@"HDSBonjour"];
    [(CUBonjourAdvertiser *)self->_advertiser setName:v8];
    [(CUBonjourAdvertiser *)self->_advertiser setPort:9];
    [(CUBonjourAdvertiser *)self->_advertiser activate];
    (*(v7 + 2))(v7, 0, 0, MEMORY[0x277CBEC10]);
  }

  else
  {
    v12 = NSErrorWithOSStatusF();
    if (gLogCategory_HDSBonjourTest <= 90 && (gLogCategory_HDSBonjourTest != -1 || _LogCategory_Initialize()))
    {
      [HDSBonjourTestHandler _handleStart:responseHandler:];
    }

    (*(v7 + 2))(v7, v12, 0, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleStop:(id)a3 responseHandler:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (gLogCategory_HDSBonjourTest <= 30 && (gLogCategory_HDSBonjourTest != -1 || _LogCategory_Initialize()))
  {
    [HDSBonjourTestHandler _handleStop:responseHandler:];
  }

  [(HDSBonjourTestHandler *)self invalidate];
  (*(v6 + 2))(v6, 0, 0, MEMORY[0x277CBEC10]);
}

@end