@interface CECBusPollingOperation
- (CECBusPollingOperation)initWithInterface:(id)a3 initiator:(unsigned __int8)a4 queue:(id)a5;
- (void)continuePolling;
- (void)dealloc;
- (void)poll;
- (void)startPolling;
@end

@implementation CECBusPollingOperation

- (CECBusPollingOperation)initWithInterface:(id)a3 initiator:(unsigned __int8)a4 queue:(id)a5
{
  v10.receiver = self;
  v10.super_class = CECBusPollingOperation;
  v8 = [(CECBusPollingOperation *)&v10 init];
  if (v8)
  {
    v8->_interface = a3;
    v8->_initiatorAddress = a4;
    v8->_pollingAddress = 15;
    v8->_queue = a5;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CECBusPollingOperation;
  [(CECBusPollingOperation *)&v3 dealloc];
}

- (void)startPolling
{
  if (self->_pollingAddress == 15)
  {
    self->_pollingAddress = 0;
    [(CECBusPollingOperation *)self continuePolling];
  }
}

- (void)continuePolling
{
  if (self->_pollingAddress != 15)
  {
    if ([(CECBusPollingOperation *)self delegate]&& [(CECBusPollingOperationDelegate *)[(CECBusPollingOperation *)self delegate] pollingOperation:self shouldSkipAddress:self->_pollingAddress])
    {
      ++self->_pollingAddress;
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __41__CECBusPollingOperation_continuePolling__block_invoke;
      block[3] = &unk_278EA3400;
      block[4] = self;
      dispatch_async(queue, block);
      goto LABEL_7;
    }

    [(CECBusPollingOperation *)self poll];
    v4 = ++self->_pollingAddress;
    if (v4 != 15)
    {
      v5 = dispatch_time(0, 200000000);
      v6 = self->_queue;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __41__CECBusPollingOperation_continuePolling__block_invoke_2;
      v7[3] = &unk_278EA3400;
      v7[4] = self;
      dispatch_after(v5, v6, v7);
LABEL_7:
      if (self->_pollingAddress != 15)
      {
        return;
      }
    }
  }

  [(CECBusPollingOperationDelegate *)[(CECBusPollingOperation *)self delegate] pollingOperationCompleted:self];
}

- (void)poll
{
  v3 = [(CECBusPollingOperation *)self delegate];
  v6 = 0;
  v4 = [CECMessage pollFrom:self->_initiatorAddress to:self->_pollingAddress];
  if (!v4)
  {
    [CoreRCXPCService(CECPrivate) _fakeCreateRemoteCECDeviceAsync:? bus:? logicalAddress:? physicalAddress:? reply:?];
    goto LABEL_10;
  }

  if (![(CECInterface *)self->_interface sendMessage:v4 withRetryCount:2 error:&v6])
  {
    if ([(CECInterface *)self->_interface errorIsNack:v6])
    {
      if (objc_opt_respondsToSelector())
      {
        [(CECBusPollingOperationDelegate *)v3 pollingOperation:self deviceNotRespondingAtAddress:self->_pollingAddress];
      }

      return;
    }

LABEL_10:
    if (objc_opt_respondsToSelector())
    {
      [(CECBusPollingOperationDelegate *)v3 pollingOperation:self encounteredError:v6 forMessage:v4];
    }

    return;
  }

  v5 = [CECMessage givePhysicalAddressFrom:self->_initiatorAddress to:self->_pollingAddress];
  if (!v5)
  {
    [CECBusPollingOperation poll];
    return;
  }

  v4 = v5;
  if (![(CECInterface *)self->_interface sendMessage:v5 error:&v6])
  {
    goto LABEL_10;
  }
}

@end